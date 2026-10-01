#!/usr/bin/env bash
set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SITE_DIR="$REPO_DIR/site"
WORKTREE_DIR="$REPO_DIR/.gh-pages-deploy"

echo "=== PowerTrip GitHub Pages Deployment ==="

# 1. Run tests before deploying
python3 "$REPO_DIR/tests/verify_assets.py"
python3 "$REPO_DIR/tests/verify_site_html.py"

if [ "${DRY_RUN:-0}" = "1" ]; then
    echo "[DRY-RUN] Verification passed. Skipping git operations."
    exit 0
fi

# 2. Cleanup existing worktree if present
if [ -d "$WORKTREE_DIR" ]; then
    echo "Cleaning up existing worktree..."
    git worktree remove --force "$WORKTREE_DIR" || rm -rf "$WORKTREE_DIR"
fi

# 3. Create worktree tracking gh-pages
echo "Creating worktree for gh-pages..."
git fetch origin gh-pages:refs/remotes/origin/gh-pages
git worktree add -B gh-pages "$WORKTREE_DIR" origin/gh-pages

# 4. Clean out old Flutter files while preserving .git
echo "Syncing site files to gh-pages root..."
cd "$WORKTREE_DIR"
# Remove old legacy files (keep .git)
find . -mindepth 1 -maxdepth 1 ! -name '.git' -exec rm -rf {} +

# Copy site contents to root
cp -r "$SITE_DIR"/* .
# Also add .nojekyll so GitHub Pages does not ignore files
touch .nojekyll

# 5. Check if there are changes to commit
if git status --porcelain | grep -q .; then
    git add -A
    git commit -m "deploy(gh-pages): update website from Penpot UI and v1.0 specification"
    echo "Pushing updates to origin/gh-pages..."
    git push origin gh-pages
    echo "Deployment push complete!"
else
    echo "No changes detected on gh-pages."
fi

# 6. Clean up worktree
cd "$REPO_DIR"
git worktree remove --force "$WORKTREE_DIR"

echo "=== Deployment successful! ==="

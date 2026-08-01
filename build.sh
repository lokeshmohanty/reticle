#!/usr/bin/env bash
set -e

echo "Building example sites..."

# Clean and create output directory
rm -rf public
mkdir -p public

# Build docs example
echo "Building docs example..."
cd examples/docs
zola build --output-dir ../../public/docs
cd ../..

# Build book example
echo "Building book example..."
cd examples/book
zola build --output-dir ../../public/book
cd ../..

# Build blog example
echo "Building blog example..."
cd examples/blog
zola build --output-dir ../../public/blog
cd ../..

# Copy static images and assets
echo "Copying static images..."
mkdir -p public/docs/img
cp -r static/img/* public/docs/img/

# Copy the combined index.html
echo "Copying index.html..."
cp examples/index.html public/index.html

# Create symlinks for local testing (base_url has /reticle/ prefix for GitHub Pages)
mkdir -p public/reticle
ln -sf ../docs public/reticle/docs
ln -sf ../book public/reticle/book
ln -sf ../blog public/reticle/blog
ln -sf ../index.html public/reticle/index.html

echo "Build complete! Output in public/"

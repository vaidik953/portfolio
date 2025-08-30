#!/bin/bash
echo "Starting build process..."
echo "Node version: $(node --version)"
echo "NPM version: $(npm --version)"

# Install dependencies
echo "Installing dependencies..."
npm install

# Build the project
echo "Building project..."
npm run build

echo "Build completed successfully!"
echo "Contents of dist folder:"
ls -la dist/
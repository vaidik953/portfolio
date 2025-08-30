#!/bin/bash
echo "=== PORTFOLIO BUILD SCRIPT ==="
echo "Node version: $(node --version)"
echo "NPM version: $(npm --version)"

# Check if we're in the right directory
if [ ! -f "package.json" ]; then
    echo "ERROR: package.json not found!"
    exit 1
fi

# Install dependencies
echo "Installing dependencies..."
npm ci || npm install

# Try multiple build approaches
echo "Attempting to build..."

# Method 1: npx vite build
echo "Method 1: Using npx vite build"
if npx vite build; then
    echo "✅ Build successful with npx vite build"
    exit 0
fi

# Method 2: npm run build
echo "Method 2: Using npm run build"
if npm run build; then
    echo "✅ Build successful with npm run build"
    exit 0
fi

# Method 3: Direct node_modules access
echo "Method 3: Using direct node_modules access"
if ./node_modules/.bin/vite build; then
    echo "✅ Build successful with direct vite"
    exit 0
fi

echo "❌ All build methods failed!"
exit 1
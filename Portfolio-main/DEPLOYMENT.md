# Vercel Deployment Instructions

## Automatic Detection (Recommended)
Vercel should automatically detect this as a Vite project and use these settings:
- Framework: Vite
- Build Command: npm run build
- Output Directory: dist
- Install Command: npm install
- Development Command: npm run dev

## Manual Configuration (if needed)
If auto-detection fails, use these settings in Vercel dashboard:
- Framework Preset: Vite
- Build Command: npm run build
- Output Directory: dist
- Root Directory: ./
- Node.js Version: 18.x or 20.x

## Environment Variables (if needed)
None required for this project.

## Build Optimization
The project includes:
- Vite for fast builds
- ES modules for tree shaking
- Optimized dependencies
- Static asset optimization
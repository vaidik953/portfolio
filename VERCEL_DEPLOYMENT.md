# Vercel Deployment Guide

## For Vercel Deployment:

### Automatic Detection (Recommended)
Vercel will automatically detect this as a Vite + React project.

**Vercel Dashboard Settings:**
- Framework Preset: **Vite**
- Build Command: **npm run build** (auto-detected)
- Output Directory: **dist** (auto-detected) 
- Install Command: **npm install** (auto-detected)
- Node.js Version: **18.x** (recommended)

### Manual Settings (if auto-detection fails):
If you need to configure manually in Vercel dashboard:

1. **Framework Preset:** Vite
2. **Build Command:** `npm run build`
3. **Output Directory:** `dist`
4. **Root Directory:** `./` (leave empty)
5. **Install Command:** `npm install`

### Environment Variables:
None required for this project.

### Troubleshooting Build Errors:

If you see "vite: command not found":
1. Make sure Build Command is set to `npm run build` (NOT `vite build`)
2. Ensure Node.js version is 18.x or higher
3. Check that package.json contains the build script
4. Try redeploying after clearing build cache

### Alternative Build Commands (if needed):
- `npm ci && npm run build`
- `yarn install && yarn build`

The project is configured to work with Vercel's auto-detection without any special configuration files.
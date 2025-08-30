# Netlify Deployment Guide

## 🚀 Deploy to Netlify (Recommended Alternative to Vercel)

Netlify often works better with Vite projects and rarely has the "vite: command not found" issue that Vercel sometimes experiences.

### Method 1: Deploy from GitHub (Recommended)

#### Step 1: Push to GitHub
```bash
git push -u origin main
```

#### Step 2: Deploy via Netlify Dashboard
1. Go to [netlify.com](https://netlify.com)
2. Sign up/Login with GitHub
3. Click "New site from Git"
4. Choose GitHub and select your repository `vaidik953/portfolio`
5. Configure build settings:
   - **Branch to deploy:** `main`
   - **Build command:** `npm run build` (auto-detected)
   - **Publish directory:** `dist` (auto-detected)
   - **Node version:** 18 (auto-detected from netlify.toml)

#### Step 3: Deploy!
- Click "Deploy site"
- Netlify will automatically build and deploy your portfolio
- You'll get a URL like `https://amazing-portfolio-xyz.netlify.app`

### Method 2: Direct File Upload

If you want to deploy immediately without GitHub:
1. Build the project locally: `npm run build`
2. Go to [netlify.com](https://netlify.com)
3. Drag and drop the `dist` folder to the deploy area
4. Your site will be live instantly!

### Method 3: Netlify CLI

1. Install Netlify CLI: `npm install -g netlify-cli`
2. Build the project: `npm run build`
3. Deploy: `netlify deploy --dir=dist --prod`

## ⚙️ Configuration

The project includes a `netlify.toml` file with optimal settings:

```toml
[build]
  publish = "dist"
  command = "npm run build"

[build.environment]
  NODE_VERSION = "18"

# SPA routing support
[[redirects]]
  from = "/*"
  to = "/index.html"
  status = 200
```

## 🎯 Why Netlify is Great for This Project

- ✅ **Better Vite support** - Rarely has build command issues
- ✅ **Automatic HTTPS** - Free SSL certificates
- ✅ **Global CDN** - Fast loading worldwide
- ✅ **Easy custom domains** - Add your own domain easily
- ✅ **Form handling** - Built-in form processing
- ✅ **Deploy previews** - See changes before going live
- ✅ **Instant rollbacks** - Easy to revert if needed

## 🔧 Troubleshooting

If build fails:
1. Check that Node version is 18 or higher
2. Ensure `npm run build` works locally
3. Check the Netlify build logs for specific errors
4. Try the alternative build command: `npm run netlify-build`

## 🌟 Features Included

Your deployed portfolio will have:
- ✅ Responsive design (mobile-friendly)
- ✅ 3D animations with Three.js
- ✅ Contact form with email integration
- ✅ Social media links (Instagram, Twitter, GitHub)
- ✅ Fast loading with optimized assets
- ✅ SEO-friendly routing

## 📱 Custom Domain (Optional)

After deployment, you can add a custom domain:
1. In Netlify dashboard: Site settings → Domain management
2. Add custom domain (e.g., `vaidik-portfolio.com`)
3. Follow DNS configuration instructions
4. Netlify provides free SSL automatically

Your portfolio will be live and accessible worldwide! 🎉
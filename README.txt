Photography portfolio

Files added:
- index.html : main portfolio page (responsive, lightbox, contact form)
- styles.css : stylesheet for layout and lightbox
- fetch-sample-photos.ps1 : PowerShell script to download six sample photos into images/
- fetch-sample-photos.bat : Windows wrapper to run the PowerShell script
- create-zip.ps1 : PowerShell script to create site.zip of the project
- create-zip.bat : Windows wrapper to run create-zip.ps1

How to use:
1. (Optional) Populate images/ with real photos by running fetch-sample-photos.bat (downloads 6 sample images).
2. Open index.html in a browser to preview the portfolio.
3. To build a distributable ZIP of the site, run create-zip.bat (or create-zip.ps1) — site.zip will be created in the project folder.

Notes:
- Requires internet access for fetching sample photos.
- PowerShell scripts use -ExecutionPolicy Bypass in the .bat wrappers to ease running on Windows.

Contact form:
- The site includes a client-side contact form with basic validation. On submit it opens your mail client (mailto:) as a fallback to hello@jordansmith.com. To integrate server-side submissions (Formspree, Netlify Forms, or your own backend), reply and that can be added.

A fake masonry-style gallery with filters was added for demo purposes. To replace with real photos, run fetch-sample-photos.bat which downloads images into images/ as photo1.jpg...photo6.jpg.

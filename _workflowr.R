# Step 1: Commit RMD files

system("git add analysis/about.Rmd")
system("git add analysis/index.Rmd")
system("git add analysis/license.Rmd")
system("git add analysis/01-batch-integration.Rmd")
system("git add analysis/02-reduced-dimensions.Rmd")
system("git add analysis/03-clustering.Rmd")
system("git add analysis/04-marker-detection.Rmd")
system("git add analysis/signaling-analysis.Rmd")
system("git add analysis/interactive.Rmd")
system("git commit -m 'Build'")

# Step 2: Build HTML files

wflow_build("analysis/about.Rmd")
wflow_build("analysis/index.Rmd")
wflow_build("analysis/license.Rmd")
wflow_build("analysis/01-batch-integration.Rmd")
wflow_build("analysis/02-reduced-dimensions.Rmd")
wflow_build("analysis/03-clustering.Rmd")
wflow_build("analysis/04-marker-detection.Rmd")
wflow_build("analysis/signaling-analysis.Rmd")
wflow_build("analysis/interactive.Rmd")

# Step 3: Add HTML files

system("git add docs/about.html")
system("git add docs/index.html")
system("git add docs/license.html")
system("git add docs/01-batch-integration.html")
system("git add docs/02-reduced-dimensions.html")
system("git add docs/03-clustering.html")
system("git add docs/04-marker-detection.html")
system("git add docs/signaling-analysis.html")
system("git add docs/interactive.html")

# Step 4: Add PNG files

system("git add docs/figure/01-batch-integration.Rmd")
system("git add docs/figure/02-reduced-dimensions.Rmd")
system("git add docs/figure/03-clustering.Rmd")
system("git add docs/figure/04-marker-detection.Rmd")
system("git add docs/figure/signaling-analysis.Rmd")

# Step 5: Add site files

system("git add docs/site_libs")
system("git add docs/.nojekyll")

# Step 6: Commit and push files

system("git commit -m 'Build'")
system("git push origin main")

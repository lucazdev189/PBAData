# PBAData - the R package for bowling
[![](https://img.shields.io/github/last-commit/lucazdev189/PBAData.svg)](https://github.com/lucazdev189/PBAData/commits/main)
[![Project Status: Active - The project has reached a stable, usable state and is being actively developed.](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)
[![](https://img.shields.io/github/languages/code-size/lucazdev189/PBAData.svg)](https://github.com/lucazdev189/PBAData)
[![License: Artistic-2.0](https://img.shields.io/badge/license-Artistic--2.0-blue.svg)](https://cran.r-project.org/web/licenses/Artistic-2.0)
[![R build status](https://github.com/lucazdev189/PBAData/workflows/R-CMD-check/badge.svg)](https://github.com/lucazdev189/PBAData/actions)  
Out of boredom, I have decided to make this simple package that gives everyone an easy way to access Professional Bowlers Association data.

## Installing the package
```
library(devtools)
install_github("lucazdev189/PBAData")
```

### Initializing the PBA Tour 2023 dataset
Using the load_pba2023() function, you are able to do this.

And you may further play around with the dataset by doing this,
```
PBA2023 <- load_pba2023()
```
![PBAData Logo](https://i.ibb.co/RyT38vj/PBA.jpg)  

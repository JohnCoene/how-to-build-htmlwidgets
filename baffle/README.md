
# baffle

<!-- badges: start -->
<!-- badges: end -->

Let's use [baffle.js](https://github.com/camwiegert/baffle)

# History

What happened in this repository?

```r
# scaffold widget
htmlwidgets::scaffoldWidget("baffle")

# create directory for JS dependency
path <- "./inst/htmlwidgets/lib/baffle"
dir.create(path, recursive = TRUE)

# download JS dependency
dep <- "https://raw.githubusercontent.com/camwiegert/baffle/master/dist/baffle.min.js"
download.file(dep, paste0(path, "/baffle.min.js"))
```

File `inst/lib/playground.yaml` edited to look like:

```yaml
dependencies:
  - name: baffle
    version: 0.3.6
    src: htmlwidgets/lib/baffle
    script: baffle.min.js
```

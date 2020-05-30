
# typed

<!-- badges: start -->
<!-- badges: end -->

[typed.js](https://github.com/mattboldt/typed.js) as htmlwidget

# History

What happened in this repository?

```r
# scaffold widget
htmlwidgets::scaffoldWidget("typed")

# create directory for JS dependency
path <- "./inst/htmlwidgets/lib/typed"
dir.create(path, recursive = TRUE)

# download JS dependency
dep <- "https://cdn.jsdelivr.net/npm/typed.js@2.0.11"
download.file(dep, paste0(path, "/typed.min.js"))
```

File `inst/lib/playground.yaml` edited to look like:

```yaml
dependencies:
  - name: typed
    version: 2.0.11
    src: htmlwidgets/lib/typed
    script: typed.min.js
```
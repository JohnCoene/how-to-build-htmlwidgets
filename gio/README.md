
# gio

<!-- badges: start -->
<!-- badges: end -->

[gio.js](https://giojs.org/) htmlwidget

## History

```r
# scaffold widget
htmlwidgets::scaffoldWidget("gio")

# create directories for JS dependency
dir.create("./inst/htmlwidgets/lib/three", recursive = TRUE)
dir.create("./inst/htmlwidgets/lib/gio", recursive = TRUE)

# download JS dependency
three <- "https://cdnjs.cloudflare.com/ajax/libs/three.js/110/three.min.js"
gio <- "https://raw.githubusercontent.com/syt123450/giojs/master/build/gio.min.js"

download.file(three, "./inst/htmlwidgets/lib/three/three.min.js")
download.file(gio, "./inst/htmlwidgets/lib/gio/gio.min.js")
```

File `inst/lib/gio.yaml` edited to look like:

```yaml
dependencies:
  - name: three
    version: 110
    src: htmlwidgets/lib/three
    script: three.min.js
  - name: gio
    version: 2.0
    src: htmlwidgets/lib/gio
    script: gio.min.js
```

A convenience function called `random_data` is exported from `R/data.R`, this is so we can easily generate data and test the widget as we build it.

```r
random_data(n = 100)
```

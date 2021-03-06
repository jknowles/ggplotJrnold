### Lines or points
###
### \itemize{
### \item 1 Dark blue \url{http://media.economist.com/sites/default/files/imagecache/290-width/images/2012/09/articles/body/20120915_FNC063.png}.
### \item 2 Mid blue, Dark red \url{http://media.economist.com/sites/default/files/imagecache/290-width/images/print-edition/20120915_INC086.png}. (this appears to be an alternative)
### \item 2 Dark blue, Mid blue \url{http://media.economist.com/sites/default/files/imagecache/290-width/images/print-edition/20120818_AMC820.png}.
### \item 3 Dark blue, mid blue, light blue \url{http://media.economist.com/sites/default/files/imagecache/290-width/images/print-edition/20120901_FBC879.png}.
### \item 4 Dark blue, mid blue, light blue, dark red \url{http://media.economist.com/sites/default/files/imagecache/290-width/images/print-edition/20120901_FBC863.png}.
### \item 5 Dark blue, mid blue, light blue, dark red, gray \url{http://media.economist.com/sites/default/files/imagecache/290-width/images/2012/08/articles/body/20120818_EUC807.png}.
### }
###
### Bar plots
### \itemize{
### \item 1 Dark blue
### \item 2 Dark blue, mid blue \url{http://media.economist.com/sites/default/files/imagecache/290-width/images/print-edition/20120915_USC091.png}
### \item 3 \url{http://media.economist.com/sites/default/files/imagecache/290-width/images/print-edition/20120915_IRC092.png}.
### \item 4
### \item 5 Dark blue, mid blue, blue gray, light blue, gray \url{http://media.economist.com/sites/default/files/imagecache/290-width/images/print-edition/20120915_USC091.png}.
### \item 9 \url{http://media.economist.com/sites/default/files/imagecache/290-width/images/print-edition/20120915_EUC094.png}.
### }
###

##' Economist color palette (discrete)
##'
##' The primary colors are blues, grays, and greens. Red is not
##' included (early) in these palettes and should be used to indicate
##' important data.
##'
##'
##' @param stata Use the palette in the Stata economist scheme.
##' @param fill Use the fill palette.
##'
##' @export
##' @examples
##' library(scales)
##' show_col(economist_pal()(6))
##' ## fill palette
##' show_col(economist_pal(fill=TRUE)(6))
##' ## RGB values from Stata's economist scheme
##' show_col(economist_pal(stata=TRUE)(16))
economist_pal <- function(stata=FALSE, fill=TRUE) {
    if (stata) {
        manual_pal(unname(ggplotJrnoldPalettes$economist$stata$fg))
    } else {
        colors <- ggplotJrnoldPalettes$economist$fg
        if (fill) {
            function(n) {
                if (n == 1) {
                    i <- "blue_dark"
                } else if (n == 2) {
                    i <- c("blue_mid", "blue_dark")
                } else if (n == 3) {
                    i <- c("blue_gray", "blue_dark", "blue_mid")
                } else if (n == 4) {
                    i <- c("blue_gray", "blue_dark", "blue_mid", "gray")
                } else if (n %in% 5:6) {
                    ## 20120901_woc904
                    i <- c("blue_gray", "blue_dark", "blue_light", "blue_mid",
                           "green_light", "green_dark")
                } else if (n == 7) {
                    # 20120818_AMC820
                    i <- c("blue_gray", "blue_dark", "blue_mid", "blue_light",
                          "green_dark", "green_light", "gray")
                } else if (n >= 8) {
                    # 20120915_EUC094
                    i <- c("blue_gray", "blue_dark", "blue_mid", "blue_light",
                          "green_dark", "green_light", "red_dark", "red_light",
                          "gray")
                }
                unname(colors[i][seq_len(n)])
            }
        } else {
            function(n) {
                if (n <= 3) {
                    # 20120818_AMC20
                    # 20120901_FBC897
                    i <- c("blue_dark", "blue_mid", "blue_light")
                } else if (n %in% 4:5) {
                    # i <- c("blue_dark", "blue_mid", "blue_light", "red", "gray")
                    i <- c("blue_dark", "blue_mid", "blue_light", "blue_gray", "gray")
                } else if (n == 6) {
                    # 20120825_IRC829
                    i <- c("green_light", "green_dark", "gray",
                           "blue_gray", "blue_light", "blue_dark")
                } else if (n > 6) {
                    # 20120825_IRC829
                    i <- c("green_light", "green_dark", "gray",
                           "blue_gray", "blue_light", "blue_dark", "red_dark", "red_light",
                           "brown")
                }
                unname(colors[i][seq_len(n)])
            }
        }
    }
}


##' Economist color scales
##'
##' Color scales using the colors in the Economist graphics. These scales use
##' RGB values and ordering of the colors in the Stata economist scheme.
##'
##' @inheritParams ggplot2::scale_colour_hue
##' @inheritParams economist_pal
##' @family colour scales
##' @rdname scale_economist
##' @seealso \code{\link{theme_economist}} for examples.
##' @export
scale_colour_economist <- function(stata=FALSE, ...) {
    discrete_scale("colour", "economist", economist_pal(stata=stata), ...)
}

#' @export
#' @rdname scale_economist
scale_color_economist <- scale_colour_economist

#' @export
#' @rdname scale_economist
scale_fill_economist <- function(stata=FALSE, ...) {
    discrete_scale("fill", "economist", economist_pal(stata=stata), ...)
}


##' ggplot color theme based on the Economist
##'
##' Style plots similar to those in The Economist.
##'
##' @param base_size base font size
##' @param base_family base font family
##' @param horizontal \code{logical}. Horizontal axis lines?
##' @param dkpanel \code{logical} Darker background for panel region?
##' @param stata \code{logical} Use RGB values from Stata's
##' economist scheme.
##' @export
##' @family themes
##' @examples
##' dsamp <- diamonds[sample(nrow(diamonds), 1000), ]
##' q <- qplot(carat, price, data=dsamp, colour=clarity)
##' ## Standard
##' q + theme_economist() + scale_colour_economist()
##' ## Stata colors
##' q + theme_economist(stata=TRUE) + scale_colour_economist(stata=TRUE)
##' ## Darker plot region
##' q + theme_economist(dkpanel=TRUE) + scale_colour_economist(stata=TRUE)
##' ## Change axis lines to vertical
##' (q + theme_economist(horizontal=FALSE)
##'  + scale_colour_economist() + coord_flip()
##'  + ggtitle("Diamonds Are Forever"))
theme_economist <- function(base_size = 10, base_family="",
                            horizontal=TRUE, dkpanel=FALSE, stata=FALSE) {
    if (stata) {
        bgcolors <- ggplotJrnoldPalettes$economist$stata$bg
    } else {
        bgcolors <- ggplotJrnoldPalettes$economist$bg
    }
    ## From measurements
    ## Ticks = 1/32 in, with margin about 1.5/32
    ## Title = 3/32 in (6 pt)
    ## Legend Labels = 2.5/32 in (5pt)
    ## Axis Labels = 2
    ## Axis Titles and other text ~ 2
    ## Margins: Top/Bottom = 6/32, sides = 5/32
    ret <-
        theme(# Basic
              line = element_line(colour = "black", size = 0.5,
              linetype = 1, lineend = "butt"),
              rect = element_rect(fill = bgcolors['ebg'],
              colour = NA, size = 0.5, linetype = 1),
              text = element_text(family = base_family, face = "plain",
              colour = "black", size = base_size, hjust = 0.5, vjust = 0.5,
              angle = 0, lineheight = 1),
              ## Axis
              axis.text = element_text(size = rel(1)),
              axis.line = element_line(size = rel(0.8)),
              axis.line.y = element_blank(),
              axis.text.x = element_text(vjust = 1),
              axis.text.y = element_text(hjust = 0),
              ## I cannot figure out how to get ggplot to do 2 levels of ticks
              axis.ticks = element_line(),
              axis.ticks.y = element_blank(),
              axis.title = element_text(size = rel(1)),
              axis.title.x = element_text(),
              axis.title.y = element_text(angle = 90),
              # axis.ticks.length = unit(-1/32, "in"),
              axis.ticks.length = unit(-base_size * 0.5 , "points"),
              # axis.ticks.margin = unit(3/72, "in"),
              axis.ticks.margin = unit(base_size * 1.25, "points"),
              legend.background = element_rect(linetype=0),
              legend.margin = unit(base_size * 1.5, "points"),
              legend.key = element_rect(linetype=0),
              legend.key.size = unit(1.2, "lines"),
              legend.key.height = NULL,
              legend.key.width = NULL,
              legend.text = element_text(size = rel(1.25)),
              legend.text.align = NULL,
              legend.title = element_text(size = rel(1),  hjust = 0),
              legend.title.align = NULL,
              legend.position = "top",
              legend.direction = NULL,
              legend.justification = "center",
              ## legend.box = element_rect(fill = palette_economist['bgdk'], colour=NA, linetype=0),
              ## Economist only uses vertical lines
              panel.background = element_rect(linetype=0),
              panel.border = element_blank(),
              panel.grid.major = element_line(colour = "white", size=rel(1.75)),
              panel.grid.minor = element_blank(),
              panel.margin = unit(0.25, "lines"),
              strip.background = element_rect(fill = bgcolors['edkbg'],
              colour = NA, linetype=0),
              strip.text = element_text(size = rel(1.25)),
              strip.text.x = element_text(),
              strip.text.y = element_text(angle = -90),
              plot.background = element_rect(fill = bgcolors['ebg'], colour=NA),
              plot.title = element_text(size = rel(1.5), hjust=0, face="bold"),
              plot.margin = unit(c(6, 5, 6, 5) * 2, "points"),
              complete = TRUE)
    if (horizontal) {
        ret <- ret + theme(panel.grid.major.x = element_blank())
    } else {
        ret <- ret + theme(panel.grid.major.y = element_blank())
    }
    if (dkpanel==TRUE) {
        ret <- ret + theme(panel.background=element_rect(fill = bgcolors['edkbg']))
    }
    ret
}
## TODO:
## - white background http://junkcharts.typepad.com/.shared/image.html?/photos/uncategorized/2008/04/18/econ_anglosaxon.gif
## - white and gray http://www.economist.com/blogs/graphicdetail/2012/09/daily-chart-3

## Palette
## 3 color http://www.economist.com/blogs/graphicdetail/2012/08/daily-chart-olympics-4 (blue, red, lt red)
## 3 and 4 colors http://www.economist.com/node/21561909
## 5 colors http://www.economist.com/node/21560601, http://www.economist.com/blogs/graphicdetail/2012/08/daily-chart-6
## 1 color http://www.economist.com/node/21561883
## 2 color http://www.economist.com/node/21560572
## 3 color http://www.economist.com/node/21560582
## 4 color http://www.economist.com/blogs/graphicdetail/2012/09/focus
## 6 color http://junkcharts.typepad.com/.a/6a00d8341e992c53ef01538e032bd5970b-pi
## 7 color


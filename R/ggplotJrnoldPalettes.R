##' Palette data for ggplotJrnold package
##'
##' List with the data used by palettes in the ggplotJrnold package.
##'
##' @docType data
##' @format A \code{list}.
##' \describe{
##' \item{economist}{
##' Colors from The Economist magazine. RGB values taken from
##' the economist scheme in Stata. \code{bg} are background
##' colors, \code{fg} are foreground colors.
##' }
##' \item{excel}{
##' \code{list} Various Excel color palettes.
##' \code{excel2003} The Excel 2003 line color palette.
##' \code{excel2003fill} The Excel 2003 bar chart color palette.
##' \code{excel10} Color palette from more recent versions of Excel.
##' Color RGB values from \url{http://vis.stanford.edu/color-names/analyzer/}.
##' }
##' \item{solarized}{
##' Names and RGB values of the Solarized palette.
##' \url{http://ethanschoonover.com/solarized}.
##' \code{base} Base colors.
##' \code{accent} Accent colors.
##' }
##' \item{stata}{
##' Colors, shapes, and linetypes used by Stata
##' \code{colors} RBG values of of all Stata colors.
##' \code{shapes} R shape values of of all Stata symbol types.
##' \code{linetype} Equivalent R linepattern for all Stata linepattern sytles. \url{http://www.stata.com/help.cgi?symbolstyle}.
##' }
##' \item{few}{
##' Qualitative color palettes from Stephen Few,
##' \href{http://www.perceptualedge.com/articles/visual_business_intelligence/rules_for_using_color.pdf}{"Practical Rules for Using Color in Charts"}.
##' He suggests using \code{medium}, except for thin lines and small points, for which use \code{dark}.
##' }
##' \item{tableau}{Color and shapes used by Tableau}
##' \item{manyeyes}{
##' Color palette from \href{http://www-958.ibm.com/software/data/cognos/manyeyes/}{IBM Many Eyes};
##' values from \url{http://vis.stanford.edu/color-names/analyzer/}.
##' }
##' }
##'
##'
##' @export
ggplotJrnoldPalettes <- {
    ## x to hold value of list as I create it
    x <- list()

    ## Economist colors
    x$economist <- list()
    ## Colors from http://vis.stanford.edu/color-names/analyzer/
    ## x$economist$fg <-
    ##     c(red_dark="#621e15", read_light="#e59076",
    ##       blue_mid="#128dcd", blue_dark="#083c52", blue_mid="#64c5f2",
    ##       green_light="#61afaf", green_dark="#0f7369", gray="#9c9da1",
    ##       # From color picker of png
    ##       blue_gray="#6794a7")

    ## Colors picked from pngs
    ## bg : d5e4eb
    ## bgdk : c3d6df
    x$economist$bg <-
        c(ebg = "#d5e4eb", # Bluish gray
          edkbg = "#c3d6df", # Darker bluish-gray
          red = "#ed111a") # Bright red rectangle and highlights)
    ## From png 20120818_AMC820.png
    ## blue_gray = 6794a7
    ## blue_dark = 014d64
    ## green_light = 76c0c1
    ## blue_mid = 01a2d9
    ## blue_light = 7ad2f6
    ## green_dark = 00887d
    ## gray = adadad
    ## 20120915_EUC094.png
    ## blue_light: 7bd3f6
    ## red_dark = 7c260b
    ## red_light = ee8f71
    ## green_light = 76c0c1
    ## Colors from Stata economist scheme
    ## 20120915_woc77.png
    ## brown a18376
    x$economist$fg <-
        c(blue_gray = "#6794a7",
          blue_dark = "#014d64",
          green_light = "#76c0c1",
          blue_mid = "#01a2d9",
          blue_light = "#7ad2f6",
          green_dark = "#00887d",
          gray = "#adadad",
          blue_light = "#7bd3f6",
          red_dark = "#7c260b",
          red_light = "#ee8f71",
          green_light = "#76c0c1",
          brown = "#a18376")
    x$economist$stata <-
        list(bg=
             c(## Background
               ebg = rgb(198,211,223, max=255),
               edkbg = rgb(178,191,203, max=255)),
             fg=
             c(edkblue = rgb(62,100,125, max=255),
               emidblue = rgb(123,146,168, max=255),
               eltblue = rgb(130,192,233, max=255),
               emerald = rgb(45,109,102, max=255),
               erose = rgb(191,161,156, max=255),
               ebblue = rgb(0,139,188, max=255),
               eltgreen = rgb(151,182,176, max=255),
               stone = rgb(215,210,158, max=255),
               navy = rgb(26,71,111, max=255),
               maroon = rgb(144,53,59, max=255),
               brown = rgb(156,136,71, max=255),
               lavender = rgb(147,141,210, max=255),
               teal = rgb(110,142,132, max=255),
               cranberry=rgb(193, 5, 52, max=255),
               khaki = rgb(202,194, 126, max=255)))

    ## Excel Colors
    x$excel <-
        list(excel2003 =
             c("#FF00FF", "#FFFF00", "#00FFFF", "#800080",
               "#800000", "#008080", "#0000FF"),
             excel2003fill =
             c("#993366", "#FFFFCC", "#CCFFFF", "#660066",
               "#FF8080", "#0066CC", "#CCCCFF"),
             excel10 =
             c("#365e96", "#983334", "#77973d", "#5d437c", "#36869f",
               "#d1702f", "#8197c5", "#c47f80", "#acc484", "#9887b0"))

    ## See http://ethanschoonover.com/solarized
    ## L*a*b values are canonical (White D65, Reference D50), other values are matched in sRGB space.

    ## SOLARIZED HEX     16/8 TERMCOL  XTERM/HEX   L*A*B      RGB         HSB
    ## --------- ------- ---- -------  ----------- ---------- ----------- -----------
    ## base03    #002b36  8/4 brblack  234 #1c1c1c 15 -12 -12   0  43  54 193 100  21
    ## base02    #073642  0/4 black    235 #262626 20 -12 -12   7  54  66 192  90  26
    ## base01    #586e75 10/7 brgreen  240 #585858 45 -07 -07  88 110 117 194  25  46
    ## base00    #657b83 11/7 bryellow 241 #626262 50 -07 -07 101 123 131 195  23  51
    ## base0     #839496 12/6 brblue   244 #808080 60 -06 -03 131 148 150 186  13  59
    ## base1     #93a1a1 14/4 brcyan   245 #8a8a8a 65 -05 -02 147 161 161 180   9  63
    ## base2     #eee8d5  7/7 white    254 #e4e4e4 92 -00  10 238 232 213  44  11  93
    ## base3     #fdf6e3 15/7 brwhite  230 #ffffd7 97  00  10 253 246 227  44  10  99
    ## yellow    #b58900  3/3 yellow   136 #af8700 60  10  65 181 137   0  45 100  71
    ## orange    #cb4b16  9/3 brred    166 #d75f00 50  50  55 203  75  22  18  89  80
    ## red       #dc322f  1/1 red      160 #d70000 50  65  45 220  50  47   1  79  86
    ## magenta   #d33682  5/5 magenta  125 #af005f 50  65 -05 211  54 130 331  74  83
    ## violet    #6c71c4 13/5 brmagenta 61 #5f5faf 50  15 -45 108 113 196 237  45  77
    ## blue      #268bd2  4/4 blue      33 #0087ff 55 -10 -45  38 139 210 205  82  82
    ## cyan      #2aa198  6/6 cyan      37 #00afaf 60 -35 -05  42 161 152 175  74  63
    ## green     #859900  2/2 green     64 #5f8700 60 -20  65 133 153   0  68 100  60
    x$solarized <-
        list(
            base =
            c(base03 = "#002b36",
              base02 = "#073642",
              base01 = "#586e75",
              base00 = "#657b83",
              base0 = "#839496",
              base1 = "#93a1a1",
              base2 = "#eee8d5",
              base3 = "#fdf6e3"),
            accents =
            c(yellow = "#b58900",
              orange = "#cb4b16",
              red = "#dc322f",
              magenta = "#d33682",
              violet = "#6c71c4",
              blue = "#268bd2",
              cyan = "#2aa198",
              green = "#859900"))

    stata_symbols <-
        local({
            x <- c()
            for (i in c("O", "o", "circle", "smcircle")) {
                x[i] <- 16
            }
            for (i in c("D", "d", "diamond", "smdiamond")) {
                x[i] <- 18
            }
            for (i in c("T", "t", "triangle", "smtriangle")) {
                x[i] <- 17
            }
            for (i in c("S", "s", "square", "smsquare")) {
                x[i] <- 15
            }
            for (i in c("+", "plus", "smplus")) {
                x[i] <- 3
            }
            for (i in c("X", "x", "smx")) {
                x[i] <- 4
            }
            for (i in c("Oh", "oh", "circle_hollow", "smcircle_hollow")) {
                x[i] <- 1
            }
            for (i in c("Dh", "dh", "diamond_hollow", "smdiamond_hollow")) {
                x[i] <- 5
            }
            for (i in c("Th", "th", "triangle_hollow", "smtriangle_hollow")) {
                x[i] <- 2
            }
            for (i in c("Sh", "sh", "square_hollow", "smsquare_hollow")) {
                x[i] <- 15
            }
            ## Point
            for (i in c(".", "p")) {
                x[i] <- -0x2218
            }
            ## Invisible
            x['i'] <- NA
            x
        })

    ## Stata
    x$stata <-
        list(colors =
             c(eltgreen = "#97b6b0", forest_green =
              "#55752f", sandb = "#ffe474", gold = "#ffd200", midgreen =
               "#00b000", lavender = "#938dd2", maroon = "#90353b", dknavy =
               "#1e2d53", sienna = "#a0522d", gs15 = "#f0f0f0", pink = "#ff0080",
               ebg = "#c6d3df", edkblue = "#3e647d", edkbg = "#b2bfcb", navy =
               "#1a476f", gs14 = "#e0e0e0", magenta = "#ff00ff", gs16 =
               "#ffffff", ltbluishgray = "#eaf2f3", gs10 = "#a0a0a0", gs13 =
               "#d0d0d0", lime = "#00ff00", blue = "#0000ff", gs0 = "#000000",
               gs3 = "#303030", gs2 = "#202020", gs5 = "#505050", gs4 =
               "#404040", gs7 = "#707070", gs6 = "#606060", dimgray = "#e8e8e8",
               gs8 = "#808080", bluishgray = "#d9e6eb", eggshell = "#fffbf0", gs1
               = "#101010", sunflowerlime = "#eaffaa", ltblue = "#add8e6", black
               = "#000000", orange_red = "#ff4500", midblue = "#0080ff", white =
               "#ffffff", gs12 = "#c0c0c0", red = "#ff0000", olive_teal =
               "#c0dcc0", khaki = "#cac27e", eltblue = "#82c0e9", gs11 =
               "#b0b0b0", ebblue = "#008bbc", stone = "#d7d29e", ltbluishgray8 =
               "#e1e6f0", chocolate = "#804000", orange = "#ff7f00", bluishgray8
               = "#d2d7e4", yellow = "#ffff00", emerald = "#2d6d66", olive =
               "#5c4717", cyan = "#00ffff", erose = "#bfa19c", gray = "#808080",
               none = "#000000", gs9 = "#909090", brown = "#9c8847", ltkhaki =
               "#e5daa5", navy8 = "#273f6f", mint = "#00ff80", purple =
               "#800080", emidblue = "#7b92a8", dkorange = "#e37e00", sand =
               "#d9c263", dkgreen = "#006000", green = "#008000", teal =
               "#6e8e84", cranberry = "#c10534"),
             shapes = stata_symbols,
             ## From s1mono and s2mono
             ## help linepatternstyle
             ## linepattern p1line  solid
             ## linepattern p2line  dash
             ## linepattern p3line  vshortdash
             ## linepattern p4line  longdash_dot
             ## linepattern p5line  longdash
             ## linepattern p6line  dash_dot
             ## linepattern p7line  dot
             ## linepattern p8line  shortdash_dot
             ## linepattern p9line  tight_dot
             ## linepattern p10line dash_dot_dot
             ## linepattern p11line longdash_shortdash
             ## linepattern p12line dash_3dot
             ## linepattern p13line longdash_dot_dot
             ## linepattern p14line shortdash_dot_dot
             ## linepattern p15line longdash_3dot
             ##
             ## Conversion between Stata decimals and R hex
             ## Range of stata dash lengths is 4 to 0.1
             ## x <- ceiling(seq(.1, 1, by=0.1) / (4/15))
             ## names(x) <- seq(.1, 1, by=0.1)
             ## 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9   1
             ##   1   1   2   2   2   3   3   3   4   4
             ## 2 = 8
             ## 4 = F

             linetypes =
             c(
                 ## solid
                 "solid",
                 ## dash = "2 1"
                 "84",
                 ## vshortdash = ".5 .7",
                 "23",
                 ## longdash_dot = "4 1 .1 1",
                 "F414",
                 ## longdash = "4 1",
                 "F4",
                 ## dash_dot = "2 .9 .1 .9",
                 "8414",
                 ## dot = ".1 .7",
                 "13",
                 ## shortdash_dot = ".8 .8 .1 .8"
                 "3313",
                 ## tight_dot = ".1 .4"
                 "12",
                 ## dash_dot_dot = "2 .9 .1 .9 .1 .9"
                 "841414",
                 ## longdash_shortdash = "4 1 .8 1 .8 1 .8"
                 "F434343",
                 ## dash_3dot "2 .9 .1 .9 .1 .9 .1 .9"
                 "84141414",
                 ## longdash_dot_dot "4 1 .1 1 .1 1"
                 "F41414",
                 ## shortdash_dot_dot ".8 .8 .1 .8 .1 .8"
                 "331313",
                 ## longdash_3dot "4 1 .1 1 .1 1 .1 1",
                 "F4141414"
                 )
             )

    ## Stephen Few
    x$few <-
        list(medium=
             c(gray="#737373",
               red="#F15A60",
               green="#7AC36A",
               blue="#5A9BD4",
               orange="#FAA75B",
               purple="#9E67AB",
               maroon="#CE7058",
               magenta="#D77FB4"),
             dark=
             c(black="#010202",
               red="#EE2E2F",
               green="#008C48",
               blue="#185AA9",
               orange="#F47D23",
               purple="#662C91",
               maroon="#A21D21",
               magenta="#B43894"),
             light=
             c(gray="#CCCCCC",
               red="#F2AFAD",
               green="#D9E4AA",
               blue="#B8D2EC",
               orange="#F3D1B0",
               purple="#D5B2D4",
               maroon="#DDB9A9",
               magenta="#EBC0DA"))

    x$tableau <- list()
    x$tableau$colors <-
    list(
        tableau20 =
        c(blue="#1F77B4",
          blue_light="#AEC7E8",
          orange="#FF7F0E",
          orange_light="#FFBB78",
          green="#2CA02C",
          green_light="#98DF8A",
          red="#D62728",
          red_light="#FF9896",
          purple="#9467BD",
          purple_light="#C5B0D5",
          brown="#8C564B",
          brown_light="#C49C94",
          pink="#E377C2",
          pink_light="#F7B6D2",
          gray="#7F7F7F",
          gray_light="#C7C7C7",
          gold="#BCBD22",
          gold_light="#DBDB8D",
          teal="#17BECF",
          teal_light="#9EDAE5"),
        ## Tablau10 are odd, Tableau10-light are even
        tableau10medium =
        c(blue="#729ECE",
          orange="#FF9E4A",
          green="#67BF5C",
          red="#ED665D",
          purple="#AD8BC9",
          brown="#A8786E",
          pink="#ED97CA",
          gray="#A2A2A2",
          gold="#CDCC5D",
          teal="#6DCCDA"),
        gray5 =
        c("#60636A",
          "#A5ACAF",
          "#414451",
          "#8F8782",
          "#CFCFCF"),
        colorblind10 =
        c("#006BA4",
          "#FF800E",
          "#ABABAB",
          "#595959",
          "#5F9ED1",
          "#C85200",
          "#898989",
          "#A2C8EC",
          "#FFBC79",
          "#CFCFCF"),
        trafficlight =
        c("#B10318",
          "#DBA13A",
          "#309343",
          "#D82526",
          "#FFC156",
          "#69B764",
          "#F26C64",
          "#FFDD71",
          "#9FCD99"),
        purplegray12 =
        c("#7B66D2",
          "#A699E8",
          "#DC5FBD",
          "#FFC0DA",
          "#5F5A41",
          "#B4B19B",
          "#995688",
          "#D898BA",
          "#AB6AD5",
          "#D098EE",
          "#8B7C6E",
          "#DBD4C5"),
        ## purplegray6 is oddd
        bluered12 =
        c("#2C69B0",
          "#B5C8E2",
          "#F02720",
          "#FFB6B0",
          "#AC613C",
          "#E9C39B",
          "#6BA3D6",
          "#B5DFFD",
          "#AC8763",
          "#DDC9B4",
          "#BD0A36",
          "#F4737A"),
        ## bluered6 is odd
        greenorange12 =
        c("#32A251",
          "#ACD98D",
          "#FF7F0F",
          "#FFB977",
          "#3CB7CC",
          "#98D9E4",
          "#B85A0D",
          "#FFD94A",
          "#39737C",
          "#86B4A9",
          "#82853B",
          "#CCC94D")
        ## greenorange6 is odd
        )
    x$tableau$shapes <-
    list(proportions = c(#
         -0x25CBL, # White circle
         -0x25DL, # CIRCLE WITH UPPER RIGHT QUADRANT BLACK
         -0x25D1L, #CIRCLE WITH RIGHT HALF BLACK
         -0x25D5L, # CIRCLE WITH ALL BUT UPPER LEFT QUADRANT BLACK
         -0x25CFL # Black Circle
         ),
         default = c(
         1L, # circle
         0L, # square
         3L, # plus
         4L, # x
         -0x2217L, # multiplication symbol
         5L, # diamond
         -0x25B3L, # WHITE UP-POINTING TRIANGLE
         -0x25BDL, # WHITE DOWN-POINTING TRIANGLE
         -0x25B7L, # WHITE RIGHT-POINTING TRIANGLE
         -0x25C1L # WHITE LEFT-POINTING TRIANGLE
         ),
         filled = c(
         16L, # black circle
         15L, # black square
         -0x2795L, # heavy plus sign
         -0x2716L, # heavy multiplication x
         -0x2605L, # black star
         18L, # diamond
         -0x25B2L, # WHITE UP-POINTING TRIANGLE
         -0x25BCL, # WHITE DOWN-POINTING TRIANGLE
         -0x25B6L, # WHITE RIGHT-POINTING TRIANGLE
         -0x25C0L # WHITE LEFT-POINTING TRIANGLE
         ),
         gender =
         c(-0x2642L, # male
           -0x2640L # female
           ),
         kpi =
         c(-0x2713L, # check mark
          21L, # exclamation point
          4L, # x
          16L, # solid circle
          17L, # solid triangle
          18L # solid diamond
          ),
         thin_arrows =
         c(-0x2193L, # downwards
           -0x2198L, # southeast
           -0x2192L, # rightwards
           -0x2197L, # northeast
           -0x2191L, # upwards
           -0x2196L, # north west
           -0x2190L, # leftwards
           -0x2199L # south west
           ),
         weather =
         c(-0x2600L, # black sun with rays
           -0x2601L, # coloud
           -0x2602L, # umbrella
           -0x2603L # snowman
         ))
    ## Return
    x$manyeyes <-
        c("#9c9ede", "#7375b5", "#4a5584", "#cedb9c", "#b5cf6b",
          "#8ca252", "#637939", "#e7cb94", "#e7ba52", "#bd9e39",
          "#8c6d31", "#e7969c", "#d6616b", "#ad494a", "#843c39",
          "#de9ed6", "#ce6dbd", "#a55194", "#7b4173")
    x
}


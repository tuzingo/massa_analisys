library('ggplot2')
library('tidyr')

dados <- read.table("dados_por_estagio.csv", header = TRUE, sep = ",")
attach(dados)

# Correlation code section

  corr2 <- cor(X2KMPH_ACC, X2KMPH_APP)
  corr4 <- cor(X4KMPH_ACC, X4KMPH_APP)
  corr6 <- cor(X6KMPH_ACC, X6KMPH_APP)
  corr8 <- cor(X8KMPH_ACC, X8KMPH_APP)
  corr10 <- cor(X10KMPH_ACC, X10KMPH_APP)
  corr12 <- cor(X12KMPH_ACC, X12KMPH_APP)

# Bland-Altman chart code section

 bland1 <- ggplot(dados, aes(x = dados$X2KMPH_APP, y = dados$X2KMPH_ACC)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE)+
   theme_classic() +
   labs(
     y = "ACC",
     x = "APP",
     title = "2 Km/h"
   )
  bland2 <- ggplot(dados, aes(x = dados$X4KMPH_APP, y = dados$X4KMPH_ACC)) +
    geom_point() +
    geom_smooth(method = "lm", se = FALSE)+
    theme_classic() +
    labs(
      y = "ACC",
      x = "APP",
      title = "4 Km/h",
    )
  bland3 <- ggplot(dados, aes(x = dados$X6KMPH_APP, y = dados$X6KMPH_ACC)) +
    geom_point() +
    geom_smooth(method = "lm", se = FALSE)+
      theme_classic() +
    labs(
      y = "ACC",
      x = "APP",
      title = "6 Km/h"
    )
  bland4 <- ggplot(dados, aes(x = dados$X8KMPH_APP, y = dados$X8KMPH_ACC)) +
    geom_point() +
    geom_smooth(method = "lm", se = FALSE)+
    theme_classic() +
    labs(
      y = "ACC",
      x = "APP",
      title = "8 Km/h"
    )
  bland5 <- ggplot(dados, aes(x = dados$X10KMPH_APP, y = dados$X10KMPH_ACC)) +
    geom_point() +
    geom_smooth(method = "lm", se = FALSE)+
      theme_classic() +
      labs(
        y = "ACC",
        x = "APP",
        title = "10 Km/h"
      )
  bland6 <- ggplot(dados, aes(x = dados$X12KMPH_APP, y = dados$X12KMPH_ACC)) +
  geom_point() +
    geom_smooth(method = "lm", se = FALSE)+
      theme_classic() +
      labs(
      y = "ACC",
      x = "APP",
      title = "12 Km/h"
      )

# Function to print many charts in just one

multiplot <- function(..., plotlist=NULL, file, cols=1, layout=NULL) {
  require(grid)

  # Make a list from the ... arguments and plotlist
  plots <- c(list(...), plotlist)

  numPlots <- length(plots)

  # If layout is NULL, then use 'cols' to determine layout
  if (is.null(layout)) {
    # Make the panel
    # ncol: Number of columns of plots
    # nrow: Number of rows needed, calculated from # of cols
    layout <- matrix(seq(1, cols * ceiling(numPlots/cols)),
                     ncol = cols, nrow = ceiling(numPlots/cols))
  }

  if (numPlots==1) {
    print(plots[[1]])

  } else {
    # Set up the page
    grid.newpage()
    pushViewport(viewport(layout = grid.layout(nrow(layout), ncol(layout))))

    # Make each plot, in the correct location
    for (i in 1:numPlots) {
      # Get the i,j matrix positions of the regions that contain this subplot
      matchidx <- as.data.frame(which(layout == i, arr.ind = TRUE))

      print(plots[[i]], vp = viewport(layout.pos.row = matchidx$row,
                                      layout.pos.col = matchidx$col))
    }

  }
}

multiplot(bland1, bland2, bland3, bland4, bland5, cols=2)



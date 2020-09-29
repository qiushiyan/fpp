options(dplyr.print_min = 6, dplyr.print_max = 6)
set.seed(1112)
Sys.setlocale("LC_ALL","English")

knitr::opts_chunk$set(
  comment = "#>",
  collapse = TRUE,
  out.width = "100%",
  fig.width = 7,
  fig.asp = 0.618,  # 1 / phi
  fig.align = "center",
  message = FALSE,
  warning = FALSE
)

library(tidyverse)

theme_minimal_modified <- function(base_size = 11,
                      strip_text_size = 12,
                      strip_text_margin = 5,
                      subtitle_size = 13,
                      subtitle_margin = 10,
                      plot_title_size = 16,
                      plot_title_margin = 10,
                      ...) {
  ret <- ggplot2::theme_minimal(base_size = base_size, ...)
  ret$strip.text <- ggplot2::element_text(
    hjust = 0, size = strip_text_size,
    margin = ggplot2::margin(b = strip_text_margin)
  )
  ret$plot.subtitle <- ggplot2::element_text(
    hjust = 0, size = subtitle_size,
    margin = ggplot2::margin(b = subtitle_margin)
  )
  ret$plot.title <- ggplot2::element_text(
    hjust = 0, size = plot_title_size,
    margin = ggplot2::margin(b = plot_title_margin)
  )
  ret
}

ggplot2::theme_set(theme_minimal_modified())



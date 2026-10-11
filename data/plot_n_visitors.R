#!/bin/env Rscript
t <- readr::read_csv("n_visitors_in_time.csv", show_col_types = FALSE)
max_n_visitors <- max(t$n_visitors)

ggplot2::ggplot(t, ggplot2::aes(x = date, y = n_visitors)) + 
  ggplot2::scale_x_date(name = "Date") +
  ggplot2::scale_y_continuous(
    name = "Number of people",
    limits = c(0, NA)
  ) +
  ggplot2::geom_point(size = 10) +
  ggplot2::geom_line() +
  ggplot2::geom_smooth(color = "white", formula = y ~ x, method = "loess") +
  ggplot2::labs(
    title = "Number of people per event"
  ) +
  ggplot2::theme(text = ggplot2::element_text(size = 20)) +
  ggplot2::theme(
    axis.text.x = ggplot2::element_text(angle = 90, vjust = 0.5, hjust = 1)
  ) +
  ggplot2::theme(legend.position = "bottom")
  
ggplot2::ggsave("n_visitors_in_time.png", width = 7, height = 7)




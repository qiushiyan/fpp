
library(purrr)
library(magrittr)
library(tidyr)

sample <- rcauchy(200, location = 2, scale = 1)

# 计算某对 (location, scale) 下生成样本的对数似然函数值
cauchy_loglik <- function(sample, location, scale) {
  loglik <- map_dbl(sample, ~ -log(pi) + log(scale) - log((.x - location) ^ 2 + scale ^ 2)) %>% 
    reduce(`+`)
  loglik
}

# 根据不同的 (location, scale)，计算生成样本的对数似然函数值，返回一个向量
compute_loglik <- function(sample, location, scale) {
  expand_grid(location, scale) %>% 
    pmap_dbl( ~ cauchy_loglik(sample = sample, location = .x, scale = .y)) 
}

compute_loglik(sample = sample, location = 1:10, scale = seq(0.5, 1.5, by = 0.1)) %>%
  which.max()

library(dplyr)
expand_grid(location  = 1:10, scale = seq(0.5, 1.5, by = 0.1)) %>% 
  pmap_dbl( ~ cauchy_loglik(sample = sample, location = .x, scale = .y)) %>% 
  enframe() %>% 
  bind_cols(expand_grid(location  = 1:10, scale = seq(0.5, 1.5, by = 0.1))) %>% 
  filter(value == max(value))

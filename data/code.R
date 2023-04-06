setwd("/home/agricolamz/work/databases/TukitaDict")
library(tidyverse)

read_csv("data/raw_data.csv", show_col_types = FALSE, guess_max = 1103) %>% 
  filter(!is.na(orthography)) %>%
  select(id, Russian, English, orthography, transcription, prs, form2, form3, pos, additional_forms, kk, jena200, gld110, def_RU, context) %>%
  arrange(id) %>%
  write_csv("data/data.csv", na = "")

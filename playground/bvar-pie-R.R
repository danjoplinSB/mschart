library(mschart)
library(officer)

# example chart 05 -------

dat_no_group <- data.frame(
  stringsAsFactors = FALSE,
  cut = c("Fair", "Good", "Very Good", "Premium", "Ideal"),
  carat = c(1, 0.82, 0.71, 0.86, 0.54),
  n = c(1610L, 4906L, 12082L, 13791L, 21551L),
  label = c("carat median is 1.0",
            "carat median is 0.8","carat median is 0.7",
            "carat median is 0.9","carat median is 0.5")
)

chrt <- ms_piechart(
  data = dat_no_group,
  x = "cut",
  # labels = "label",
  y = "n"
)
text_prop <- fp_text(font.size = 11, color = "gray")
chrt <- chart_settings(chrt,
                       grouping = "clustered")
chrt <- chart_data_labels(chrt, position = "outEnd")
chrt <- chart_labels_text(chrt, text_prop)

print(chrt, preview = T)

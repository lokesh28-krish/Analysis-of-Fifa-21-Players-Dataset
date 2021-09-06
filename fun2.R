best_eleven <- function(budget = NULL, data) {
  price <- budget / 11
  data <- data[data$value_eur <= price, ]
  data <- data[order(-data$improv_overall), ]
  gk <- data[data$team_position == "GK", c("short_name","age","team_position","value_eur")][1,]
  lb <- data[data$team_position == "LB", c("short_name","age","team_position","value_eur")][1,]
  cb <- data[data$team_position == "FB", c("short_name","age","team_position","value_eur")][1:2,]
  rb <- data[data$team_position == "RB", c("short_name","age","team_position","value_eur")][1,]
  dmf <- data[data$team_position == "DMF", c("short_name","age","team_position","value_eur")][1,]
  cmf <- data[data$team_position == "CMF", c("short_name","age","team_position","value_eur")][1:2,]
  rw <- data[data$team_position == "RW", c("short_name","age","team_position","value_eur")][1,]
  lw <- data[data$team_position == "LW", c("short_name","age","team_position","value_eur")][1,]
  st <- data[data$team_position == "ST", c("short_name","age","team_position","value_eur")][1,]
  eleven <- do.call("rbind", list(gk, lb, cb, rb,dmf,cmf,rw,lw,st))
  eleven
}
### estimate values of good, expressed relative to the least valuable one

get_exchange_rates <- function(transactions) {
  
  fit <- lm(c ~ a + b + 0, data = transactions)
  
  # return estimated values of other items
  result <- fit$coefficients * -1
  return(data.frame(result))
}

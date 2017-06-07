### PRIZING A BARTER MARKET BASED ON OBSERVED TRANSACTIONS
### szenario: to estimate market values from OBSERVED barter transactions

# transaction matrix (rows: number positive goods traded against negative ones)
transactions <- 
  data.frame(a = c(1, 0, 1), 
             b = c(-1, 1, 1), 
             c = c(0, -3, -6))

# estimating values of good, expressed relative to the least valuable one
fit <- lm(c ~ a + b + 0, data = transactions)

# return estimated values of other items
fit$coefficients * -1

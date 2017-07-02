### PRICE A BARTER MARKET BASED ON OBSERVED TRANSACTIONS
### szenario: to estimate market values from OBSERVED barter transactions

source('../src/prizing_from_observations.R', chdir = T)

# transaction matrix (rows: number positive goods traded against negative ones)
transactions <- data.frame(a = c(1, 0, 1), 
                           b = c(-1, 1, 1), 
                           c = c(0, -3, -6))

# print results
print("Value of goods A and B, expressed relative to C:")
exchange_rates <- get_exchange_rates(transactions)
print.data.frame(exchange_rates)


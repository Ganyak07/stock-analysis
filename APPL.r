# Load required libraries
library(quantmod)
install.packages("quantmod")
# Load required librarieslibrary(quantmod)
library(quantmod)
# Define the stock symbol and the date range
stock_symbol <- "AAPL"
start_date <- "2020-01-01"
end_date <- "2024-01-01"
# Fetch historical stock prices
getSymbols(stock_symbol, src = "yahoo", from = start_date, to = end_date)
# Plot the closing prices
plot(Cl(AAPL), main = paste("Historical Stock Prices for", stock_symbol), ylab = "Price (USD)", type = "l")
# Calculate basic statistics
stock_data <- Cl(AAPL)
mean_price <- mean(stock_data)
median_price <- median(stock_data)
min_price <- min(stock_data)
max_price <- max(stock_data)
# Print the basic statistics
cat("Mean Price:", mean_price, "\n")
cat("Median Price:", median_price, "\n")
cat("Minimum Price:", min_price, "\n")
cat("Maximum Price:", max_price, "\n"
# Calculate daily returns
daily_returns <- diff(log(stock_data))
# Calculate daily returns
daily_returns <- diff(log(stock_data))
# Plot the daily returns
plot(daily_returns, main = paste("Daily Returns for", stock_symbol), ylab = "Daily Returns", type = "l")
# Calculate volatility (standard deviation of daily returns)
volatility <- sd(daily_returns)
# Calculate cumulative returns
cumulative_returns <- cumsum(daily_returns)
# Plot cumulative returns
plot(cumulative_returns, main = paste("Cumulative Returns for", stock_symbol), ylab = "Cumulative Returns", type = "l"
# Print additional metrics
cat("Volatility (standard deviation of daily returns):", volatility, "\n")
# Print additional metrics
cat("Volatility (standard deviation of daily returns):", volatility, "\n")
cat("Total Cumulative Returns:", tail(cumulative_returns, 1), "\n")
# Load ggplot2 library
library(ggplot2)
install.packages("ggplot2")
# Load ggplot2 library
library(ggplot2)
# Create a data frame for daily returns
daily_returns_df <- data.frame(Date = index(daily_returns), Returns = coredata(daily_returns))
# Plot daily returns using ggplot2
ggplot(data = daily_returns_df, aes(x = Date, y = Returns)) +
geom_line(color = "blue") +
labs(title = paste("Daily Returns for", stock_symbol), y = "Daily Returns") +
theme_minimal()
# Plot daily returns using ggplot2
ggplot(data = daily_returns_df, aes(x = Date, y = Returns)) +
geom_line(color = "blue") +
labs(title = paste("Daily Returns for", stock_symbol), y = "Daily Returns") +
theme_minimal()
Create a data frame for cumulative returns
#Create a data frame for cumulative returns
cumulative_returns_df <- data.frame(Date = index(cumulative_returns), Returns = cumulative_returns)
# Plot cumulative returns using ggplot2
ggplot(data = cumulative_returns_df, aes(x = Date, y = Returns)) +
geom_line(color = "green") +
labs(title = paste("Cumulative Returns for", stock_symbol), y = "Cumulative Returns") +
theme_minimal()
# Create a data frame for daily returns
daily_returns_df <- data.frame(Date = index(daily_returns), Returns = as.numeric(daily_returns))
# Plot daily returns using ggplot2
ggplot(data = daily_returns_df, aes(x = Date, y = Returns)) +
geom_line(color = "blue") +
labs(title = paste("Daily Returns for", stock_symbol), y = "Daily Returns") +
theme_minimal()
# Create a data frame for cumulative returns
cumulative_returns_df <- data.frame(Date = index(cumulative_returns), Returns = as.numeric(cumulative_returns))
# Plot cumulative returns using ggplot2
ggplot(data = cumulative_returns_df, aes(x = Date, y = Returns)) +
geom_line(color = "green") +
labs(title = paste("Cumulative Returns for", stock_symbol), y = "Cumulative Returns") +
theme_minimal()
savehistory("/cloud/project/stock.Rhistory")

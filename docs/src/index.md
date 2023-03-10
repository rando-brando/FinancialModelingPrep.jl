Financial Modeling Prep API wrapper with Julia.

## Disclaimer
Data is provided by [Financial Modeling Prep]\
(https://financialmodelingprep.com/developer/docs/) and requires a paid subscription to access some endpoints.

Only endpoints available with a starter plan have been implemented. Function to endpoint mappings are provided below.

## Installation
``` julia
pkg> add FinancialModelingPrep
```

## Getting Started

``` julia
using FinancialModelingPrep
```
``` julia
# load your API key
FMP_API_KEY = ENV["FMP_API_KEY"]

# create a new FMP API instance
fmp = FMP(apikey = FMP_API_KEY)
```
``` julia
# pass API instance to any endpoint method
data = income_statements(fmp, "AAPL")
```
``` julia
using DataFrames

# load the response data into a data frame
df = DataFrame(data)
```
``` julia
# sample data frame output 
df[1:5, 1:4]
5×4 DataFrame
 Row │ incomeTaxExpense  reportedCurrency  incomeBeforeTaxRatio  depreciationAndAmortization 
     │ Int64             String            Float64               Int64                       
─────┼───────────────────────────────────────────────────────────────────────────────────────
   1 │      19300000000  USD                           0.30204                   11104000000
   2 │      14527000000  USD                           0.298529                  11284000000
   3 │       9680000000  USD                           0.244398                  11056000000
   4 │      10481000000  USD                           0.252666                  12547000000
   5 │      13372000000  USD                           0.274489                  10903000000
```
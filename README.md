# FinancialModelingPrep

*Financial Modeling Prep API wrapper for for Julia*

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
fmp = FMP(api_key = FMP_API_KEY)
```
``` julia
# pass API instance to any endpoint method
data = income_statements(fmp, "AAPL")
```

## Disclaimer
Data is provided by [Financial Modeling Prep](https://financialmodelingprep.com/developer/docs/) and requires a paid subscription to access some endpoints.

"""
    available_indexes(fmp)

Returns a vector of all available indexes. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.

See [Available-Indexes](https://site.financialmodelingprep.com/developer/docs/#Historical-stock-index-prices) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get a list of all available indexes
data = available_indexes(fmp)
```
"""
function available_indexes(fmp::FMP)
    endpoint = "symbol/available_indexes"
    url, query = Client.make_url_v3(fmp, endpoint)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end

"""
    sp500_companies(fmp, historical = false)

Returns a vector of all S&P 500 companies. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- historical::Bool: Return historical or current companies.

See [List-of-S&P-500-Companies](https://site.financialmodelingprep.com/developer/docs/#List-of-S&P-500-companies) for more details.\\
See [Historical-S&P-500-Companies](https://site.financialmodelingprep.com/developer/docs/#Historical-S&P-500) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get a list of all historical S&P 500 companies
data = sp500_companies(fmp, historical = true)
```
"""
function sp500_companies(fmp::FMP; historical::Bool = false)
    endpoint = ("historical/" ^ historical) * "sp500_constituent"
    url, query = Client.make_url_v3(fmp, endpoint)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end

"""
    nasdaq_companies(fmp, historical = false)

Returns a vector of all Nasdaq companies. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- historical::Bool: Return historical or current companies.

See [List-of-Nasdaq-100-Companies](https://site.financialmodelingprep.com/developer/docs/#List-of-Nasdaq-100-companies) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get a list of all historical Nasdaq 100 companies
data = nasdaq_companies(fmp, historical = true)
```
"""
function nasdaq_companies(fmp::FMP; historical::Bool = false)
    endpoint = ("historical/" ^ historical) * "nasdaq_constituent"
    url, query = Client.make_url_v3(fmp, endpoint)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end

"""
    dowjones_companies(fmp, historical = false)

Returns a vector of all Dow Jones companies. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- historical::Bool: Return historical or current companies.

See [List-of-Dow-Jones-Companies](https://site.financialmodelingprep.com/developer/docs/#List-of-Dow-Jones-companies) for more details.\\
See [Historical-Dow-Jones-Companies](https://site.financialmodelingprep.com/developer/docs/#Historical-Dow-Jones) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get a list of all historical Dow Jones companies
data = dowjones_companies(fmp, historical = true)
```
"""
function dowjones_companies(fmp::FMP; historical::Bool = false)
    endpoint = ("historical/" ^ historical) * "dowjones_constituent"
    url, query = Client.make_url_v3(fmp, endpoint)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end
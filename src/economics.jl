"""
    market_risk_premiums(fmp)

Returns a JSON table of market risk premiums for each country.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.

See [Market-Risk-Premium]\
(https://site.financialmodelingprep.com/developer/docs/#Market-Risk-Premium) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get all market risk premiums
data = market_risk_premiums(fmp)
```
"""
function market_risk_premiums(fmp::FMP)
    endpoint = "market_risk_premium"
    url, query = Client.make_url_v4(fmp, endpoint)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end

"""
    treasury_rates(fmp, params...)

Returns a list of the treasury rates for the specified date range.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `params...`: Additional keyword query params.

See [Treasury-Rates]\
(https://site.financialmodelingprep.com/developer/docs/#Treasury-Rates) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the treasury rates for Q1 2022
data = treasury_rates(fmp, from = "2022-01-01", to = "2022-03-31")
```
"""
function treasury_rates(fmp::FMP; params...)
    endpoint = "treasury"
    url, query = Client.make_url_v4(fmp, endpoint; params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end

"""
    economic_indicator(fmp, name, params...)

Returns a list of the treasury rates for the specified date range.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `name::String`: An econmic indicator.
- `params...`: Additional keyword query params.

See [Economic-Indicator]\
(https://site.financialmodelingprep.com/developer/docs/#Economic-Indicator) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the real GDP for Q1 2022
data = economic_indicator(fmp, name = "realGDP", from = "2022-01-01", to = "2022-03-31")

# get the federal funds rate for Q1 2022
data = economic_indicator(fmp, name = "federalFunds", from = "2022-01-01", to = "2022-03-31")
```
"""
function economic_indicator(fmp::FMP; name::String, params...)
    endpoint = "economic"
    url, query = Client.make_url_v4(fmp, endpoint; name, params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end
economic_indicator(fmp::FMP, name::String; params...) = economic_indicator(fmp; name, params...)

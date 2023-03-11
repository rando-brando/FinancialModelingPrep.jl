"""
    company_profile(fmp, symbol)

Returns the company profile for the specified symbol.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `symbol::String`: A stock symbol.

See [Company-Profile]\
(https://site.financialmodelingprep.com/developer/docs/#Company-Profile) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the company profile for AAPL
data = company_profile(fmp, "AAPL")
```
"""
function company_profile(fmp::FMP; symbol::String)
    endpoint = "profile/$(symbol)"
    url, query = Client.make_url_v3(fmp, endpoint)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end
company_profile(fmp::FMP, symbol::String) = company_profile(fmp; symbol)

"""
    key_executives(fmp, symbol)

Returns the key executives for the specified symbol.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `symbol::String`: A stock symbol.

See [Key-Executives]\
(https://site.financialmodelingprep.com/developer/docs/#Key-Executives) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the key executives for AAPL
data = key_executives(fmp, "AAPL")
```
"""
function key_executives(fmp::FMP; symbol::String)
    endpoint = "key-executives/$(symbol)"
    url, query = Client.make_url_v3(fmp, endpoint)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end
key_executives(fmp::FMP, symbol::String) = key_executives(fmp; symbol)

"""
    company_outlook(fmp, symbol, accessor)

Returns a JSON table or dictionary of the company outlook for the specified symbol.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `symbol::String`: A stock symbol.
- `accessor::Symbol`: An accessor Symbol which contains a nested array.

See [Company-Outlook]\
(https://site.financialmodelingprep.com/developer/docs/#Company-Outlook) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the company outlook for AAPL
data = company_outlook(fmp, "AAPL")
```
"""
function company_outlook(fmp::FMP; symbol::String, accessor = nothing)
    endpoint = "company-outlook"
    url, query = Client.make_url_v4(fmp, endpoint; symbol)
    response = Client.make_get_request(url, query)
    if isnothing(accessor)
        data = Client.parse_json_object(response)
    else
        data = Client.parse_json_table(response, accessor)
    end
    return data
end
company_outlook(fmp::FMP, symbol::String; accessor = nothing) = company_outlook(fmp; symbol, accessor)

"""
    stock_peers(fmp, symbol)

Returns a JSON array of the stock peers for the specified symbol.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `symbol::String`: A stock symbol.

See [Stock-Peers]\
(https://site.financialmodelingprep.com/developer/docs/#Stock-Peers) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the stock peers for AAPL
data = stock_peers(fmp, "AAPL")
```
"""
function stock_peers(fmp::FMP; symbol::String)
    endpoint = "stock_peers"
    url, query = Client.make_url_v4(fmp, endpoint; symbol)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response, :peersList)
    return data
end
stock_peers(fmp::FMP, symbol::String) = stock_peers(fmp; symbol)

"""
    nyse_schedule(fmp)

Returns a JSON dictionary of the NYSE schedule including market hours and market holidays.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.

See [NYSE-Schedule]\
(https://site.financialmodelingprep.com/developer/docs/#NYSE-Holidays-and-Trading-Hours) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the NYSE holiday schedule
data = nyse_schedule(fmp)[:stockMarketHolidays]
```
"""
function nyse_schedule(fmp::FMP)
    endpoint = "is-the-market-open"
    url, query = Client.make_url_v3(fmp, endpoint)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_object(response)
    return data
end

"""
    delisted_companies(fmp, params...)

Returns delisted companies.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `params...`: Additional keyword query params.

See [Delisted-Companies]\
(https://site.financialmodelingprep.com/developer/docs/#Delisted-Companies) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the first page of delisted companies
data = delisted_companies(fmp, page = 0)
```
"""
function delisted_companies(fmp::FMP; params...)
    endpoint = "delisted-companies"
    url, query = Client.make_url_v3(fmp, endpoint; params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end

"""
    symbol_changes(fmp)

Returns changed symbols.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.

See [Symbol-Change]\
(https://site.financialmodelingprep.com/developer/docs/#Symbol-Change) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get symbol changes
data = symbol_changes(fmp)
```
"""
function symbol_changes(fmp::FMP)
    endpoint = "symbol_change"
    url, query = Client.make_url_v4(fmp, endpoint)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end

"""
    company_information(fmp, symbol)

Returns company information for the specified symbol.

# Arguments
- `fmp::FMP`: A Financial Modeling Prep instance.
- `symbol::String`: A stock symbol.

See [Stock-Peers]\
(https://site.financialmodelingprep.com/developer/docs/#Stock-Peers) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the company information for AAPL
data = company_information(fmp, "AAPL")
```
"""
function company_information(fmp::FMP; symbol::String)
    endpoint = "company-core-information"
    url, query = Client.make_url_v4(fmp, endpoint, symbol = symbol)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end
company_information(fmp::FMP, symbol::String) = company_information(fmp; symbol)

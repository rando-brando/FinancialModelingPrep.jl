"""
    company_profile(fmp, symbol)

Returns the company profile for the specified symbol. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- symbol::String: A stock symbol.

See [Company-Profile](https://site.financialmodelingprep.com/developer/docs/#Company-Profile) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the company profile for AAPL
data = company_profile(fmp, "AAPL")
```
"""
function company_profile(fmp::FMP, symbol::String)::Vector{Any}
    endpoint = "profile/$(symbol)"
    url, query = Client.make_url_v3(fmp, endpoint)
    response = Client.make_request(url, query)
    data = Client.parse_response(response)
    return data
end
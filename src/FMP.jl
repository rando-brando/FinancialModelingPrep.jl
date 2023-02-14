"""
    FMP(api_key, base_url, headers)

Creates a FMP instance for interacting with the Financial Modeling Prep API endpoints.

# Arguments
- api_key::String
- base_url::String
- headers::Dict{String, String}

# Examples
``` julia
# load your FMP API key
my_key = ENV("FMP_API_KEY")

# create a new FMP instance, passing the API key by name
fmp = FMP(api_key = my_key)
```
"""
@kwdef struct FMP
    api_key::String = "demo"
    base_url::String = "https://financialmodelingprep.com/"
    headers::Dict{String, String} = Dict{String, String}("Upgrade-Insecure-Requests" => "1")
end
"""
    earnings_surprises(fmp::FMP, symbol::String)

Returns a vector of earnings suprises for the specified symbol. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- symbol::String: A stock symbol.

See [Earnings-Surprises](https://site.financialmodelingprep.com/developer/docs/#Earnings-Surprises) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the latest earnings surprises
data = earnings_surprises(fmp, "AAPL")
```
"""
function earnings_surprises(fmp::FMP, symbol::String)::Vector{Any}
    endpoint = "api/v3/earnings-surprises/" 
    query = Dict{String, Any}("apikey" => fmp.api_key)
    url = fmp.base_url * endpoint * symbol
    response = Handler.make_request(url, query)
    data = Handler.parse_response(response)
    return data
end

"""
    analyst_estimates(fmp::FMP, symbol::String, period::String = "annual", limit::Integer = 30)

Returns a vector of analyst estimates for the specified symbol. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- symbol::String: A stock symbol.
- params...: Additional keyword query params.

See [Analyst-Estimates](https://site.financialmodelingprep.com/developer/docs/#Analyst-Estimates) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the last 4 quarters of analyst estiamtes
data = analyst_estimates(fmp, "AAPL", period = "quarter", limit = 4)
```  
"""
function analyst_estimates(fmp::FMP, symbol::String; params...)::Vector{Any}
    endpoint = "api/v3/analyst-estimates/"
    query = Dict{String, Any}(string(k) => v for (k, v) in params)
    query["apikey"] = fmp.api_key
    url = fmp.base_url * endpoint * symbol
    response = Handler.make_request(url, query)
    data = Handler.parse_response(response)
    return data
end
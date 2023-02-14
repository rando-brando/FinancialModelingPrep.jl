"""
    earnings_surprises(fmp::FMP, symbol::String)

Returns a vector of earnings suprises for the specified symbol. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- symbol::String: A stock symbol.
"""
function earnings_surprises(fmp::FMP, symbol::String)
    endpoint = "api/v3/earnings-surprises/" 
    query = [("apikey", fmp.api_key)]
    response = HTTP.get(fmp.base_url * endpoint * symbol, query = query)
    data = JSON.parse(String(response.body))
    return data
end

"""
    analyst_estimates(fmp::FMP, symbol::String, period::String = "annual", limit::Integer = 30)

Returns a vector of analyst estimates for the specified symbol. Each element is a dictionary.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- symbol::String: A stock symbol.
"""
function analyst_estimates(fmp::FMP, symbol::String, period::String = "annual", limit::Integer = 30)
    endpoint = "api/v3/analyst-estimates/"
    query = [("limit", limit), ("apikey", fmp.api_key)]
    if period == "quarter"
        pushfirst!(query, ("period", period))
    end
    response = HTTP.get(fmp.base_url * endpoint * symbol, query = query)
    data = JSON.parse(String(response.body))
    return data
end
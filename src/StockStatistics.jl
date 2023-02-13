"""
    earnings_surprises(fmp, symbol)

Returns a vector of earnings suprises for the specified symbol. Each element is a dictionary.
"""
function earnings_surprises(fmp::FMP, symbol::String)
    query = [("apikey", fmp.api_key)]
    response = HTTP.get(fmp.base_url * "api/v3/earnings-surprises/" * symbol, query = query)
    data = JSON.parse(String(response.body))
    return data
end

"""
    analyst_estimates(fmp, symbol, period = "annual", limit = 30)

Returns a vector of analyst estimates for the specified symbol. Each element is a dictionary.
"""
function analyst_estimates(fmp::FMP, symbol::String, period::String = "annual", limit::Integer = 30)
    query = [("limit", limit), ("apikey", fmp.api_key)]
    if period == "quarter"
        pushfirst!(query, ("period", period))
    end
    response = HTTP.get(fmp.base_url * "api/v3/analyst-estimates/" * symbol, query = query)
    data = JSON.parse(String(response.body))
    return data
end
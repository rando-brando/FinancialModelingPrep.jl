"""
    sector_pe_ratios(fmp, params...)

Returns a list of sector pe ratios.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- params...: Additional keyword query params.

See [Sectors-PE-Ratio]\
(https://site.financialmodelingprep.com/developer/docs/#Sectors-PE-Ratio) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the sector PE ratios of the NYSE on Jan 1, 2023
data = sector_pe_ratios(fmp, date = "2023-01-01", exchange = "NYSE")
```
"""
function sector_pe_ratios(fmp::FMP; params...)
    endpoint = "sector_price_earning_ratio"
    url, query = Client.make_url_v4(fmp, endpoint; params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end

"""
    industry_pe_ratios(fmp, params...)

Returns a list of industry pe ratios.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- params...: Additional keyword query params.

See [Industries-PE-Ratio]\
(https://site.financialmodelingprep.com/developer/docs/#Industries-PE-Ratio) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the industry PE ratios of the NYSE on Jan 1, 2023
data = industry_pe_ratios(fmp, date = "2023-01-01", exchange = "NYSE")
```
"""
function industry_pe_ratios(fmp::FMP; params...)
    endpoint = "industry_price_earning_ratio"
    url, query = Client.make_url_v4(fmp, endpoint; params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end

"""
    sector_performances(fmp)

Returns a list of sector performances.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.

See [Sectors-Performance]\
(https://site.financialmodelingprep.com/developer/docs/#Stock-Market-Sectors-Performance) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the sector performances
data = sector_performances(fmp)
```
"""
function sector_performances(fmp::FMP)
    endpoint = "sector-performance"
    url, query = Client.make_url_v3(fmp, endpoint)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end

"""
    historical_sector_performances(fmp, params...)

Returns a list of historical sector perfromances.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.
- params...: Additional keyword query params.

See [Sectors-Performance]\
(https://site.financialmodelingprep.com/developer/docs/#Stock-Market-Sectors-Performance) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the 10 most recent historical sector performances
data = historical_sector_performances(fmp, limit = 10)
```
"""
function historical_sector_performances(fmp::FMP; params...)
    endpoint = "historical-sectors-performance"
    url, query = Client.make_url_v3(fmp, endpoint; params...)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end

"""
    gainers(fmp)

Returns a list of the biggest gainers.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.

See [Most-Gainer]\
(https://site.financialmodelingprep.com/developer/docs/#Most-Gainer-Stock-Companies) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the biggest gainers
data = gainers(fmp)
```
"""
function gainers(fmp::FMP)
    endpoint = "gainers"
    url, query = Client.make_url_v3(fmp, endpoint)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end

"""
    losers(fmp)

Returns a list of the biggest losers.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.

See [Most-Loser]\
(https://site.financialmodelingprep.com/developer/docs/#Most-Loser-Stock-Companies) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the biggest losers
data = losers(fmp)
```
"""
function losers(fmp::FMP)
    endpoint = "losers"
    url, query = Client.make_url_v3(fmp, endpoint)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end

"""
    most_active(fmp)

Returns a list of the most active symbols.

# Arguments
- fmp::FMP: A Financial Modeling Prep instance.

See [Most-Active]\
(https://site.financialmodelingprep.com/developer/docs/#Most-Active-Stock-Companies) for more details.

# Examples
``` julia
# create a FMP API instance
fmp = FMP()

# get the most active symbols
data = most_active(fmp)
```
"""
function most_active(fmp::FMP)
    endpoint = "actives"
    url, query = Client.make_url_v3(fmp, endpoint)
    response = Client.make_get_request(url, query)
    data = Client.parse_json_table(response)
    return data
end

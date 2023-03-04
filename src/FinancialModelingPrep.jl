module FinancialModelingPrep

include("Client.jl")

import .Client
import .Client.FMP

# export preset variables
export 
    REPORTING_PERIODS,
    REVENUE_SEGMENTS,
    TIME_FREQUENCIES

# exports from Client module
export FMP

# exports from pricequotes.jl
export
    price_quote,
    price_quotes,
    historical_price_quote

# exports from stockfundamentals.jl
export
    symbols_with_financials,
    income_statements,
    balance_sheet_statements,
    cash_flow_statements,
    financial_statements,
    financial_reports,
    revenue_segments,
    shares_float,
    earnings_call_transcripts,
    sec_filings,
    company_notes

# exports from stockfundamentalsanalysis.jl
export
    financial_ratios,
    financial_scores,
    owners_earnings,
    enterprise_values,
    income_statements_growth,
    balance_sheet_statements_growth,
    cash_flow_statements_growth,
    financial_statements_growth,
    key_metrics,
    company_rating,
    historical_ratings,
    discounted_cash_flows,
    historical_discounted_cash_flows

# exports from esgscore.jl
export
    esg_scores,
    esg_ratings,
    esg_score_benchmarks

# exports from pricetarget.jl
export
    price_targets,
    price_targets_by_analyst,
    price_targets_by_company,
    price_targets_summary,
    price_targets_consensus,
    price_targets_feed

# exports from upgradesdowngrades.jl
export
    upgrades_and_downgrades,
    upgrades_and_downgrades_feed,
    upgrades_and_downgrades_consensus,
    upgrades_and_downgrades_by_company

# exports from stockcalendars.jl
export
    earnings_calendar,
    earnings_calendar_confirmed,
    ipo_calendar,
    ipo_calendar_prospectus,
    ipo_calendar_confirmed,
    stock_split_calendar,
    dividend_calendar,
    historical_dividends,
    economic_calendar

# exports from stockscreener.jl
export
    search_symbol,
    search_name,
    stock_screener

# exports from companyinformation.jl
export
    company_profile,
    key_executives,
    company_outlook,
    stock_peers,
    nyse_schedule,
    delisted_companies,
    symbol_changes,
    company_information

# exports from stocknews.jl
export
    fmp_articles,
    stock_news,
    stock_news_sentiment_feed,
    crypto_news,
    forex_news,
    general_news,
    press_releases

# exports from marketperformance.jl
export
    sector_pe_ratios,
    industry_pe_ratios,
    sector_performances,
    historical_sector_performances,
    gainers,
    losers,
    most_active

# exports from stockstatistics.jl
export
    social_sentiment,
    stock_grades,
    earnings_surprises,
    analyst_estimates,
    mergers_and_acquisitions_feed,
    mergers_and_acquisitions_search

# export from insidertrading.jl
export
    insider_trading_types,
    insider_trades,
    insider_trades_feed,
    cik_list,
    cik_from_name,
    cik_from_symbol,
    insider_roster,
    insider_roster_statistics,
    fails_to_deliver

# exports from senatetrading.jl
export
    senate_trades,
    senate_trades_feed,
    senate_disclosures,
    senate_disclosure_feed

# exports from economics.jl
export
    market_risk_premiums,
    treasury_rates,
    economic_indicator

# exports from stockprice.jl
export
    otc_quote,
    price_change,
    historical_splits,
    survivorship_bias,
    technical_indicators

# exports from fundholdings.jl
export
    etf_holders,
    etf_summary,
    institutional_holders,
    mutual_fund_holders,
    etf_sector_weightings,
    etf_country_weightings,
    etf_exposure,
    institutions_list,
    cik_search,
    company_from_cik,
    forms_13f,
    filing_dates,
    company_from_cusip

# exports from stocklist.jl
export
    available_symbols,
    tradeable_symbols,
    etf_symbols

# exports from marketindexes.jl
export
    available_indexes,
    sp500_companies,
    nasdaq_companies,
    dowjones_companies

# exports from euronext.jl
export
    available_euronext

# exports from tsx.jl
export
    available_tsx

# exports from cryptoforexcommodities.jl
export
    available_crytocurrencies,
    available_forex_pairs,
    exchange_rates,
    available_commodities

REPORTING_PERIODS = (annual = "annual", quarter = "quarter", ttm = "ttm") # reporting period options
REVENUE_SEGMENTS = (geographic = "geographic", product = "product") # revenue segment options
TIME_FREQUENCIES = (minutes1 = "1min", minutes5 = "5min", minutes15 = "15min",  minutes30 = "30min", hours1 = "1hour", hours4 = "4hour", daily = "daily") # time period options

include("pricequotes.jl")
include("stockfundamentals.jl")
include("stockfundamentalsanalysis.jl")
include("esgscore.jl")
include("pricetarget.jl")
include("upgradesdowngrades.jl")
include("stockcalendars.jl")
include("stockscreener.jl")
include("companyinformation.jl")
include("stocknews.jl")
include("marketperformance.jl")
include("stockstatistics.jl")
include("insidertrading.jl")
include("senatetrading.jl")
include("economics.jl")
include("stockprice.jl")
include("fundholdings.jl")
include("stocklist.jl")
include("marketindexes.jl")
include("euronext.jl")
include("tsx.jl")
include("cryptoforexcommodities.jl")

end # module FinancialModelingPrep
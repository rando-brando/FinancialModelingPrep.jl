module FinancialModelingPrep

include("Client.jl")

import .Client
import .Client.FMP

# export preset variables
export 
    REPORTING_PERIODS,
    REVENUE_SEGMENTS

# exports from Client module
export FMP

# exports from stockfundamentals.jl
export
    symbols_with_financials,
    income_statements,
    balance_sheet_statements,
    cash_flow_statements,
    financial_statements,
    financial_reports,
    shares_float,
    earnings_call_transcripts,
    sec_filings

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
    current_rating,
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

# exports from stockstatistics.jl
export
    social_sentiment,
    stock_grades,
    earnings_surprises,
    analyst_estimates,
    mergers_and_acquisitions_feed,
    mergers_and_acquisitions_search

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

REPORTING_PERIODS = (annual = "annual", quarter = "quarter", ttm = "ttm") # reporting period options
REVENUE_SEGMENTS = (geographic = "geographic", product = "product") # revenue segment options

include("stockfundamentals.jl")
include("stockfundamentalsanalysis.jl")
include("esgscore.jl")
include("pricetarget.jl")
include("stockstatistics.jl")
include("companyinformation.jl")

end # module FinancialModelingPrep
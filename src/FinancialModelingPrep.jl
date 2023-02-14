module FinancialModelingPrep

import Base: @kwdef
import HTTP, JSON

# exports from FMP.jl
export FMP

# exports from StockFundamentals.jl
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


# exports from StockStatistics.jl
export
    earnings_surprises,
    analyst_estimates
    

include("FMP.jl")
include("StockFundamentals.jl")
include("StockFundamentalsAnalysis.jl")
include("StockStatistics.jl")

end # module FinancialModelingPrep

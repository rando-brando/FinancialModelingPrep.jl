module FinancialModelingPrep

using Parameters
import HTTP, JSON

export 
    FMP,
    analyst_estimates

include("FMP.jl")
include("StockFundamentals.jl")
include("StockFundamentalsAnalysis.jl")
include("StockStatistics.jl")

end # module FinancialModelingPrep

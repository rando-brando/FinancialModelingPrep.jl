using FinancialModelingPrep
using Test

# create a FMP object to use for testing with the default demo key
fmp = FMP()

@testset "StockFundamentals" begin
    @test symbols_with_financials(fmp)
end

@testset "StockStatistics" begin
    @test type_of(analyst_estimates(fmp)) == Vector{Dict{String, Any}}
end
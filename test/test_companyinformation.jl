@testset "company_profile" begin
    @test isa(company_profile(fmp, "AAPL"), JSONTable)
end

@testset "key_executives" begin
    @test isa(key_executives(fmp, "AAPL"), JSONTable)
end

@testset "company_outlook" begin
    @test isa(company_outlook(fmp, "AAPL"), JSONTable)
end

@testset "stock_peers" begin
    @test isa(stock_peers(fmp, "AAPL"), JSONTable)
end

@testset "nyse_schedule" begin
    @test isa(nyse_schedule(fmp), JSONTable)
end

@testset "delisted_companies" begin
    @test isa(delisted_companies(fmp, page = 0), JSONTable)
end

@testset "symbol_changes" begin
    @test isa(symbol_changes(fmp), JSONTable)
end

@testset "company_information" begin
    @test isa(company_information(fmp, "AAPL"), JSONTable)
end
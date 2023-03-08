@testset "company_profile" begin
    @test !isempty(company_profile(fmp, "AAPL"))
end

@testset "key_executives" begin
    @test !isempty(key_executives(fmp, "AAPL"))
end

@testset "company_outlook" begin
    @test !isempty(company_outlook(fmp, "AAPL"))
end

@testset "stock_peers" begin
    @test !isempty(stock_peers(fmp, "AAPL"))
end

@testset "nyse_schedule" begin
    @test !isempty(nyse_schedule(fmp))
end

@testset "delisted_companies" begin
    @test !isempty(delisted_companies(fmp, page = 0))
end

@testset "symbol_changes" begin
    @test !isempty(symbol_changes(fmp))
end

@testset "company_information" begin
    @test !isempty(company_information(fmp, "AAPL"))
end
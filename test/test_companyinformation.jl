@testset "company_profile" begin
    @test !isempty(company_profile(fmp, "AAPL")[1])
end

@testset "key_executives" begin
    @test !isempty(key_executives(fmp, "AAPL")[1])
end

@testset "company_outlook" begin
    @test !isempty(company_outlook(fmp, "AAPL")[1])
end

@testset "stock_peers" begin
    @test !isempty(stock_peers(fmp, "AAPL")[1])
end

@testset "nyse_schedule" begin
    @test !isempty(nyse_schedule(fmp)[1])
end

@testset "delisted_companies" begin
    @test !isempty(delisted_companies(fmp, page = 0)[1])
end

@testset "symbol_changes" begin
    @test !isempty(symbol_changes(fmp)[1])
end

@testset "company_information" begin
    @test !isempty(company_information(fmp, "AAPL")[1])
end
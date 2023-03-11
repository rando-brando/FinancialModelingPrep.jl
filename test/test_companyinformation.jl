@testset "company_profile" begin
    @test isa(company_profile(fmp, "AAPL"), JSONTable)
end

@testset "key_executives" begin
    @test isa(key_executives(fmp, "AAPL"), JSONTable)
end

@testset "company_outlook" begin
    @test_throws PermissionError company_outlook(fmp, "AAPL")
    @test_throws PermissionError company_outlook(fmp, "AAPL", :profile)
    @test_throws PermissionError company_outlook(fmp, "AAPL", :insideTrades)
end

@testset "stock_peers" begin
    @test_throws PermissionError stock_peers(fmp, "AAPL")
end

@testset "nyse_schedule" begin
    @test isa(nyse_schedule(fmp), JSONObject)
end

@testset "delisted_companies" begin
    @test isa(delisted_companies(fmp, page = 0), JSONTable)
end

@testset "symbol_changes" begin
    @test_throws PermissionError symbol_changes(fmp)
end

@testset "company_information" begin
    @test isa(company_information(fmp, "AAPL"), JSONTable)
end

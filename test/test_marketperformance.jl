@testset "sector_pe_ratios" begin
    @test_throws PermissionError sector_pe_ratios(fmp, date = "2023-01-01", exchange = "NYSE")
end

@testset "industry_pe_ratios" begin
    @test_throws PermissionError industry_pe_ratios(fmp, date = "2023-01-01", exchange = "NYSE")
end

@testset "sector_performances" begin
    @test isa(sector_performances(fmp), JSONTable)
end

@testset "historical_sector_performances" begin
    @test isa(historical_sector_performances(fmp, limit = 10), JSONTable)
end

@testset "gainers" begin
    @test isa(gainers(fmp), JSONTable)
end

@testset "losers" begin
    @test isa(losers(fmp), JSONTable)
end

@testset "most_active" begin
    @test isa(most_active(fmp), JSONTable)
end
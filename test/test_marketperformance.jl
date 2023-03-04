@testset "sector_pe_ratios" begin
    @test !isempty(sector_pe_ratios(fmp, date = "2023-01-01", exchange = "NYSE")[1])
end

@testset "industry_pe_ratios" begin
    @test !isempty(industry_pe_ratios(fmp, date = "2023-01-01", exchange = "NYSE")[1])
end

@testset "sector_performances" begin
    @test !isempty(sector_performances(fmp)[1])
end

@testset "historical_sector_performances" begin
    @test !isempty(historical_sector_performances(fmp, limit = 10)[1])
end

@testset "gainers" begin
    @test !isempty(gainers(fmp)[1])
end

@testset "losers" begin
    @test !isempty(losers(fmp)[1])
end

@testset "most_active" begin
    @test !isempty(most_active(fmp)[1])
end
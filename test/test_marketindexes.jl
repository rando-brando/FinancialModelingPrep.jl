@testset "available_indexes" begin
    @test !isempty(available_indexes(fmp))
end

@testset "sp500_companies" begin
    @test !isempty(sp500_companies(fmp))
    @test !isempty(sp500_companies(fmp, historical = true))
end

@testset "nasdaq_companies" begin
    @test !isempty(nasdaq_companies(fmp))
end

@testset "dowjones_companies" begin
    @test !isempty(dowjones_companies(fmp))
    @test !isempty(dowjones_companies(fmp, historical = true))
end
@testset "available_indexes" begin
    @test !isempty(available_indexes(fmp)[1])
end

@testset "sp500_companies" begin
    @test !isempty(sp500_companies(fmp)[1])
    @test !isempty(sp500_companies(fmp, historical = true)[1])
end

@testset "nasdaq_companies" begin
    @test !isempty(nasdaq_companies(fmp)[1])
end

@testset "dowjones_companies" begin
    @test !isempty(dowjones_companies(fmp)[1])
    @test !isempty(dowjones_companies(fmp, historical = true)[1])
end
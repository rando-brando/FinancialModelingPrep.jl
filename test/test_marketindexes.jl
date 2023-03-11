@testset "available_indexes" begin
    @test isa(available_indexes(fmp), JSONTable)
end

@testset "sp500_companies" begin
    @test_throws PermissionError isa(sp500_companies(fmp), JSONTable)
    @test_throws PermissionError isa(sp500_companies(fmp, historical = true), JSONTable)
end

@testset "nasdaq_companies" begin
    @test isa(nasdaq_companies(fmp), JSONTable)
end

@testset "dowjones_companies" begin
    @test isa(dowjones_companies(fmp), JSONTable)
    @test isa(dowjones_companies(fmp, historical = true), JSONTable)
end

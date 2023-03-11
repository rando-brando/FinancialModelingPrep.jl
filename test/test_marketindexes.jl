@testset "available_indexes" begin
    @test isa(available_indexes(fmp), JSONTable)
end

@testset "sp500_companies" begin
    @test_throws PermissionError sp500_companies(fmp)
    @test_throws PermissionError sp500_companies(fmp, historical = true)
end

@testset "nasdaq_companies" begin
    @test_throws PermissionError nasdaq_companies(fmp)
end

@testset "dowjones_companies" begin
    @test_throws PermissionError dowjones_companies(fmp)
    @test_throws PermissionError dowjones_companies(fmp, historical = true)
end

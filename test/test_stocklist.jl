@testset "available_symbols" begin
    @test !isempty(available_symbols(fmp))
end

@testset "tradeable_symbols" begin
    @test !isempty(tradeable_symbols(fmp))
end

@testset "etf_symbols" begin
    @test !isempty(etf_symbols(fmp))
end
@testset "available_symbols" begin
    @test !isempty(available_symbols(fmp)[1])
end

@testset "tradeable_symbols" begin
    @test !isempty(tradeable_symbols(fmp)[1])
end

@testset "etf_symbols" begin
    @test !isempty(etf_symbols(fmp)[1])
end
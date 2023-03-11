@testset "available_symbols" begin
    @test isa(available_symbols(fmp), JSONTable)
end

@testset "tradeable_symbols" begin
    @test isa(tradeable_symbols(fmp), JSONTable)
end

@testset "etf_symbols" begin
    @test isa(etf_symbols(fmp), JSONTable)
end

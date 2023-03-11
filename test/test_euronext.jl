@testset "available_euronext" begin
    @test isa(available_euronext(fmp), JSONTable)
end

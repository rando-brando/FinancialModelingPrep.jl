@testset "available_euronext" begin
    @test !isempty(available_euronext(fmp)[1])
end
@testset "crowdfunding_offerings_feed" begin
    @test isa(crowdfunding_offerings_feed(fmp, page = 0), JSONTable)
end

@testset "crowdfunding_offerings_search" begin
    @test isa(crowdfunding_offerings_search(fmp, name = "Enotap"), JSONTable)
end

@testset "crowdfunding_offerings" begin
    @test isa(crowdfunding_offerings(fmp, cik = "0001916078"), JSONTable)
end

@testset "equity_offerings_feed" begin
    @test isa(equity_offerings_feed(fmp, page = 0), JSONTable)
end

@testset "equity_offerings_search" begin
    @test isa(equity_offerings_search(fmp, name = "Marinalife"), JSONTable)
end

@testset "equity_offerings" begin
    @test isa(equity_offerings(fmp, cik = "0001870523"), JSONTable)
end

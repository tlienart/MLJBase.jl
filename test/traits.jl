module TestTraits

# using Revise
using MLJBase
import MLJBase
using Test

mutable struct Dummy <: Deterministic{Int} end

MLJBase.target_kind(::Type{Dummy}) = :numeric
MLJBase.target_quantity(::Type{Dummy}) = :univariate
MLJBase.inputs_can_be(::Type{Dummy}) = [:numeric, ]
MLJBase.is_pure_julia(::Type{Dummy}) = :yes
MLJBase.package_name(::Type{Dummy}) = "MultivariateStats"
MLJBase.package_uuid(::Type{Dummy}) = "6f286f6a-111f-5878-ab1e-185364afe411"
MLJBase.package_url(::Type{Dummy}) = "https://mickey.mouse.org"

d = Dict(:model_name => "TestTraits.Dummy",
         :is_pure_julia => :yes,
         :package_uuid  => "6f286f6a-111f-5878-ab1e-185364afe411",
         :package_name  => "MultivariateStats",
         :target_is     => Symbol[:deterministic, :numeric, :univariate],
         :inputs_can_be => Symbol[:numeric],
         :package_url   => "https://mickey.mouse.org")

@show info(Dummy)[:model_name]
# @test info(Dummy) == d
# @test info(Dummy()) == d

end
true

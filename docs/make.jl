using BaseTrainingPlan
using Documenter

DocMeta.setdocmeta!(BaseTrainingPlan, :DocTestSetup, :(using BaseTrainingPlan); recursive=true)

makedocs(;
    modules=[BaseTrainingPlan],
    authors="Jonathan Miller jonathan.miller@fieldofnodes.com",
    sitename="BaseTrainingPlan.jl",
    format=Documenter.HTML(;
        canonical="https://fieldofnodes.github.io/BaseTrainingPlan.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/fieldofnodes/BaseTrainingPlan.jl",
    devbranch="main",
)

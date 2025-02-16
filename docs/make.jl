using AsymptoticMVib
using Documenter

DocMeta.setdocmeta!(AsymptoticMVib, :DocTestSetup, :(using AsymptoticMVib); recursive=true)

makedocs(;
    modules=[AsymptoticMVib],
    authors="Javier González Monge",
    sitename="AsymptoticMVib.jl",
    format=Documenter.HTML(;
        canonical="https://RayleighLord.github.io/AsymptoticMVib.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/RayleighLord/AsymptoticMVib.jl",
    devbranch="main",
)

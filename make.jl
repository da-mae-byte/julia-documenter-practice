using Documenter
makedocs(;
    sitename="Julia Documenter Practice",
    pages = [
        "Index"=>"index.md",
        "Chapter1"=>[
            "使い方" => "chapter1/introduction.md",
            "Juliaでホームページ作成" => "chapter1/documenter.md",
        ]
    ]
)

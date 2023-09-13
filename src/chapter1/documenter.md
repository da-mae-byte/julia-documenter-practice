# Juliaでホームページ作成

プロキシ設定
```julia
julia> ENV["http_proxy"] = "http://XXX.XXX.XXX.XXX:XXXX"
"http://XXX.XXX.XXX.XXX:XXXX"

julia> ENV["https_proxy"] = "http://XXX.XXX.XXX.XXX:XXXX"
"http://XXX.XXX.XXX.XXX:XXXX"

julia> ENV["JULIA_SSL_NO_VERIFY_HOSTS"] = "github.com"
"github.com"
```

ファイル配置
```julia
home
└ work
 └ docs
  └ src
   └ index.md
```

ライブラリをインストール
```julia
julia> import Pkg

julia> Pkg.add("Documenter")
```

ビルド
```julia
julia> cd("/home/work/docs")

julia> using Documenter

julia> makedocs(;
           sitename="Hello World"
       )
```

## ページを増やす

Markdownファイルを追加して階層構造を作成
```julia
home
└ work
 └ docs
  └ src
   └ index.md
    └ chapter1
     ├ commands.md
     └ documenter.md
```
ビルド時のコマンドも変更
```julia
using Documenter
makedocs(;
    sitename="Julia Test",
    pages = [
        "Index"=>"index.md",
        "Chapter1"=>[
            "コマンド一覧" => "chapter1/commands.md",
            "Juliaでホームページ作成" => "chapter1/documenter.md",
        ]
    ]
)
```
index.mdもよくわからんけど変更
```julia
```@contents
Pages = [
        "chapter1/commands.md",
        "chapter1/doumenter.md",
]
Depth = 3
```
```

遷移時のURLが「～/documenter」の形になったのでローカルファイルで表示する場合は一々index.htmlを選択する必要があった。直せないのかな。

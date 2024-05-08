# OpenAPIから生成したモデル、クライアントの活用方法

HTTPリクエストのクライアントとして、[http](https://pub.dev/packages/http/versions) を用意しました
`openapi` ディレクトリ配下は以下のような構成になっています。
```
openapi
├── definitions
│   └── components
└── dist_http
    ├── doc
    ├── lib
    │   └── src
    │       ├── api
    │       ├── auth
    │       └── model
    └── test
```
- definitions: OpenAPIの定義ファイルが配置されています。
- dist_http: http用のクライアント、モデルが配置されています 

## 導入方法
自動生成コードはパッケージ扱いなので、 `pubspec.yaml` でインポートしています

## モデルクラスについて
各モデルクラスは、 `openapi/dist_{選択したパッケージ}/lib/model` に配置してあります。

## その他
- 生成は [openapi-generator](https://openapi-generator.tech/) で行なっているので、templateファイルを加工することで自動生成の内容を変更することが可能です。
- npmを使用していますが、さまざまな方法で生成が可能です。

# 参考文献
- [OpenAPI x Flutterでプロダクト開発をより早く回そう](https://zenn.dev/team_soda/articles/20d984a8c5d07e)
- [OpenApi Generator公式](https://openapi-generator.tech/docs/installation)
- [FlutterでSwagger(openapi-generator)を使う方法](https://qiita.com/murapon/items/2e0933a054b9555378e2)

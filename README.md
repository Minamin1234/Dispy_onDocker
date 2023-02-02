# Dispy on Docker
## 概要
discord.py(Dispy)によるボットのDocker環境をまとめたリポ。

## 必要環境
- Docker/Docker Desktop
- トークン
    - リポジトリフォルダ配下に`token.txt`を作成し`DISPY_TOKEN=[自身のトークン]`を貼り付けます。

## Dockerfileからコンテナ構築
本来なら、複数の`docker`コマンドを使用する必要がありますが、自動化のためにShellスクリプトでまとめています。
- 初回のみ
```shell
$ ./setup.bat
```

```shell
$ ./build_run.sh
```

## 停止/削除
```shell
$ ./stop_rm.sh
```
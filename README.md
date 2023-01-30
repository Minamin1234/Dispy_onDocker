# Dispy on Docker
## 概要
discord.py(Dispy)によるボットのDocker環境をまとめたリポ。

## 必要環境
- Docker/Docker Desktop
- トークン
    - `Apps/Dispy/`に`token.txt`を作成し自身のトークンを貼り付けます。

## Dockerfileからコンテナ構築
本来なら、複数の`docker`コマンドを使用する必要がありますが、自動化のためにShellスクリプトでまとめています。
```shell
$ ./build_run.sh
```

## 停止/削除
```shell
$ ./stop_rm.sh
```
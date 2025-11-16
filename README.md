# Gemini CLI Starter for Mac

[![MIT License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

このリポジトリは、MacユーザーがGoogleの[Gemini CLI](https://ai.google.dev/docs/gemini_cli_quickstart)をより簡単に、素早く起動するためのコマンドスクリプトを提供します。

通常、ターミナルを開いてコマンドを打つ必要がありますが、このスクリプトを使えば、ファイルをダブルクリックするだけでGemini CLIが起動した状態のターミナルウィンドウが開きます。Gemini CLIを終了するとウィンドウも自動的に閉じるため、余計な操作は発生しません。

## 特徴

- **ワンクリック起動:** 面倒なターミナル操作は不要。ダブルクリックですぐに開始できます。
- **簡単なセットアップ:** わずかなステップで、すぐに利用を開始できます。
- **快適な開発体験:** Gemini CLIをもっと手軽に、日常的なツールとして活用できます。

## 前提条件

- macOS
- [Google Gemini CLI](https://ai.google.dev/docs/gemini_cli_quickstart) がインストール済みであること。

## インストールとセットアップ

1.  **リポジトリをクローン、またはファイルをダウンロード**

    ```bash
    git clone https://github.com/shinob/start-gemini.git
    cd start-gemini
    ```
    もしくは、以下のように `.command` ファイルだけを取得して任意のディレクトリに保存します。

    ```bash
    curl -LO https://raw.githubusercontent.com/shinob/start-gemini/main/start-gemini.command
    ```

2.  **実行権限の付与**

    ダウンロードしたスクリプトに実行権限を与えます。ターミナルで以下のコマンドを実行してください。

    ```bash
    chmod +x start-gemini.command
    ```

    初回起動時にGatekeeperでブロックされた場合は、ファイルを右クリック（またはcontrol+クリック）して「開く」を選択すると実行を許可できます。

## 使い方

セットアップが完了したら、Finderで `start-gemini.command` ファイルを見つけてダブルクリックするだけです（不明な開発元と表示されたら前述の手順で許可してください）。新しいターミナルウィンドウが開き、Gemini CLIが起動します。CLIを終了するとウィンドウも閉じる仕組みです。

スクリプトはファイルが置かれたディレクトリでGeminiを起動するため、その場所にGemini用の設定ファイルやプロンプトを置いておくと確実に読み込ませることができます。別ディレクトリで開始したい場合は、次のカスタマイズ例を参考にしてください。

## カスタマイズ

スクリプト `start-gemini.command` はシンプルなシェルスクリプトです。エディタで開いて、特定のディレクトリに移動するコマンドを追加するなど、自由にカスタマイズできます。

**例：特定のプロジェクトディレクトリで起動したい場合**

```bash
#!/usr/bin/env zsh
set -euo pipefail

# 任意のプロジェクトディレクトリに移動
cd /Users/your_username/my_gemini_project

# Gemini CLIを起動（引数もそのまま渡す）
exec /usr/bin/env gemini "$@"
```

## ライセンス

このプロジェクトは [MIT License](LICENSE) のもとで公開されています。

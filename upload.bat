@echo off
chcp 65001 > nul
REM 奥州市観光サイト - GitHubアップロードスクリプト（Windows用）

echo 🏯 奥州市観光サイト - GitHubアップロード
echo ==========================================
echo.

REM 文字エンコーディングの設定
echo 📝 Gitの文字エンコーディングを設定中...
git config --global core.quotepath false
git config --global gui.encoding utf-8
git config --global i18n.commitencoding utf-8
git config --global i18n.logoutputencoding utf-8
git config --global core.autocrlf false
echo ✅ 設定完了
echo.

REM Gitリポジトリの初期化
if not exist ".git" (
    echo 🔧 Gitリポジトリを初期化中...
    git init
    echo ✅ 初期化完了
) else (
    echo ℹ️  Gitリポジトリは既に初期化されています
)
echo.

REM 全ファイルを追加
echo 📦 ファイルを追加中...
git add .
echo ✅ ファイル追加完了
echo.

REM コミット
echo 💾 変更をコミット中...
git commit -m "Initial commit: 奥州市観光サイト - UTF-8エンコーディング対応"
echo ✅ コミット完了
echo.

REM リモートリポジトリの設定
echo 🌐 GitHubリポジトリのURLを入力してください
echo 例: https://github.com/username/oshu-city-tourism.git
set /p REPO_URL="URL: "

if "%REPO_URL%"=="" (
    echo ❌ URLが入力されていません
    pause
    exit /b 1
)

REM リモートの追加または更新
git remote get-url origin >nul 2>&1
if %errorlevel% equ 0 (
    echo 🔄 リモートリポジトリを更新中...
    git remote set-url origin "%REPO_URL%"
) else (
    echo 🔗 リモートリポジトリを追加中...
    git remote add origin "%REPO_URL%"
)
echo ✅ リモート設定完了
echo.

REM ブランチ名の設定とプッシュ
echo 🚀 GitHubにプッシュ中...
git branch -M main
git push -u origin main

if %errorlevel% equ 0 (
    echo.
    echo ==========================================
    echo ✅ アップロード成功！
    echo ==========================================
    echo.
    echo 📱 次のステップ:
    echo 1. GitHubリポジトリページを開く
    echo 2. Settings → Pages を選択
    echo 3. Source: Deploy from a branch
    echo 4. Branch: main / ^(root^)
    echo 5. Save をクリック
    echo.
    echo 🌐 数分後に以下のURLで公開されます:
    echo    https://[ユーザー名].github.io/[リポジトリ名]/
    echo.
) else (
    echo.
    echo ==========================================
    echo ❌ エラーが発生しました
    echo ==========================================
    echo.
    echo 💡 トラブルシューティング:
    echo 1. GitHubの認証情報を確認
    echo 2. リポジトリが存在するか確認
    echo 3. ネットワーク接続を確認
    echo.
    echo 詳細は UPLOAD_GUIDE.md を参照してください
)

echo.
pause

# GitHubへのアップロード手順（文字化け対策付き）

## ⚠️ 文字化け対策

このプロジェクトは日本語を含むため、正しいエンコーディングでアップロードする必要があります。

## 🔧 準備（初回のみ）

### Gitの文字エンコーディング設定

```bash
# UTF-8をデフォルトに設定
git config --global core.quotepath false
git config --global gui.encoding utf-8
git config --global i18n.commitencoding utf-8
git config --global i18n.logoutputencoding utf-8
```

Windowsの場合、追加で以下も実行：
```bash
git config --global core.autocrlf false
```

## 📤 アップロード方法

### 方法1: GitHub Desktop（推奨 - 最も簡単）

1. **GitHub Desktopをダウンロード**
   - https://desktop.github.com/

2. **リポジトリを作成**
   - `File` → `New repository`
   - Name: `oshu-city-tourism`
   - Local path: このフォルダを選択
   - `Create repository` をクリック

3. **GitHubに公開**
   - `Publish repository` をクリック
   - `Keep this code private` のチェックを外す（公開する場合）
   - `Publish repository` をクリック

4. **変更をコミット＆プッシュ**
   - 左下の `Summary` に「初回コミット」と入力
   - `Commit to main` をクリック
   - `Push origin` をクリック

### 方法2: コマンドライン

```bash
# 1. Gitリポジトリを初期化
git init

# 2. 全ファイルを追加
git add .

# 3. コミット（UTF-8エンコーディングで）
git commit -m "Initial commit: 奥州市観光サイト"

# 4. GitHubリポジトリに接続（事前にGitHub上でリポジトリを作成）
git remote add origin https://github.com/あなたのユーザー名/oshu-city-tourism.git

# 5. プッシュ
git branch -M main
git push -u origin main
```

### 方法3: GitHub Webサイト（ZIPアップロード）

1. **ファイルをZIPに圧縮**
   - プロジェクトフォルダ全体を選択
   - 「送る」→「圧縮(zip形式)フォルダー」（Windows）
   - または右クリック→「圧縮」（Mac）

2. **GitHubで新規リポジトリを作成**
   - https://github.com/new
   - Repository name: `oshu-city-tourism`
   - Public を選択
   - `Create repository` をクリック

3. **ZIPファイルをアップロード**
   - `uploading an existing file` をクリック
   - ZIPファイルをドラッグ&ドロップ
   - `Commit changes` をクリック

4. **ZIPを展開**
   - リポジトリ内でZIPファイルをクリック
   - 中身を確認
   - ⚠️ 必要に応じて、ファイルを正しい場所に移動

## 🌐 GitHub Pagesで公開

### 手順

1. **Settingsを開く**
   - リポジトリページで `Settings` タブをクリック

2. **Pagesを設定**
   - 左メニューから `Pages` を選択
   - `Source` で `Deploy from a branch` を選択
   - `Branch` で `main` / `(root)` を選択
   - `Save` をクリック

3. **公開URLを確認**
   - 数分後に緑色のバナーが表示
   - URL: `https://あなたのユーザー名.github.io/oshu-city-tourism/`

4. **カスタムドメイン（オプション）**
   - 独自ドメインを持っている場合
   - `Custom domain` に入力して保存

## ✅ 文字化けの確認

### GitHub上での確認
1. リポジトリページで `index.html` を開く
2. 日本語が正しく表示されているか確認
3. `README.md` も確認

### 公開サイトでの確認
1. GitHub PagesのURLを開く
2. ブラウザで日本語が正しく表示されているか確認
3. 以下をチェック：
   - [ ] タイトル「奥州市観光」
   - [ ] ヒーローセクションの「千年の時を」
   - [ ] 観光スポットの説明文
   - [ ] グルメの説明文
   - [ ] フッターのテキスト

## 🔄 更新方法

### GitHub Desktop
1. ファイルを編集
2. 左側に変更が表示される
3. `Summary` に変更内容を入力
4. `Commit to main` → `Push origin`

### コマンドライン
```bash
git add .
git commit -m "更新内容"
git push
```

## 🆘 トラブルシューティング

### 文字化けが発生した場合

1. **ファイルのエンコーディングを確認**
   ```bash
   file -I index.html
   # 結果: index.html: text/html; charset=utf-8
   ```

2. **エディタで再保存**
   - VS Code: 右下の「UTF-8」をクリック → 「Save with Encoding」 → 「UTF-8」
   - メモ帳: 「名前を付けて保存」 → エンコーディング「UTF-8」

3. **再度コミット&プッシュ**
   ```bash
   git add index.html
   git commit -m "Fix encoding"
   git push
   ```

### GitHubで日本語ファイル名が表示されない場合

```bash
# Gitの設定を変更
git config --global core.quotepath false
```

### プッシュに失敗する場合

```bash
# リモートの最新版を取得
git pull origin main --allow-unrelated-histories

# 再度プッシュ
git push origin main
```

## 📝 推奨ファイル構造

```
oshu-city-tourism/
├── .git/                    # Gitディレクトリ（自動生成）
├── .gitattributes          # エンコーディング設定
├── index.html              # メインページ
├── README.md               # プロジェクト説明
├── MOBILE_TEST_REPORT.md   # モバイルテストレポート
├── UPLOAD_GUIDE.md         # このファイル
└── images/                 # 画像フォルダ
    ├── onikenbai.jpg
    ├── nambu-tekki.jpg
    ├── fujiwara-festival.jpg
    ├── esashi-fujiwara-hq.jpg
    ├── kokuseiji-temple.jpg
    ├── mizusawa-park.jpg
    ├── maesawa-beef-hq.jpg
    ├── oshu-sake.jpg
    ├── esashi-ringo-hq.jpg
    ├── oshu-hatto-hq.jpg
    ├── iwayado-yokan-hq.jpg
    └── sakura-spring.jpg
```

## 🎯 チェックリスト

アップロード前に確認：
- [ ] `.gitattributes` ファイルが存在する
- [ ] index.htmlの文字コードがUTF-8
- [ ] README.mdの文字コードがUTF-8
- [ ] imagesフォルダ内の全ファイルが含まれている
- [ ] Gitの文字エンコーディング設定が完了

アップロード後に確認：
- [ ] GitHubで日本語が正しく表示される
- [ ] GitHub Pagesで日本語が正しく表示される
- [ ] 全ての画像が読み込まれる
- [ ] リンクが機能する
- [ ] モバイルで正しく表示される

---

**最終更新**: 2026年3月15日  
**対応OS**: Windows / Mac / Linux  
**推奨ツール**: GitHub Desktop

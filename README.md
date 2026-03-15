# 奥州市観光サイト | OSHU CITY TOURISM

岩手県奥州市の観光情報を紹介する公式風ウェブサイトです。

## 🌟 特徴

- **完全静的サイト**: HTML/CSS/JavaScriptのみで構築
- **レスポンシブデザイン**: スマートフォンからデスクトップまで対応
- **和のデザイン**: 墨絵風のエレガントなデザイン
- **奥州市特化**: 奥州市内の観光スポット・グルメ・文化のみを掲載

## 📂 ファイル構成

```
.
├── index.html          # メインHTMLファイル
├── images/             # 画像フォルダ
│   ├── onikenbai.jpg             # 鬼剣舞
│   ├── nambu-tekki.jpg           # 南部鉄器
│   ├── fujiwara-festival.jpg    # 藤原まつり
│   ├── esashi-fujiwara-hq.jpg   # えさし藤原の郷
│   ├── kokuseiji-temple.jpg      # 黒石寺
│   ├── mizusawa-park.jpg         # 水沢公園
│   ├── maesawa-beef-hq.jpg       # 前沢牛
│   ├── oshu-sake.jpg              # 奥州の地酒
│   ├── esashi-ringo-hq.jpg       # 江刺りんご
│   ├── oshu-hatto-hq.jpg         # 奥州はっと
│   ├── iwayado-yokan-hq.jpg      # 岩谷堂羊羹
│   └── sakura-spring.jpg          # 桜（春）
└── README.md           # このファイル
```

## 🎯 掲載コンテンツ

### 観光スポット（5つ）
1. **歴史公園えさし藤原の郷** - 平安時代の都市を再現したテーマパーク
2. **黒石寺** - 奈良時代創建の古寺
3. **水沢公園・水沢天文台** - 桜の名所と天文学研究の拠点
4. **前沢牛グルメ** - 日本三大和牛クラスの銘柄牛
5. **奥州・江刺の地酒** - 南部美人、岩手誉など

### グルメ（4つ）
1. **前沢牛** - 日本三大和牛
2. **江刺りんご** - 高品質リンゴ
3. **奥州はっと** - 伝統郷土料理
4. **岩谷堂羊羹** - 300年以上の歴史を持つ和菓子

### 文化・伝統（3つ）
1. **鬼剣舞（おにけんばい）** - 国指定重要無形民俗文化財
2. **南部鉄器** - 400年以上の歴史を持つ伝統工芸品
3. **藤原氏ゆかりの祭礼** - 奥州藤原四代の栄華を偲ぶ祭り

## 🚀 使い方

### ローカルで表示

1. このリポジトリをクローンまたはダウンロード
2. `index.html` をブラウザで開く

## ⚠️ 重要: 文字化け対策

このプロジェクトには日本語が含まれているため、**UTF-8エンコーディング**でアップロードする必要があります。

### 文字化けを防ぐ方法

1. **自動アップロードスクリプトを使用（推奨）**
   - Windows: `upload.bat` をダブルクリック
   - Mac/Linux: `bash upload.sh`

2. **手動でアップロードする場合**
   - 詳細は `UPLOAD_GUIDE.md` を参照してください

### GitHubにアップロードしてGitHub Pagesで公開

#### 方法1: GitHub Webサイトから直接アップロード（簡単）

1. **GitHubにログイン**
   - https://github.com にアクセスしてログイン

2. **新しいリポジトリを作成**
   - 右上の `+` ボタンをクリック → `New repository`
   - Repository name: `oshu-tourism` （任意の名前）
   - Public を選択
   - `Add a README file` はチェック不要（すでにREADME.mdがあるため）
   - `Create repository` をクリック

3. **ファイルをアップロード**
   - `uploading an existing file` リンクをクリック
   - `index.html` と `README.md` をドラッグ&ドロップ
   - `Commit changes` をクリック

4. **imagesフォルダをアップロード**
   - リポジトリのトップページで `Add file` → `Upload files`
   - `images` フォルダ内の全ファイルを選択してドラッグ&ドロップ
   - `Commit changes` をクリック

5. **GitHub Pagesを有効化**
   - リポジトリの `Settings` タブをクリック
   - 左サイドバーの `Pages` をクリック
   - `Source` で `Deploy from a branch` を選択
   - `Branch` で `main` と `/root` を選択
   - `Save` をクリック

6. **公開URLを確認**
   - 数分後、`https://あなたのユーザー名.github.io/oshu-tourism/` でアクセス可能になります

#### 方法2: Git コマンドを使用（推奨）

```bash
# 1. GitHubで新しいリポジトリを作成（Webから）

# 2. ローカルでGitを初期化
git init
git add .
git commit -m "Initial commit: 奥州市観光サイト"

# 3. GitHubリポジトリに接続
git remote add origin https://github.com/あなたのユーザー名/oshu-tourism.git

# 4. プッシュ
git branch -M main
git push -u origin main
```

その後、上記の方法1の手順5からGitHub Pagesを有効化してください。

## 🎨 デザイン

- **カラースキーム**: 墨色・金色・クリーム色
- **フォント**: 
  - 日本語: Noto Serif JP, Noto Sans JP
  - 英語: Cinzel
- **スタイル**: 和風エレガント、墨絵風

## 📱 対応ブラウザ

- Google Chrome（推奨）
- Firefox
- Safari
- Microsoft Edge

## 📝 ライセンス

このプロジェクトは個人利用・学習目的で作成されています。
商用利用の場合は、使用している画像の著作権にご注意ください。

## 🔗 参考サイト

- [奥州市公式観光サイト](https://www.city.oshu.iwate.jp/kanko/index.html)

---

**制作日**: 2026年3月15日  
**バージョン**: 1.0.0

# imagesフォルダを正しくアップロードする方法

## 📂 問題

GitHubのWeb UIで1つずつファイルをアップロードすると、フォルダ構造が失われます。

```
❌ 悪い例:
oshu-city-tourism/
├── index.html
├── onikenbai.jpg      ← ルートに散らばっている
├── nambu-tekki.jpg
└── ...

✅ 良い例:
oshu-city-tourism/
├── index.html
└── images/            ← フォルダにまとまっている
    ├── onikenbai.jpg
    ├── nambu-tekki.jpg
    └── ...
```

---

## 🎯 推奨方法: GitHub Desktop

### 手順

1. **GitHub Desktopをインストール**
   - https://desktop.github.com/
   - Windows / Mac対応
   - 無料

2. **リポジトリをクローン**
   - `File` → `Clone repository`
   - `URL`タブを選択
   - URL: `https://github.com/あなたのユーザー名/oshu-city-tourism`
   - Local Path: 好きな場所を選択
   - `Clone`をクリック

3. **ダウンロードしたプロジェクトフォルダを開く**
   - このプロジェクトの全ファイルがある場所

4. **フォルダ構造を整理**
   
   #### 手順A: 既にimagesフォルダがある場合
   ```
   1. imagesフォルダごとコピー
   2. クローンしたリポジトリフォルダに貼り付け
   3. index.html、README.mdなども上書き
   ```

   #### 手順B: 画像が散らばっている場合
   ```
   1. クローンしたフォルダ内にimagesフォルダを作成
   2. すべての.jpg画像をimagesフォルダに移動
   3. index.htmlなどのHTMLファイルはルートに配置
   ```

5. **GitHub Desktopで確認**
   - 左側に変更が表示される
   - `images/onikenbai.jpg` のように表示されればOK

6. **コミット**
   - Summary: `imagesフォルダを整理してフォルダ構造を修正`
   - Description: (任意)
   - `Commit to main`

7. **プッシュ**
   - 右上の`Push origin`をクリック

8. **GitHub上で確認**
   - リポジトリページを開く
   - `images`フォルダが表示される
   - フォルダをクリックして画像が入っているか確認

---

## 💻 代替方法: Gitコマンドライン

```bash
# 1. リポジトリをクローン
git clone https://github.com/あなたのユーザー名/oshu-city-tourism.git
cd oshu-city-tourism

# 2. 現在の画像ファイルを削除（ルートに散らばっている場合）
git rm *.jpg

# 3. imagesフォルダを作成
mkdir images

# 4. 画像ファイルをimagesフォルダにコピー
# （ダウンロードしたプロジェクトのimagesフォルダから）
cp /path/to/downloaded/project/images/* images/

# 5. index.htmlなどもコピー（最新版に更新）
cp /path/to/downloaded/project/index.html .
cp /path/to/downloaded/project/README.md .
cp /path/to/downloaded/project/.gitattributes .

# 6. すべての変更を追加
git add .

# 7. コミット
git commit -m "imagesフォルダを整理してフォルダ構造を修正"

# 8. プッシュ
git push origin main
```

---

## 🌐 GitHub Web UIでフォルダを作る方法

### 方法A: 新しいファイルを作成してフォルダを指定

1. **Add file → Create new file**

2. **ファイル名欄に入力**
   ```
   images/.gitkeep
   ```
   - `/`を入力するとフォルダが作られる
   - `.gitkeep`は空フォルダを保持するためのダミーファイル

3. **Commit new file**

4. **画像をアップロード**
   - `images`フォルダに移動
   - `Add file` → `Upload files`
   - 画像ファイルをドラッグ&ドロップ

### 方法B: 一括アップロード（推奨）

1. **ローカルでZIPファイルを作成**
   ```
   oshu-city-tourism.zip
   └── oshu-city-tourism/
       ├── index.html
       ├── README.md
       └── images/
           ├── onikenbai.jpg
           └── ...
   ```

2. **GitHubで現在のファイルをすべて削除**
   - 各ファイルを開く
   - ゴミ箱アイコンをクリック

3. **ZIPファイルをアップロード**
   - `Add file` → `Upload files`
   - ZIPファイルをドラッグ

⚠️ **注意**: この方法は面倒なので、GitHub Desktopを推奨

---

## ✅ 完成形の確認

正しくアップロードできると、GitHub上でこう見えます:

```
oshu-city-tourism/
📄 .gitattributes
📄 README.md
📄 MOBILE_TEST_REPORT.md
📄 UPLOAD_GUIDE.md
📄 index.html
📄 upload.bat
📄 upload.sh
📁 images/
   📷 esashi-fujiwara-hq.jpg
   📷 esashi-ringo-hq.jpg
   📷 fujiwara-festival.jpg
   📷 iwayado-yokan-hq.jpg
   📷 kokuseiji-temple.jpg
   📷 maesawa-beef-hq.jpg
   📷 mizusawa-park.jpg
   📷 nambu-tekki.jpg
   📷 onikenbai.jpg
   📷 oshu-hatto-hq.jpg
   📷 oshu-sake.jpg
   📷 sakura-spring.jpg
```

---

## 🆘 トラブルシューティング

### Q: 画像がルートにアップロードされてしまった

**A: 移動する方法**

#### GitHub Desktop
1. ローカルでimagesフォルダに移動
2. コミット＆プッシュ
3. 古いファイルはGitHub上で手動削除

#### Gitコマンド
```bash
# ルートの画像を削除
git rm *.jpg

# imagesフォルダに追加
git add images/

# コミット
git commit -m "画像をimagesフォルダに移動"
git push
```

### Q: フォルダが空だと言われる

**A: `.gitkeep`ファイルを追加**
```bash
touch images/.gitkeep
git add images/.gitkeep
git commit -m "imagesフォルダを追加"
git push
```

---

## 🎯 まとめ

| 方法 | 難易度 | 推奨度 |
|------|--------|--------|
| GitHub Desktop | ⭐ 簡単 | ⭐⭐⭐⭐⭐ |
| Gitコマンド | ⭐⭐ 中級 | ⭐⭐⭐⭐ |
| Web UI | ⭐⭐⭐ 面倒 | ⭐⭐ |

**初心者の方には GitHub Desktop を強く推奨します！**

---

**作成日**: 2026年3月15日  
**対象**: GitHubへのフォルダアップロード

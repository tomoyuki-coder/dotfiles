# dotfiles

VS Code Dev Containers 用の dotfiles。コンテナ作成時に `install.sh` が実行される。

- `claude/CLAUDE.md` → `~/.claude/CLAUDE.md`（シンボリックリンク）
- rtk を `~/.local/bin` にインストール

## 使い方
VS Code の設定に追加:

```json
"dotfiles.repository": "<GitHubユーザー名>/dotfiles"
```

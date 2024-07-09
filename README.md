# todo_app

|タスク登録&編集画面|一覧画面|
|--|--|
|![スクリーンショット 2024-06-20 21 53 43](https://github.com/momotenn/todo-app/assets/166217292/b62a942a-2a1b-4eed-8712-1f99459abc45)|![スクリーンショット 2024-06-20 21 53 37](https://github.com/momotenn/todo-app/assets/166217292/f6013cd5-63d7-456d-8f3c-d0c42cd9ce33)|



[apple store url](https://apps.apple.com/jp/app/todo%E7%AE%A1%E7%90%86%E3%82%A2%E3%83%97%E3%83%AA/id6504548526)

# アーキテクチャ図
```mermaid
graph TD;
    View --> ViewModel
    ViewModel --> Model
    ViewModel --> Repository
    Repository --> Model 

```
- MVVMで実装

# 使用技術
- Flutter
- SharedPreference
  - ローカルにデータを保存するために使用
- Riverpod
  - Page全体のプレゼンテーションロジックのために使用
- Flutter Hooks
  - Componentに閉じたプレゼンテーションロジックの表現のみに使用
- Freezed
  - イミュータブルモデルを作るために採用
 
# 気をつけたこと
- チーム開発を意識したプログラミング
  -　変数名の命名も他の人が見てわかりやすいように
  - 要件が単純なアプリのため、シンプルなアーキテクチャを採用
    - その中でも保守性を高めるために最低限の責務分割を実現
  - 作業ごとにブランチをチェックアウトしPRを作成

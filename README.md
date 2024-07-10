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

# シーケンス図
## タスク一覧ページ
```mermaid
sequenceDiagram;
     view->>view model: リスト一覧が開いたことを伝達
     view model->>repository: リスト一覧ページに載せるリスト一覧を取得するようrepositoryに依頼
     repository->>SharedPreference: リスト一覧ページに載せるリスト一覧を取得
     repository-->>view model:　リスト一覧を返す
     view model-->>view: リスト一覧を表示
     view->>view model:　チェックボックスが押されたことを伝達
     view model->>repository: リスト一覧の中のチェックボックスのデータを更新するよう依頼
     repository->>SharedPreference: リスト一覧の中のチェックボックスのデータを更新
     repository-->>view model: 更新結果を返す
　     view model-->>view: チェックをつけた場合は完了タスクへ、チェックを外した場合は未完了タスクへタスクを表示させる
　　　　　　　　　　　view->>view: タスク追加ボタンが押されたら、タスク追加ページへ遷移
　　　　　　　　　　　view->>view:　セル部分が押されたら、タスク編集ページへ遷移
```
## タスク追加ページ
```mermaid
sequenceDiagram;
     view->>view model: タスクが追加されたことを伝達
     view model->>repository: 追加したデータを更新するようrepositoryに依頼
     repository->>SharedPreference: 追加したデータを更新
     repository-->>view model:　更新結果を返す
     view model-->>view: タイトルかつ日付が入力済みの場合、リスト一覧の未完了欄に表示
```
## タスク編集ページ
```mermaid
sequenceDiagram;
     view->>view model: タスクが編集されたことを伝達
     view model->>repository: 編集したデータを更新するようrepositoryに依頼
     repository->>SharedPreference: 編集したデータを更新
     repository-->>view model:　更新結果を返す
     view model-->>view: タイトルかつ日付が入力済みの場合、リスト一覧に表示
```  
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

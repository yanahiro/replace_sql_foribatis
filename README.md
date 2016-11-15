# replace_sql_foribatis

ibatisで出力される際のログからSQLツールで実行可能ないようにプリコンパイル状態のSQLに文字列を変換するツール  

#### sql.rb

```rb

    $s = "select count(*) from user where id = ? and name = ?"
    $ar = "1, yamada taro"

```

上記の  

  - $sにプリペアードステートメントのSQL
  - $arに受け渡す値をカンマ区切りで記載する。

※iBatis, log4jから出力されたSQLの場合はそれぞれを貼り付けるだけでOK

上記設定後、コンソール上で

```
$ ruby replace_sql.rb
```

でコンソールに出力される。

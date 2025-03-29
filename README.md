# Itsuka

日本語の自然言語で書かれた日付を`Date`オブジェクトに変換する Ruby gem です。

## インストール方法

Gemfile に以下を追記して、`bundle install`してください。

```ruby
gem 'itsuka'
```

もしくは、`gem`コマンドで直接インストールしてください。

```bash
gem install itsuka
```

## 使い方

```ruby
require 'itsuka'

Date.today #=> #<Date: 2025-03-29 ...>

Itsuka.parse('今日')    #=> #<Date: 2024-03-29 ...>
Itsuka.parse('明日')    #=> #<Date: 2024-03-30 ...>
Itsuka.parse('3日後')   #=> #<Date: 2024-04-01 ...>
Itsuka.parse('2日前')   #=> #<Date: 2024-03-27 ...>
```

## 対応済みの表現

- 今日・明日・昨日
- n 日後・n 日前

## ライセンス

MIT License

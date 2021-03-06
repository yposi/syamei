# Syamei
[![Gem Version](https://badge.fury.io/rb/syamei.svg)](https://badge.fury.io/rb/syamei)
[![MIT License](http://img.shields.io/badge/license-MIT-blue.svg?style=flat)](LICENSE)

syameiは、法人格の存在チェック、削除に使用するライブラリです。
会社名の名寄せなどで利用されることを目的としています。

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'syamei'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install syamei

## 使い方

社名のみを返す（法人格を削除）
```
Syamei.only('株式会社xxx')    => "xxx"　　　　 # 引数1つはすべて
Syamei.only('株式会社xxx', 0) => "xxx"　　　　 # type=0はすべて
Syamei.only('株式会社xxx', 1) => "xxx"　　　　 # type=1は法人格フル
Syamei.only('株式会社xxx', 2) => "株式会社xxx" # type=2は特殊文字
Syamei.only('株式会社xxx', 3) => "株式会社xxx" # type=3は省略文字
Syamei.only('株式会社xxx', 4) => "株式会社xxx" # type=4はカナ

Syamei.only('㈱xxx')    => "xxx"　 # 引数1つはすべて
Syamei.only('㈱xxx', 0) => "xxx"　 # type=0はすべて
Syamei.only('㈱xxx', 1) => "㈱xxx" # type=1は法人格フル
Syamei.only('㈱xxx', 2) => "xxx"　 # type=2は特殊文字
Syamei.only('㈱xxx', 3) => "㈱xxx" # type=3は省略文字
Syamei.only('㈱xxx', 4) => "㈱xxx" # type=4はカナ

Syamei.only('(株)xxx')    => "xxx"　   # 引数1つはすべて
Syamei.only('(株)xxx', 0) => "xxx"　   # type=0はすべて
Syamei.only('(株)xxx', 1) => "(株)xxx" # type=1は法人格フル
Syamei.only('(株)xxx', 2) => "(株)xxx" # type=2は特殊文字
Syamei.only('(株)xxx', 3) => "xxx"　   # type=3は省略文字
Syamei.only('(株)xxx', 4) => "(株)xxx" # type=4はカナ

Syamei.only('カ)xxx')    => "xxx"　  # 引数1つはすべて
Syamei.only('カ)xxx', 0) => "xxx"　  # type=0はすべて
Syamei.only('カ)xxx', 1) => "カ)xxx" # type=1は法人格フル
Syamei.only('カ)xxx', 2) => "カ)xxx" # type=2は特殊文字
Syamei.only('カ)xxx', 3) => "カ)xxx" # type=3は省略文字
Syamei.only('カ)xxx', 4) => "xxx"　  # type=4はカナ

Syamei.only('xxx(カ')    => "xxx"　  # 引数1つはすべて
Syamei.only('xxx(カ', 0) => "xxx"　  # type=0はすべて
Syamei.only('xxx(カ', 1) => "xxx(カ" # type=1は法人格フル
Syamei.only('xxx(カ', 2) => "xxx(カ" # type=2は特殊文字
Syamei.only('xxx(カ', 3) => "xxx(カ" # type=3は省略文字
Syamei.only('xxx(カ', 4) => "xxx"　  # type=4はカナ
```

末尾の法人格を削除
```
Syamei.with_beginning('株式会社xxx') => "株式会社xxx"
Syamei.with_beginning('xxx株式会社') => "xxx"
```

先頭の法人格を削除
```
Syamei.with_end('株式会社xxx') => "xxx"
Syamei.with_end('xxx株式会社') => "xxx株式会社"
```

使用している法人格を取得
```
Syamei.notation("株式会社xxx") => "株式会社"
```

現在登録している法人格
```
Syamei.list
=> "株式会社  有限会社  合名会社  合資会社  合同会社  医療法人社団  医療法人財団  医療法人  社会医療法人  財団法人  一般財団法人  公益財団法人  社団法人  一般社団法人  公益社団法人  宗教法人  学校法人  社会福祉法人  更生保護法人  相互会社  特定非営利活動法人  独立行政法人  地方独立行政法人  弁護士法人  有限責任中間法人  無限責任中間法人  行政書士法人  司法書士法人  税理士法人  国立大学法人  公立大学法人  農事組合法人  管理組合法人  社会保険労務士法人  営業所  出張所  ㈱  (株)  ㈲  (有)  (名)  (資)  (同)  (医)  (財)  (一財)  (公財)  (社)  (一社)  (公社)  (宗)  (学)  (福)  (相)  (特非)  (独)  (地独)  (弁)  (行)  (司)  (税)  (中)  (大)  (営)  (出)  カ)  (カ)  (カ  ユ)  (ユ)  (ユ  メ)  (メ)  (メ  シ)  (シ)  (シ  ド)  (ド)  (ド  シユウ)  ガク)  フク)  ホゴ)  (ホゴ)  (ホゴ  ソ)  (ソ)  (ソ  トクヒ)  (トクヒ)  (トクヒ  ドク)  (ドク)  (ドク  チドク)  (チドク)  (チドク  ベン)  (ベン)  (ベン  ギヨ)  (ギヨ)  (ギヨ  シホウ)  (シホウ)  (シホウ  ゼイ)  (ゼイ)  (ゼイ  ノウ)  (ノウ)  (ノウ  カンリ)  (カンリ)  (カンリ  ロウム)  (ロウム)  (ロウム  (ダイ)  (ダイ  エイ)  (エイ)  (エイ  シユツ)  (シユツ)  (シユツ"
```

## Contributing
1. Fork it.
1. Create your feature branch (git checkout -b my-new-feature)
1. Commit your changes (git commit -am 'Add some feature')
1. Push to the branch (git push origin my-new-feature)
1. Create new Pull Request

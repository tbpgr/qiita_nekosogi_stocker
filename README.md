# Qiita::NekosogiStocker

Qiita::NekosogiStocker stocks specific user's all articles.

[![Gem Version](https://badge.fury.io/rb/qiita_nekosogi_stocker.svg)](http://badge.fury.io/rb/qiita_nekosogi_stocker)

## :thought_balloon: Image
### Before
You  
:man::grey_question::grey_question::page_with_curl::older_man:(:star2: author)  
:grey_question::grey_question::grey_question::page_with_curl:  
:grey_question::grey_question::grey_question::page_with_curl:  
:grey_question::thumbsup::paperclip::page_with_curl:  
:grey_question::thumbsup::paperclip::page_with_curl:  
:grey_question::grey_question::grey_question::page_with_curl:  

### After

You  
:notes:  
:man::thumbsup::paperclip::page_with_curl::older_man:(:star2: author)  
:grey_question::thumbsup::paperclip::page_with_curl:  
:grey_question::thumbsup::paperclip::page_with_curl:  
:grey_question::thumbsup::paperclip::page_with_curl:  
:grey_question::thumbsup::paperclip::page_with_curl:  
:grey_question::thumbsup::paperclip::page_with_curl:  

## :cloud::arrow_down: Installation

Add this line to your application's Gemfile:

```ruby
gem 'qiita_nekosogi_stocker'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install qiita_nekosogi_stocker

## :computer: Commands
command name `nekosoqiita`

|sub command|args|memo|
|:--|:--|:--|
|help|--|show help|
|help|sub command name|show specific sub-command help|
|version|--|show version|
|stock|qiita_user_id|Stock all articles that created by user(qiita_user_id). Output format is ltsv.|

## :scroll: Usage

~~~bash
# 伊藤直也 さんの記事を根こそぎストックしてみます
$ nekosoqiita stock naoya@github
title: Yak shaving in Yosemite	url: http://qiita.com/naoya@github/items/8793fe9227f2b144b1ff
title: Go の変数初期化に伴う条件分岐をもっと良い感じに書きたいと思ったが諦めるしかないようです	url: http://qiita.com/naoya@github/items/fbfb853a910a8b3ae0fd
title: Chef で aws の t1.micro に swap を作るレシピ	url: http://qiita.com/naoya@github/items/2059e3755962e907315e
title: iTerm2 で emacs で C-tab で other-window	url: http://qiita.com/naoya@github/items/bfb250aa76107a036127
~~~

## :deciduous_tree: Env

|key|value|
|:--|:--|
|access_token|Qiita access token|

### .env
~~~
access_token=set_your_qiita_token
~~~

## :couple: Dependency

|key|value|
|:--|:--|
|qiita|qiita gem|

## :two_women_holding_hands: Contributing :two_men_holding_hands:

1. Fork it ( https://github.com/tbpgr/qiita_nekosogi_stocker/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

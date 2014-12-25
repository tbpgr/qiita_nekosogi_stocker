# Qiita::NekosogiStocker

Qiita::NekosogiStocker stocks specific user's all articles.

## Image
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

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'qiita_nekosogi_stocker'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install qiita_nekosogi_stocker

## Usage

~~~bash
$ nekosoqiita stock jnchito
title:title1....	url:url1...
title:title2....	url:url2...
~~~

## :deciduous_tree: Env

|key|value|
|:--|:--|
|access_token|Qiita の認証情報|

### .env
~~~
access_token=set_your_qiita_token
~~~

## :couple: Dependency

|key|value|
|:--|:--|
|qiita|qiita gem|

## Contributing

1. Fork it ( https://github.com/[my-github-username]/qiita_nekosogi_stocker/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

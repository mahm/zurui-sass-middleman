# zurui-sass-middleman

[@ken_c_lo](https://twitter.com/ken_c_lo)さんの[ズルいデザインテクニック](https://speakerdeck.com/ken_c_lo/zurui-design)のMixinをMiddlemanで利用できるようにしたGemです。

## Installation

### Middlemanユーザー向け

1) 以下のコードを`Gemfile`に追加してください:

```ruby
gem 'zurui-sass-middleman', '~> 0.0.2'
```

2) 以下のコードを`style.css.sass`のようなファイルに追加して下さい:

```sass
@import compass/utilities
@import compass/css3
@import zurui-sass
```

3) Enjoy!

### Railsユーザー向け

https://github.com/mahm/zurui-sass-rails をご利用下さい。

### 上記以外をお使いの方向け

1) 以下のコマンドを実行して、ローカルに`_zurui-sass.sass`をダウンロードして下さい:

```
curl https://raw.github.com/mahm/zurui-sass/_zurui-sass.sass > _zurui-sass.sass
```

2) Compassの使える環境で`_zurui-sass.sass`をインポートしてお使いください:

```sass
@import compass/utilities
@import compass/css3
@import zurui-sass
```

3) Enjoy!


## 使用例

- [Zurui Sass Sample](http://zurui-sample.herokuapp.com/)
- [Zurui Sass Sample(Github)](http://github.com/mahm/zurui-sample)

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

# Detech Broken Links

A little project to detect broken links on GitHub `README.md` files.

## Usage

Clone the project.

```ruby
git clone git@github.com:alexpapworth/detect-broken-links.git
```

Copy the `script.rb` file to the project you want to check.

```bash
cp detect-broken-links/script.rb OTHER-PROJECT
```

Run the `script.rb` file. (You may need to install [Ruby](https://www.ruby-lang.org/en/documentation/installation/) and [RubyGems](https://rubygems.org/pages/download))

```ruby
cd OTHER-PROJECT
ruby script.rb
```

## Configure

By default, the script will look for the `README.md` file in the directory you place it. You can modify this to point at a specific folder if needed.

```ruby
- file = File.open( File.join(File.dirname(__FILE__), 'README.md'), 'r').read
+ file = File.open( '/Users/NAME/git/OTHER-PROJECT/README.md'), 'r').read
```

There's likely some URLs in your README that you don't care to test. You can skip those with the following line.

```ruby
# Ignore project specific urls
urls = urls[6..-1]
```

# License

This project is licensed under the MIT License - Feel free to do what you want with it!
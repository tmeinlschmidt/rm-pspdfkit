# Pspdfkit

Include PSPDFKit in your rubymotion project.

## Installation

Add this line to your application's Gemfile:

    gem 'pspdfkit'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install pspdfkit

Then you need to copy/symlink PSPDFKit.framework and PSPDFKit.bundle

```
mkdir vendor
cd vendor
ln -s ../../pdf/Products/PSPDFKit.embeddedframework/PSPDFKit.framework ./
cd ../resources
ln -s ../../pdf/Products/PSPDFKit.embeddedframework/Resources/PSPDFKit.bundle ./
```

## Usage

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

# Barcode Reader API - Ruby Gem

Barcode Reader decodes 1D barcodes from an uploaded image or an image URL, including EAN-13, EAN-8, UPC-A, UPC-E, Code 128, Code 39, Code 93, ITF, Codabar and GS1 DataBar. It returns the decoded value and the symbology. Paid plans add the GTIN, the barcode's orientation and corners, and every barcode found in the image.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_barcodereader'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_barcodereader
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_barcodereader'

# Initialize the client
client = APIVerve::Barcodereader::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({ image: "https://raw.githubusercontent.com/zxing/zxing/master/core/src/test/resources/blackbox/ean13-1/2.png" })

# Print the response
puts response
```

### File Upload

```ruby
# Upload a file
response = client.execute_with_file("/path/to/file.jpg")

# Or use a URL
response = client.execute_with_url("https://example.com/image.jpg")
```

### Error Handling

```ruby
begin
  response = client.execute({ image: "https://raw.githubusercontent.com/zxing/zxing/master/core/src/test/resources/blackbox/ean13-1/2.png" })
  puts response["data"]
rescue APIVerve::Barcodereader::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Barcodereader::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Barcodereader::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "text": "8480010092271",
    "format": "EAN-13",
    "isRetail": true,
    "gtin": "8480010092271",
    "orientation": 0,
    "position": {
      "topLeft": {
        "x": 565,
        "y": 366
      },
      "topRight": {
        "x": 1132,
        "y": 366
      },
      "bottomRight": {
        "x": 1145,
        "y": 734
      },
      "bottomLeft": {
        "x": 558,
        "y": 734
      }
    },
    "barcodeCount": 1,
    "barcodes": [
      {
        "text": "8480010092271",
        "format": "EAN-13",
        "gtin": "8480010092271",
        "orientation": 0,
        "position": {
          "topLeft": {
            "x": 565,
            "y": 366
          },
          "topRight": {
            "x": 1132,
            "y": 366
          },
          "bottomRight": {
            "x": 1145,
            "y": 734
          },
          "bottomLeft": {
            "x": 558,
            "y": 734
          }
        }
      }
    ]
  }
}
```

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/barcodereader?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/barcodereader?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/barcodereader?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).

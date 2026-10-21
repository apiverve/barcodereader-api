# Barcode Reader API - PHP Package

Barcode Reader decodes 1D barcodes from an uploaded image or an image URL, including EAN-13, EAN-8, UPC-A, UPC-E, Code 128, Code 39, Code 93, ITF, Codabar and GS1 DataBar. It returns the decoded value and the symbology. Paid plans add the GTIN, the barcode's orientation and corners, and every barcode found in the image.

## Installation

Install via Composer:

```bash
composer require apiverve/barcodereader
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Barcodereader\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute(['image' => 'https://raw.githubusercontent.com/zxing/zxing/master/core/src/test/resources/blackbox/ean13-1/2.png']);

// Print the response
print_r($response);
```

### File Upload

```php
// Upload a file
$response = $client->executeWithFile('/path/to/file.jpg');

// Or use a URL
$response = $client->executeWithUrl('https://example.com/image.jpg');
```

### Error Handling

```php
use APIVerve\Barcodereader\Client;
use APIVerve\Barcodereader\Exceptions\APIException;
use APIVerve\Barcodereader\Exceptions\ValidationException;

try {
    $response = $client->execute(['image' => 'https://raw.githubusercontent.com/zxing/zxing/master/core/src/test/resources/blackbox/ean13-1/2.png']);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/barcodereader?utm_source=packagist&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/barcodereader?utm_source=php&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/barcodereader?utm_source=php&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).

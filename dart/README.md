# Barcode Reader API - Dart/Flutter Client

Barcode Reader decodes 1D barcodes from an uploaded image or an image URL, including EAN-13, EAN-8, UPC-A, UPC-E, Code 128, Code 39, Code 93, ITF, Codabar and GS1 DataBar. It returns the decoded value and the symbology. Paid plans add the GTIN, the barcode's orientation and corners, and every barcode found in the image.

[![pub package](https://img.shields.io/pub/v/apiverve_barcodereader.svg)](https://pub.dev/packages/apiverve_barcodereader)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Barcode Reader API](https://apiverve.com/marketplace/barcodereader?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_barcodereader: ^1.2.3
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_barcodereader/apiverve_barcodereader.dart';

void main() async {
  final client = BarcodereaderClient('YOUR_API_KEY');

  try {
    // This API requires a file upload — a JSON body is rejected with a 400.
    final response = await client.executeWithFile('/path/to/your-file');

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

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

## API Reference

- **API Home:** [Barcode Reader API](https://apiverve.com/marketplace/barcodereader?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/barcodereader](https://docs.apiverve.com/ref/barcodereader?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)

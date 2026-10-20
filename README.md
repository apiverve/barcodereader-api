# [Barcode Reader API](https://apiverve.com/marketplace/barcodereader?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)

Barcode Reader decodes 1D barcodes from an uploaded image or an image URL, including EAN-13, EAN-8, UPC-A, UPC-E, Code 128, Code 39, Code 93, ITF, Codabar and GS1 DataBar. It returns the decoded value and the symbology. Paid plans add the GTIN, the barcode&#x27;s orientation and corners, and every barcode found in the image.

The Barcode Reader API provides a simple, reliable way to integrate barcode reader functionality into your applications. Built for developers who need production-ready barcode reader capabilities without the complexity of building from scratch.

**[View API Details →](https://apiverve.com/marketplace/barcodereader?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)**

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![API Status](https://img.shields.io/badge/Status-Active-green.svg)](https://apiverve.com/marketplace/barcodereader?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)
[![Method](https://img.shields.io/badge/Method-POST-blue.svg)](#)
[![Platform](https://img.shields.io/badge/Platform-Multi--Platform-orange.svg)](#installation)

**Available on:**
[![npm](https://img.shields.io/badge/npm-CB3837?style=flat&logo=npm&logoColor=white)](https://www.npmjs.com/package/@apiverve/barcodereader)
[![NuGet](https://img.shields.io/badge/NuGet-004880?style=flat&logo=nuget&logoColor=white)](https://www.nuget.org/packages/APIVerve.API.BarcodeReader)
[![PyPI](https://img.shields.io/badge/PyPI-3776AB?style=flat&logo=python&logoColor=white)](https://pypi.org/project/apiverve-barcodereader/)
[![RubyGems](https://img.shields.io/badge/RubyGems-E9573F?style=flat&logo=rubygems&logoColor=white)](https://rubygems.org/gems/apiverve_barcodereader)
[![Packagist](https://img.shields.io/badge/Packagist-F28D1A?style=flat&logo=packagist&logoColor=white)](https://packagist.org/packages/apiverve/barcodereader)
[![Go](https://img.shields.io/badge/Go-00ADD8?style=flat&logo=go&logoColor=white)](#-go)
[![Dart](https://img.shields.io/badge/Dart-0175C2?style=flat&logo=dart&logoColor=white)](https://pub.dev/packages/apiverve_barcodereader)
[![JitPack](https://img.shields.io/badge/JitPack-2E7D32?style=flat&logo=android&logoColor=white)](#-android-jitpack)

---

## Quick Start

### Using JavaScript

```javascript
async function callBarcodeReaderAPI() {
    try {
        const requestBody = {
    "image": "https://raw.githubusercontent.com/zxing/zxing/master/core/src/test/resources/blackbox/ean13-1/2.png"
};

        const response = await fetch('https://api.apiverve.com/v1/barcodereader', {
            method: 'POST',
            headers: {
                'x-api-key': 'YOUR_API_KEY_HERE',
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(requestBody)
        });

        const data = await response.json();
        console.log(data);
    } catch (error) {
        console.error('Error:', error);
    }
}

callBarcodeReaderAPI();
```

### Using cURL

```bash
curl -X POST "https://api.apiverve.com/v1/barcodereader" \
  -H "x-api-key: YOUR_API_KEY_HERE" \
  -F "image=@/path/to/your-file"
# Accepted formats: .jpg, .jpeg, .png, .gif, .webp, .bmp (max 10MB)
```

**Get your API key:** [https://apiverve.com](https://apiverve.com)

**📁 For more examples, see the [examples folder](./examples/)**

---

## Installation

Choose your preferred programming language:

### 📦 NPM (JavaScript/Node.js)

```bash
npm install @apiverve/barcodereader
```

[**View NPM Package →**](https://www.npmjs.com/package/@apiverve/barcodereader) | [**Package Code →**](./npm/)

---

### 🔷 NuGet (.NET/C#)

```bash
dotnet add package APIVerve.API.BarcodeReader
```

[**View NuGet Package →**](https://www.nuget.org/packages/APIVerve.API.BarcodeReader) | [**Package Code →**](./nuget/)

---

### 🐍 Python (PyPI)

```bash
pip install apiverve-barcodereader
```

[**View PyPI Package →**](https://pypi.org/project/apiverve-barcodereader/) | [**Package Code →**](./python/)

---

### 💎 Ruby (RubyGems)

```bash
gem install apiverve_barcodereader
```

[**View RubyGems Package →**](https://rubygems.org/gems/apiverve_barcodereader) | [**Package Code →**](./ruby/)

---

### 🐘 PHP (Packagist)

```bash
composer require apiverve/barcodereader
```

[**View Packagist Package →**](https://packagist.org/packages/apiverve/barcodereader) | [**Package Code →**](./php/)

---

### 🎯 Dart (pub.dev)

```bash
dart pub add apiverve_barcodereader
```

[**View pub.dev Package →**](https://pub.dev/packages/apiverve_barcodereader) | [**Package Code →**](./dart/)

---

### 🤖 Android (JitPack)

```gradle
implementation 'com.github.apiverve:barcodereader-api:1.0.0'
```

[**Package Code →**](./android/)

---

### 🐹 Go

```bash
go get github.com/apiverve/barcodereader-api/go
```

[**Package Code →**](./go/)

---

## Why Use This API?

| Feature | Benefit |
|---------|---------|
| **Multi-language SDKs** | Native packages for JavaScript, Python, C#, Go, and Android |
| **Simple Integration** | Single API key authentication, consistent response format |
| **Production Ready** | 99.9% uptime SLA, served from 24 global regions |
| **Comprehensive Docs** | Full examples, OpenAPI spec, and dedicated support |

---

## Documentation

- 🏠 **API Home:** [Barcode Reader API](https://apiverve.com/marketplace/barcodereader?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)
- 📚 **API Reference:** [docs.apiverve.com/ref/barcodereader](https://docs.apiverve.com/ref/barcodereader)
- 📖 **OpenAPI Spec:** [openapi.yaml](./openapi.yaml)
- 💡 **Examples:** [examples/](./examples/)

---

## What Can You Build?

The Barcode Reader API is commonly used for:

- **Web Applications** - Add barcode reader features to your frontend or backend
- **Mobile Apps** - Native SDKs for Android development
- **Automation** - Integrate with n8n, Zapier, or custom workflows
- **SaaS Products** - Enhance your product with barcode reader capabilities
- **Data Pipelines** - Process and analyze data at scale

---

## API Reference

### Authentication
All requests require an API key in the header:
```
x-api-key: YOUR_API_KEY_HERE
```

Get your API key: [https://apiverve.com](https://apiverve.com)

### Response Format

Every APIVerve endpoint returns the same envelope — check `status`, then read `data`:

```json
{
  "status": "ok",
  "error": null,
  "data": { ... }
}
```

### Example Response

A real response from the Barcode Reader API:

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

---

## Support & Community

- 🏠 **API Home**: [Barcode Reader API](https://apiverve.com/marketplace/barcodereader?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)
- 💬 **Support**: [https://apiverve.com/contact](https://apiverve.com/contact)
- 🐛 **Issues**: [GitHub Issues](../../issues)
- 📖 **Documentation**: [https://docs.apiverve.com](https://docs.apiverve.com)
- 🌐 **Website**: [https://apiverve.com](https://apiverve.com)

---

## Contributing

We welcome contributions! Please see [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

---

## Security

For security concerns, please review our [Security Policy](SECURITY.md).

---

## License

This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for details.

---

## Acknowledgments

Built with ❤️ by [APIVerve](https://apiverve.com)

Copyright © 2026 APIVerve. All rights reserved.

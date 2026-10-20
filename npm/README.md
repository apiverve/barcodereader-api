# Barcode Reader API

Barcode Reader decodes 1D barcodes from an uploaded image or an image URL, including EAN-13, EAN-8, UPC-A, UPC-E, Code 128, Code 39, Code 93, ITF, Codabar and GS1 DataBar. It returns the decoded value and the symbology. Paid plans add the GTIN, the barcode's orientation and corners, and every barcode found in the image.

[![npm version](https://img.shields.io/npm/v/@apiverve/barcodereader.svg)](https://www.npmjs.com/package/@apiverve/barcodereader)

This is a JavaScript wrapper for the [Barcode Reader API](https://apiverve.com/marketplace/barcodereader?utm_source=npm&utm_medium=referral&utm_content=readme)

---

## Installation

Using npm:
```shell
npm install @apiverve/barcodereader
```

Using yarn:
```shell
yarn add @apiverve/barcodereader
```

---

## Configuration

Before using the Barcode Reader API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=npm&utm_medium=referral&utm_content=readme)

---

## Quick Start

[Get started with the Quick Start Guide](https://docs.apiverve.com/quickstart?utm_source=npm&utm_medium=referral&utm_content=readme)

The Barcode Reader API documentation is found here: [https://docs.apiverve.com/ref/barcodereader](https://docs.apiverve.com/ref/barcodereader?utm_source=npm&utm_medium=referral&utm_content=readme).
You can find parameters, example responses, and status codes documented here.

### Setup

```javascript
const barcodereaderAPI = require('@apiverve/barcodereader');
const api = new barcodereaderAPI({
    api_key: '[YOUR_API_KEY]'
});
```

---

## Usage

### File Upload

This API requires a file upload. Use `executeWithFile()` to upload files:

```javascript
// Upload a file (path, Buffer, or ReadStream)
api.executeWithFile('/path/to/file.image', options, callback);
```

**Accepted file types:** .jpg, .jpeg, .png, .gif, .webp, .bmp
**Maximum file size:** 10 MB

---

### Perform Request

Using the API is simple. All you have to do is make a request. The API will return a response with the data you requested.

```javascript
// This API requires a file upload
// You can pass a file path, Buffer, or ReadStream
var filePath = '/path/to/image.jpg';

api.executeWithFile(filePath, function (error, data) {
    if (error) {
        return console.error(error);
    } else {
        console.log(data);
    }
});
```

---

### Using Promises

You can also use promises to make requests. The API returns a promise that you can use to handle the response.

```javascript
// This API requires a file upload
// You can pass a file path, Buffer, or ReadStream
var filePath = '/path/to/image.jpg';

api.executeWithFile(filePath)
    .then(data => {
        console.log(data);
    })
    .catch(error => {
        console.error(error);
    });
```

---

### Using Async/Await

You can also use async/await to make requests. The API returns a promise that you can use to handle the response.

```javascript
async function makeRequest() {
    // This API requires a file upload
// You can pass a file path, Buffer, or ReadStream
var filePath = '/path/to/image.jpg';

    try {
        const data = await api.executeWithFile(filePath);
        console.log(data);
    } catch (error) {
        console.error(error);
    }
}
```

---

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

---

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=npm&utm_medium=referral&utm_content=readme).

---

## Updates

Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=npm&utm_medium=referral&utm_content=readme) and [Privacy Policy](https://apiverve.com/privacy?utm_source=npm&utm_medium=referral&utm_content=readme).

---

## License
Licensed under the MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

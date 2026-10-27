Pod::Spec.new do |s|
  s.name             = 'APIVerveBarcodeReader'
  s.version          = '1.2.3'
  s.summary          = 'Barcode Reader decodes 1D barcodes from an uploaded image or an image URL, including EAN-13, EAN-8, UPC-A, UPC-E, Code 128, Code 39,...'
  s.description      = <<-'DESC'
Barcode Reader decodes 1D barcodes from an uploaded image or an image URL, including EAN-13, EAN-8, UPC-A, UPC-E, Code 128, Code 39, Code 93, ITF, Codabar and GS1 DataBar. It returns the decoded value and the symbology. Paid plans add the GTIN, the barcode's orientation and corners, and every barcode found in the image.

This iOS/macOS SDK provides a convenient way to access the Barcode Reader from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com/marketplace/barcodereader?utm_source=cocoapods&utm_medium=referral&utm_content=homepage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  # The SDK repo holds every language; the pod lives under cocoapods/ with its own tag.
  s.source           = { :git => 'https://github.com/apiverve/barcodereader-api.git', :tag => "cocoapods/v#{s.version}" }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.swift_version = '5.0'

  s.source_files = 'cocoapods/Sources/APIVerveBarcodeReader/**/*.swift'

  s.frameworks = 'Foundation'

  # APIResponse, APIVerveError and the request plumbing, shared by every APIVerve pod.
  s.dependency 'APIVerveCore', '~> 1.2'
end

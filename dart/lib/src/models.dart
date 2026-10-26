/// Response models for the Barcode Reader API.

/// API Response wrapper.
class BarcodereaderResponse {
  final String status;
  final dynamic error;
  final BarcodereaderData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  BarcodereaderResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory BarcodereaderResponse.fromJson(Map<String, dynamic> json) => BarcodereaderResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? BarcodereaderData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Barcode Reader API.

class BarcodereaderData {
  String? text;
  String? format;
  bool? isRetail;
  String? gtin;
  num? orientation;
  BarcodereaderDataPosition? position;
  num? barcodeCount;
  List<BarcodereaderDataBarcodesItem>? barcodes;

  BarcodereaderData({
    this.text,
    this.format,
    this.isRetail,
    this.gtin,
    this.orientation,
    this.position,
    this.barcodeCount,
    this.barcodes,
  });

  factory BarcodereaderData.fromJson(Map<String, dynamic> json) => BarcodereaderData(
      text: json['text'],
      format: json['format'],
      isRetail: json['isRetail'],
      gtin: json['gtin'],
      orientation: json['orientation'],
      position: json['position'] != null ? BarcodereaderDataPosition.fromJson(json['position']) : null,
      barcodeCount: json['barcodeCount'],
      barcodes: (json['barcodes'] as List?)?.map((e) => BarcodereaderDataBarcodesItem.fromJson(e)).toList(),
    );
}

class BarcodereaderDataPosition {
  BarcodereaderDataPositionTopleft? topLeft;
  BarcodereaderDataPositionTopright? topRight;
  BarcodereaderDataPositionBottomright? bottomRight;
  BarcodereaderDataPositionBottomleft? bottomLeft;

  BarcodereaderDataPosition({
    this.topLeft,
    this.topRight,
    this.bottomRight,
    this.bottomLeft,
  });

  factory BarcodereaderDataPosition.fromJson(Map<String, dynamic> json) => BarcodereaderDataPosition(
      topLeft: json['topLeft'] != null ? BarcodereaderDataPositionTopleft.fromJson(json['topLeft']) : null,
      topRight: json['topRight'] != null ? BarcodereaderDataPositionTopright.fromJson(json['topRight']) : null,
      bottomRight: json['bottomRight'] != null ? BarcodereaderDataPositionBottomright.fromJson(json['bottomRight']) : null,
      bottomLeft: json['bottomLeft'] != null ? BarcodereaderDataPositionBottomleft.fromJson(json['bottomLeft']) : null,
    );
}

class BarcodereaderDataPositionTopleft {
  num? x;
  num? y;

  BarcodereaderDataPositionTopleft({
    this.x,
    this.y,
  });

  factory BarcodereaderDataPositionTopleft.fromJson(Map<String, dynamic> json) => BarcodereaderDataPositionTopleft(
      x: json['x'],
      y: json['y'],
    );
}

class BarcodereaderDataPositionTopright {
  num? x;
  num? y;

  BarcodereaderDataPositionTopright({
    this.x,
    this.y,
  });

  factory BarcodereaderDataPositionTopright.fromJson(Map<String, dynamic> json) => BarcodereaderDataPositionTopright(
      x: json['x'],
      y: json['y'],
    );
}

class BarcodereaderDataPositionBottomright {
  num? x;
  num? y;

  BarcodereaderDataPositionBottomright({
    this.x,
    this.y,
  });

  factory BarcodereaderDataPositionBottomright.fromJson(Map<String, dynamic> json) => BarcodereaderDataPositionBottomright(
      x: json['x'],
      y: json['y'],
    );
}

class BarcodereaderDataPositionBottomleft {
  num? x;
  num? y;

  BarcodereaderDataPositionBottomleft({
    this.x,
    this.y,
  });

  factory BarcodereaderDataPositionBottomleft.fromJson(Map<String, dynamic> json) => BarcodereaderDataPositionBottomleft(
      x: json['x'],
      y: json['y'],
    );
}

class BarcodereaderDataBarcodesItem {
  String? text;
  String? format;
  String? gtin;
  num? orientation;
  BarcodereaderDataBarcodesItemPosition? position;

  BarcodereaderDataBarcodesItem({
    this.text,
    this.format,
    this.gtin,
    this.orientation,
    this.position,
  });

  factory BarcodereaderDataBarcodesItem.fromJson(Map<String, dynamic> json) => BarcodereaderDataBarcodesItem(
      text: json['text'],
      format: json['format'],
      gtin: json['gtin'],
      orientation: json['orientation'],
      position: json['position'] != null ? BarcodereaderDataBarcodesItemPosition.fromJson(json['position']) : null,
    );
}

class BarcodereaderDataBarcodesItemPosition {
  BarcodereaderDataBarcodesItemPositionTopleft? topLeft;
  BarcodereaderDataBarcodesItemPositionTopright? topRight;
  BarcodereaderDataBarcodesItemPositionBottomright? bottomRight;
  BarcodereaderDataBarcodesItemPositionBottomleft? bottomLeft;

  BarcodereaderDataBarcodesItemPosition({
    this.topLeft,
    this.topRight,
    this.bottomRight,
    this.bottomLeft,
  });

  factory BarcodereaderDataBarcodesItemPosition.fromJson(Map<String, dynamic> json) => BarcodereaderDataBarcodesItemPosition(
      topLeft: json['topLeft'] != null ? BarcodereaderDataBarcodesItemPositionTopleft.fromJson(json['topLeft']) : null,
      topRight: json['topRight'] != null ? BarcodereaderDataBarcodesItemPositionTopright.fromJson(json['topRight']) : null,
      bottomRight: json['bottomRight'] != null ? BarcodereaderDataBarcodesItemPositionBottomright.fromJson(json['bottomRight']) : null,
      bottomLeft: json['bottomLeft'] != null ? BarcodereaderDataBarcodesItemPositionBottomleft.fromJson(json['bottomLeft']) : null,
    );
}

class BarcodereaderDataBarcodesItemPositionTopleft {
  num? x;
  num? y;

  BarcodereaderDataBarcodesItemPositionTopleft({
    this.x,
    this.y,
  });

  factory BarcodereaderDataBarcodesItemPositionTopleft.fromJson(Map<String, dynamic> json) => BarcodereaderDataBarcodesItemPositionTopleft(
      x: json['x'],
      y: json['y'],
    );
}

class BarcodereaderDataBarcodesItemPositionTopright {
  num? x;
  num? y;

  BarcodereaderDataBarcodesItemPositionTopright({
    this.x,
    this.y,
  });

  factory BarcodereaderDataBarcodesItemPositionTopright.fromJson(Map<String, dynamic> json) => BarcodereaderDataBarcodesItemPositionTopright(
      x: json['x'],
      y: json['y'],
    );
}

class BarcodereaderDataBarcodesItemPositionBottomright {
  num? x;
  num? y;

  BarcodereaderDataBarcodesItemPositionBottomright({
    this.x,
    this.y,
  });

  factory BarcodereaderDataBarcodesItemPositionBottomright.fromJson(Map<String, dynamic> json) => BarcodereaderDataBarcodesItemPositionBottomright(
      x: json['x'],
      y: json['y'],
    );
}

class BarcodereaderDataBarcodesItemPositionBottomleft {
  num? x;
  num? y;

  BarcodereaderDataBarcodesItemPositionBottomleft({
    this.x,
    this.y,
  });

  factory BarcodereaderDataBarcodesItemPositionBottomleft.fromJson(Map<String, dynamic> json) => BarcodereaderDataBarcodesItemPositionBottomleft(
      x: json['x'],
      y: json['y'],
    );
}

class BarcodereaderRequest {
  String? image;

  BarcodereaderRequest({
    this.image,
  });

  Map<String, dynamic> toJson() => {
      if (image != null) 'image': image,
    };
}

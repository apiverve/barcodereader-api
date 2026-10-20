declare module '@apiverve/barcodereader' {
  export interface barcodereaderOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface barcodereaderResponse {
    status: string;
    error: string | null;
    data: BarcodeReaderData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface BarcodeReaderData {
      text:         null | string;
      format:       null | string;
      isRetail:     boolean | null;
      gtin:         null | string;
      orientation:  number | null;
      position:     Position;
      barcodeCount: number | null;
      barcodes:     Barcode[];
  }
  
  interface Barcode {
      text:        null | string;
      format:      null | string;
      gtin:        null | string;
      orientation: number | null;
      position:    Position;
  }
  
  interface Position {
      topLeft:     BottomLeft;
      topRight:    BottomLeft;
      bottomRight: BottomLeft;
      bottomLeft:  BottomLeft;
  }
  
  interface BottomLeft {
      x: number | null;
      y: number | null;
  }

  export default class barcodereaderWrapper {
    constructor(options: barcodereaderOptions);

    execute(callback: (error: any, data: barcodereaderResponse | null) => void): Promise<barcodereaderResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: barcodereaderResponse | null) => void): Promise<barcodereaderResponse>;
    execute(query?: Record<string, any>): Promise<barcodereaderResponse>;
  }
}

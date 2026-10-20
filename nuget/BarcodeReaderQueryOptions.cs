using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.BarcodeReader
{
    /// <summary>
    /// Query options for the Barcode Reader API
    /// </summary>
    public class BarcodeReaderQueryOptions
    {
        /// <summary>
        /// An image file containing a barcode (JPG, PNG, GIF, WebP or BMP), or a public image URL
        /// </summary>
        [JsonProperty("image")]
        public string Image { get; set; }
    }
}

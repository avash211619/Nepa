# Sequence: Client-side (WASM) Processing Flow

1. User chooses "Privacy mode" or client-side option.
2. Browser loads WASM engine (preloaded or lazy-loaded) and instantiates pipeline.
3. File is read as ArrayBuffer in browser and passed to WASM pipeline.
4. WASM executes operations (convert if supported, compress, resize, strip metadata) and returns optimized Blob.
5. Browser shows preview and allows download locally.
6. If user chooses to upload result, follow server-side upload flow.

Limitations
- Some codecs (HEIC) may not be reliably available in WASM across all browsers; detect and fall back to server-side with clear messaging.

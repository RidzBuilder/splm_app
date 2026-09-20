import 'dart:io';
import 'package:google_generative_ai/google_generative_ai.dart';

class AIService {
  static const String apiKey = 'YOUR_GOOGLE_AI_STUDIO_API_KEY';
  
  final GenerativeModel _model = GenerativeModel(
    model: 'gemini-pro-vision',
    apiKey: apiKey,
  );

  Future<Map<String, dynamic>> validateReportPhoto(File imageFile) async {
    try {
      final imageBytes = await imageFile.readAsBytes();
      
      final prompt = TextPart('''
        Analisis foto toko ritel ini. 
        Apakah foto jelas (tidak blur)? Apakah menunjukkan lingkungan toko/produk? 
        Jawab HANYA dalam format JSON: 
        {"isValid": true/false, "confidence": 0-100, "feedback": "alasan singkat"}
      ''');
      
      final imagePart = DataPart('image/jpeg', imageBytes);
      
      final response = await _model.generateContent([
        Content.multi([prompt, imagePart])
      ]);
      
      final text = response.text ?? '{"isValid": false, "confidence": 0, "feedback": "Gagal memproses"}';
      
      return {
        "isValid": true,
        "confidence": 95,
        "feedback": text
      };
    } catch (e) {
      return {"isValid": false, "confidence": 0, "feedback": "Error: $e"};
    }
  }
}

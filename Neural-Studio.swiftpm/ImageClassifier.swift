////
////  ImageClassifier.swift
////  Neural Studio
////
////  Created by Grant Hough on 4/18/23.
////
//
//import SwiftUI
//
//class ImageClassifier: ObservableObject {
//    
//    @Published private var classifier = Classifier()
//    
//    var imageClass: String? {
//        classifier.results
//    }
//    
//    func detect(uiImage: UIImage) {
//        guard let ciImage = CIImage (image: uiImage) else { return }
//        classifier.detect(ciImage: ciImage)
//        
//    }
//        
//}

////
////  TestView.swift
////  Neural Studio
////
////  Created by Grant Hough on 4/16/23.
////
//
//import SwiftUI
//import CoreML
//import PencilKit
//
//struct TestView: View {
//    
//    @ObservedObject var classifier: ImageClassifier
//
//    @State var canvasView = PKCanvasView()
//    @State var drawingSize: CGSize = CGSize(width: 400, height: 400)
//    @State var image: UIImage = UIImage()
//    @State var blackBackground: UIImage = UIImage(imageLiteralResourceName: "blacksquare")
//    
//    func addBackground() -> UIImage {
//        UIGraphicsBeginImageContext(drawingSize)
//        let areaSize = CGRect(x: 0, y: 0, width: drawingSize.width, height: drawingSize.height)
//        blackBackground.draw(in: areaSize)
//        image.draw(in: areaSize, blendMode: .normal, alpha: 0.8)
//        var newImage:UIImage = UIGraphicsGetImageFromCurrentImageContext()!
//        UIGraphicsEndImageContext()
//        return newImage
//    }
//    
//    var body: some View {
//        GeometryReader{g in
//            VStack (alignment: .center) {
//                
//                MNISTCanvas(canvasView: $canvasView)
//                    .frame(width: g.size.height > g.size.width ? g.size.width * 0.5: g.size.height * 0.5, height: g.size.height > g.size.width ? g.size.width * 0.5: g.size.height * 0.5, alignment: .center)
//                    .border(Color("Primary Accent"), width: 10)
//                
//                HStack {
//                    
//                    Button {
//                        canvasView.drawing = PKDrawing()
//                    } label: {
//                        Text("Clear")
//                    }
//                    
//                    Button {
//                        let imgRect = CGRect(origin: CGPoint.zero, size: drawingSize)
//                        image = canvasView.drawing.image(from: imgRect, scale: 1.0)
//
//                        classifier.detect(uiImage: image)
//                        print(classifier.detect(uiImage: image))
//                        print(classifier.imageClass)
//                        
//                    } label: {
//                        Image(uiImage: addBackground())
//                        Text("Classify")
//                        if let imageClass = classifier.imageClass {
//                            HStack{
//                                Text("Possible Condition(s):")
//                                    .font(.caption)
//                                Text(imageClass)
//                                    .bold()
//                            }
//                        } else {
//                            HStack{
//                                Text("Please select and scan an image")
//                                    .font(.caption)
//                            }
//                        }
//        
//            
//                    }
//                    
//                }
//            }
//        }
//     
//    }
//}
//
//struct TestView_Previews: PreviewProvider {
//    static var previews: some View {
//        TestView(classifier: ImageClassifier())
//    }
//}
//
//
//struct MNISTCanvas: UIViewRepresentable {
//    @Binding var canvasView: PKCanvasView
//
//    func makeUIView(context: Context) -> PKCanvasView {
//        canvasView.drawingPolicy = .anyInput
//        canvasView.backgroundColor = .black
//        canvasView.tool = PKInkingTool(.pencil, color: .white, width: 15)
//        return canvasView
//    }
//
//    func updateUIView(_ canvasView: PKCanvasView, context: Context) { }
//}

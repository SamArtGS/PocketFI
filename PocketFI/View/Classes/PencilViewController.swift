//
//  PencilViewController.swift
//  PocketFI
//
//  Created by Proteco on 27/08/21.
//

import UIKit
import PencilKit
import WebKit

@available(iOS 13.0, *)
@available(iOS 14.0, *)
class PencilViewController: UIViewController, PKCanvasViewDelegate, PKToolPickerObserver{

    @IBOutlet weak var canvasView: PKCanvasView!
    let webView = WKWebView()
    
    let canvasWidth: CGFloat = 768
    let canvasOverscrollHight: CGFloat = 500
    var drawing = PKDrawing()
    
    let toolPicker = PKToolPicker.init()
    
    var visible = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        canvasView.delegate = self
        canvasView.drawing = drawing
        canvasView.alwaysBounceVertical = true
        
        view.addSubview(webView)
        guard let url = URL(string: "https://web.stanford.edu/class/archive/cs/cs161/cs161.1168/lecture4.pdf") else {
            return
        }
        webView.load(URLRequest(url: url))
        webView.backgroundColor = UIColor.clear
        
    }
    
    override func viewDidLayoutSubviews() {
           super.viewDidLayoutSubviews()
           
           let canvasScale = canvasView.bounds.width/canvasWidth
           canvasView.minimumZoomScale = canvasScale
           canvasView.maximumZoomScale = canvasScale
           canvasView.zoomScale = canvasScale
           
           canvasView.contentOffset = CGPoint(x: 0, y: -canvasView.adjustedContentInset.top)
        
        webView.frame = view.bounds
           
       }

       override var prefersHomeIndicatorAutoHidden: Bool{
           return true
       }
       
       func canvasViewDrawingDidChange(_ canvasView: PKCanvasView) {
           updateContentSizeForDrawing()
           
       }
       
       func updateContentSizeForDrawing(){
           let drawing = canvasView.drawing
           let contentHeight: CGFloat
           if !drawing.bounds.isNull{
               contentHeight = max(canvasView.bounds.height, (drawing.bounds.maxY + self.canvasOverscrollHight) * canvasView.zoomScale)
           }else{
               contentHeight = canvasView.bounds.height
           }
           canvasView.contentSize = CGSize(width: canvasWidth * canvasView.zoomScale, height: contentHeight)
       }
       
    
    
    
    @IBAction func appearPencil(_ sender: Any) {
        if(visible == true){
            toolPicker.addObserver(canvasView)
            toolPicker.setVisible(true, forFirstResponder: canvasView)
            canvasView.becomeFirstResponder()
            visible = false
            webView.scrollView.isScrollEnabled = false
              webView.backgroundColor = UIColor.clear
            view.addSubview(canvasView)
            canvasView.backgroundColor = UIColor.clear
            
        }else{
            toolPicker.addObserver(canvasView)
            toolPicker.setVisible(false, forFirstResponder: canvasView)
            canvasView.becomeFirstResponder()
            visible = true
            webView.scrollView.isScrollEnabled = true
        }   
    
    }
    
}

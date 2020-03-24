//
//  ViewController.swift
//  SignatureTest
//
//  Created by Sami Beig on 3/17/20.
//  Copyright © 2020 Sami Beig. All rights reserved.
//

import UIKit
import SwiftSignatureView
import EPSignatureView

/*
class Canvas: UIView {
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        
        guard let context = UIGraphicsGetCurrentContext() else { return }

        context.setStrokeColor(UIColor.red.cgColor)
        context.setLineWidth(10)
        context.setLineCap(.butt)
        
        lines.forEach { (line) in
            for (i, p) in line.enumerated() {
                if i == 0 {
                    context.move(to: p)
                } else {
                    context.addLine(to: p)
                }
            }
        }
        
        context.strokePath()
        
    }

    var lines = [[CGPoint]]()
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        lines.append([CGPoint]())
    }
    
    // track the finger as we move across screen
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let point = touches.first?.location(in: nil) else { return }
        
        guard var lastLine = lines.popLast() else { return }
        lastLine.append(point)
        lines.append(lastLine)
        setNeedsDisplay()
    }
    
}
 
*/

class ViewController: UIViewController {
    
  @IBOutlet weak var signatureView: UIView!
  
  //let canvas = Canvas()

    override func viewDidLoad() {
        super.viewDidLoad()
      
      /*
      view.addSubview(canvas)
      canvas.backgroundColor = .white
      canvas.frame = view.frame
      */
      let signatureVC = EPSignatureViewController(signatureDelegate: self, showsDate: true, showsSaveSignatureOption: true)
      signatureVC.subtitleText = "I agree to the terms and conditions"
      signatureVC.title = "John Doe"
      let nav = UINavigationController(rootViewController: signatureVC)
      presentViewController(nav, animated: true, completion: nil)
        
    }

}

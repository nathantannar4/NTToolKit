//
//  UIImageView+Extensions.swift
//  NTToolKit
//
//  Created by Nathan Tannar on 7/30/17.
//  Copyright © 2017 Nathan Tannar. All rights reserved.
//

import UIKit

public extension UIImageView {
    
    func imageFromServerURL(urlString: String) {
        
        URLSession.shared.dataTask(with: NSURL(string: urlString)! as URL, completionHandler: { (data, response, error) -> Void in
            
            if error != nil {
                print(error.debugDescription)
                return
            }
            DispatchQueue.main.async(execute: { () -> Void in
                let image = UIImage(data: data!)
                self.image = image
            })
            
        }).resume()
    }
    
    var containsBlurEffect: Bool {
        for subview in subviews {
            if subview is UIVisualEffectView {
                return true
            }
        }
        return false
    }
    
    func addBlurEffect(style: UIBlurEffectStyle, animationDuration: TimeInterval = 0.0) {
        let blurEffect = UIBlurEffect(style: style)
        let overlay = UIVisualEffectView()
        overlay.frame = self.bounds
        overlay.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.addSubview(overlay)
        
        UIView.animate(withDuration: animationDuration, animations: {
            overlay.effect = blurEffect
        })
    }
    
    func removeBlurEffects() {
        for subview in subviews {
            if subview is UIVisualEffectView {
                subview.removeFromSuperview()
            }
        }
    }
}

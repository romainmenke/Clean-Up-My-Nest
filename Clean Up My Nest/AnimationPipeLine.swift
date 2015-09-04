//
//  AnimationPipeLine.swift
//  Clean Up My Nest
//
//  Created by Romain Menke on 04/09/15.
//  Copyright © 2015 menke dev. All rights reserved.
//

import UIKit


class AnimationPipeline : PipeLineBase {
    
    var view : UIView
    
    init(view_I : UIView) {
        
        view = view_I
        
        super.init()
    }
    
    override func loopFunction(completion: (finished: Bool) -> Void) {
        switch currentFunction {
            
        case 1 :
            // function 1
            print("function one")
            
            UIView.animateWithDuration(2.0, delay: 0.0, options: UIViewAnimationOptions.TransitionNone, animations: { () -> Void in
                
                self.view.alpha = 0
                
                }, completion: { (finished: Bool) -> Void in
                    
                    completion(finished: true)
            })
               
        case 2 :
            // function 2
            print("function two")
            UIView.animateWithDuration(2.0, delay: 0.0, options: UIViewAnimationOptions.TransitionNone, animations: { () -> Void in
                
                self.view.alpha = 1.0
                
                }, completion: { (finished: Bool) -> Void in
                    
                    completion(finished: true)
            })
            
        default :
            
            completion(finished: true)
            
        }
    }
    
}
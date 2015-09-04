//
//  PipeLineBase.swift
//  Clean Up My Nest
//
//  Created by Romain Menke on 04/09/15.
//  Copyright © 2015 menke dev. All rights reserved.
//

import UIKit



class PipeLineBase {
    
    var delegate : PipelineDelegate?

    
    var loop = false
    
    var numberOfFunctions : Int = 99
    var currentFunction : Int = 0 {
        didSet {
            if currentFunction == numberOfFunctions {
                stop()
            }
        }
    }
    
    
    init() {

    }
    
    func start() {
        
        loop = true
        loopOnce()
        //
    }
    
    func loopOnce() {
        
        if loop == true {
            loopFunction({ (finished) -> Void in
                if finished == true {
                    self.currentFunction += 1
                    self.loopAgain()
                    
                }
            })
        } else {
            delegate?.pipelineFinished()
            
        }
    }
    
    func loopAgain() {
        
        if loop == true {
            
            loopFunction({ (finished) -> Void in
                if finished == true {
                    self.currentFunction += 1
                    self.loopOnce()
                    
                }
            })
        } else {
            delegate?.pipelineFinished()
            
        }
    }
    
    func stop() {
        
        loop = false
        
    }
    
    func loopFunction(completion: (finished: Bool) -> Void) {
        
        switch currentFunction {
            
        case 1 :
            // function 1
            print("function one")
            completion(finished: true)
        case 2 :
            // function 2
            print("function one")
            completion(finished: true)
        default :
            
            completion(finished: true)
            
        }
    }
}



protocol PipelineDelegate {
    
    func pipelineFinished()
    
}



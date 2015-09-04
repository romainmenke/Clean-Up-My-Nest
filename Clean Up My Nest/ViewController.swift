//
//  ViewController.swift
//  Clean Up My Nest
//
//  Created by Romain Menke on 04/09/15.
//  Copyright © 2015 menke dev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var animationPipeline : AnimationPipeline!
    var myView : UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        myView.backgroundColor = UIColor.blackColor()
        
        self.view.addSubview(myView)
        
        animationPipeline = AnimationPipeline(view_I: myView)
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(animated: Bool) {
        animationPipeline.start()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


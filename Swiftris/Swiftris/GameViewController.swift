//
//  GameViewController.swift
//  Swiftris
//
//  Created by Allbee, Eamon on 1/16/19.
//  Copyright © 2019 Allbee, Eamon. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {

    var scene: GameScene!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //configure the view
        let skView = view as! SKView

        skView.isMultipleTouchEnabled = false
        
        //create and configure the scene
        scene = GameScene(size: skView.bounds.size)
        scene.scaleMode = .aspectFill
        
        //present the scene
        skView.presentScene(scene)
        
    }



    override var prefersStatusBarHidden: Bool {
        return true
    }
}

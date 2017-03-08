//
//  ViewController.swift
//  TicTacToe
//
//  Created by Maxim Kuzmenko on 2017-03-08.
//  Copyright © 2017 Maxim Kuzmenko. All rights reserved.
//

import UIKit

//Images are in the Assets.xcassets folder!!!
class ViewController: UIViewController {

    var playerTurn: Bool = true;
        
    @IBOutlet weak var showText: UILabel!
    
    @IBAction func startAction(_ sender: UIButton) {
        print("Start button pressed");
    }
    
    @IBAction func buttonPress(_ sender: UIButton) {
        showText.text = "Button \(sender.tag) pressed"
        if playerTurn == true {
            sender.setImage(#imageLiteral(resourceName: "button_x"), for: UIControlState())
            playerTurn = false;
        }
        else {
            sender.setImage(#imageLiteral(resourceName: "button_o"), for: UIControlState())
            playerTurn = true;
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


//
//  ViewController.swift
//  Concentration
//
//  Created by Risen on 28/10/2020.
//  Copyright © 2020 Sergei S. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var touchLabel: UILabel!
    @IBOutlet var buttonCollection: [UIButton]!
    let emojiCollection = ["🦊","🐼","🦄","🐸"]
    
    
    var touches = 0{
        didSet{
              touchLabel.text = "Touches: \(touches)"
        }
    }
    
    
    @IBAction func buttonAction(_ sender: UIButton) {
        touches += 1
        if  let buttonIndex = buttonCollection.firstIndex(of: sender){
        flipButton(emoji: emojiCollection[buttonIndex], button: sender)
        }
    }
    
    
    func flipButton(emoji:String, button:UIButton){
        if button.currentTitle == emoji {
         button.setTitle("", for: .normal)
            button.backgroundColor = #colorLiteral(red: 0.4325012863, green: 0.6118696332, blue: 0.9995054603, alpha: 1)
            
        }else{
            button.setTitle(emoji, for: .normal)
            button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
    
    

}


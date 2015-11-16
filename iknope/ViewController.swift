//
//  ViewController.swift
//  iknope
//
//  Created by Katelyn Dinkgrave on 11/15/15.
//  Copyright © 2015 dinkengraven. All rights reserved.
//

import UIKit

let adjectives = ["beautiful", "poetic", "noble", "talented", "brilliant", "strong", "powerful", "cunning", "pliable", "chestnut-haired", "wonderful", "tropical", "naive", "sophisticated", "rule-breaking", "smart", "new-born", "tricky", "devious", "coy", "glowing", "majestic"]

let nouns = ["musk ox", "sunfish", "baby", "moth", "spinster", "bastard", "sun-goddess", "leopard seal"]

extension Array {
    func sample() -> Element {
        let randomIndex = Int(arc4random_uniform(UInt32(self.count)))
        return self[randomIndex]
    }
}

func makeKnopism() {
    "Oh Ann, you \(adjectives.sample()), \(adjectives.sample()), \(adjectives.sample()) \(nouns.sample())."
}

class ViewController: UIViewController {

    @IBOutlet weak var message: UILabel!
    
    
    @IBAction func knopeButton(sender: UIButton) {
        message.text = "Oh Ann, you \(adjectives.sample()), \(adjectives.sample()), \(adjectives.sample()) \(nouns.sample())."
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





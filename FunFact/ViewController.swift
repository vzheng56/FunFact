//
//  ViewController.swift
//  FunFact
//
//  Created by 刘卫斌 on 15/10/23.
//  Copyright © 2015年 yufu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var funFactLable: UILabel!
    @IBOutlet weak var funFactButton: UIButton!
    
    
    let factBook = FactBook();
    let colorWheel = ColorWheel();
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        funFactLable.text = factBook.randomFact()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func findFunFact() {
        funFactLable.text = factBook.randomFact()
        let currnetRandomColor = colorWheel.randomColor()
        self.view.backgroundColor = currnetRandomColor
        funFactButton.tintColor = currnetRandomColor
    }
    
}


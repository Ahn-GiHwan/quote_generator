//
//  ViewController.swift
//  QuotesGenerator
//
//  Created by MUHN2-001 on 2021/10/02.
//

import UIKit

class ViewController:
    UIViewController {
    
    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var LabelView: UIView!
    
    let quote = [
        Quote(contents: "명언1명언1명언1명언1명언1명언1명언1명언1명언1명언1명언1명언1명언1명언1명언1명언1명언1", name: "이름1",color: "red"),
        Quote(contents: "명언2명언2명언2명언2명언2명언2", name: "이름2", color: "blue"),
        Quote(contents: "명언3명언3명언3", name: "이름3", color: "yellow"),
        Quote(contents: "명언4명언4명언4명언4명언4명언4명언4명언4명언4", name: "이름4", color: "green"),
        Quote(contents: "명언5명언5명언5명언5명언5명언5명언5명언5명언5명언5명언5명언5명언5명언5명언5", name: "이름5", color: "pink"),
        Quote(contents: "명언6명언6", name: "이름6", color: "purple")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tapQuoteGeneratorButton(_ sender: Any) {
        
        let random = Int(arc4random_uniform(6)) // 0 ~ 5 사이의 난수 발생
        let quote = quote[random]
        
        self.quoteLabel.text = quote.contents
        self.nameLabel.text = quote.name
    }
}


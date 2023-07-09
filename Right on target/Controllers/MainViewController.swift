//
//  MainViewController.swift
//  Right on target
//
//  Created by Nikolay Zhukov on 09.07.2023.
//

import UIKit

class MainViewController: UIViewController {
    @IBOutlet weak var menu: UILabel!
    
    @IBOutlet weak var playNumber: UIButton!
    @IBOutlet weak var playColor: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: "mainColor")
        menu.font = UIFont(name: "Helvetica-Light", size: 25)
        menu.textColor = UIColor(named: "textColor")
        menu.text = "Choose a game"
       
        playNumber.setTitle("NUMBER", for: .normal)
        playNumber.setTitleColor(UIColor(named: "textColor"), for: .normal)
        playNumber.layer.cornerRadius = 12
        playNumber.layer.borderWidth = 1.0
        playNumber.layer.borderColor = UIColor(named: "textColor")?.cgColor
        
        playColor.setTitle("COLOR", for: .normal)
        playColor.setTitleColor(UIColor(named: "textColor"), for: .normal)
        playColor.layer.cornerRadius = 12
        playColor.layer.borderWidth = 1.0
        playColor.layer.borderColor = UIColor(named: "textColor")?.cgColor
    }

}

//
//  SecondViewController.swift
//  HowToMoveNextPage
//
//  Created by MZ01-MINCKAN on 2023/05/04.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var mainLabel: UILabel!
    var someStr : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainLabel.text = someStr

    }

    @IBAction func backButtonTapped(_ sender: UIButton) {
        
        dismiss(animated: true)
    }
}

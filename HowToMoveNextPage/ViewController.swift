//
//  ViewController.swift
//  HowToMoveNextPage
//
//  Created by MZ01-MINCKAN on 2023/05/04.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    @IBAction func codeNextButtonTapped(_ sender: UIButton) {
        let controller = FirstViewController()
        present(controller, animated: true)
    }
    
    @IBAction func storyboardWithCodeButtonTapped(_ sender: UIButton) {
        let controller = storyboard?.instantiateViewController(withIdentifier: "secondVC") as! SecondViewController
        controller.someStr = "This is Some Data from main View"
        present(controller, animated: true)
        
    }
    
    
    @IBAction func storyboardWithSegueButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "toThirdVC", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toThirdVC" {
            let controller = segue.destination as! ThirdViewController
            controller.someStr = "This is Some String from Main View"
        }
        
        if segue.identifier == "toFourthVC" {
            let controller = segue.destination as! FourthViewController
            controller.someStr = "This is Some String from Main View2"
        }
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        // 버튼에서 직접적으로 세그웨이를 연결했을 경우에만 호출되는 메서드임.
        
        if identifier == "toFourthVC" {
            return true
        }
        
        return false
    }
    
}


//
//  ViewController.swift
//  tasks
//
//  Created by Daniil on 13.01.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var IncreaseButton: UIButton!
    @IBOutlet weak var TextField: UILabel!
    
    private let startPhrase: String = "Значение счётчика:";
    private var counter = 0;
    
    func buildPhrase() -> String {
        return startPhrase + " " + String(counter)
    }
    
    func updateText() {
        TextField.text = buildPhrase()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        TextField.text = buildPhrase()
    }

    
    @IBAction func Increase() {
        counter += 1;
        updateText()
    }
}


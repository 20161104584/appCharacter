//
//  ViewController.swift
//  Character
//
//  Created by llll on 2018/9/28.
//  Copyright © 2018年 llll. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var srk: UITextField!
    
    @IBAction func num_1(_ sender: Any) {
        srk.text = srk.text! + "1"
    }
    @IBAction func srk1(_ sender: Any) {
    }
    @IBAction func num_2(_ sender: Any) {
        srk.text = srk.text! + "2"
    }
    @IBAction func num_3(_ sender: Any) {
        srk.text = srk.text! + "3"
    }
    @IBAction func num_4(_ sender: Any) {
        srk.text = srk.text! + "4"
    }
    @IBAction func num_5(_ sender: Any) {
        srk.text = srk.text! + "5"
    }
    @IBAction func num_6(_ sender: Any) {
        srk.text = srk.text! + "6"
    }
    @IBAction func num_7(_ sender: Any) {
        srk.text = srk.text! + "7"
    }
    @IBAction func num_8(_ sender: Any) {
        srk.text = srk.text! + "8"
    }
    @IBAction func num_9(_ sender: Any) {
        srk.text = srk.text! + "9"
    }
    @IBAction func num_0(_ sender: Any) {
        srk.text = srk.text! + "0"
    }
    @IBAction func num_back(_ sender: Any) {
        srk.text = srk.text! + "<-"    }
    @IBAction func num_(_ sender: Any) {
        srk.text = srk.text! + "."    }
    @IBAction func num_add(_ sender: Any) {
        srk.text = srk.text! + "+"    }
    @IBAction func num_subtract(_ sender: Any) {
        srk.text = srk.text! + "-"    }
    @IBAction func num_multiply(_ sender: Any) {
        srk.text = srk.text! + "x"    }
    @IBAction func num_divide(_ sender: Any) {
        srk.text = srk.text! + "/"    }
    @IBAction func num_makezero(_ sender: Any) {
        srk.text = "0"
    }
    @IBAction func num_equal(_ sender: Any) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

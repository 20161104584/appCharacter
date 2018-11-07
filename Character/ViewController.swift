//
//  ViewController.swift
//  Character
//
//  Created by llll on 2018/9/28.
//  Copyright © 2018年 llll. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var srk1: UITextField!
    @IBOutlet weak var srk: UILabel!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    var re = 0//判断srk.text前是否存在符号
    var judge = 0 //judge用来判断小数点是否出现过
    var add = 0
    var number = 0
    var p = 0
    @IBAction func num_1(_ sender: Any) {
        if re == 1{
            srk.text = "1"
            re = 0
        }
        else
        {
            srk.text = srk.text! + "1"
        }
    }
    @IBAction func num_2(_ sender: Any) {
        if re == 1{
            srk.text = "2"
            re = 0
        }
        else
        {
            srk.text = srk.text! + "2"
        }
    }
    @IBAction func num_3(_ sender: Any) {
        if re == 1{
            srk.text = "3"
            re = 0
        }
        else{
            srk.text = srk.text! + "3"
        }
    }
    @IBAction func num_4(_ sender: Any) {
        if re == 1{
            srk.text = "4"
            re = 0
        }
        else{
            srk.text = srk.text! + "4"
        }
    }
    @IBAction func num_5(_ sender: Any) {
        if re == 1{
            srk.text = "5"
            re = 0
        }
        else{
            srk.text = srk.text! + "5"
        }
    }
    @IBAction func num_6(_ sender: Any) {
        if re == 1{
            srk.text = "6"
            re = 0
        }
        else{
            srk.text = srk.text! + "6"
        }
    }
    @IBAction func num_7(_ sender: Any) {
        if re == 1{
            srk.text = "7"
            re = 0
        }
        else{
            srk.text = srk.text! + "7"
        }
    }
    @IBAction func num_8(_ sender: Any) {
        if re == 1{
            srk.text = "8"
            re = 0
        }
        else{
            srk.text = srk.text! + "8"
        }
    }
    @IBAction func num_9(_ sender: Any) {
        if re == 1{
            srk.text = "9"
            re = 0
        }
        else{
            srk.text = srk.text! + "9"
        }
    }
    @IBAction func num_0(_ sender: Any) {
        srk.text = srk.text! + "0"
        
    }
    @IBAction func num_back(_ sender: Any) {
        srk.text?.removeLast()   }
    @IBAction func num_(_ sender: Any) {
        if p == 0{
            srk.text = srk.text! + "."
            judge = 1
            p=p+1
        }
    }
    @IBAction func num_add(_ sender: Any) {
        if add == 1{
            let a = Double(srk1.text!)!
            let b = Double(srk.text!)!
            let c = a + b
            srk1.text = String(c)
            srk.text = ""
            number = 1
            re = 1
        }else{
            if srk.text == ""{
                srk.text = "0"
            }else {
                let x = Double(srk.text!)!
                srk1.text = String(x)
                srk.text = ""
                number = 1
                re = 0
                p=0
            }
        }
        
    }
    
    
    @IBAction func num_subtract(_ sender: Any) {
        if add == 1{
            let a = Double(srk1.text!)!
            let b = Double(srk.text!)!
            let c = a - b
            srk1.text = String(c)
            srk.text = ""
            number = 2
            re = 1
        }else{
            if srk.text == ""{
                srk.text = "0"
            }else {
                let x = Double(srk.text!)!
                srk1.text = String(x)
                srk.text = ""
                number = 2
                re = 1
                p=0
                
            }
        }
        
    }
    
    @IBAction func num_multiply(_ sender: Any) {
        if add == 1{
            let a = Double(srk1.text!)!
            let b = Double(srk.text!)!
            let c = a * b
            srk1.text = String(c)
            srk.text = ""
            number = 3
            re = 1
        }else{
            if srk.text == ""{
                srk.text = "0"
            }else {
                let x = Double(srk.text!)!
                srk1.text = String(x)
                srk.text = ""
                number = 3
                re = 0
                add = 1
                p=0
            }
        }
        
    }
    
    @IBAction func num_divide(_ sender: Any) {
        if add == 1{
            let a = Double(srk1.text!)!
            let b = Double(srk.text!)!
            let c = a / b
            srk1.text = String(c)
            srk.text = ""
            number = 4
            re = 1
        }else{
            if srk.text == ""{
                srk.text = "0"
            }else {
                let x = Double(srk.text!)!
                srk1.text = String(x)
                srk.text = ""
                number = 4
                re = 0
                add = 1
                p=0
            }
        }
        
    }
    
    @IBAction func num_makezero(_ sender: Any) {
        srk.text = ""
        srk1.text = ""
        p=0
    }
    @IBAction func num_equal(_ sender: Any) {
        var d:Double
        var c:Double
        let x = Double(srk1.text!)!
        c = (srk.text! as NSString).doubleValue
        if number == 1 {
            d = x + c
        }
        else if number == 2
        {
            d = x - c
            
        }
        else if number == 3
        {
            d = x * c
            
        }
        else if number == 4
        {
            d = x / c
            
        }
        else {
            d = 1000
        }
        srk.text = String(c)
        if judge == 1{
            srk.text = String(format:"%f", d)
        }
        else {
            srk.text = String(format:"%.5f", d)
        }
        if c == 0 && number == 4 {
            srk.text = "出错啦"
        }
        while (srk.text?.last == "0"){
            srk.text?.removeLast()
        }
        if(srk.text?.last == "."){
           srk.text?.removeLast()
        }
        
        re = 1
        judge = 0
        add = 0
        p=0
    }
    
}



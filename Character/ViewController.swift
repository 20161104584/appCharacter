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
    @IBOutlet weak var srk_1: UILabel!
    var re = 0//判断srk.text前是否存在符号
    var judge = 0 //judge用来判断小数点是否出现过
    var add1 = 0
    var add2 = 0
    var equal1 = 0
    var a = 0.0
    var b = 0.0
    var c = 0
    var A = ""
    var B = ""
    var X1=""
    var X2=""
    var X3=""
    var x1=0.0
    var x2=0.0
    var x3=0.0
    var less1=0
    var less2=0
    @IBAction func num_1(_ sender: Any) {
        if re == 1{
            srk.text = "1"
        }else{
        srk.text = srk.text! + "1"
        }
    }
    @IBAction func num_2(_ sender: Any) {
        if re == 1{
            srk.text = "2"
        }else{
            srk.text = srk.text! + "2"
        }
    }
    @IBAction func num_3(_ sender: Any) {
        if re == 1{
            srk.text = "3"
        }else{
            srk.text = srk.text! + "3"
        }
    }
    @IBAction func num_4(_ sender: Any) {
        if re == 1{
            srk.text = "4"
        }else{
            srk.text = srk.text! + "4"
        }
    }
    @IBAction func num_5(_ sender: Any) {
        if re == 1{
            srk.text = "5"
        }else{
            srk.text = srk.text! + "5"
        }
    }
    @IBAction func num_6(_ sender: Any) {
        if re == 1{
            srk.text = "6"
        }else{
            srk.text = srk.text! + "6"
        }
    }
    @IBAction func num_7(_ sender: Any) {
        if re == 1{
            srk.text = "7"
        }else{
            srk.text = srk.text! + "7"
        }
    }
    @IBAction func num_8(_ sender: Any) {
        if re == 1{
            srk.text = "8"
        }else{
            srk.text = srk.text! + "8"
        }
    }
    @IBAction func num_9(_ sender: Any) {
        if re == 1{
            srk.text = "9"
        }else{
            srk.text = srk.text! + "9"
        }
    }
    @IBAction func num_0(_ sender: Any) {
        srk.text = srk.text! + "0"

    }
    @IBAction func num_back(_ sender: Any) {
        srk.text?.removeLast()   }
    @IBAction func num_(_ sender: Any) {
        srk.text = srk.text! + "."
        judge = 1
    }
    @IBAction func num_add(_ sender: Any) {
        if(add1==0&&less1==0)
        {
            if(equal1==1)//等于后在加
            {
                add1=add1+1
                x1=Double(srk_1.text!)!
                X1=String(x1)
                srk_1.text=X1
                judge=0
                equal1=0
               srk.text=""
            }
            else if(equal1==0)//平常加法
            {
                add1=add1+1
                x1=Double(srk.text!)!
                X1=String(x1)
                srk_1.text=X1+"+"
                X1=X1+"+"
                judge = 0
                srk.text=""
            }
        }
        else if(add1>=1||less1>=1)//累加
        {
            x2=Double(srk.text!)!
            X2=String(x2)
            srk_1.text=X1+X2
            x1=x1+x2
            x2=0.0
            X1=String(x1)
            X1=X1+"+"
            srk_1.text=X1
            srk.text=""
        }
    }
    @IBAction func num_subtract(_ sender: Any) {
        srk.text = srk.text! + "-"    }
    @IBAction func num_multiply(_ sender: Any) {
        srk.text = srk.text! + "x"    }
    @IBAction func num_divide(_ sender: Any) {
        srk.text = srk.text! + "/"    }
    @IBAction func num_makezero(_ sender: Any) {
        srk.text = " "
    }
    @IBAction func num_equal(_ sender: Any) {
        if (add1 >= 1){
            b = Double(srk_1.text!)!
            B=String(b)
            srk_1.text = A + B
            a = a + b
            b = 0.0
            A = String(a)
            srk_1.text = String(a)
            srk.text = ""
            add1 = 0
            equal1 = 1
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

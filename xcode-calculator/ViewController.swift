//
//  ViewController.swift
//  xcode-calculator
//
//  Created by Alex-Martin Lakovski on 8.05.20.
//  Copyright © 2020 Alex-Martin Lakovski. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    @IBOutlet weak var textarea: NSTextField!
    var a = 0
    var b = 0
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


    @IBAction func clear(_ sender: Any) {
        textarea.stringValue = "0"
    }
    @IBAction func divide(_ sender: Any) {
        if !textarea.stringValue.contains("/") {
            textarea.stringValue = textarea.stringValue + "/"
        }
    }
    @IBAction func multiply(_ sender: Any) {
        if !textarea.stringValue.contains("x") {
            textarea.stringValue = textarea.stringValue + "x"
        }
    }
    @IBAction func minus(_ sender: Any) {
        if !textarea.stringValue.contains("-") {
            textarea.stringValue = textarea.stringValue + "-"
        }
    }
    @IBAction func plus(_ sender: Any) {
        if !textarea.stringValue.contains("+") {
            textarea.stringValue = textarea.stringValue + "+"
        }
    }
    @IBAction func equal(_ sender: Any) {
        let rawString = textarea.stringValue.replacingOccurrences(of: "x", with: "*", options: .literal, range: nil)
        let expr = NSExpression(format: rawString)
        let value = expr.expressionValue(with: nil, context: nil) as! Double
        textarea.stringValue = String(value)
    }
    @IBAction func fpoint(_ sender: Any) {
        if !textarea.stringValue.contains(".") {
            textarea.stringValue = textarea.stringValue + "."
        }
    }
    @IBAction func chsign(_ sender: Any) {
        let expr = NSExpression(format: textarea.stringValue)
        let value = expr.expressionValue(with: nil, context: nil) as! Double
        let calc = value - 2 * value
        textarea.stringValue = String(calc)
    }
    @IBAction func zero(_ sender: Any) {
        if textarea.stringValue == "0" {
            textarea.stringValue = "0"
        } else {
            textarea.stringValue = textarea.stringValue + "0"
        }
    }
    @IBAction func one(_ sender: Any) {
        if textarea.stringValue == "0" {
            textarea.stringValue = "1"
        } else {
            textarea.stringValue = textarea.stringValue + "1"
        }
    }
    @IBAction func two(_ sender: Any) {
        if textarea.stringValue == "0" {
            textarea.stringValue = "2"
        } else {
            textarea.stringValue = textarea.stringValue + "2"
        }
    }
    @IBAction func three(_ sender: Any) {
        if textarea.stringValue == "0" {
            textarea.stringValue = "3"
        } else {
            textarea.stringValue = textarea.stringValue + "3"
        }
    }
    @IBAction func four(_ sender: Any) {
        if textarea.stringValue == "0" {
            textarea.stringValue = "4"
        } else {
            textarea.stringValue = textarea.stringValue + "4"
        }
    }
    @IBAction func five(_ sender: Any) {
        if textarea.stringValue == "0" {
            textarea.stringValue = "5"
        } else {
            textarea.stringValue = textarea.stringValue + "5"
        }
    }
    @IBAction func six(_ sender: Any) {
        if textarea.stringValue == "0" {
            textarea.stringValue = "6"
        } else {
            textarea.stringValue = textarea.stringValue + "6"
        }
    }
    @IBAction func seven(_ sender: Any) {
        if textarea.stringValue == "0" {
            textarea.stringValue = "7"
        } else {
            textarea.stringValue = textarea.stringValue + "7"
        }
    }
    @IBAction func eight(_ sender: Any) {
        if textarea.stringValue == "0" {
            textarea.stringValue = "8"
        } else {
            textarea.stringValue = textarea.stringValue + "8"
        }
    }
    @IBAction func nine(_ sender: Any) {
        if textarea.stringValue == "0" {
            textarea.stringValue = "9"
        } else {
            textarea.stringValue = textarea.stringValue + "9"
        }
    }
}


//
//  KeyboardViewController.swift
//  CalKeyboard
//
//  Created by Gene Yoo on 9/15/15.
//  Copyright © 2015 iOS Decal. All rights reserved.
//

import UIKit

class KeyboardViewController: UIInputViewController {

    var coolKidKeyboardView: UIView!
    @IBOutlet var spaceButton: UIButton!
    @IBOutlet var righteousButton: UIButton!
    @IBOutlet var wickedButton: UIButton!
    @IBOutlet var groovyButton: UIButton!
    @IBOutlet var gnarlyButton: UIButton!
    @IBOutlet var sickButton: UIButton!
    @IBOutlet var thatsWhackButton: UIButton!
    @IBOutlet var bitchinButton: UIButton!
    @IBOutlet var farOutButton: UIButton!
    @IBOutlet var tubularButton: UIButton!
    @IBOutlet var radicalButton: UIButton!
    @IBOutlet var bodaciousButton: UIButton!
    @IBOutlet var nextButton: UIButton!
    @IBOutlet var returnButton: UIButton!
    @IBOutlet var deleteButton: UIButton!
    
    @IBAction func buttonPressed(sender: UIButton) {
        
        let title = (sender.titleLabel!.text)!
        
        switch(title) {
        case "Next":
            sender.addTarget(self, action: "advanceToNextInputMode", forControlEvents: .TouchUpInside)
        case "Return":
            self.textDocumentProxy.insertText("\n")
        case "Delete":
            self.textDocumentProxy.deleteBackward()
        case "Space":
            self.textDocumentProxy.insertText(" ")
        default:
            self.textDocumentProxy.insertText(title)
        }
    }
    
    
    override func updateViewConstraints() {
        super.updateViewConstraints()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadKeyboard()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func textWillChange(textInput: UITextInput?) {
        
    }
    
    override func textDidChange(textInput: UITextInput?) {
        
    }

    
    func loadKeyboard() {
        let keyBoardNib = UINib(nibName: "Keyboard", bundle: nil)
        coolKidKeyboardView = keyBoardNib.instantiateWithOwner(self, options: nil)[0] as! UIView
        view.addSubview(coolKidKeyboardView)
        coolKidKeyboardView.frame = view.frame
        radicalButton.layer.cornerRadius = 7.0
        spaceButton.layer.cornerRadius = 7.0
        righteousButton.layer.cornerRadius = 7.0
        sickButton.layer.cornerRadius = 7.0
        gnarlyButton.layer.cornerRadius = 7.0
        farOutButton.layer.cornerRadius = 7.0
        thatsWhackButton.layer.cornerRadius = 7.0
        returnButton.layer.cornerRadius = 7.0
        nextButton.layer.cornerRadius = 7.0
        deleteButton.layer.cornerRadius = 7.0
        wickedButton.layer.cornerRadius = 7.0
        groovyButton.layer.cornerRadius = 7.0
        bitchinButton.layer.cornerRadius = 7.0
        tubularButton.layer.cornerRadius = 7.0
        bodaciousButton.layer.cornerRadius = 7.0

    }


}

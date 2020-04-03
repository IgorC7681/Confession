//
//  ViewController.swift
//  Confession
//
//  Created by Tai on 2020/4/1.
//  Copyright © 2020 Tai. All rights reserved.
//

import UIKit
import AVFoundation
//加入UITextFieldDelegate(後續收鍵盤動作)
class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var speedSlider: UISlider!
    @IBOutlet weak var toneSlider: UISlider!
    @IBOutlet weak var confessionText: UITextField!
    @IBOutlet weak var volumeSlider: UISlider!
    @IBOutlet weak var speedLabel: UILabel!
    @IBOutlet weak var toneLabel: UILabel!
    @IBOutlet weak var volumeLabel: UILabel!
    //在打完字return後或點選其他空白處做收鍵盤的動作
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    self.view.endEditing(true)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder();
        return true
    }
    //點選嘴巴Button唸出textfield內容
    @IBAction func confessionButton(_ sender: Any) {
        //唸出confessionText內容
        let utterance = AVSpeechUtterance(string: confessionText.text!)
        //利用SpeechSynthesizer產生語音
        let synthesizer = AVSpeechSynthesizer()
        //voice講話語言，設定中文
        utterance.voice = AVSpeechSynthesisVoice(language: "zh-TW")
        //pitchMultiplier講話音調，藉由slider控制
        utterance.pitchMultiplier = toneSlider.value
        //rate講話速度，藉由slider控制
        utterance.rate = speedSlider.value
        //volume講話聲量，藉由slider控制
        utterance.volume = volumeSlider.value
        //發出聲音，內容是confessionText所輸入的
        synthesizer.speak(utterance)
        //Label顯示slider數值，到小數點第一位
        speedLabel.text = String(format: "%.1f",speedSlider.value)
        //Label顯示slider數值，到小數點第一位
        toneLabel.text = String(format: "%.1f",toneSlider.value)
        //Label顯示slider數值，到小數點第一位
        volumeLabel.text = String(format: "%.1f",volumeSlider.value)
    }
    //點選狗狗Button發出預設好的內容
    @IBAction func dogButton(_ sender: Any) {
        //唸出string內容
        let utterance = AVSpeechUtterance(string: "我們一起學狗叫，一起 woof woof woof woof woof")
        //利用SpeechSynthesizer產生語音
        let synthesizer = AVSpeechSynthesizer()
        //voice講話語言，設定中文
        utterance.voice = AVSpeechSynthesisVoice(language: "zh-TW")
        //pitchMultiplier講話音調，藉由slider控制
        utterance.pitchMultiplier = toneSlider.value
        //rate講話速度，藉由slider控制
        utterance.rate = speedSlider.value
        //volume講話聲量，藉由slider控制
        utterance.volume = volumeSlider.value
        //發出聲音，內容是string內所輸入的
        synthesizer.speak(utterance)
        //Label顯示slider數值，到小數點第一位
        speedLabel.text = String(format: "%.1f",speedSlider.value)
        //Label顯示slider數值，到小數點第一位
        toneLabel.text = String(format: "%.1f",toneSlider.value)
        //Label顯示slider數值，到小數點第一位
        volumeLabel.text = String(format: "%.1f",volumeSlider.value)
    }
    //點選貓貓Button發出預設好的內容
    @IBAction func catButton(_ sender: Any) {
        //唸出string內容
        let utterance = AVSpeechUtterance(string: "我們一起學貓叫，一起 meow meow meow meow meow")
        //利用SpeechSynthesizer產生語音
        let synthesizer = AVSpeechSynthesizer()
        //voice講話語言，設定中文
        utterance.voice = AVSpeechSynthesisVoice(language: "zh-TW")
        //pitchMultiplier講話音調，藉由slider控制
        utterance.pitchMultiplier = toneSlider.value
        //rate講話速度，藉由slider控制
        utterance.rate = speedSlider.value
        //volume講話聲量，藉由slider控制
        utterance.volume = volumeSlider.value
        //發出聲音，內容是string內所輸入的
        synthesizer.speak(utterance)
        //Label顯示slider數值，到小數點第一位
        speedLabel.text = String(format: "%.1f",speedSlider.value)
        //Label顯示slider數值，到小數點第一位
        toneLabel.text = String(format: "%.1f",toneSlider.value)
        //Label顯示slider數值，到小數點第一位
        volumeLabel.text = String(format: "%.1f",volumeSlider.value)
    }
    //點選豬珠Button發出預設好的內容
    @IBAction func pigButton(_ sender: Any) {
        //唸出string內容
        let utterance = AVSpeechUtterance(string: "我們一起學豬叫，一起 oink oink oink oink oink")
        //利用SpeechSynthesizer產生語音
        let synthesizer = AVSpeechSynthesizer()
        //voice講話語言，設定中文
        utterance.voice = AVSpeechSynthesisVoice(language: "zh-TW")
        //pitchMultiplier講話音調，藉由slider控制
        utterance.pitchMultiplier = toneSlider.value
        //rate講話速度，藉由slider控制
        utterance.rate = speedSlider.value
        //volume講話聲量，藉由slider控制
        utterance.volume = volumeSlider.value
        //發出聲音，內容是string內所輸入的
        synthesizer.speak(utterance)
        //Label顯示slider數值，到小數點第一位
        speedLabel.text = String(format: "%.1f",speedSlider.value)
        //Label顯示slider數值，到小數點第一位
        toneLabel.text = String(format: "%.1f",toneSlider.value)
        //Label顯示slider數值，到小數點第一位
        volumeLabel.text = String(format: "%.1f",volumeSlider.value)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
}

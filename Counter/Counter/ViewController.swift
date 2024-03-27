//
//  ViewController.swift
//  Counter
//
//  Created by Renata Monatik on 27.03.24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var restartButton: UIButton!
    @IBOutlet weak var historyText: UITextView!
    
    private var count: Int = 0
    private var date = DateFormatter.localizedString(from: Date(), dateStyle: .long, timeStyle: .medium)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    func autoScroll() {
        let range = NSMakeRange(historyText.text.count - 1, 0)
        historyText.scrollRangeToVisible(range)
    }
    
    @IBAction func plusButtonClick(_ sender: Any) {
        count += 1
        countLabel.text = "\(count)"
        historyText.text += "\n\(date): значение изменено на +1"
        autoScroll()
    }
    
    @IBAction func minusButtonClick(_ sender: Any) {
        if count > 0 {
            count -= 1
            countLabel.text = "\(count)"
            historyText.text += "\n\(date): значение изменено на -1"
        } else {
            historyText.text += "\n\(date): попытка уменьшить значение счётчика ниже 0"
        }
        autoScroll()
    }
    
    @IBAction func restartButtonClick(_ sender: Any) {
        count = 0
        countLabel.text = "\(count)"
        historyText.text += "\n\(date): значение сброшено"
        autoScroll()
    }
}

    
    
    





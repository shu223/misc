//
//  ViewController.swift
//  TTMCountingLabelExample
//
//  Created by Shuichi Tsutsumi on 2015/03/12.
//  Copyright (c) 2015 Shuichi Tsutsumi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var countingLabel: TTMCountingLabel!
    @IBOutlet var easingRateSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.countingLabel.format = "%d";
        self.countingLabel.method = TTMLabelCountingMethod.easeOut;
        self.countingLabel.easingRate = 2.4;
        self.countingLabel.text = "0";
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


    // =========================================================================
    // MARK: - IBAction
    
    @IBAction func startBtnTapped(_ sender: UIButton) {
        self.countingLabel.countFromZero(to: 999, withDuration: 1.0)
    }
}


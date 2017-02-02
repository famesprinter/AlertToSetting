//
//  ViewController.swift
//  AlertToSetting
//
//  Created by Kittitat Rodphotong on 2/2/2560 BE.
//  Copyright © 2560 DevGo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // MAKR: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - Function
    func alertSetting() {
        let alert = UIAlertController (title: "Message",
                                       message: "You disable location",
                                       preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Open Setting", style: .default) { (action) -> Void in
            if let url = NSURL(string: UIApplicationOpenSettingsURLString) {
                UIApplication.shared.openURL(url as URL)
            }
        })
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        
        present(alert, animated: true, completion: nil)
    }

    // MARK: - IBAction
    @IBAction func alertToSetting() {
        alertSetting()
    }
}


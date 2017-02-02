//
//  ViewController.swift
//  AlertToSetting
//
//  Created by Kittitat Rodphotong on 2/2/2560 BE.
//  Copyright © 2560 DevGo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let alert = UIAlertController (title: "Message",
                                       message: "You disable location",
                                       preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Open Setting", style: .default) { (_) -> Void in
            // Go to setting
        })
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))

        present(alert, animated: true, completion: nil)
    }

}


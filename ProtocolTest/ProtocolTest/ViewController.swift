//
//  ViewController.swift
//  ProtocolTest
//
//  Created by Joe on 03/10/18.
//  Copyright © 2018 Jyothish. All rights reserved.
//

import UIKit

class ViewController : UIViewController {
    
    var loadingIndicator : LoadingIndicatorProtocol? {
        didSet{
            loadingIndicator?.mainView = self.view
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadingIndicator = LoaderHelper()
        loadingIndicator?.showActivityIndicator()
    }
}



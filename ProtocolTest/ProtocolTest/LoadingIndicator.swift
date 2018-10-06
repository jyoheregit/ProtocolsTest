//
//  LoadingIndicator.swift
//  ProtocolTest
//
//  Created by Joe on 03/10/18.
//  Copyright © 2018 Jyothish. All rights reserved.
//

import Foundation
import UIKit

protocol LoadingIndicatorProtocol {
    
    var activityIndicatorView : UIActivityIndicatorView { get }
    var loadingView : UIView { get }
    var mainView : UIView {  set get}
    
    func showActivityIndicator()
    func hideActivityIndicator()
    
}

extension LoadingIndicatorProtocol {
    
    func showActivityIndicator(){
        UIApplication.shared.isNetworkActivityIndicatorVisible = true
        mainView.addSubview(loadingView)
        mainView.bringSubviewToFront(loadingView)
        activityIndicatorView.startAnimating()
    }
    
    func hideActivityIndicator() {
        UIApplication.shared.isNetworkActivityIndicatorVisible = false
        loadingView.removeFromSuperview()
        activityIndicatorView.stopAnimating()
    }
}

//
//  LoaderHelper.swift
//  ProtocolTest
//
//  Created by Joe on 03/10/18.
//  Copyright © 2018 Jyothish. All rights reserved.
//

import Foundation
import UIKit

class LoaderHelper {
    
    weak var view : UIView!
   
    lazy var vc_activityIndicator: UIActivityIndicatorView  = {
        
        let activityIndicatorView = UIActivityIndicatorView()
        activityIndicatorView.style = UIActivityIndicatorView.Style.gray
        activityIndicatorView.hidesWhenStopped = true
        activityIndicatorView.center = self.view.center
        return activityIndicatorView
    }()
    
    lazy var vc_loading : UIView  = {
        let loadingView = UIView()
        loadingView.frame = self.view.frame
        loadingView.backgroundColor = .white
        loadingView.alpha = 0.7
        loadingView.addSubview(vc_activityIndicator)
        return loadingView
    }()
    
}

extension LoaderHelper : LoadingIndicatorProtocol {
    
    var activityIndicatorView: UIActivityIndicatorView {
        return vc_activityIndicator
    }
    
    var loadingView: UIView {
        return vc_loading
    }
    
    var mainView: UIView {
        set{
            self.view = newValue
        }
        get {
            return self.view
        }
    }
}

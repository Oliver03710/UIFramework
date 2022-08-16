//
//  CoustomAlert.swift
//  UIFramework
//
//  Created by Junhee Yoon on 2022/08/16.
//

import UIKit

extension UIViewController {
    
    open func testOpen() { }
    
    public func showAlert(title: String, message: String, buttonTitle: String, buttonAction: @escaping ((UIAlertAction) -> Void)) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let cancel = UIAlertAction(title: "취소", style: .cancel, handler: nil)
        let okay = UIAlertAction(title: buttonTitle, style: .default, handler: buttonAction)
        alert.addAction(cancel)
        alert.addAction(okay)
        self.present(alert, animated: true)
        
    }
    
    internal func testInternal() { }
    
    fileprivate func testFilePrivate() { }
    
    private func testPrivate() { }
    
}

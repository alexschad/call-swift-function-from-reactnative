//
//  SwiftLibrary.swift
//  SwiftFunctionFromReactNative
//
//  Created by Alexander Schad on 10.03.21.
//

import Foundation
import UIKit

@objc(SwiftLibrary)

class SwiftLibrary: NSObject, RCTBridgeModule{

  static func moduleName() -> String!{
    return "SwiftLibrary";
  }
  
  static func requiresMainQueueSetup () -> Bool {
    return true;
  }

  func alertMessage(message:NSString) {
    let alert = UIAlertController(title:nil, message: message as String, preferredStyle: .alert);
    let seconds:Double = 2.0;
    alert.view.backgroundColor = .black
    alert.view.alpha = 0.5
    alert.view.layer.cornerRadius = 14
    
    DispatchQueue.main.async {
      (UIApplication.shared.delegate as? AppDelegate)?.window.rootViewController?.present(alert, animated: true, completion: nil);
    }
    
    DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + seconds, execute: {
      alert.dismiss(animated: true, completion: nil)
    })
  }

  @objc
  func callBackMessage(_ message:NSString, cb callback: RCTResponseSenderBlock) {
      let message:String = "This Message went through swift: '\(message)'"
      callback([NSNull(), message])
    }
  @objc
  func alertMessage(_ message:NSString) {
    let message:String = "This Message went through swift: '\(message)'"
    alertMessage(message: message as NSString)
    }
  @objc
  func alertNameAge(_ name: NSString, withAge age: NSString) {
    var message = "The current name is \(name) The current age is \(age)"
    message = "This Message went through swift: '\(message)'"
    alertMessage(message: message as NSString)
  }

  @objc
  func callBackNameAge(_ name: NSString, withAge age: NSString, cb callback: RCTResponseSenderBlock) {
    var message:String = "The current name is \(name) The current age is \(age)"
    message = "This Message went through swift: '\(message)'"
    callback([NSNull(), message])
  }

}

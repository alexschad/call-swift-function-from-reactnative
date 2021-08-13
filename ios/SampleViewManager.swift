//
//  SampleViewManager.swift
//  SwiftFunctionFromReactNative
//
//  Created by Alexander Schad on 13.08.21.
//

import Foundation
@objc(SampleViewManager)
class SampleViewManager : RCTViewManager {
  override func view() -> UIView! {
    return SampleView();
  }
}

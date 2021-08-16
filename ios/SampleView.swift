//
//  SampleView.swift
//  SwiftFunctionFromReactNative
//
//  Created by Alexander Schad on 13.08.21.
//

import UIKit
class SampleView: UIView {
  override init(frame: CGRect) {
    super.init(frame: frame)
    let label = UILabel(frame: CGRect(x: 50, y: 50, width: 100,
    height: 50))
    label.text = "This is Swift"
    self.addSubview(label)
  }
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}

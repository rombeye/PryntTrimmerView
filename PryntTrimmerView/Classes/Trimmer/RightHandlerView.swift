//
//  RightHandlerView.swift
//  PryntTrimmerView
//
//  Created by Ensar Baba on 22.07.2020.
//

import Foundation
import UIKit

class RightHandlerView: UIView {
    override func layoutSubviews() {
          super.layoutSubviews()

        self.roundCorners([.topRight, .bottomRight], radius: 8)
      }
    override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
        let hitFrame = bounds.insetBy(dx: -20, dy: -20)
        return hitFrame.contains(point) ? self : nil
    }
    override func point(inside point: CGPoint, with event: UIEvent?) -> Bool {
        let hitFrame = bounds.insetBy(dx: -20, dy: -20)
        return hitFrame.contains(point)
    }
}

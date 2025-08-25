//
//  DesignSpacingConstraints.swift
//  DesignKitPOC
//
//  Created by  Jitendra Lakhmani on 25/08/25.
//

import UIKit
import SpacingDesignKit

@IBDesignable
public class DesignSpacingConstraint: NSLayoutConstraint {
    @IBInspectable public var spacing: String = "" {
        didSet { applySpacing() }
    }
    
    private func applySpacing() {
        if let token = Spacing.allCases.first(where: { "\($0)" == spacing }) {
            constant = token.rawValue
        } else {
            print("⚠️ Invalid spacing token '\(spacing)'. Use xs/sm/md/lg/xl")
        }
    }
    
    public override func awakeFromNib() {
        super.awakeFromNib()
        applySpacing()
    }
}

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
    
    public override func awakeFromNib() {
        super.awakeFromNib()
        applySpacing()
    }
    
    public override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        applySpacing()
    }
    
    private func applySpacing() {
        guard let token = DesignSpacing.allCases.first(where: { "\($0)" == spacing }) else {
            // ❌ Crash immediately to fail build if invalid token
            fatalError("⚠️ Invalid spacing token '\(spacing)'. Allowed: xs, sm, md, lg, xl")
        }
        
        constant = token.rawValue
    }
}

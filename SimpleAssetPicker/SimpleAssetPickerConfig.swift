//
//  SimpleAssetPickerConfig.swift
//  SimpleAssetPicker
//
//  Created by John Meeker on 6/27/16.
//  Copyright © 2016 John Meeker. All rights reserved.
//

import Foundation
import UIKit

public enum SimpleAssetPickerMediaType: Int {
    case Any    = -1
    case Image  = 1
    case Video  = 2
    case Audio  = 3
    
    public var description: String {
        get {
            switch(self) {
            case Any:   return "All media"
            case Image: return "Photos"
            case Video: return "Videos"
            case Audio: return "Audio"
            }
        }
    }
}

public class SimpleAssetPickerConfig: NSObject {
    private static var instance: SimpleAssetPickerConfig!

    // Asset selection constraints
    public var minMediaSelectionAmount: Int?
    public var maxMediaSelectionAmount: Int?

    // Appearance config variables
    public var numberOfItemsPerRow: Int?
    public var pickerMediaType: SimpleAssetPickerMediaType?
    public var assetSelectedImageName: String?
    public var cellSize: CGSize?
    public var collectionViewEdgeInsets: UIEdgeInsets?
    public var verticalCellSpacing: Float?

    // Shared Instance
    public class func sharedConfig() -> SimpleAssetPickerConfig {
        self.instance = (self.instance ?? SimpleAssetPickerConfig())
        return self.instance
    }

    // Default values
    override init() {
        self.minMediaSelectionAmount = 1
        self.maxMediaSelectionAmount = 3
        self.numberOfItemsPerRow = 3
        self.pickerMediaType = .Any
        self.assetSelectedImageName = "thumb-check"
        self.cellSize = CGSize(width: 120.0, height: 120.0)
        self.collectionViewEdgeInsets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        self.verticalCellSpacing = 10.0
    }
}

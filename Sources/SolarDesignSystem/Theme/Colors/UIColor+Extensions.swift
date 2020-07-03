//
//  File.swift
//  
//
//  Created by Brandon McQuilkin on 7/3/20.
//

#if os(watchOS)
import UIKit

extension UIColor {
    
    // These colors are from Apple's watchOS design resources. I'm not sure why these aren't actually available.
    
    public static var systemRed: UIColor {
        UIColor(red: 255.0 / 255.0, green: 59.0 / 255.0, blue: 48.0 / 255.0, alpha: 1.0)
    }
    
    public static var systemOrange: UIColor {
        UIColor(red: 255.0 / 255.0, green: 149.0 / 255.0, blue: 0.0 / 255.0, alpha: 1.0)
    }
    
    public static var systemYellow: UIColor {
        UIColor(red: 255.0 / 255.0, green: 230.0 / 255.0, blue: 32.0 / 255.0, alpha: 1.0)
    }
    
    public static var systemGreen: UIColor {
        UIColor(red: 4.0 / 255.0, green: 222.0 / 255.0, blue: 113.0 / 255.0, alpha: 1.0)
    }
    
    public static var systemMint: UIColor {
        UIColor(red: 0.0 / 255.0, green: 245.0 / 255.0, blue: 234.0 / 255.0, alpha: 1.0)
    }
    
    public static var tealBlue: UIColor {
        UIColor(red: 90.0 / 255.0, green: 200.0 / 255.0, blue: 250.0 / 255.0, alpha: 1.0)
    }
    
    public static var systemBlue: UIColor {
        UIColor(red: 32.0 / 255.0, green: 148.0 / 255.0, blue: 250.0 / 255.0, alpha: 1.0)
    }
    
    public static var systemIndigo: UIColor {
        UIColor(red: 94.0 / 255.0, green: 92.0 / 255.0, blue: 230.0 / 255.0, alpha: 1.0)
    }
    
    public static var systemPurple: UIColor {
        UIColor(red: 120.0 / 255.0, green: 122.0 / 255.0, blue: 255.0 / 255.0, alpha: 1.0)
    }
    
    public static var systemPink: UIColor {
        UIColor(red: 250.0 / 255.0, green: 17.0 / 255.0, blue: 79.0 / 255.0, alpha: 1.0)
    }
    
    public static var systemGrey: UIColor {
        UIColor(red: 155.0 / 255.0, green: 160.0 / 255.0, blue: 170.0 / 255.0, alpha: 1.0)
    }
    
    public static var systemTextGrey: UIColor {
        UIColor(red: 174.0 / 255.0, green: 180.0 / 255.0, blue: 191.0 / 255.0, alpha: 1.0)
    }
    
    public static var systemBackground: UIColor {
        UIColor(red: 242.0 / 255.0, green: 244.0 / 255.0, blue: 255.0 / 255.0, alpha: 1.0)
    }
    
}

#endif

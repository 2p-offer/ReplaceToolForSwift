//
//  MobileIcon.swift
//  ProjectName
//
//  Created by AuthorName on 2019/4/17.
//  Copyright © 2019 CompanyName. All rights reserved.
//
//  Generated by PaintCode
//  http://www.paintcodeapp.com
//



import UIKit

public class MobileIcon : NSObject {
    
    //// Drawing Methods
    
    @objc dynamic public class func drawCanvas1(frame targetFrame: CGRect = CGRect(x: 0, y: 0, width: 16, height: 16), resizing: ResizingBehavior = .aspectFit) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()!
        
        //// Resize to Target Frame
        context.saveGState()
        let resizedFrame: CGRect = resizing.apply(rect: CGRect(x: 0, y: 0, width: 16, height: 16), target: targetFrame)
        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy(x: resizedFrame.width / 16, y: resizedFrame.height / 16)
        
        
        //// Color Declarations
        let fillColor = UIColor(red: 0.000, green: 0.000, blue: 0.000, alpha: 1.000)
        
        //// Bezier Drawing
        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: 11.28, y: 4.51))
        bezierPath.addCurve(to: CGPoint(x: 11.28, y: 8.49), controlPoint1: CGPoint(x: 11.28, y: 5.4), controlPoint2: CGPoint(x: 11.28, y: 6.72))
        bezierPath.addCurve(to: CGPoint(x: 11.28, y: 15.12), controlPoint1: CGPoint(x: 11.28, y: 9.97), controlPoint2: CGPoint(x: 11.28, y: 12.18))
        bezierPath.addCurve(to: CGPoint(x: 11.13, y: 15.49), controlPoint1: CGPoint(x: 11.28, y: 15.27), controlPoint2: CGPoint(x: 11.23, y: 15.39))
        bezierPath.addCurve(to: CGPoint(x: 10.77, y: 15.64), controlPoint1: CGPoint(x: 11.02, y: 15.59), controlPoint2: CGPoint(x: 10.9, y: 15.64))
        bezierPath.addCurve(to: CGPoint(x: 3.99, y: 15.64), controlPoint1: CGPoint(x: 9.26, y: 15.64), controlPoint2: CGPoint(x: 7, y: 15.64))
        bezierPath.addCurve(to: CGPoint(x: 3.64, y: 15.49), controlPoint1: CGPoint(x: 3.86, y: 15.64), controlPoint2: CGPoint(x: 3.74, y: 15.59))
        bezierPath.addCurve(to: CGPoint(x: 3.48, y: 15.12), controlPoint1: CGPoint(x: 3.54, y: 15.39), controlPoint2: CGPoint(x: 3.48, y: 15.27))
        bezierPath.addCurve(to: CGPoint(x: 3.48, y: 4.51), controlPoint1: CGPoint(x: 3.48, y: 12.77), controlPoint2: CGPoint(x: 3.48, y: 9.23))
        bezierPath.addCurve(to: CGPoint(x: 3.64, y: 4.15), controlPoint1: CGPoint(x: 3.48, y: 4.37), controlPoint2: CGPoint(x: 3.54, y: 4.25))
        bezierPath.addCurve(to: CGPoint(x: 3.99, y: 4), controlPoint1: CGPoint(x: 3.74, y: 4.05), controlPoint2: CGPoint(x: 3.86, y: 4))
        bezierPath.addCurve(to: CGPoint(x: 10.77, y: 4), controlPoint1: CGPoint(x: 5.5, y: 4), controlPoint2: CGPoint(x: 7.76, y: 4))
        bezierPath.addCurve(to: CGPoint(x: 11.13, y: 4.15), controlPoint1: CGPoint(x: 10.9, y: 4), controlPoint2: CGPoint(x: 11.02, y: 4.05))
        bezierPath.addCurve(to: CGPoint(x: 11.28, y: 4.51), controlPoint1: CGPoint(x: 11.23, y: 4.25), controlPoint2: CGPoint(x: 11.28, y: 4.37))
        bezierPath.close()
        bezierPath.move(to: CGPoint(x: 3.99, y: 4.51))
        bezierPath.addCurve(to: CGPoint(x: 3.99, y: 12.4), controlPoint1: CGPoint(x: 3.99, y: 6.26), controlPoint2: CGPoint(x: 3.99, y: 8.89))
        bezierPath.addCurve(to: CGPoint(x: 3.99, y: 12.81), controlPoint1: CGPoint(x: 3.99, y: 12.49), controlPoint2: CGPoint(x: 3.99, y: 12.62))
        bezierPath.addCurve(to: CGPoint(x: 10.77, y: 12.81), controlPoint1: CGPoint(x: 5.5, y: 12.81), controlPoint2: CGPoint(x: 7.76, y: 12.81))
        bezierPath.addCurve(to: CGPoint(x: 10.77, y: 7.15), controlPoint1: CGPoint(x: 10.77, y: 11.55), controlPoint2: CGPoint(x: 10.77, y: 9.66))
        bezierPath.addCurve(to: CGPoint(x: 10.77, y: 4.51), controlPoint1: CGPoint(x: 10.77, y: 6.56), controlPoint2: CGPoint(x: 10.77, y: 5.68))
        bezierPath.addCurve(to: CGPoint(x: 3.99, y: 4.51), controlPoint1: CGPoint(x: 9.26, y: 4.51), controlPoint2: CGPoint(x: 7, y: 4.51))
        bezierPath.close()
        bezierPath.move(to: CGPoint(x: 10.77, y: 15.12))
        bezierPath.addCurve(to: CGPoint(x: 10.77, y: 14.62), controlPoint1: CGPoint(x: 10.77, y: 15.02), controlPoint2: CGPoint(x: 10.77, y: 14.85))
        bezierPath.addCurve(to: CGPoint(x: 10.77, y: 13.31), controlPoint1: CGPoint(x: 10.77, y: 14.33), controlPoint2: CGPoint(x: 10.77, y: 13.89))
        bezierPath.addCurve(to: CGPoint(x: 9.64, y: 13.31), controlPoint1: CGPoint(x: 10.52, y: 13.31), controlPoint2: CGPoint(x: 10.14, y: 13.31))
        bezierPath.addCurve(to: CGPoint(x: 3.99, y: 13.31), controlPoint1: CGPoint(x: 8.38, y: 13.31), controlPoint2: CGPoint(x: 6.5, y: 13.31))
        bezierPath.addCurve(to: CGPoint(x: 3.99, y: 15.12), controlPoint1: CGPoint(x: 3.99, y: 13.72), controlPoint2: CGPoint(x: 3.99, y: 14.32))
        bezierPath.addCurve(to: CGPoint(x: 5.13, y: 15.12), controlPoint1: CGPoint(x: 4.24, y: 15.12), controlPoint2: CGPoint(x: 4.62, y: 15.12))
        bezierPath.addCurve(to: CGPoint(x: 10.77, y: 15.12), controlPoint1: CGPoint(x: 6.38, y: 15.12), controlPoint2: CGPoint(x: 8.26, y: 15.12))
        bezierPath.close()
        bezierPath.move(to: CGPoint(x: 6.96, y: 13.74))
        bezierPath.addCurve(to: CGPoint(x: 7.15, y: 13.61), controlPoint1: CGPoint(x: 7.01, y: 13.69), controlPoint2: CGPoint(x: 7.08, y: 13.64))
        bezierPath.addCurve(to: CGPoint(x: 7.38, y: 13.57), controlPoint1: CGPoint(x: 7.23, y: 13.58), controlPoint2: CGPoint(x: 7.23, y: 13.58))
        bezierPath.addCurve(to: CGPoint(x: 7.61, y: 13.61), controlPoint1: CGPoint(x: 7.46, y: 13.57), controlPoint2: CGPoint(x: 7.53, y: 13.58))
        bezierPath.addCurve(to: CGPoint(x: 7.8, y: 13.74), controlPoint1: CGPoint(x: 7.68, y: 13.64), controlPoint2: CGPoint(x: 7.68, y: 13.64))
        bezierPath.addCurve(to: CGPoint(x: 7.93, y: 13.93), controlPoint1: CGPoint(x: 7.92, y: 13.83), controlPoint2: CGPoint(x: 7.92, y: 13.83))
        bezierPath.addCurve(to: CGPoint(x: 7.97, y: 14.16), controlPoint1: CGPoint(x: 7.93, y: 14.03), controlPoint2: CGPoint(x: 7.93, y: 14.03))
        bezierPath.addCurve(to: CGPoint(x: 7.93, y: 14.39), controlPoint1: CGPoint(x: 7.97, y: 14.23), controlPoint2: CGPoint(x: 7.96, y: 14.31))
        bezierPath.addCurve(to: CGPoint(x: 7.8, y: 14.58), controlPoint1: CGPoint(x: 7.9, y: 14.45), controlPoint2: CGPoint(x: 7.85, y: 14.52))
        bezierPath.addCurve(to: CGPoint(x: 7.61, y: 14.7), controlPoint1: CGPoint(x: 7.75, y: 14.64), controlPoint2: CGPoint(x: 7.75, y: 14.64))
        bezierPath.addCurve(to: CGPoint(x: 7.38, y: 14.75), controlPoint1: CGPoint(x: 7.47, y: 14.77), controlPoint2: CGPoint(x: 7.47, y: 14.77))
        bezierPath.addCurve(to: CGPoint(x: 7.15, y: 14.7), controlPoint1: CGPoint(x: 7.3, y: 14.75), controlPoint2: CGPoint(x: 7.23, y: 14.73))
        bezierPath.addCurve(to: CGPoint(x: 6.96, y: 14.58), controlPoint1: CGPoint(x: 7.08, y: 14.67), controlPoint2: CGPoint(x: 7.08, y: 14.67))
        bezierPath.addCurve(to: CGPoint(x: 6.84, y: 14.39), controlPoint1: CGPoint(x: 6.91, y: 14.52), controlPoint2: CGPoint(x: 6.87, y: 14.45))
        bezierPath.addCurve(to: CGPoint(x: 6.79, y: 14.16), controlPoint1: CGPoint(x: 6.8, y: 14.31), controlPoint2: CGPoint(x: 6.79, y: 14.23))
        bezierPath.addCurve(to: CGPoint(x: 6.84, y: 13.93), controlPoint1: CGPoint(x: 6.79, y: 14.08), controlPoint2: CGPoint(x: 6.8, y: 14.01))
        bezierPath.addCurve(to: CGPoint(x: 6.96, y: 13.74), controlPoint1: CGPoint(x: 6.87, y: 13.86), controlPoint2: CGPoint(x: 6.91, y: 13.79))
        bezierPath.close()
        fillColor.setFill()
        bezierPath.fill()
        
        context.restoreGState()
        
    }
    
    
    
    
    @objc(MobileIconResizingBehavior)
    public enum ResizingBehavior: Int {
        case aspectFit /// The content is proportionally resized to fit into the target rectangle.
        case aspectFill /// The content is proportionally resized to completely fill the target rectangle.
        case stretch /// The content is stretched to match the entire target rectangle.
        case center /// The content is centered in the target rectangle, but it is NOT resized.
        
        public func apply(rect: CGRect, target: CGRect) -> CGRect {
            if rect == target || target == CGRect.zero {
                return rect
            }
            
            var scales = CGSize.zero
            scales.width = abs(target.width / rect.width)
            scales.height = abs(target.height / rect.height)
            
            switch self {
            case .aspectFit:
                scales.width = min(scales.width, scales.height)
                scales.height = scales.width
            case .aspectFill:
                scales.width = max(scales.width, scales.height)
                scales.height = scales.width
            case .stretch:
                break
            case .center:
                scales.width = 1
                scales.height = 1
            }
            
            var result = rect.standardized
            result.size.width *= scales.width
            result.size.height *= scales.height
            result.origin.x = target.minX + (target.width - result.width) / 2
            result.origin.y = target.minY + (target.height - result.height) / 2
            return result
        }
    }
}

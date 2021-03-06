//
//  UserIconSmall.swift
//  ProjectName
//
//  Created by AuthorName on 2019/4/17.
//  Copyright © 2019 CompanyName. All rights reserved.
//
//  Generated by PaintCode
//  http://www.paintcodeapp.com
//



import UIKit

public class UserIcon : NSObject {
    
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
        
        //// user.svg Group
        //// Bezier Drawing
        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: 8.16, y: 0.96))
        bezierPath.addCurve(to: CGPoint(x: 11.36, y: 4.16), controlPoint1: CGPoint(x: 9.92, y: 0.96), controlPoint2: CGPoint(x: 11.36, y: 2.4))
        bezierPath.addCurve(to: CGPoint(x: 8.16, y: 7.36), controlPoint1: CGPoint(x: 11.36, y: 5.92), controlPoint2: CGPoint(x: 9.92, y: 7.36))
        bezierPath.addCurve(to: CGPoint(x: 4.96, y: 4.16), controlPoint1: CGPoint(x: 6.4, y: 7.36), controlPoint2: CGPoint(x: 4.96, y: 5.92))
        bezierPath.addCurve(to: CGPoint(x: 8.16, y: 0.96), controlPoint1: CGPoint(x: 4.96, y: 2.4), controlPoint2: CGPoint(x: 6.4, y: 0.96))
        bezierPath.close()
        bezierPath.move(to: CGPoint(x: 8.16, y: 0.16))
        bezierPath.addCurve(to: CGPoint(x: 4.16, y: 4.16), controlPoint1: CGPoint(x: 5.92, y: 0.16), controlPoint2: CGPoint(x: 4.16, y: 1.92))
        bezierPath.addCurve(to: CGPoint(x: 8.16, y: 8.16), controlPoint1: CGPoint(x: 4.16, y: 6.4), controlPoint2: CGPoint(x: 5.92, y: 8.16))
        bezierPath.addCurve(to: CGPoint(x: 12.16, y: 4.16), controlPoint1: CGPoint(x: 10.4, y: 8.16), controlPoint2: CGPoint(x: 12.16, y: 6.4))
        bezierPath.addCurve(to: CGPoint(x: 8.16, y: 0.16), controlPoint1: CGPoint(x: 12.16, y: 1.92), controlPoint2: CGPoint(x: 10.4, y: 0.16))
        bezierPath.close()
        fillColor.setFill()
        bezierPath.fill()
        
        
        //// Bezier 2 Drawing
        let bezier2Path = UIBezierPath()
        bezier2Path.move(to: CGPoint(x: 8, y: 7.36))
        bezier2Path.addLine(to: CGPoint(x: 8, y: 8.16))
        bezier2Path.addCurve(to: CGPoint(x: 10.64, y: 8.4), controlPoint1: CGPoint(x: 9.12, y: 8.16), controlPoint2: CGPoint(x: 10.08, y: 8.32))
        bezier2Path.addCurve(to: CGPoint(x: 11.36, y: 8.64), controlPoint1: CGPoint(x: 10.88, y: 8.4), controlPoint2: CGPoint(x: 11.12, y: 8.56))
        bezier2Path.addCurve(to: CGPoint(x: 11.76, y: 8.8), controlPoint1: CGPoint(x: 11.52, y: 8.72), controlPoint2: CGPoint(x: 11.6, y: 8.72))
        bezier2Path.addCurve(to: CGPoint(x: 14.88, y: 13.6), controlPoint1: CGPoint(x: 14.32, y: 10), controlPoint2: CGPoint(x: 15.2, y: 12.08))
        bezier2Path.addCurve(to: CGPoint(x: 13.52, y: 15.12), controlPoint1: CGPoint(x: 14.72, y: 14.24), controlPoint2: CGPoint(x: 14.32, y: 15.04))
        bezier2Path.addLine(to: CGPoint(x: 2.4, y: 15.12))
        bezier2Path.addCurve(to: CGPoint(x: 1.12, y: 13.76), controlPoint1: CGPoint(x: 1.68, y: 15.12), controlPoint2: CGPoint(x: 1.28, y: 14.4))
        bezier2Path.addCurve(to: CGPoint(x: 4.32, y: 8.8), controlPoint1: CGPoint(x: 0.8, y: 12.24), controlPoint2: CGPoint(x: 1.6, y: 10.08))
        bezier2Path.addCurve(to: CGPoint(x: 8, y: 8.24), controlPoint1: CGPoint(x: 5.44, y: 8.4), controlPoint2: CGPoint(x: 6.64, y: 8.24))
        bezier2Path.addLine(to: CGPoint(x: 8, y: 7.36))
        bezier2Path.close()
        bezier2Path.move(to: CGPoint(x: 8, y: 7.36))
        bezier2Path.addCurve(to: CGPoint(x: 4, y: 8), controlPoint1: CGPoint(x: 6.8, y: 7.36), controlPoint2: CGPoint(x: 5.36, y: 7.52))
        bezier2Path.addCurve(to: CGPoint(x: 2.4, y: 15.84), controlPoint1: CGPoint(x: -1.28, y: 10.48), controlPoint2: CGPoint(x: -0.32, y: 15.84))
        bezier2Path.addLine(to: CGPoint(x: 13.6, y: 15.84))
        bezier2Path.addCurve(to: CGPoint(x: 12, y: 8), controlPoint1: CGPoint(x: 16.4, y: 15.6), controlPoint2: CGPoint(x: 17.04, y: 10.32))
        bezier2Path.addCurve(to: CGPoint(x: 10.8, y: 7.68), controlPoint1: CGPoint(x: 11.92, y: 8), controlPoint2: CGPoint(x: 11.28, y: 7.76))
        bezier2Path.addCurve(to: CGPoint(x: 8, y: 7.36), controlPoint1: CGPoint(x: 10.08, y: 7.52), controlPoint2: CGPoint(x: 9.12, y: 7.36))
        bezier2Path.close()
        fillColor.setFill()
        bezier2Path.fill()
        
        context.restoreGState()
        
    }
    
    
    
    
    @objc(UserIconSmallResizingBehavior)
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

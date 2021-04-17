import Foundation
import UIKit

// From https://dev.to/rockarts/generative-art-using-swift-4aa5
public class MazeLinesView: UIView {
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
    }
        
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public override func draw( _ rect: CGRect) {
        let step = 20
        let x = Int(bounds.origin.x)
        let y = Int(bounds.origin.y)
        let width = Int(bounds.width)
        let height = Int(bounds.height)
        
        for xvalue in stride(from: x, through: width, by: step) {
            for yvalue in stride(from: y, through: height, by: step) {
                drawLine(x: xvalue,y: yvalue, width: step, height: step)
            }
        }
    }
    
    func drawLine(x:Int, y:Int, width:Int, height:Int) {
        let leftToRight:Bool = Bool.random()
        
        let path = UIBezierPath()
        
        if(leftToRight) {
            path.move(to: CGPoint(x: x, y: y))
            path.addLine(to: CGPoint(x: x + width, y: y + height))
        } else {
            path.move(to: CGPoint(x: x + width, y: y))
            path.addLine(to: CGPoint(x: x, y: y + height))
        }
        
        path.close()
        UIColor.red.set()
        path.stroke()
        path.fill()
    }
}

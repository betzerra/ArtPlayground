import Foundation
import UIKit

public class RandomSquaresView: UIView {
    let palette: [UIColor]
    
    public init(frame: CGRect, palette: [UIColor]) {
        self.palette = palette
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
                drawSquare(x: xvalue, y: yvalue, size: 20)
            }
        }
        
        for xvalue in stride(from: x, through: width, by: step) {
            for yvalue in stride(from: y, through: height, by: step) {
                if Bool.random() {
                    drawSquare(x: xvalue, y: yvalue, size: 80)
                }
            }
        }
        
        for xvalue in stride(from: 20, through: width - 20, by: step) {
            for yvalue in stride(from: y, through: height, by: step) {
                if Bool.random(in: 6) {
                    drawCross(center: CGPoint(x: xvalue, y: yvalue), radius: 6)
                }
            }
        }
    }
    
    func drawSquare(x: Int, y: Int, size: Int) {
        let rect = CGRect(x: x, y: y, width: size, height: size)
        let path = UIBezierPath(rect: rect)
        path.close()
        
        let color = palette.randomElement() ?? .black
        color.set()
        path.fill()
    }
    
    func drawCross(center: CGPoint, radius: CGFloat) {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: center.x - radius, y: center.y))
        path.addLine(to: CGPoint(x: center.x + radius, y: center.y))
        path.move(to: CGPoint(x: center.x, y: center.y - radius))
        path.addLine(to: CGPoint(x: center.x, y: center.y + radius))
        
        let color = palette.randomElement() ?? .black
        color.set()
        path.lineWidth = 2
        path.stroke()
    }
}

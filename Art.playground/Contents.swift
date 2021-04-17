import UIKit
import PlaygroundSupport

let containerView = UIView(
    frame: CGRect(x: 0, y: 0, width: 500, height: 500)
)

let palette: [UIColor] = [#colorLiteral(red: 1, green: 0.8274509804, blue: 0.09803921569, alpha: 1), #colorLiteral(red: 1, green: 0.5647058824, blue: 0.1215686275, alpha: 1), #colorLiteral(red: 1, green: 0.1607843137, blue: 0.4588235294, alpha: 1), #colorLiteral(red: 0.9490196078, green: 0.1333333333, blue: 1, alpha: 1), #colorLiteral(red: 0.5490196078, green: 0.1176470588, blue: 1, alpha: 1)]

let canvas = RandomSquaresView(
    frame: containerView.bounds, 
    palette: palette
)

containerView.addSubview(canvas)

containerView.backgroundColor = .black

PlaygroundPage.current.liveView = containerView

import UIKit
import PlaygroundSupport

let containerView = UIView(
    frame: CGRect(x: 0, y: 0, width: 500, height: 500)
)

let canvas = MazeLinesView(frame: containerView.bounds)
containerView.addSubview(canvas)

containerView.backgroundColor = .black

PlaygroundPage.current.liveView = containerView

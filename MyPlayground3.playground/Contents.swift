
import PlaygroundSupport

import UIKit


let view = UIView()
view.backgroundColor = #colorLiteral(red: 0.1932679415, green: 0.3410131931, blue: 0.6949551105, alpha: 1)
view.frame = CGRect(x: 0, y: 0, width: 200, height: 400)

let button = UIButton(frame: CGRect(x: 50, y: 50, width: 100, height: 50))
button.backgroundColor = #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)
button.setTitle("Test Button", for: .normal)
view.addSubview(button)
class Responser: NSObject{
    @objc func buttonAction(sender: UIButton!) {
   print("Button tapped")
   }
}
let responser = Responser()
button.addTarget(responser, action: #selector(responser.buttonAction), for: .touchUpInside)
PlaygroundPage.current.liveView = view


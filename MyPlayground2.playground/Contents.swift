import PlaygroundSupport
import UIKit

//
let view = UIView()
view.backgroundColor = #colorLiteral(red: 0.1932679415, green: 0.3410131931, blue: 0.6949551105, alpha: 1)
view.frame = CGRect(x: 0, y: 0, width: 200, height: 400)


let lbl = UILabel(frame: CGRect(x: 50, y: 10, width: 150, height: 40))
lbl.text = "Hello, World!"
view.addSubview(lbl)

let txt = UITextField()
txt.frame = CGRect(x: 25, y: 120, width: 150, height: 40)
txt.placeholder = "Enter text here"
//txt.font = UIFont.systemFont(ofSize: 15)
txt.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
txt.borderStyle = UITextField.BorderStyle.roundedRect

view.addSubview(txt)

let button = UIButton(frame: CGRect(x: 50, y: 180, width: 50, height: 50))
button.backgroundColor = #colorLiteral(red: 0.721568644046783, green: 0.886274516582489, blue: 0.592156887054443, alpha: 1.0)
//button.setTitleColor(#colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0), for: UIControlState.selected)
button.setTitle("button", for: .focused)
button.layer.cornerRadius = 10
view.addSubview(button)

class Responser: NSObject
{

    //Method to be called
    @objc func printname()
    {
        print ("clicked")
        lbl.text = "Hello CLicker"
    }
}

let responder = Responser()
button.addTarget(responder, action: #selector(Responser.printname), for:.touchUpInside)

PlaygroundPage.current.liveView = view



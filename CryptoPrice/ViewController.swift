//
//  ViewController.swift
//  CryptoPrice
//
//  Created by Emmanuel George on 29/08/22.
//

import UIKit

class ViewController: UIViewController {

    private let imageView: UIImageView = {
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 150, height: 150))
        imageView.image = UIImage(named: "bitcoinsign.circle.fill")
        return imageView
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(imageView)
    }
    

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        imageView.center = view.center
        DispatchQueue.main.asyncAfter(deadline: .now()+0.5, execute: {
            self.animate()
        })
    
    }
    
    private func animate(){
        UIView.animate(withDuration: 1, animations: {
            let size = self.view.frame.size.width * 3
            let diffx = size - self.view.frame.width
            let diffy = self.view.frame.height - size
            self.imageView.frame = CGRect(x: -(diffx/2),
                                          y: diffy/2,
                                          width: size,
                                          height: size
            )

        })
        UIView.animate(withDuration: 1.5, animations: {


            self.imageView.alpha = 0
        }, completion: {done in
            if done{
                DispatchQueue.main.asyncAfter(deadline: .now()+0.3, execute: {
                    let viewController = HomeViewController()
                    viewController.modalTransitionStyle = .crossDissolve
                    viewController.modalPresentationStyle = .fullScreen
                    self.present(viewController, animated: true)
                })

            }
        })

    }

}


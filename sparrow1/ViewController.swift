//
//  ViewController.swift
//  sparrow1
//
//  Created by Данила Бердников on 03.03.2023.
//

import UIKit

class ViewController: UIViewController {
    
    let gradientView = Gradient(from: .top, to: .bottom, startColor: #colorLiteral(red: 0.2955428362, green: 0.2955428362, blue: 0.2955428362, alpha: 1), endColor: .blue)

    private let gradientLayer = CAGradientLayer()


    var mainView: UIView = {
        let view = UIView()
        view.layer.shadowRadius = 8
        view.layer.shadowOffset = CGSize(width: 3, height: 3)
        view.layer.shadowOpacity = 0.5
        view.layer.cornerRadius = 20
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
     }()

     var contentsLayer: UIView = {
        let view = Gradient(from: .top, to: .bottom, startColor: #colorLiteral(red: 0.2955428362, green: 0.2955428362, blue: 0.2955428362, alpha: 1), endColor: .blue)
        view.layer.cornerRadius = 20
        view.layer.masksToBounds = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
     }()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()

        setupView()

    }
    
    func setupView() {
        view.backgroundColor = .white
        view.addSubview(mainView)
        mainView.addSubview(contentsLayer)
        NSLayoutConstraint.activate([

            mainView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            mainView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100),
            mainView.heightAnchor.constraint(equalToConstant: 100),
            mainView.widthAnchor.constraint(equalToConstant: 100),

            contentsLayer.centerYAnchor.constraint(equalTo: mainView.centerYAnchor),
            contentsLayer.centerXAnchor.constraint(equalTo: mainView.centerXAnchor),
            contentsLayer.heightAnchor.constraint(equalTo: mainView.heightAnchor),
            contentsLayer.widthAnchor.constraint(equalTo: mainView.widthAnchor)
        ])
    }

    
}


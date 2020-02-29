//
//  ViewController.swift
//  SDWebImageLottiePlugin
//
//  Created by lizhuoli1126@126.com on 02/28/2020.
//  Copyright (c) 2020 lizhuoli1126@126.com. All rights reserved.
//

import UIKit
import Lottie
import SDWebImageLottiePlugin

class ViewController: UIViewController {
    
    let animationView = AnimationView()

    override func viewDidLoad() {
        super.viewDidLoad()
        animationView.contentMode = .scaleAspectFit
        animationView.frame = self.view.bounds
        animationView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        view.addSubview(animationView)
        
        let lottieUrl = URL(string: "https://raw.githubusercontent.com/airbnb/lottie-web/master/demo/gatin/data.json")
        animationView.sd_setImage(with: lottieUrl) { (image, error, cacheType, url) in
            self.animationView.play(fromProgress: 0,
                               toProgress: 1,
                               loopMode: LottieLoopMode.playOnce,
                               completion: { (finished) in
                                if finished {
                                  print("Animation Complete")
                                } else {
                                  print("Animation cancelled")
                                }
            })
        }
    }

}


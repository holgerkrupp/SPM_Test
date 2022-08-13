//
//  ViewController.swift
//  SPM_Test
//
//  Created by Holger Krupp on 13.08.22.
//

import UIKit
#if canImport(GoogleMobileAds)
    import GoogleMobileAds
#endif


class ViewController: UIViewController {
    
#if canImport(GoogleMobileAds)
    var bannerView = GADBannerView(adSize: GADAdSizeBanner)
#endif

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func addBanner(){
#if canImport(GoogleMobileAds)

                GADMobileAds.sharedInstance().requestConfiguration.testDeviceIdentifiers = ["72446c5f7abac9ec97ab0fd28529fd8b",GADSimulatorID]
                bannerView.rootViewController = self
        self.view.addSubview(bannerView)

                NSLayoutConstraint.activate([
                    bannerView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 0),
                    bannerView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0),
                    bannerView.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 0),
                    bannerView.rightAnchor.constraint(equalTo: self.view.rightAnchor, constant: 0),
                ]
                )
                
#endif
    }


}


//
//  LaunchScreenView.swift
//  CoronaContact
//

import Reusable
import UIKit

class LaunchScreenView: UIView, NibLoadable {
    func startFadeOutAnimation(withDuration duration: TimeInterval) {
        UIView.animate(withDuration: duration, animations: {
            self.alpha = 0.0
        }, completion: { finished in
            guard finished else { return }
            self.removeFromSuperview()
        })
    }
}

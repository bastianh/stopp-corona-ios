//
//  SelfTestingConfirmationViewModel.swift
//  CoronaContact
//

import Foundation
import Resolver

class SelfTestingConfirmationViewModel: ViewModel {
    weak var coordinator: SelfTestingConfirmationCoordinator?
    @Injected private var localStorage: LocalStorage

    init(with coordinator: SelfTestingConfirmationCoordinator) {
        self.coordinator = coordinator
    }

    func onViewDidLoad() {
        localStorage.isProbablySickAt = Date()
    }

    func showQuarantineGuidelines() {
        coordinator?.showQuarantineGuidelines()
    }

    func returnToMain() {
        coordinator?.finish(animated: true)
    }
}

//
//  SelfTestingSelfMonitoringViewController.swift
//  CoronaContact
//

import Reusable
import UIKit

final class SelfTestingSelfMonitoringViewController: UIViewController, StoryboardBased, ViewModelBased, FlashableScrollIndicators {
    @IBOutlet var scrollView: UIScrollView!
    @IBOutlet var instructionsView: InstructionsView!

    var viewModel: SelfTestingSelfMonitoringViewModel?

    override func viewDidLoad() {
        super.viewDidLoad()

        viewModel?.onViewDidLoad()

        setupUI()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        flashScrollIndicators()
    }

    override func didMove(toParent parent: UIViewController?) {
        super.didMove(toParent: parent)
        if parent == nil {
            viewModel?.viewClosed()
        }
    }

    private func setupUI() {
        instructionsView.instructions = [
            .init(index: 1, text: "self_testing_self_monitoring_recommendation_1".localized),
            .init(index: 2, text: "self_testing_self_monitoring_recommendation_2".localized),
            .init(index: 3, text: "self_testing_self_monitoring_recommendation_3".localized),
        ]
    }

    @IBAction func doneTapped(_ sender: UIButton) {
        viewModel?.returnToMain()
    }
}

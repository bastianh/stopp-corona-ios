//
//  QuarantineGuidelinesViewController.swift
//  CoronaContact
//

import Reusable
import UIKit

final class QuarantineGuidelinesViewController: UIViewController, StoryboardBased, ViewModelBased, FlashableScrollIndicators {
    var viewModel: QuarantineGuidelinesViewModel?

    @IBOutlet var scrollView: UIScrollView!
    @IBOutlet var instructionsView: InstructionsView!
    @IBOutlet var contactHealthDescriptionLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        flashScrollIndicators()
    }

    private func setupUI() {
        title = "quarantine_guidelines_title".localized

        instructionsView.instructions = [
            .init(index: 1, text: "quarantine_guidelines_first".localized),
            .init(index: 2, text: "quarantine_guidelines_second".localized),
            .init(index: 3, text: "quarantine_guidelines_third".localized),
            .init(index: 4, text: "quarantine_guidelines_fourth".localized),
        ]
    }
}

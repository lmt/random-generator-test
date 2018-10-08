import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var randomNumberLabel: UILabel!
    
    var timer: Timer?

    var timerModel: TimerModel?

    override func viewDidLoad() {
        super.viewDidLoad()

        timer = Timer.scheduledTimer(withTimeInterval: 0.5,
                                     repeats: true) { timer in
                                        guard var  timerModel = self.timerModel else { return }
                                        timerModel.updateRandom()
                                        self.randomNumberLabel.text = "\(timerModel.lastRandomValue)"
        }

    }

    @IBAction func likeNumberTapped(_: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}

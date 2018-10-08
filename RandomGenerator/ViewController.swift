import UIKit

class ViewController: UIViewController {

    @IBOutlet var randomNumberLabel: UILabel!

    var timerModel = TimerModel()

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        randomNumberLabel.text = "\(timerModel.lastRandomValue)"
    }

    @IBAction func newRandomTapped(_: UIButton) {
        let storyBoard = UIStoryboard(name: "DetailViewController", bundle: nil)
        guard let detail = storyBoard.instantiateInitialViewController() as? DetailViewController else { return }
        detail.timerModel = timerModel
        present(detail, animated: true, completion: nil)
    }

}

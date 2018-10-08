import UIKit

struct TimerModel {
    var lastRandomValue: Int = 0

    mutating func updateRandom() {
        self.lastRandomValue = Int.random(in: 0..<1000)
    }
}

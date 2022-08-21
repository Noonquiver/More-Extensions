//
//  ViewController.swift
//  More Extensions
//
//  Created by Camilo Hernández Guerrero on 21/08/22.
//

import UIKit

extension UIView {
    func bounceOut(duration: TimeInterval) {
        UIView.animate(withDuration: duration) {
            [weak self] in
            self?.transform = CGAffineTransform(scaleX: 0.0001, y: 0.0001)
        }
    }
}

extension Int {
    func times(_ instruction: () -> Void) {
        guard self > 0 else {
            print("Invalid number.")
            return
        }
        
        for _ in 0 ..< self {
            instruction()
        }
    }
}

extension Array where Element: Comparable {
    mutating func remove(item: Element) {
        guard let index = self.firstIndex(of: item) else { return }
        self.remove(at: index)
    }
}

class ViewController: UIViewController {
    @IBOutlet var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.bounceOut(duration: 2)
        
        5.times {
            let array = ["Camilo", "Carlos"]
            print(array)
        }
        
        var array = ["Iván", "Camilo", "Carlos", "Camilo", "Samy"]
        array.remove(item: "Camilo")
        print(array)
        
        var intArray = [1, 2, 2, 3, 4]
        intArray.remove(item: 2)
        print(intArray)
        
    }
}

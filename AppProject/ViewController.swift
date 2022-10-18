import UIKit
import FirstModule
import SecondModule

class ViewController: UIViewController {

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        do {
//            try testTextFile()
//            try testColor()
//            try testFirstStoryboardVC()
            try testSecondStoryboardVC()
        } catch {
            fatalError("\(error)")
        }
    }

    private func testTextFile() throws {
        let bundle = FirstModule.bundle
        let file = bundle.url(forResource: "hello", withExtension: "md")!
        let string = try String(contentsOf: file)
        print(string)
    }

    private func testColor() throws {
        let bundle = FirstModule.bundle
        let color = UIColor(named: "Color/Primary", in: bundle, compatibleWith: nil)!
        view.backgroundColor = color
    }

    private func testFirstStoryboardVC() throws {
        let bundle = FirstModule.bundle
        let storyboard = UIStoryboard(name: "Storyboard", bundle: bundle)
        let vc = storyboard.instantiateInitialViewController()!
        self.present(vc, animated: true)
    }

    private func testSecondStoryboardVC() throws {
        let bundle = SecondModule.bundle
        let storyboard = UIStoryboard(name: "Storyboard", bundle: bundle)
        let vc = storyboard.instantiateInitialViewController()!
        self.present(vc, animated: true)
    }
}


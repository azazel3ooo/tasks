import UIKit

class ViewController: UIViewController {
    @IBOutlet weak private var titleTextField: UILabel!
    
    private let startPhrase: String = "Значение счётчика: ";
    private var counter = 0;
    
    private func buildPhrase() -> String {
        return startPhrase + String(counter)
    }
    
    private func updateText() {
        titleTextField.text = buildPhrase()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleTextField.text = buildPhrase()
    }

    
    @IBAction private func increase() {
        counter += 1;
        updateText()
    }
}


import UIKit

class SecondDetailViewController: UIViewController {
    
    var imagePass: String? // Declare a property to hold the image data
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Check if there is image data to display
        if let imageName = imagePass {
            imageView.image = UIImage(named: imageName)
        }
    }
}

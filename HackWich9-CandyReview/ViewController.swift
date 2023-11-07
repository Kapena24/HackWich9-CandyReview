import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{

    var candyArray = ["Reese's Peanut Butter Cup", "Kit Kat", "Butterfingers", "Chocolate & Nut M&M"]
    var ratingArray = ["⭐️⭐️⭐️⭐️⭐️", "⭐️⭐️⭐️", "⭐️⭐️⭐️⭐️", "⭐️⭐️⭐️⭐️⭐️"]
    
   

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var tableView: UITableView!
   
   
    var categoryOneImagesData = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()

        if let path = Bundle.main.path(forResource: "PropertyList", ofType: "plist"),
           let dict = NSDictionary(contentsOfFile: path),
           let categoryOneImages = dict.object(forKey: "CategoryOneImages") as? [String] {
           
            categoryOneImagesData = categoryOneImages
        }

        //tableView.dataSource = self
        //tableView.delegate = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return candyArray.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = candyArray[indexPath.row]
        cell.detailTextLabel?.text = ratingArray[indexPath.row]
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
      
    }
    
}

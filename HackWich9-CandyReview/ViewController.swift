import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var candyArray = ["Reese's Peanut Butter Cup", "Kit Kat", "Butterfingers", "Chocolate & Nut M&M"]
    var ratingArray = ["⭐️⭐️⭐️⭐️⭐️", "⭐️⭐️⭐️", "⭐️⭐️⭐️⭐️", "⭐️⭐️⭐️⭐️⭐️"]
    var categoryOneImagesData = ["image1", "image2", "image3", "image4"]
   
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
       //tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        //tableView.delegate = self
        //tableView.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return candyArray.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = candyArray[indexPath.row]
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        performSegue(withIdentifier: "mySegue", sender: self)
    }

   
}

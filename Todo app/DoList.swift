import UIKit

class DoList: UITableViewController {
    
    var Lists: [String] = ["Homework", "Midterm", "Essay"]
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Lists.count
    }
    
    @IBAction func addListButtonPressed(_ sender: Any) {
        Lists.append("Assignment Two")
        tableView.reloadData()
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let List = Lists[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListsCell")!
        cell.textLabel?.text = List
        return cell
        
    }
    
    // different height
    /*
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(200.0)
    }
    */
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(Lists[indexPath.row])
        
        performSegue(withIdentifier: "ListTransition", sender: self)
    }
    
   // override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     //   if let destination = segue.destination as? DisplayListViewController {
            //destination.display.text =
       // }
    //}
    
    
    
    
}


import UIKit
import Alamofire

class JSONViewController: UIViewController {
    
    let url = URL(string: "http://t.weather.sojson.com/api/weather/city/101270101")!
    var weather:AnyObject!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    @IBAction func loadWithSession(_ sender: Any) {
        let task = URLSession.shared.dataTask(with: url) { (data, response, err) in
            if let json = try? JSONSerialization.jsonObject(with: data!, options: .allowFragments) as AnyObject{
                self.weather = json
               // let cityInfo:AnyObject = json.object(forKey: "cityInfo") as AnyObject
               // let city:NSString = cityInfo.object(forKey: "city") as! NSString
                DispatchQueue.main.async {
                     self.performSegue(withIdentifier: "ShowCity", sender: self)
                }
            }
        }
        task.resume()
    }
    @IBAction func loadWithAF(_ sender: Any) {
        AF.request(url).responseJSON { (response) in
            self.weather = response.value as AnyObject
            self.performSegue(withIdentifier: "ShowCity", sender: self)
        }
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "ShowCity" {
            if let secVC = segue.destination as? CityTableViewController {
                secVC.weather = self.weather
            }
        }
    }
}


import UIKit
import Alamofire

class DetailViewController: UIViewController {

    @IBOutlet weak var today: UILabel!
    @IBOutlet weak var yesterday: UILabel!
    @IBOutlet weak var farword: UILabel!
    @IBOutlet weak var farword1: UILabel!
    @IBOutlet weak var farword2: UILabel!
    @IBOutlet weak var farword3: UILabel!
    @IBOutlet weak var farword4: UILabel!
    
    
    var weather:AnyObject!
    var infoData:AnyObject!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        infoData = (weather.object(forKey: "data") as AnyObject)
        
        let time = (weather.object(forKey: "time")) as? String
        let shidu = (infoData.object(forKey: "shidu")) as? String
        let quality = (infoData.object(forKey: "quality")) as? String
        let wendu = (infoData.object(forKey: "wendu")) as? String
        let ganmao = (infoData.object(forKey: "ganmao")) as? String
        today.numberOfLines = 0
        today.text = "时间：\(time ?? "") 湿度：\(shidu ?? "") 空气质量：\(quality ?? "") 温度：\(wendu ?? "") 感冒：\(ganmao ?? "")"
        
        var date = (infoData.object(forKey: "yesterday")as AnyObject).object(forKey: "date") as? String
        var sunrise = (infoData.object(forKey: "yesterday")as AnyObject).object(forKey: "sunrise") as? String
        var high = (infoData.object(forKey: "yesterday")as AnyObject).object(forKey: "high") as? String
        var low = (infoData.object(forKey: "yesterday")as AnyObject).object(forKey: "low") as? String
        var sunset = (infoData.object(forKey: "yesterday")as AnyObject).object(forKey: "sunset") as? String
        var aqi = (infoData.object(forKey: "yesterday")as AnyObject).object(forKey: "aqi") as? String
        var ymd = (infoData.object(forKey: "yesterday")as AnyObject).object(forKey: "ymd") as? String
        var week = (infoData.object(forKey: "yesterday")as AnyObject).object(forKey: "week") as? String
        var fx = (infoData.object(forKey: "yesterday")as AnyObject).object(forKey: "fx") as? String
        var fl = (infoData.object(forKey: "yesterday")as AnyObject).object(forKey: "fl") as? String
        var type = (infoData.object(forKey: "yesterday")as AnyObject).object(forKey: "type") as? String
        var notice = (infoData.object(forKey: "yesterday")as AnyObject).object(forKey: "notice") as? String
        yesterday.numberOfLines = 0
        yesterday.text = "时间:\(date ?? "") 日出：\(sunrise ?? "") 日落：\(sunset ?? "") \(high ?? "") \(low ?? "") \(aqi ?? "") 日期：\(ymd ?? "") \(week ?? "")  \(fx ?? "") \(fl ?? "") \(type ?? "") \(notice ?? "")"
    
        date = (((infoData.object(forKey: "forecast")as! NSArray)[0])as AnyObject).object(forKey: "date") as? String
        sunrise = (((infoData.object(forKey: "forecast")as! NSArray)[0])as AnyObject).object(forKey: "sunrise") as? String
        high = (((infoData.object(forKey: "forecast")as! NSArray)[0])as AnyObject).object(forKey: "high") as? String
        low = (((infoData.object(forKey: "forecast")as! NSArray)[0])as AnyObject).object(forKey: "low") as? String
        sunset = (((infoData.object(forKey: "forecast")as! NSArray)[0])as AnyObject).object(forKey: "sunset") as? String
        aqi = (((infoData.object(forKey: "forecast")as! NSArray)[0])as AnyObject).object(forKey: "aqi") as? String
        ymd = (((infoData.object(forKey: "forecast")as! NSArray)[0])as AnyObject).object(forKey: "ymd") as? String
        week = (((infoData.object(forKey: "forecast")as! NSArray)[0])as AnyObject).object(forKey: "week") as? String
        fx = (((infoData.object(forKey: "forecast")as! NSArray)[0])as AnyObject).object(forKey: "fx") as? String
        fl = (((infoData.object(forKey: "forecast")as! NSArray)[0])as AnyObject).object(forKey: "fl") as? String
        type = (((infoData.object(forKey: "forecast")as! NSArray)[0])as AnyObject).object(forKey: "type") as? String
        notice = (((infoData.object(forKey: "forecast")as! NSArray)[0])as AnyObject).object(forKey: "notice") as? String
        farword.numberOfLines = 0
        farword.text = "时间:\(date ?? "") 日出：\(sunrise ?? "") 日落：\(sunset ?? "") \(high ?? "") \(low ?? "") \(aqi ?? "") 日期：\(ymd ?? "") \(week ?? "")  \(fx ?? "") \(fl ?? "") \(type ?? "") \(notice ?? "")"
        
        date = (((infoData.object(forKey: "forecast")as! NSArray)[1])as AnyObject).object(forKey: "date") as? String
        sunrise = (((infoData.object(forKey: "forecast")as! NSArray)[1])as AnyObject).object(forKey: "sunrise") as? String
        high = (((infoData.object(forKey: "forecast")as! NSArray)[1])as AnyObject).object(forKey: "high") as? String
        low = (((infoData.object(forKey: "forecast")as! NSArray)[1])as AnyObject).object(forKey: "low") as? String
        sunset = (((infoData.object(forKey: "forecast")as! NSArray)[1])as AnyObject).object(forKey: "sunset") as? String
        aqi = (((infoData.object(forKey: "forecast")as! NSArray)[1])as AnyObject).object(forKey: "aqi") as? String
        ymd = (((infoData.object(forKey: "forecast")as! NSArray)[1])as AnyObject).object(forKey: "ymd") as? String
        week = (((infoData.object(forKey: "forecast")as! NSArray)[1])as AnyObject).object(forKey: "week") as? String
        fx = (((infoData.object(forKey: "forecast")as! NSArray)[1])as AnyObject).object(forKey: "fx") as? String
        fl = (((infoData.object(forKey: "forecast")as! NSArray)[1])as AnyObject).object(forKey: "fl") as? String
        type = (((infoData.object(forKey: "forecast")as! NSArray)[1])as AnyObject).object(forKey: "type") as? String
        notice = (((infoData.object(forKey: "forecast")as! NSArray)[1])as AnyObject).object(forKey: "notice") as? String
        farword1.numberOfLines = 0
        farword1.text = "时间:\(date ?? "") 日出：\(sunrise ?? "") 日落：\(sunset ?? "") \(high ?? "") \(low ?? "") \(aqi ?? "") 日期：\(ymd ?? "") \(week ?? "")  \(fx ?? "") \(fl ?? "") \(type ?? "") \(notice ?? "")"
        
        date = (((infoData.object(forKey: "forecast")as! NSArray)[2])as AnyObject).object(forKey: "date") as? String
        sunrise = (((infoData.object(forKey: "forecast")as! NSArray)[2])as AnyObject).object(forKey: "sunrise") as? String
        high = (((infoData.object(forKey: "forecast")as! NSArray)[2])as AnyObject).object(forKey: "high") as? String
        low = (((infoData.object(forKey: "forecast")as! NSArray)[2])as AnyObject).object(forKey: "low") as? String
        sunset = (((infoData.object(forKey: "forecast")as! NSArray)[2])as AnyObject).object(forKey: "sunset") as? String
        aqi = (((infoData.object(forKey: "forecast")as! NSArray)[2])as AnyObject).object(forKey: "aqi") as? String
        ymd = (((infoData.object(forKey: "forecast")as! NSArray)[2])as AnyObject).object(forKey: "ymd") as? String
        week = (((infoData.object(forKey: "forecast")as! NSArray)[2])as AnyObject).object(forKey: "week") as? String
        fx = (((infoData.object(forKey: "forecast")as! NSArray)[2])as AnyObject).object(forKey: "fx") as? String
        fl = (((infoData.object(forKey: "forecast")as! NSArray)[2])as AnyObject).object(forKey: "fl") as? String
        type = (((infoData.object(forKey: "forecast")as! NSArray)[2])as AnyObject).object(forKey: "type") as? String
        notice = (((infoData.object(forKey: "forecast")as! NSArray)[2])as AnyObject).object(forKey: "notice") as? String
        farword2.numberOfLines = 0
        farword2.text = "时间:\(date ?? "") 日出：\(sunrise ?? "") 日落：\(sunset ?? "") \(high ?? "") \(low ?? "") \(aqi ?? "") 日期：\(ymd ?? "") \(week ?? "")  \(fx ?? "") \(fl ?? "") \(type ?? "") \(notice ?? "")"
    
        date = (((infoData.object(forKey: "forecast")as! NSArray)[3])as AnyObject).object(forKey: "date") as? String
        sunrise = (((infoData.object(forKey: "forecast")as! NSArray)[3])as AnyObject).object(forKey: "sunrise") as? String
        high = (((infoData.object(forKey: "forecast")as! NSArray)[3])as AnyObject).object(forKey: "high") as? String
        low = (((infoData.object(forKey: "forecast")as! NSArray)[3])as AnyObject).object(forKey: "low") as? String
        sunset = (((infoData.object(forKey: "forecast")as! NSArray)[3])as AnyObject).object(forKey: "sunset") as? String
        aqi = (((infoData.object(forKey: "forecast")as! NSArray)[3])as AnyObject).object(forKey: "aqi") as? String
        ymd = (((infoData.object(forKey: "forecast")as! NSArray)[3])as AnyObject).object(forKey: "ymd") as? String
        week = (((infoData.object(forKey: "forecast")as! NSArray)[3])as AnyObject).object(forKey: "week") as? String
        fx = (((infoData.object(forKey: "forecast")as! NSArray)[3])as AnyObject).object(forKey: "fx") as? String
        fl = (((infoData.object(forKey: "forecast")as! NSArray)[3])as AnyObject).object(forKey: "fl") as? String
        type = (((infoData.object(forKey: "forecast")as! NSArray)[3])as AnyObject).object(forKey: "type") as? String
        notice = (((infoData.object(forKey: "forecast")as! NSArray)[3])as AnyObject).object(forKey: "notice") as? String
        farword3.numberOfLines = 0
        farword3.text = "时间:\(date ?? "") 日出：\(sunrise ?? "") 日落：\(sunset ?? "") \(high ?? "") \(low ?? "") \(aqi ?? "") 日期：\(ymd ?? "") \(week ?? "")  \(fx ?? "") \(fl ?? "") \(type ?? "") \(notice ?? "")"
    
        date = (((infoData.object(forKey: "forecast")as! NSArray)[4])as AnyObject).object(forKey: "date") as? String
        sunrise = (((infoData.object(forKey: "forecast")as! NSArray)[4])as AnyObject).object(forKey: "sunrise") as? String
        high = (((infoData.object(forKey: "forecast")as! NSArray)[4])as AnyObject).object(forKey: "high") as? String
        low = (((infoData.object(forKey: "forecast")as! NSArray)[4])as AnyObject).object(forKey: "low") as? String
        sunset = (((infoData.object(forKey: "forecast")as! NSArray)[4])as AnyObject).object(forKey: "sunset") as? String
        aqi = (((infoData.object(forKey: "forecast")as! NSArray)[4])as AnyObject).object(forKey: "aqi") as? String
        ymd = (((infoData.object(forKey: "forecast")as! NSArray)[4])as AnyObject).object(forKey: "ymd") as? String
        week = (((infoData.object(forKey: "forecast")as! NSArray)[4])as AnyObject).object(forKey: "week") as? String
        fx = (((infoData.object(forKey: "forecast")as! NSArray)[4])as AnyObject).object(forKey: "fx") as? String
        fl = (((infoData.object(forKey: "forecast")as! NSArray)[4])as AnyObject).object(forKey: "fl") as? String
        type = (((infoData.object(forKey: "forecast")as! NSArray)[4])as AnyObject).object(forKey: "type") as? String
        notice = (((infoData.object(forKey: "forecast")as! NSArray)[4])as AnyObject).object(forKey: "notice") as? String
        farword4.numberOfLines = 0
        farword4.text = "时间:\(date ?? "") 日出：\(sunrise ?? "") 日落：\(sunset ?? "") \(high ?? "") \(low ?? "") \(aqi ?? "") 日期：\(ymd ?? "") \(week ?? "")  \(fx ?? "") \(fl ?? "") \(type ?? "") \(notice ?? "")"
    
    
    
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

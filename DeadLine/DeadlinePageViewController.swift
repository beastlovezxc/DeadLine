//
//  DeadlinePageViewController.swift
//  DeadLine
//
//  Created by Bean on 16/7/14.
//  Copyright © 2016年 Bean. All rights reserved.
//

import UIKit
import ISTimeline

class DeadlinePageViewController: UIViewController {

    @IBOutlet var newButton: UIButton!
    var frame: CGRect!
    var timeline: ISTimeline!
    var points: [ISPoint] = []
    var datePicker: UIDatePicker!
    
    @IBAction func newButtonClick(sender: UIButton!) {
        
        newButton.hidden = true
        frame = CGRectMake(15, 80, UIScreen.mainScreen().bounds.width - 30, UIScreen.mainScreen().bounds.height )
        timeline = ISTimeline(frame: frame)
        timeline.backgroundColor = .lightGrayColor()

        let newPoint = ISPoint(title: "新的时间点")
        newPoint.description = "23123"
        newPoint.touchUpInside = {(point:ISPoint) in
            self.touchUpInside1()
        }
        newPoint.lineColor = .blackColor()
        points.append(newPoint)
        timeline.points.append(newPoint)
        self.view.addSubview(timeline)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        

      //  self.view.addSubview(timeline)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func touchUpInside1() -> Void{

        let newPoint = ISPoint(title: "新的时间点")
        datePicker = UIDatePicker(frame: CGRectMake(0, self.view.frame.height - 300, self.view.frame.width, 300))
        datePicker.datePickerMode = UIDatePickerMode.DateAndTime
        datePicker.minuteInterval = 5
        
        var dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        var nowDate = NSDate()
        var timeFormatter = NSDateFormatter()
        timeFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        var strNowTime = timeFormatter.stringFromDate(nowDate) as String
        var minDate = dateFormatter.dateFromString(strNowTime)
        var maxDate = dateFormatter.dateFromString("2099-12-31 23:59:59")
        datePicker.maximumDate = maxDate
        datePicker.minimumDate = minDate
        datePicker.date = NSDate()
        datePicker.addTarget(self, action: Selector("datePickerValueChange:"), forControlEvents: .ValueChanged)
        self.view.addSubview(datePicker)
        
    }
    func datePickerValueChange(sender: UIDatePicker) {
       // print("date select: \(sender.date)")
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

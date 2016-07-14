//
//  ViewController.swift
//  DeadLine
//
//  Created by Bean on 16/7/14.
//  Copyright © 2016年 Bean. All rights reserved.
//

import UIKit
import ISTimeline

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let frame = CGRectMake(15, 20, 400, 500)
//        
//        let timeline = ISTimeline(frame: frame)
//        timeline.backgroundColor = .whiteColor()
//        timeline.bubbleColor = .grayColor()
//        timeline.descriptionColor = .grayColor()
//        let point1 = ISPoint(title: "5:30 AM")
//        point1.description = "my awesome description1"
//        point1.fill = false
//        point1.lineColor = .blackColor()
//        point1.pointColor = .blackColor()
//        
//        let point2 = ISPoint(title: "6:30 AM")
//        point2.description = "my awesome description2"
//        point2.lineColor = .greenColor()
//        point2.pointColor = .greenColor()
//        point2.fill = true
//        
//        let point3 = ISPoint(title: "11:30 AM")
//        point3.description = "my awesome description3"
//        point3.lineColor = .redColor()
//        point3.pointColor = .redColor()
//        
//        timeline.points.append(point1)
//        timeline.points.append(point2)
//        timeline.points.append(point3)
//        
//        point3.touchUpInside = {
//            (point: ISPoint) in
//            let point4 = ISPoint(title: "12:30 AM")
//            point4.description = "my ssss"
//            point4.lineColor = .redColor()
//            point4.pointColor = .redColor()
//            timeline.points.append(point4)
//        }
//        let timeline = ISTimeline(frame: frame)
//        timeline.backgroundColor = .whiteColor()
//        timeline.bubbleColor = .init(red: 0.95, green: 0.95, blue: 0.95, alpha: 1.0)
//        timeline.titleColor = .blackColor()
//        timeline.descriptionColor = .darkTextColor()
//        timeline.pointDiameter = 7.0
//        timeline.lineWidth = 2.0
//        timeline.bubbleRadius = 0.0
//        
//        self.view.addSubview(timeline)
//        
//        for i in 0...9 {
//            let point = ISPoint(title: "point \(i)")
//            point.description = "my awesome description"
//            point.lineColor = i % 2 == 0 ? .redColor() : .greenColor()
//            point.pointColor = point.lineColor
//            point.touchUpInside =
//                { (point:ISPoint) in
//                    print(point.title)
//            }
//            
//            timeline.points.append(point)
//        }
       // self.view.addSubview(timeline)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


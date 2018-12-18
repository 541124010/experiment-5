//
//  ThirdViewController.swift
//  xionghuan-10.18
//
//  Created by student on 2018/10/18.
//  Copyright © 2018年 student. All rights reserved.
//

import UIKit
class MyView:UIView{
    override func draw(_ rect:CGRect){
        let path=UIBezierPath()
        path.move(to:CGPoint(x:rect.size.width/2,y:0))
        path.addLine(to: CGPoint(x:rect.size.width,y:rect.size.height))
        path.addLine(to: CGPoint(x:0,y:rect.size.height))
        path.close();
        UIColor.green.setFill()
        path.fill()
    }
}
class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Third"
        self.view.backgroundColor = UIColor.orange
        var triangle:MyView?
        triangle=MyView(frame:CGRect(x:100,y:300,width:200,height:200))
        triangle?.backgroundColor=UIColor.black
        view.addSubview(triangle!)
        
        let button=UIButton(frame:CGRect(x:100,y:100,width:200,height:20))
        button.setTitle("click Me", for: .normal)
        button.setTitleColor(UIColor.purple, for: .normal)
        view.addSubview(button)
        button.addTarget(self, action: #selector(clicked), for: .touchUpInside)
      
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func clicked(){
        print("l am clicked")
        UIView.animate(withDuration:1){
            if let triangle=self.view.subviews.first as? MyView{
                 triangle.center = CGPoint(x:self.view.bounds.width/2,y:0)
            }
            
        }
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

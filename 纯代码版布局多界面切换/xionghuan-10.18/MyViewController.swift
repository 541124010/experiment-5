//
//  MyViewController.swift
//  xionghuan-10.18
//
//  Created by student on 2018/10/18.
//  Copyright © 2018年 student. All rights reserved.
//

import UIKit

class MyViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.yellow
        
        let label = UILabel(frame: CGRect(x: 200, y: 200, width: 200, height: 100))
        label.text = "Hello World!"
        label.backgroundColor = UIColor.blue
        label.textAlignment = .center
        label.center = view.center
        view.addSubview(label)
        
        let button=UIButton(frame:CGRect(x:100,y:100,width:200,height:20))
        button.setTitle("click me",for:.normal)
        button.setTitleColor(UIColor.red, for: .normal)
        view.addSubview(button)
        button.addTarget(self, action: #selector(btnClicked), for: .touchUpInside)
        self.title="first"
        print("viewdidload")
    }
    
	
    @IBAction func btnClicked(){

        if let label=view.subviews.first as?  UILabel{
            label.text="l am clicked"
        }
		
        self.navigationController?.pushViewController(SecondViewController(), animated: true)
//        present(SecondViewController(), animated: true, completion: nil)
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

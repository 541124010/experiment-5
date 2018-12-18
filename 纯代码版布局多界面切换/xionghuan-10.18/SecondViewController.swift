//
//  SecondViewController.swift
//  xionghuan-10.18
//
//  Created by student on 2018/10/18.
//  Copyright © 2018年 student. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor=UIColor.green
        let imageView=UIImageView(frame:CGRect(x:0,y:100,width:400,height:400))
        imageView.image=UIImage(named:"bear")
        view.addSubview(imageView)
        let button=UIButton(frame:CGRect(x:100,y:100,width:200,height:20))
        button.setTitle("click Me", for: .normal)
        button.setTitleColor(UIColor.red, for: .normal)
        view.addSubview(button)
        button.addTarget(self, action: #selector(btnClicked), for: .touchUpInside)
        self.title = "Second"
        // Do any additional setup after loading the view.
    }
    @IBAction func btnClicked(){
        navigationController?.pushViewController(ThirdViewController(), animated: true)
//        presentingViewController?.dismiss(animated: true, completion:nil)
//
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

//
//  TwoViewController.swift
//  SwiftProgNavController
//
//  Created by Elijah Gartin on 11/19/14.
//  Copyright (c) 2014 Thunder Rock. All rights reserved.
//

import UIKit
protocol TwoVCDelegate{
	func didFinishTwoVC(controller:TwoViewController)
}

class TwoViewController: UIViewController {
	
	var delegate:TwoVCDelegate! = nil
	var vcCount:Int = 0
	@IBAction func nextButton(sender: UIButton) {
		let vc = ThreeViewController(nibName: "ThreeViewController", bundle: nil)
		navigationController?.pushViewController(vc, animated: true )
	}
	@IBAction func backButton(sender: UIButton) {
		//navigationController?.popViewControllerAnimated(true)
		delegate.didFinishTwoVC(self)
	}
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
		super.viewDidLoad()
		navigationItem.title = "Count: \(vcCount)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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

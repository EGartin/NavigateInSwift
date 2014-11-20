//
//  ViewController.swift
//  SwiftProgNavController
//
//  Created by Elijah Gartin on 11/19/14.
//  Copyright (c) 2014 Thunder Rock. All rights reserved.
//

import UIKit

class ViewController: UIViewController,TwoVCDelegate {
	//We assign an integer property vcCount to a value of 0
	var vcCount:Int = 0{
		didSet{
			navigationItem.title = "Count: \(vcCount)"
		}
	}
	//Function to adopt the delegate protocol
	func didFinishTwoVC(controller: TwoViewController){
		//take the current value in the vcCount property in TwoViewController and increment it.
		self.vcCount = controller.vcCount + 1
		controller.navigationController?.popViewControllerAnimated(true)
	}
	@IBAction func nextButton(sender: UIButton) {
		let vc = TwoViewController(nibName: "TwoViewController", bundle: nil)
		//Increment the Count
		//self.vcCount = self.vcCount+1
		
		//Send property to "TwoViewController"
		vc.vcCount = self.vcCount
		//Add the assignment of the TwoViewController's delegate to current view controller
		vc.delegate = self
		navigationController?.pushViewController(vc, animated: true)
	}
	
	@IBOutlet weak var fourFiveSwitch: UISwitch!
	
	@IBAction func fourButton(sender: UIButton) {
		if fourFiveSwitch.on{
			performSegueWithIdentifier("four", sender: self)

		}else{
			performSegueWithIdentifier("five", sender: self)
		}
		
	}
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}


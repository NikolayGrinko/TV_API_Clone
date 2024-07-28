//
//  SettingViewController.swift
//  TV_API_Clone
//
//  Created by Николай Гринько on 28.07.2024.
//

import UIKit

class SettingViewController: UIViewController {

	private var topInsetView = UIView()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		topInsetView.backgroundColor = .white
		view.addSubview(topInsetView)
		
		navigationController?.navigationBar.backgroundColor = .white
		view.backgroundColor = .green
	}
	
	override func viewDidLayoutSubviews() {
		super.viewDidLayoutSubviews()
		topInsetView.frame = CGRect(x: 0, y: 0,
									width: view.frame.width,
									height: view.safeAreaInsets.top)
	}
	

}

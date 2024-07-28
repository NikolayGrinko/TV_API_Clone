//
//  HomeViewController.swift
//  TV_API_Clone
//
//  Created by Николай Гринько on 28.07.2024.
//

import Foundation
import UIKit


class HomeViewController: UIViewController, UIScrollViewDelegate {
	
	private var topInsetView = UIView()
	
	private lazy var scrollView: UIScrollView = {
		let scrollView = UIScrollView()
		scrollView.contentSize = CGSize(width: view.bounds.width, height: 2000)
		return scrollView
	}()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		view.backgroundColor = .systemBackground
		topInsetView.backgroundColor = .systemGray6
		view.addSubview(topInsetView)
		view.addSubview(scrollView)
		//view = scrollView
		scrollView.delegate = self
		scrollView.backgroundColor = .systemGray6
		navigationController?.navigationBar.backgroundColor = .systemGray6
		
	}
	
	override func viewDidLayoutSubviews() {
		super.viewDidLayoutSubviews()
		topInsetView.frame = CGRect(x: 0, y: 0,
									width: view.frame.width,
									height: view.safeAreaInsets.top - 40)
	}
}

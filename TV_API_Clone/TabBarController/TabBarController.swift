//
//  TabBarController.swift
//  TV_API_Clone
//
//  Created by Николай Гринько on 28.07.2024.
//

import Foundation
import UIKit


class TabBarController: UITabBarController {
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		setupController()
	}
	
	
		private func setupController() {
			
			
			 let home = HomeViewController()
			home.title = "Home"
			let movie = MovieViewController()
			movie.title = "Movie"
			let setting = SettingViewController()
			setting.title = "Setting"
			let profile = ProfileViewController()
			profile.title = "Profile"
			
			
			
			home.navigationItem.largeTitleDisplayMode = .always
			movie.navigationItem.largeTitleDisplayMode = .always
			setting.navigationItem.largeTitleDisplayMode = .always
			profile.navigationItem.largeTitleDisplayMode = .always
			
			let nav1 = UINavigationController(rootViewController: home)
			let nav2 = UINavigationController(rootViewController: movie)
			let nav3 = UINavigationController(rootViewController: setting)
			let nav4 = UINavigationController(rootViewController: profile)
			 
			nav1.navigationBar.prefersLargeTitles = true
			nav2.navigationBar.prefersLargeTitles = true
			nav3.navigationBar.prefersLargeTitles = true
			nav4.navigationBar.prefersLargeTitles = true
			
			nav1.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), tag: 1)
			nav2.tabBarItem = UITabBarItem(title: "Movie", image: UIImage(systemName: "play.circle.fill"), tag: 2)
			nav3.tabBarItem = UITabBarItem(title: "Setting", image: UIImage(systemName: "bookmark.fill"), tag: 3)
			nav4.tabBarItem = UITabBarItem(title: "Profile", image: UIImage(systemName: "person.circle"), tag: 4)
			
			
			setViewControllers([nav1, nav2, nav3, nav4], animated: true)
			
			
			
		 }
		 
		 
		 // MARK: animations tap element tabBar_1
		 override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
			 self.SimpleAnimationWhereSelectItem(item)
			 
		 }
		 // MARK: animations tap element tabBar_2
		 func SimpleAnimationWhereSelectItem(_ item: UIBarItem) {
			 guard let barItemView = item.value(forKey: "view") as? UIView else {return}
			 
			 let timeInterval: TimeInterval = 0.5
			 let propertyAnimation = UIViewPropertyAnimator(duration: timeInterval, dampingRatio: 0.5) {
				 barItemView.transform = CGAffineTransform.identity.scaledBy(x: 1.2, y: 1.2)
			 }
			 propertyAnimation.addAnimations({barItemView.transform = .identity}, delayFactor: CGFloat(timeInterval))
			 propertyAnimation.startAnimation()
		 }
		 
	 }


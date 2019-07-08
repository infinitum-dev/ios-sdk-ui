//
//  SlideshowViewController.swift
//  Infinitum_UI
//
//  Created by Tiago Carvalho on 03/07/2019.
//  Copyright © 2019 Tiago Carvalho. All rights reserved.
//

import Foundation
import UIKit

protocol SlideshowPageController {
}

class SlideshowViewController: UIViewController {
    
    var params: SlideshowParams!
    var pages = [UIViewController]()
    
    var pageViewController: UIPageViewController!
    
    let pageControl = UIPageControl()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = params.layout.background
        
        initPageControl()
        
        self.pageViewController = UIPageViewController(transitionStyle: .scroll, navigationOrientation: .horizontal, options: nil)
        self.pageViewController.dataSource = self
        self.pageViewController.delegate = self
        self.addChild(self.pageViewController)
        
        pageViewController.view.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(pageViewController.view)
        
        pageViewController.view.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        pageViewController.view.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        pageViewController.view.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        pageViewController.view.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        self.pageViewController.didMove(toParent: self)
        
        createControllers()
    }
    
    fileprivate func createControllers() {
        for obj in params.objectList {
            pages.append(Utils.getPageFromType(type: params.type, object: obj, layout: params.layout) as! UIViewController)
        }
        displaySlideshow()
    }
    
    fileprivate func displaySlideshow() {
        if let firstViewController = self.pages.first {
            pageViewController.setViewControllers([firstViewController],
                               direction: .forward,
                               animated: true,
                               completion: nil)
        }
        self.pageControl.numberOfPages = pages.count
        self.view.bringSubviewToFront(self.pageControl)
    }
    
    fileprivate func initPageControl() {
        self.pageControl.currentPageIndicatorTintColor = UIColor.lightGray
        self.pageControl.pageIndicatorTintColor = UIColor.black
        self.pageControl.numberOfPages = params.objectList.count
        self.pageControl.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(self.pageControl)
        
        self.pageControl.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -5).isActive = true
        self.pageControl.heightAnchor.constraint(equalToConstant: 20).isActive = true
        pageControl.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        pageControl.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        self.pageControl.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
    }
    
}

extension SlideshowViewController: UIPageViewControllerDataSource, UIPageViewControllerDelegate {
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        if let index = self.pages.firstIndex(of: viewController) {
            if index == 0 {
                // wrap to last page in array
                return self.pages.last
            } else {
                // go to previous page in array
                return self.pages[index - 1]
            }
        }
        return nil
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        if let viewControllerIndex = self.pages.firstIndex(of: viewController) {
            if viewControllerIndex < self.pages.count - 1 {
                // go to next page in array
                return self.pages[viewControllerIndex + 1]
            } else {
                // wrap to first page in array
                return self.pages.first
            }
        }
        return nil
    }
    
    func presentationCountForPageViewController(pageViewController: UIPageViewController) -> Int {
        return params.objectList.count
    }
    
    func presentationIndexForPageViewController(pageViewController: UIPageViewController) -> Int {
        return 0
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool) {

        // set the pageControl.currentPage to the index of the current viewController in pages
        if let viewControllers = pageViewController.viewControllers {
            if let viewControllerIndex = self.pages.firstIndex(of: viewControllers[0]) {
                self.pageControl.currentPage = viewControllerIndex
            }
        }
    }
}

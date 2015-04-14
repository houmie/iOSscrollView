//
//  ViewController.h
//  ScrollViewExample
//
//  Created by Houman Khorasani on 14/04/2015.
//  Copyright (c) 2015 TEST. All rights reserved.
//

#import <UIKit/UIKit.h>
@class News, NewsView;


@interface ViewController : UIViewController

@property (strong) News *news;
@property (assign, nonatomic) NSInteger index;
@property (nonatomic) NewsView *newsView;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

- (instancetype)initWithNews:(News*) news;

@end


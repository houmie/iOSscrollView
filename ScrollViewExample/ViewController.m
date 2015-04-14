//
//  ViewController.m
//  ScrollViewExample
//
//  Created by Houman Khorasani on 14/04/2015.
//  Copyright (c) 2015 TEST. All rights reserved.
//

#import "ViewController.h"
#import "News.h"
#import "NewsView.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (instancetype)initWithNews:(News *)news
{
    self = [super initWithNibName:@"NewsView" bundle:[NSBundle mainBundle]];
    if (self) {
        _news = news;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.newsView = (NewsView*)self.view;
    _newsView.newsHeader.text = _news.headLine;
    _newsView.newsBody.text = _news.body;
    NSURL *imageURL = [NSURL URLWithString:_news.imageUrlList[0]];
//    [_newsView.newsImage sd_setImageWithURL:imageURL placeholderImage:[UIImage imageNamed:@"Icon-72@2x.png"]];
    NSData *data = [NSData dataWithContentsOfURL:imageURL];
    UIImage *img = [[UIImage alloc] initWithData:data];
    _newsView.newsImage.image = img;
    self.scrollView.contentSize =CGSizeMake(320, 700);
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    //    self.scrollView.contentSize =CGSizeMake(500, 1000);
    self.scrollView.contentSize =CGSizeMake(320, 700);
}

@end

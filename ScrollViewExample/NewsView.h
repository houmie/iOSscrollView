//
//  NewsView.h
//  iTagNews
//
//  Created by Houman Khorasani on 12/04/2015.
//  Copyright (c) 2015 Venus Cloud Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NewsView : UIView
@property (weak, nonatomic) IBOutlet UILabel *newsHeader;
@property (weak, nonatomic) IBOutlet UILabel *newsBody;
@property (weak, nonatomic) IBOutlet UIImageView *newsImage;

@end

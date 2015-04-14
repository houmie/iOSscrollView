//
//  News.h
//  iTagNews
//
//  Created by Houman Khorasani on 07/03/2015.
//  Copyright (c) 2015 Venus Cloud Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface News : NSObject

@property NSString *newsID;
@property NSString *headLine;
@property NSString *source;
@property NSString *sourceUrl;
@property NSDate *publicationDatetime;
@property NSString *body;
@property NSString *summary;
@property NSArray *tagList;
@property NSArray *slugList;
@property NSInteger score;
@property NSArray *imageUrlList;
@property NSString *category;
@property float timestamp;
@property BOOL isDeleted;


-(id)initWithId:(NSString *)newId headLine:(NSString*)headline source:(NSString*)source sourceUrl:(NSString*)sourceUrl publicationDatetime:(NSDate*)publicationDatetime body:(NSString*)body summary:(NSString*)summary tagList:(NSArray*)tagList slugList:(NSArray*)slugList score:(NSInteger)score imageUrlList:(NSArray*)imageUrlList category:(NSString*)category timestamp:(float)timestamp isDeleted:(BOOL)isDeleted;

@end

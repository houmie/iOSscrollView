//
//  News.m
//  iTagNews
//
//  Created by Houman Khorasani on 07/03/2015.
//  Copyright (c) 2015 Venus Cloud Ltd. All rights reserved.
//

#import "News.h"

@implementation News


-(id)initWithId:(NSString *)newId headLine:(NSString *)headline source:(NSString *)source sourceUrl:(NSString *)sourceUrl publicationDatetime:(NSDate *)publicationDatetime body:(NSString *)body summary:(NSString *)summary tagList:(NSArray *)tagList slugList:(NSArray *)slugList score:(NSInteger)score imageUrlList:(NSArray *)imageUrlList category:(NSString *)category timestamp:(float)timestamp isDeleted:(BOOL)isDeleted
{
    self = [super init];
    if (self) {
        _newsID = newId;
        _headLine = [headline copy];
        _source = [source copy];
        _sourceUrl = [sourceUrl copy];
        _publicationDatetime = publicationDatetime;
        _body = [body copy];
        _summary = [summary copy];
        _tagList = tagList;
        _slugList = slugList;
        _score = score;
        _imageUrlList = imageUrlList;
        _category = category;
        _timestamp = timestamp;
        _isDeleted = isDeleted;
    }
    return self;
}


@end

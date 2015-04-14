//
//  NewsBuilder.h
//  iTagNews
//
//  Created by Houman Khorasani on 08/03/2015.
//  Copyright (c) 2015 Venus Cloud Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NewsBuilder : NSObject

- (NSArray *)newsFromJSON:(NSString *)objectNotation error:(NSError **)error;

@end

enum {
    NewsBuilderInvalidJSONError,
    NewsBuilderMissingDataError,
};

extern NSString *NewsBuilderErrorDomain;

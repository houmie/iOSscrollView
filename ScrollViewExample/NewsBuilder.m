//
//  NewsBuilder.m
//  iTagNews
//
//  Created by Houman Khorasani on 08/03/2015.
//  Copyright (c) 2015 Venus Cloud Ltd. All rights reserved.
//

#import "NewsBuilder.h"
#import "News.h"

@implementation NewsBuilder



-(NSArray *)newsFromJSON:(NSString *)objectNotation error:(NSError *__autoreleasing *)error
{
    NSParameterAssert(objectNotation != nil);
    NSData *unicodeNotation = [objectNotation dataUsingEncoding:NSUTF8StringEncoding];
    NSError *localError = nil;
    id jsonObject = [NSJSONSerialization JSONObjectWithData:unicodeNotation options:0 error:&localError];
    NSArray *jsonNews = (id)jsonObject;
    if (jsonNews == nil) {
        if (error != NULL) {
            *error = [NSError errorWithDomain:NewsBuilderErrorDomain code:NewsBuilderInvalidJSONError userInfo:nil];
        }
        return nil;
    }
    if ([jsonNews count] == 0) {
        if (error != NULL) {
            *error = [NSError errorWithDomain:NewsBuilderErrorDomain code:NewsBuilderMissingDataError userInfo:nil];
        }
        return nil;
    }
    NSMutableArray *newsResult = [NSMutableArray arrayWithCapacity:[jsonNews count]];
    for (NSDictionary *parsedNews in jsonNews) {
        News *news = [News new];
        news.newsID = [parsedNews objectForKey:@"id"];
        news.body = [parsedNews objectForKey:@"body"];
        news.timestamp = [[parsedNews objectForKey:@"timestamp"] floatValue];
        news.headLine = [parsedNews objectForKey:@"head_line"];
        news.sourceUrl = [parsedNews objectForKey:@"source_url"];
        news.slugList = [parsedNews objectForKey:@"slug_list"];
        news.imageUrlList = [parsedNews objectForKey:@"image_url_list"];
        NSDateFormatter *dateformatter = [NSDateFormatter new];
        [dateformatter setDateFormat:@"EEE, dd MMM yyyy HH:mm:ss Z"];
        NSDate *date = [dateformatter dateFromString:[parsedNews objectForKey:@"publication_date_time"]];
        news.publicationDatetime = date;
//        news.publicationDatetime = [NSDate dateWithTimeIntervalSince1970:[[parsedNews objectForKey:@"publication_date_time"] doubleValue]];
        news.category = [parsedNews objectForKey:@"category"];
        news.isDeleted = [parsedNews objectForKey:@"is_deleted"];
        news.summary = [parsedNews objectForKey:@"summary"];
        news.source = [parsedNews objectForKey:@"source"];
        news.score = [[parsedNews objectForKey:@"score"] integerValue];
        news.tagList = [parsedNews objectForKey:@"tag_list"];
        [newsResult addObject:news];
    }
    return [newsResult copy];
}

@end

NSString *NewsBuilderErrorDomain = @"NewsBuilderErrorDomain";


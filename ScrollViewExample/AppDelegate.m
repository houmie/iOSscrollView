//
//  AppDelegate.m
//  ScrollViewExample
//
//  Created by Houman Khorasani on 14/04/2015.
//  Copyright (c) 2015 TEST. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "NewsBuilder.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    
    self.navigationController = [[UINavigationController alloc] init];

    
    NewsBuilder *newsBuilder = [NewsBuilder new];
    
    NSString *jsonString = @"[{"
    @"\"id\": \"1\","
    @"\"body\": \"China's monthly trade surplus hit a record $60.6bn (Â£40.3bn) in February, as exports grew and imports slid back. Exports "
    @"were up 48.3% year on year to $169.2bn, and imports dropped by a fifth to $108.6bn, said the country's General Administration of "
    @"Customs. The growth in exports was well ahead of analyst expectations. China's economy grew by 7.4% in 2014, its weakest for "
    @"almost a quarter of a century, and recent indicators show signs the slowdown is continuing. Customs officials put the surge in "
    @"exports down to a flurry of activities by companies to get orders processed before the Chinese New Year, which fell in the "
    @"middle of February this year. 'Affected by the Spring Festival factors, export companies in the country again rushed to export "
    @"ahead of the holiday and only resumed working after it,' a statement said. The surplus figure stood at $8.9bn in the same period "
    @"last year. But he Lunar New Year had fallen on 31 January in 2014, followed by a week-long national holiday, which meant it "
    @"provided a weak comparison with this February. For the first two months of the year, China's trade surplus has totalled $120.7bn,"
    @"following the $60bn surplus in January. 'We still see strong headwinds facing China's exports this year,' said ANZ economists "
    @"Liu Ligang and Zhou Hao in a research note. Premier Li Keqiang on Thursday announced a lowered growth target of 'approximately 7%"
    @"for this year, and cut the trade growth target for 2015 to 'around 6%'.\","
    @"\"timestamp\": 1425816012.73554,"
    @"\"head_line\": \"China trade surplus hits new record\","
    @"\"source_url\": \"http://www.bbc.co.uk/news/business-31787698#sa-ns_mchannel=rss&ns_source=PublicRSS20-sa\","
    @"\"slug_list\": [\"economics\",\"balance-of-trade\",\"economy-of-the-peoples-republic-of-china\"],"
    @"\"publication_date\": \"2015-03-08\","
    @"\"image_url_list\": [\"http://news.bbcimg.co.uk/media/images/78414000/jpg/_78414531_456054086.jpg\"],"
    @"\"category\": \"world\","
    @"\"is_deleted\": true,"
    @"\"summary\": \"China's economy grew by 7.4% in 2014, its weakest for almost a quarter of a century, and recent indicators show signs"
    @"the slowdown is continuing. 'We still see strong headwinds facing China's exports this year,' said ANZ economists Liu Ligang "
    @"and Zhou Hao in a research note.\","
    @"\"source\": \"BBC\","
    @"\"score\": 1,"
    @"\"publication_date_time\": \"Sun, 08 Mar 2015 10:32:12 +0000\","
    @"\"tag_list\": [\"Economics\",\"Balance of trade\",\"Economy of the People's Republic of China\"]"
    @"},]";
    
    NSArray *n1 = [newsBuilder newsFromJSON:jsonString error:NULL];
    ViewController *tn = [[ViewController alloc] initWithNews:n1[0]];
    self.navigationController.viewControllers = [NSArray arrayWithObject:tn];
    self.window.rootViewController = self.navigationController;
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end

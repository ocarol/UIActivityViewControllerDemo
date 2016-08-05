//
//  shareData.m
//  3
//
//  Created by ocarol on 16/8/5.
//  Copyright © 2016年 ocarol. All rights reserved.
//

#import "shareData.h"

@implementation shareData
-(id)activityViewControllerPlaceholderItem:(UIActivityViewController *)activityViewController {
    return self.data;
}

-(id)activityViewController:(UIActivityViewController *)activityViewController itemForActivityType:(NSString *)activityType {
    if ([activityType isEqualToString:UIActivityTypeAirDrop]) {
        return self.data;
    }
    return self.url;
}

-(NSString*)activityViewController:(UIActivityViewController *)activityViewController subjectForActivityType:(NSString *)activityType {
    return @"分享数据";
}

-(NSString*)activityViewController:(UIActivityViewController *)activityViewController dataTypeIdentifierForActivityType:(NSString *)activityType {
    if ([activityType isEqualToString:UIActivityTypeAirDrop]) {
        return @"test";
    }
    return nil;
}
@end

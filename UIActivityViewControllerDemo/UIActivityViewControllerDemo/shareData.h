//
//  shareData.h
//  3
//
//  Created by ocarol on 16/8/5.
//  Copyright © 2016年 ocarol. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface shareData : NSObject<UIActivityItemSource>
@property (nonatomic, strong) NSData *data;
@property (nonatomic, strong) NSURL *url;
@end

//
//  WXMapViewComponent.m
//  WeexDemo
//
//  Created by guibao on 2016/12/16.
//  Copyright © 2016年 taobao. All rights reserved.
//

#import "WXMapViewComponent.h"

@interface WXMapViewComponent()

@property (nonatomic, strong) MAMapView *mapView;

@end

@implementation WXMapViewComponent

- (instancetype)initWithRef:(NSString *)ref type:(NSString *)type styles:(NSDictionary *)styles attributes:(NSDictionary *)attributes events:(NSArray *)events weexInstance:(WXSDKInstance *)weexInstance
{
    self = [super initWithRef:ref type:type styles:styles attributes:attributes events:events weexInstance:weexInstance];
    if (self) {
        
        UIWindow *window = [UIApplication sharedApplication].keyWindow;
        CGSize windowSize = window.rootViewController.view.frame.size;
        self.mapView = [[MAMapView alloc] initWithFrame:CGRectMake(0, 0, windowSize.width, windowSize.height)];
        self.mapView.delegate = self;
        
    }
    
    return self;
}

- (UIView *)loadView {
    
    return self.mapView;
}


@end

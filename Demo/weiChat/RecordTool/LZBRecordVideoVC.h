//
//  LZBRecordVideoVC.h
//  LZBRecordingVideo
//
//  Created by Apple on 2017/2/26.
//  Copyright © 2017年 Apple. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^ReturnVideoPathBlock)(NSString *);
@interface LZBRecordVideoVC : UIViewController
@property (nonatomic, copy) ReturnVideoPathBlock videoBlock; // <#type#>
@end

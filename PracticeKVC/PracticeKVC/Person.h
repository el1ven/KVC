//
//  Person.h
//  PracticeKVC
//
//  Created by el1ven on 14-3-11.
//  Copyright (c) 2014年 el1ven. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Device.h"
@interface Person : NSObject
{
    @private
    NSString *pName;
    NSArray *ownDev;
    Device *dev;
}

@end

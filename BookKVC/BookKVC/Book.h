//
//  Book.h
//  BookKVC
//
//  Created by el1ven on 14-3-11.
//  Copyright (c) 2014年 el1ven. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Author.h"
@interface Book : NSObject
{
    @private
    NSString *bname;
    Author *author;//书的作者
    NSArray *relativeBooks;//相关的书籍
    float price;
}


@end

//
//  main.m
//  BookKVC
//
//  Created by el1ven on 14-3-11.
//  Copyright (c) 2014年 el1ven. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Book.h"
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        NSLog(@"Hello, World!");
        Book *book = [[Book alloc]init];
        Author *author = [[Author alloc]init];
        
        [author setValue:@"Jack" forKey:@"aname"];
        [book setValue:@"iPhone" forKey:@"bname"];
        [book setValue:author forKey:@"author"];
        //[book setValue:[NSNumber numberWithFloat:12.6] forKey:@"price"];//转换基本类型
        
        //NSNumber *price = [book valueForKey:@"price"];
        //NSLog(@"%@",price);
        
        
        
        //键值访问
        NSString *name1 = [book valueForKey:@"bname"];
        NSLog(@"书的名字是:%@",name1);
        
        //路径访问
        NSString *name2 = [book valueForKeyPath:@"author.aname"];
        NSLog(@"书的作者名字是:%@",name2);
        [book setValue:@"Tom" forKeyPath:@"author.aname"]; //给书作者改名字
        NSString *name3 = [book valueForKeyPath:@"author.aname"];
        NSLog(@"书的作者名字是:%@",name3);
        
        //一对多
        NSMutableArray *releBooks = [NSMutableArray arrayWithCapacity:3];
        for (int i = 0; i < 3;i++){
            Book *book = [[Book alloc]init];
            NSString *name = [NSString stringWithFormat:@"job_%d",i];
            [book setValue:name forKey:@"bname"];
            [book setValue:@(12+i) forKey:@"price"];
            [releBooks addObject:book];
            
        }
        
        [book setValue:releBooks forKey:@"relativeBooks"];
        //第一种方法
        //NSArray *names = [book valueForKeyPath:@"relativeBooks.bname"];
        //第二种方法
        NSArray *names = [releBooks valueForKeyPath:@"bname"];
        NSLog(@"相关书记名字为:%@",names);
        //运算的字段必须是数值类型NSNumber或是基本数据类型，返回的也是NSNumber
        NSNumber *sum = [book valueForKeyPath:@"relativeBooks.@avg.price"];
        //NSNumber *sum = [releBooks valueForKeyPath:@"@sum.price"];
        NSLog(@"相关书记名字为:%@",sum);
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    }
    return 0;
}


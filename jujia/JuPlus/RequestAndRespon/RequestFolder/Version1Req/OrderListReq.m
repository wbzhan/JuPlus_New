//
//  OrderListReq.m
//  JuPlus
//
//  Created by admin on 15/7/8.
//  Copyright (c) 2015年 居+. All rights reserved.
//

#import "OrderListReq.h"

@implementation OrderListReq
-(id)init{
    self = [super init];
    if (self)
    {
        self.urlSeq = [[NSArray alloc] initWithObjects:@"ModuleName",@"FunctionName",TOKEN,@"pageNum",@"pageSize",nil];
        self.requestMethod = RequestMethod_GET;
        self.validParams = [[NSArray alloc] initWithObjects:@"ModuleName",@"FunctionName",nil];
        self.packDic = [[NSMutableDictionary alloc] initWithCapacity:0];
        self.path = [[NSString alloc] init];
    }
    [self setPath];
    return self;
}

-(void)setPath{
    
    [self setField:@"trans" forKey:@"ModuleName"];
    [self setField:@"list" forKey:@"FunctionName"];
}


@end

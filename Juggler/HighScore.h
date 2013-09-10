//
//  HighScore.h
//  Save Jeff!
//
//  Created by Jeremy Littel on 1/26/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface HighScore : NSObject {
	NSString *name;
	NSInteger score;
    
}

@property(nonatomic, retain)NSString *name;
@property(nonatomic)NSInteger score;

-(void)initWithName:(NSString *)NewName andScore:(NSInteger)NewScore;
-(void)setName:(NSString *)NewName andScore:(NSInteger)NewScore;

-(NSString *)getName;
-(NSInteger)getScore;
-(NSString *)getStringScore;

@end

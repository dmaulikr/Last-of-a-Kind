//
//  HighScore.m
//  Save Jeff!
//
//  Created by Jeremy Littel on 1/26/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "HighScore.h"
static inline BOOL IsEmpty(id thing) {
	return thing == nil
	|| ([thing respondsToSelector:@selector(length)]
		&& [(NSData *)thing length] == 0)
	|| ([thing respondsToSelector:@selector(count)]
		&& [(NSArray *)thing count] == 0);
}

@implementation HighScore

@synthesize name, score;

-(void)initWithName:(NSString *)newName andScore:(NSInteger)newScore{
	
	[self init];
	if (IsEmpty(newName)) {
		name = @"Unknown";
	}
	else {
		name = newName;
	}
	score = 0 + newScore;
    [name autorelease];
	
	
}
-(void)setName:(NSString *)NewName andScore:(NSInteger)NewScore{
	name = NewName;
	score = NewScore;
}

-(NSString *)getName{
  
    if (IsEmpty(name)) 
        name = @"Unknown";
    
 
	
	return name;
}
-(NSInteger)getScore{
	return score;
}
-(NSString *)getStringScore{
	NSString *stringScore = [NSString stringWithFormat:@"%i",score];
	
	return stringScore;
	
}

@end

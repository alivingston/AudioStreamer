//
//  NSBufferSlider.m
//  MacStreamingPlayer
//
//  Created by Bo Anderson on 11/02/2015.
//

#import "NSBufferSlider.h"
#import "NSBufferSliderCell.h"

@implementation NSBufferSlider

+ (void)initialize
{
    if (self == [NSBufferSlider class])
    {
        [self setCellClass:[NSBufferSliderCell class]];
    }
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    if ((self = [super initWithCoder:coder]))
    {
        [self setContinuous:NO];
    }
    return self;
}

- (void)setBufferValue:(double)bufferValue
{
    [[self cell] setBufferValue:MIN(bufferValue, 100.0)];
    [self setNeedsDisplay];
}


- (double)bufferValue
{
    return [[self cell] bufferValue];
}

- (void)setNeedsDisplayInRect:(NSRect)invalidRect
{
    [super setNeedsDisplayInRect:[self bounds]];
}

@end

#import <UIKit/UIKit.h>

// Домашний экран: иконка приложения
@interface SBIconView : UIView
@end

%hook SBIconView

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    %orig;

    static UIImpactFeedbackGenerator *generator;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        generator = [[UIImpactFeedbackGenerator alloc] initWithStyle:UIImpactFeedbackStyleLight];
    });

    [generator impactOccurred];
}

%end

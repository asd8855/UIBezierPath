//
//  CanvasView.m
//  UIBezierPath
//
//  Created by libo on 2017/2/7.
//  Copyright © 2017年 蝉鸣. All rights reserved.
//

#import "CanvasView.h"

@implementation CanvasView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void)drawRect:(CGRect)rect {

//    [self drawLine];
//    [self drawRectangle];
//    [self drawRectangleRound];
//    [self drawRectangleRound22];
//    [self drawRound];
//    [self drawArc];
//    [self drawBezierCurve1];
//    [self drawBezierCurve2];
//    [self drawPieChart];
//    [self drawPolygon];
//    [self drawPerson];
//    [self drawDoubleCircle];
    [self drawCAReplicatorLayer];
}


/**
 直线
 */
- (void)drawLine {
    
    [[UIColor redColor] set];
    UIBezierPath *linePath = [UIBezierPath bezierPath];
    
    //线宽
    linePath.lineWidth = 5.0f;
    //终点类型
    linePath.lineCapStyle = kCGLineCapRound;
    //交叉点类型
    linePath.lineJoinStyle = kCGLineJoinRound;
    //起点
    [linePath moveToPoint:CGPointMake(20, 100)];
    //绘制线条
    [linePath addLineToPoint:CGPointMake(200, 20)];
    
    [linePath stroke];
}


/**
 矩形
 */
- (void)drawRectangle {

    [[UIColor redColor] set];
    //创建矩形路径对象
    UIBezierPath *path = [UIBezierPath bezierPathWithRect:CGRectMake(50, 50, 150, 100)];
    path.lineWidth = 5.0f;
    path.lineCapStyle = kCGLineCapRound;
    path.lineJoinStyle = kCGLineCapRound;
    [path stroke];
}



/**
 圆角矩形
 */

- (void)drawRectangleRound {

    [[UIColor redColor] set];
    //创建圆角矩形路径对象
    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(20, 20, 150, 100) cornerRadius:30]; //圆角半径为30
    path.lineWidth = 5.0f;
    path.lineCapStyle = kCGLineCapRound;
    path.lineJoinStyle = kCGLineCapRound;
    
    [path stroke];
}


- (void)drawRectangleRound22 {
    
    [[UIColor redColor] set];
    
    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(20, 20, 150, 100) byRoundingCorners:UIRectCornerTopLeft cornerRadii:CGSizeMake(30, 30)];
    path.lineWidth = 5.0f;
    path.lineCapStyle = kCGLineCapRound;
    path.lineJoinStyle = kCGLineCapRound;
    
    [path stroke];
    
    
    /*
     corners:圆角位置  cornerRadii:圆角大小
     typedef NS_OPTIONS(NSUInteger, UIRectCorner) {
     UIRectCornerTopLeft     = 1 << 0,
     UIRectCornerTopRight    = 1 << 1,
     UIRectCornerBottomLeft  = 1 << 2,
     UIRectCornerBottomRight = 1 << 3,
     UIRectCornerAllCorners  = ~0UL
     };
     */
}


/**
 圆形 椭圆形
 */
- (void)drawRound {
    
    [[UIColor redColor] set];
    //创建圆形路径对象
    UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(50, 50, 100, 100)];
    path.lineWidth = 5.0f;
    path.lineCapStyle = kCGLineCapRound;
    path.lineJoinStyle = kCGLineCapRound;
    
    [path stroke];
}


/**
 弧线
 */
- (void)drawArc {

    [[UIColor redColor] set];
    //创建弧线路径对象
    
    /*
     center:弧线圆心坐标
     radius:弧线半径
     startAngle:弧线起始角度
     endAngle:弧线结束角度
     clockwise:是否顺时针绘制
     */
    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:CGPointMake(100, 100) radius:70 startAngle:3.14 endAngle:3.14 * 3 / 2 clockwise: NO];
    path.lineWidth = 5.0f;
    path.lineCapStyle = kCGLineCapRound;
    path.lineJoinStyle = kCGLineCapRound;
    
    [path stroke];
}


/**
 贝塞尔曲线1
 */
- (void)drawBezierCurve1 {
    
    [[UIColor redColor] set];
    
    UIBezierPath *path = [UIBezierPath bezierPath];
    path.lineWidth = 5.0f;
    path.lineCapStyle = kCGLineCapRound;
    path.lineJoinStyle = kCGLineCapRound;
    
    [path moveToPoint:CGPointMake(20, 100)];
    //给定终点和终止点绘制贝塞尔曲线
    [path addQuadCurveToPoint:CGPointMake(150, 100) controlPoint:CGPointMake(20, 200)];
    
    [path stroke];
}



/**
 贝塞尔曲线2
 */
- (void)drawBezierCurve2 {

    [[UIColor redColor] set];
    
    UIBezierPath *path = [UIBezierPath bezierPath];
    
    path.lineWidth = 5.0f;
    path.lineCapStyle = kCGLineCapRound;
    path.lineJoinStyle = kCGLineCapRound;
    
    [path moveToPoint:CGPointMake(20, 100)];
    //给定终点和两个控制点绘制贝塞尔曲线
    [path addCurveToPoint:CGPointMake(220, 100) controlPoint1:CGPointMake(120, 20) controlPoint2:CGPointMake(120, 180)];
    
    [path stroke];
}



/**
 扇形
 */
- (void)drawPieChart {

    [[UIColor redColor] set];
    UIBezierPath *path = [UIBezierPath bezierPath];
    [path moveToPoint:CGPointMake(100, 100)]; //设置起始点
    [path addArcWithCenter:CGPointMake(100, 100) radius:75 startAngle:0 endAngle:3.14/2 clockwise:NO]; //绘制一个圆弧
    
    path.lineCapStyle = kCGLineCapRound; //线条拐角
    path.lineJoinStyle = kCGLineCapRound; //终点处理
    path.lineWidth = 5.0f;
    
    [[UIColor cyanColor] setFill];//填充色设置
    [path fill]; //填充
    
    [path closePath]; //封闭未成形闭环的路径
    
    [path stroke];
}


/**
 多边形
 */
- (void)drawPolygon {
    
    [[UIColor redColor] set];
    
    UIBezierPath *path = [UIBezierPath bezierPath];
    
    path.lineWidth = 5.0f;
    path.lineCapStyle = kCGLineCapRound;
    path.lineJoinStyle = kCGLineCapRound;
    //起点
    [path moveToPoint:CGPointMake(100, 50)];
    //添加直线
    [path addLineToPoint:CGPointMake(150, 50)];
    [path addLineToPoint:CGPointMake(200, 100)];
    [path addLineToPoint:CGPointMake(200, 150)];
    [path addLineToPoint:CGPointMake(150, 200)];
    [path addLineToPoint:CGPointMake(100, 200)];
    [path addLineToPoint:CGPointMake(50, 150)];
    [path addLineToPoint:CGPointMake(50, 100)];
    [path closePath];
    
    [[UIColor cyanColor] setFill]; //此行代码必须放在 [path fill]之前,否则设置的填充颜色无效
    [path fill];

    [path stroke];
}



/**
 画人
 */
- (void)drawPerson {

//    [[UIColor redColor] set];
    //create path
    UIBezierPath *path = [[UIBezierPath alloc]init];
    [path moveToPoint:CGPointMake(175, 100)];
    [path addArcWithCenter:CGPointMake(150, 100) radius:25 startAngle:0 endAngle:M_PI * 2 clockwise:YES];
    
    [path moveToPoint:CGPointMake(150, 125)];
    [path addLineToPoint:CGPointMake(150, 175)];
    
    [path moveToPoint:CGPointMake(150, 175)];
    [path addLineToPoint:CGPointMake(125, 225)];
    
    [path moveToPoint:CGPointMake(150, 175)];
    [path addLineToPoint:CGPointMake(175, 225)];
    
    [path moveToPoint:CGPointMake(100, 150)];
//    [path moveToPoint:CGPointMake(200, 150)];
    [path addLineToPoint:CGPointMake(200, 150)];
    
//    [path stroke];
    
    //create shape layer
    CAShapeLayer *shapeLayer = [CAShapeLayer layer];
    shapeLayer.strokeColor = [UIColor redColor].CGColor;
    shapeLayer.fillColor = [UIColor cyanColor].CGColor;
    shapeLayer.lineWidth = 5.f;
    //lineCap 线端点类型
//    shapeLayer.lineCap = kCALineCapRound;
    
    //线连接类型
    shapeLayer.lineJoin = kCALineJoinBevel;
    //[NSNumber numberWithInt:10],[NSNumber numberWithInt:10],[NSNumber numberWithInt:2],
    
    //lineDashPattern 这是一个 NSNumber 的数组,索引从1开始,奇数位数值表示显示长度,偶数位数值表示空白长度
    shapeLayer.lineDashPattern = [NSArray arrayWithObjects:[NSNumber numberWithInt:1], nil];
    
    
//    shapeLayer.lineDashPhase = 15;
    
    /*最大斜接长度 斜接长度指的是两条线交汇处内角和外角之间的距离。
     只有lineJoin属性为kCALineJoinMiter时miterLimit才有效
     边角的角度越小，斜接长度就会越大。
     为了避免斜接长度过长，我们可以使用 miterLimit 属性。
     如果斜接长度超过 miterLimit 的值，边角会以 lineJoin的 "bevel"即kCALineJoinBevel类型来显示
    */
//    shapeLayer.miterLimit = 15;
    
    shapeLayer.path = path.CGPath;
    
    [self.layer addSublayer:shapeLayer];
}


/**
 圆环
 */
- (void)drawDoubleCircle {
    
    UIBezierPath *path = [[UIBezierPath alloc]init];
    [path moveToPoint:CGPointMake(200, 150)];
    [path addArcWithCenter:CGPointMake(150, 150) radius:50 startAngle:0 endAngle:2 * M_PI clockwise:YES];
    [path moveToPoint:CGPointMake(250, 150)];
    [path addArcWithCenter:CGPointMake(150, 150) radius:100 startAngle:0 endAngle: -2 * M_PI clockwise:NO];
    
    CAShapeLayer *shapeLayer = [CAShapeLayer layer];
    shapeLayer.strokeColor = [UIColor redColor].CGColor;
    shapeLayer.fillColor = [UIColor blueColor].CGColor;
//    shapeLayer.fillRule = kCAFillRuleEvenOdd; //两个圆绘制方向相同则为圆环
    shapeLayer.fillRule = kCAFillRuleNonZero; //两个圆绘制方向相反则为圆环

    shapeLayer.lineWidth = 5.0f;
    shapeLayer.lineJoin = kCALineJoinBevel;
    shapeLayer.lineCap = kCALineCapSquare;
    shapeLayer.path = path.CGPath;
    [self.layer addSublayer:shapeLayer];
    
    /*
     kCAFillRuleNonZero nonZero字面意思是"非零"。按该规则,要判断一个点是否在图形内,从该点做任意方向的一条射线,然后检测射线与图形路径的交点情况。从0开始计数,路径从左向右穿过射线则计数加1,从右向左穿过射线则计数减1。得出计数结果后,如果结果是0,则认为点在图形外部,否则认为在内部.
     kCAFillRuleEvenOdd evenOdd字面意思是“奇偶”。按照规则,呀判断一个点是否在图形内,从该点作任意方向的一条射线,然后检测射线与图形路径的交点的数量。如果结果是奇数则认为点在内部,是偶数则认为点在外部。
     */
    
}


- (void)drawCAReplicatorLayer {

    //crate a replicator layer and add it to our view
    CAReplicatorLayer *replicator = [CAReplicatorLayer layer];
    replicator.frame = CGRectMake(20, 100, 150, 150);
    [self.layer addSublayer:replicator];
    
    //configure the replicator
    replicator.instanceCount = 20;
    
    //appley a transform for each  instance
    CATransform3D transform = CATransform3DIdentity;
    transform = CATransform3DTranslate(transform, 0, -10, 0);
    transform = CATransform3DRotate(transform, M_PI / 10.0, 0, 0, 1);
    transform = CATransform3DTranslate(transform, 0, 10, 0);
    replicator.instanceTransform = transform;
    
    //apply a color shift for each instance
    replicator.instanceBlueOffset = -0.1;
    replicator.instanceGreenOffset = -0.1;
    
    //create a sublayer and place it inside the replicator
    CALayer *layer = [CALayer layer];
    layer.frame = CGRectMake(137.5f, 25.0f, 25.0f, 25.0f);
    layer.backgroundColor = [UIColor whiteColor].CGColor;
    [replicator addSublayer:layer];
    
}

@end

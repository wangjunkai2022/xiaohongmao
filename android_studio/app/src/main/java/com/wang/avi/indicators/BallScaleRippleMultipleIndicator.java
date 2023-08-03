package com.wang.avi.indicators;

import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.view.animation.LinearInterpolator;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class BallScaleRippleMultipleIndicator extends BallScaleMultipleIndicator {
    @Override // com.wang.avi.indicators.BallScaleMultipleIndicator, com.wang.avi.Indicator
    public void draw(Canvas canvas, Paint paint) {
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(3.0f);
        super.draw(canvas, paint);
    }

    @Override // com.wang.avi.indicators.BallScaleMultipleIndicator, com.wang.avi.Indicator
    public ArrayList<ValueAnimator> onCreateAnimators() {
        ArrayList<ValueAnimator> arrayList = new ArrayList<>();
        long[] jArr = {0, 200, 400};
        for (final int i4 = 0; i4 < 3; i4++) {
            ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            ofFloat.setInterpolator(new LinearInterpolator());
            ofFloat.setDuration(1000L);
            ofFloat.setRepeatCount(-1);
            addUpdateListener(ofFloat, new ValueAnimator.AnimatorUpdateListener() { // from class: com.wang.avi.indicators.BallScaleRippleMultipleIndicator.1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    BallScaleRippleMultipleIndicator.this.scaleFloats[i4] = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    BallScaleRippleMultipleIndicator.this.postInvalidate();
                }
            });
            ofFloat.setStartDelay(jArr[i4]);
            ValueAnimator ofInt = ValueAnimator.ofInt(0, 255);
            ofFloat.setInterpolator(new LinearInterpolator());
            ofInt.setDuration(1000L);
            ofInt.setRepeatCount(-1);
            addUpdateListener(ofInt, new ValueAnimator.AnimatorUpdateListener() { // from class: com.wang.avi.indicators.BallScaleRippleMultipleIndicator.2
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    BallScaleRippleMultipleIndicator.this.alphaInts[i4] = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                    BallScaleRippleMultipleIndicator.this.postInvalidate();
                }
            });
            ofFloat.setStartDelay(jArr[i4]);
            arrayList.add(ofFloat);
            arrayList.add(ofInt);
        }
        return arrayList;
    }
}

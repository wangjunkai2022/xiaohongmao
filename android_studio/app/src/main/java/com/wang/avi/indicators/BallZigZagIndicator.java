package com.wang.avi.indicators;

import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.view.animation.LinearInterpolator;
import com.wang.avi.Indicator;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class BallZigZagIndicator extends Indicator {
    float[] translateX = new float[2];
    float[] translateY = new float[2];

    @Override // com.wang.avi.Indicator
    public void draw(Canvas canvas, Paint paint) {
        for (int i4 = 0; i4 < 2; i4++) {
            canvas.save();
            canvas.translate(this.translateX[i4], this.translateY[i4]);
            canvas.drawCircle(0.0f, 0.0f, getWidth() / 10, paint);
            canvas.restore();
        }
    }

    @Override // com.wang.avi.Indicator
    public ArrayList<ValueAnimator> onCreateAnimators() {
        ArrayList<ValueAnimator> arrayList = new ArrayList<>();
        float width = getWidth() / 6;
        float width2 = getWidth() / 6;
        for (final int i4 = 0; i4 < 2; i4++) {
            ValueAnimator ofFloat = ValueAnimator.ofFloat(width, getWidth() - width, getWidth() / 2, width);
            if (i4 == 1) {
                ofFloat = ValueAnimator.ofFloat(getWidth() - width, width, getWidth() / 2, getWidth() - width);
            }
            ValueAnimator ofFloat2 = ValueAnimator.ofFloat(width2, width2, getHeight() / 2, width2);
            if (i4 == 1) {
                ofFloat2 = ValueAnimator.ofFloat(getHeight() - width2, getHeight() - width2, getHeight() / 2, getHeight() - width2);
            }
            ofFloat.setDuration(1000L);
            ofFloat.setInterpolator(new LinearInterpolator());
            ofFloat.setRepeatCount(-1);
            addUpdateListener(ofFloat, new ValueAnimator.AnimatorUpdateListener() { // from class: com.wang.avi.indicators.BallZigZagIndicator.1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    BallZigZagIndicator.this.translateX[i4] = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    BallZigZagIndicator.this.postInvalidate();
                }
            });
            ofFloat2.setDuration(1000L);
            ofFloat2.setInterpolator(new LinearInterpolator());
            ofFloat2.setRepeatCount(-1);
            addUpdateListener(ofFloat2, new ValueAnimator.AnimatorUpdateListener() { // from class: com.wang.avi.indicators.BallZigZagIndicator.2
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    BallZigZagIndicator.this.translateY[i4] = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    BallZigZagIndicator.this.postInvalidate();
                }
            });
            arrayList.add(ofFloat);
            arrayList.add(ofFloat2);
        }
        return arrayList;
    }
}

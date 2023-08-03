package com.wang.avi.indicators;

import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.view.animation.LinearInterpolator;
import com.google.android.exoplayer2.k2;
import com.wang.avi.Indicator;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class BallTrianglePathIndicator extends Indicator {
    float[] translateX = new float[3];
    float[] translateY = new float[3];

    @Override // com.wang.avi.Indicator
    public void draw(Canvas canvas, Paint paint) {
        paint.setStrokeWidth(3.0f);
        paint.setStyle(Paint.Style.STROKE);
        for (int i4 = 0; i4 < 3; i4++) {
            canvas.save();
            canvas.translate(this.translateX[i4], this.translateY[i4]);
            canvas.drawCircle(0.0f, 0.0f, getWidth() / 10, paint);
            canvas.restore();
        }
    }

    @Override // com.wang.avi.Indicator
    public ArrayList<ValueAnimator> onCreateAnimators() {
        ArrayList<ValueAnimator> arrayList = new ArrayList<>();
        float width = getWidth() / 5;
        float width2 = getWidth() / 5;
        for (final int i4 = 0; i4 < 3; i4++) {
            ValueAnimator ofFloat = ValueAnimator.ofFloat(getWidth() / 2, getWidth() - width, width, getWidth() / 2);
            if (i4 == 1) {
                ofFloat = ValueAnimator.ofFloat(getWidth() - width, width, getWidth() / 2, getWidth() - width);
            } else if (i4 == 2) {
                ofFloat = ValueAnimator.ofFloat(width, getWidth() / 2, getWidth() - width, width);
            }
            ValueAnimator ofFloat2 = ValueAnimator.ofFloat(width2, getHeight() - width2, getHeight() - width2, width2);
            if (i4 == 1) {
                ofFloat2 = ValueAnimator.ofFloat(getHeight() - width2, getHeight() - width2, width2, getHeight() - width2);
            } else if (i4 == 2) {
                ofFloat2 = ValueAnimator.ofFloat(getHeight() - width2, width2, getHeight() - width2, getHeight() - width2);
            }
            ofFloat.setDuration(k2.f23783i1);
            ofFloat.setInterpolator(new LinearInterpolator());
            ofFloat.setRepeatCount(-1);
            addUpdateListener(ofFloat, new ValueAnimator.AnimatorUpdateListener() { // from class: com.wang.avi.indicators.BallTrianglePathIndicator.1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    BallTrianglePathIndicator.this.translateX[i4] = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    BallTrianglePathIndicator.this.postInvalidate();
                }
            });
            ofFloat2.setDuration(k2.f23783i1);
            ofFloat2.setInterpolator(new LinearInterpolator());
            ofFloat2.setRepeatCount(-1);
            addUpdateListener(ofFloat2, new ValueAnimator.AnimatorUpdateListener() { // from class: com.wang.avi.indicators.BallTrianglePathIndicator.2
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    BallTrianglePathIndicator.this.translateY[i4] = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    BallTrianglePathIndicator.this.postInvalidate();
                }
            });
            arrayList.add(ofFloat);
            arrayList.add(ofFloat2);
        }
        return arrayList;
    }
}

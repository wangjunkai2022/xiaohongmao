package com.wang.avi.indicators;

import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import com.wang.avi.Indicator;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class BallClipRotatePulseIndicator extends Indicator {
    float degrees;
    float scaleFloat1;
    float scaleFloat2;

    @Override // com.wang.avi.Indicator
    public void draw(Canvas canvas, Paint paint) {
        float width = getWidth() / 2;
        float height = getHeight() / 2;
        canvas.save();
        canvas.translate(width, height);
        float f10 = this.scaleFloat1;
        canvas.scale(f10, f10);
        paint.setStyle(Paint.Style.FILL);
        canvas.drawCircle(0.0f, 0.0f, width / 2.5f, paint);
        canvas.restore();
        canvas.translate(width, height);
        float f11 = this.scaleFloat2;
        canvas.scale(f11, f11);
        canvas.rotate(this.degrees);
        paint.setStrokeWidth(3.0f);
        paint.setStyle(Paint.Style.STROKE);
        float[] fArr = {225.0f, 45.0f};
        for (int i4 = 0; i4 < 2; i4++) {
            canvas.drawArc(new RectF((-width) + 12.0f, (-height) + 12.0f, width - 12.0f, height - 12.0f), fArr[i4], 90.0f, false, paint);
        }
    }

    @Override // com.wang.avi.Indicator
    public ArrayList<ValueAnimator> onCreateAnimators() {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(1.0f, 0.3f, 1.0f);
        ofFloat.setDuration(1000L);
        ofFloat.setRepeatCount(-1);
        addUpdateListener(ofFloat, new ValueAnimator.AnimatorUpdateListener() { // from class: com.wang.avi.indicators.BallClipRotatePulseIndicator.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                BallClipRotatePulseIndicator.this.scaleFloat1 = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                BallClipRotatePulseIndicator.this.postInvalidate();
            }
        });
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(1.0f, 0.6f, 1.0f);
        ofFloat2.setDuration(1000L);
        ofFloat2.setRepeatCount(-1);
        addUpdateListener(ofFloat2, new ValueAnimator.AnimatorUpdateListener() { // from class: com.wang.avi.indicators.BallClipRotatePulseIndicator.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                BallClipRotatePulseIndicator.this.scaleFloat2 = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                BallClipRotatePulseIndicator.this.postInvalidate();
            }
        });
        ValueAnimator ofFloat3 = ValueAnimator.ofFloat(0.0f, 180.0f, 360.0f);
        ofFloat3.setDuration(1000L);
        ofFloat3.setRepeatCount(-1);
        addUpdateListener(ofFloat3, new ValueAnimator.AnimatorUpdateListener() { // from class: com.wang.avi.indicators.BallClipRotatePulseIndicator.3
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                BallClipRotatePulseIndicator.this.degrees = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                BallClipRotatePulseIndicator.this.postInvalidate();
            }
        });
        ArrayList<ValueAnimator> arrayList = new ArrayList<>();
        arrayList.add(ofFloat);
        arrayList.add(ofFloat2);
        arrayList.add(ofFloat3);
        return arrayList;
    }
}

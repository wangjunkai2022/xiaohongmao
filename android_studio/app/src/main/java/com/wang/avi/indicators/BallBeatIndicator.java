package com.wang.avi.indicators;

import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Paint;
import com.wang.avi.Indicator;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class BallBeatIndicator extends Indicator {
    public static final int ALPHA = 255;
    public static final float SCALE = 1.0f;
    private float[] scaleFloats = {1.0f, 1.0f, 1.0f};
    int[] alphas = {255, 255, 255};

    @Override // com.wang.avi.Indicator
    public void draw(Canvas canvas, Paint paint) {
        float width = (getWidth() - 8.0f) / 6.0f;
        float f10 = 2.0f * width;
        float width2 = (getWidth() / 2) - (f10 + 4.0f);
        float height = getHeight() / 2;
        for (int i4 = 0; i4 < 3; i4++) {
            canvas.save();
            float f11 = i4;
            canvas.translate((f10 * f11) + width2 + (f11 * 4.0f), height);
            float[] fArr = this.scaleFloats;
            canvas.scale(fArr[i4], fArr[i4]);
            paint.setAlpha(this.alphas[i4]);
            canvas.drawCircle(0.0f, 0.0f, width, paint);
            canvas.restore();
        }
    }

    @Override // com.wang.avi.Indicator
    public ArrayList<ValueAnimator> onCreateAnimators() {
        ArrayList<ValueAnimator> arrayList = new ArrayList<>();
        int[] iArr = {350, 0, 350};
        for (final int i4 = 0; i4 < 3; i4++) {
            ValueAnimator ofFloat = ValueAnimator.ofFloat(1.0f, 0.75f, 1.0f);
            ofFloat.setDuration(700L);
            ofFloat.setRepeatCount(-1);
            ofFloat.setStartDelay(iArr[i4]);
            addUpdateListener(ofFloat, new ValueAnimator.AnimatorUpdateListener() { // from class: com.wang.avi.indicators.BallBeatIndicator.1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    BallBeatIndicator.this.scaleFloats[i4] = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    BallBeatIndicator.this.postInvalidate();
                }
            });
            ValueAnimator ofInt = ValueAnimator.ofInt(255, 51, 255);
            ofInt.setDuration(700L);
            ofInt.setRepeatCount(-1);
            ofInt.setStartDelay(iArr[i4]);
            addUpdateListener(ofInt, new ValueAnimator.AnimatorUpdateListener() { // from class: com.wang.avi.indicators.BallBeatIndicator.2
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    BallBeatIndicator.this.alphas[i4] = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                    BallBeatIndicator.this.postInvalidate();
                }
            });
            arrayList.add(ofFloat);
            arrayList.add(ofInt);
        }
        return arrayList;
    }
}

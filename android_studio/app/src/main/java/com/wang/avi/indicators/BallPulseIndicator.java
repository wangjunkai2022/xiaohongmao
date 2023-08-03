package com.wang.avi.indicators;

import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Paint;
import com.google.android.exoplayer2.extractor.ts.a0;
import com.wang.avi.Indicator;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class BallPulseIndicator extends Indicator {
    public static final float SCALE = 1.0f;
    private float[] scaleFloats = {1.0f, 1.0f, 1.0f};

    @Override // com.wang.avi.Indicator
    public void draw(Canvas canvas, Paint paint) {
        float min = (Math.min(getWidth(), getHeight()) - 8.0f) / 6.0f;
        float f10 = 2.0f * min;
        float width = (getWidth() / 2) - (f10 + 4.0f);
        float height = getHeight() / 2;
        for (int i4 = 0; i4 < 3; i4++) {
            canvas.save();
            float f11 = i4;
            canvas.translate((f10 * f11) + width + (f11 * 4.0f), height);
            float[] fArr = this.scaleFloats;
            canvas.scale(fArr[i4], fArr[i4]);
            canvas.drawCircle(0.0f, 0.0f, min, paint);
            canvas.restore();
        }
    }

    @Override // com.wang.avi.Indicator
    public ArrayList<ValueAnimator> onCreateAnimators() {
        ArrayList<ValueAnimator> arrayList = new ArrayList<>();
        int[] iArr = {120, a0.A, 360};
        for (final int i4 = 0; i4 < 3; i4++) {
            ValueAnimator ofFloat = ValueAnimator.ofFloat(1.0f, 0.3f, 1.0f);
            ofFloat.setDuration(750L);
            ofFloat.setRepeatCount(-1);
            ofFloat.setStartDelay(iArr[i4]);
            addUpdateListener(ofFloat, new ValueAnimator.AnimatorUpdateListener() { // from class: com.wang.avi.indicators.BallPulseIndicator.1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    BallPulseIndicator.this.scaleFloats[i4] = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    BallPulseIndicator.this.postInvalidate();
                }
            });
            arrayList.add(ofFloat);
        }
        return arrayList;
    }
}

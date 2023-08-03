package com.wang.avi.indicators;

import android.animation.ValueAnimator;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class LineScalePulseOutRapidIndicator extends LineScaleIndicator {
    @Override // com.wang.avi.indicators.LineScaleIndicator, com.wang.avi.Indicator
    public ArrayList<ValueAnimator> onCreateAnimators() {
        ArrayList<ValueAnimator> arrayList = new ArrayList<>();
        long[] jArr = {400, 200, 0, 200, 400};
        for (final int i4 = 0; i4 < 5; i4++) {
            ValueAnimator ofFloat = ValueAnimator.ofFloat(1.0f, 0.4f, 1.0f);
            ofFloat.setDuration(1000L);
            ofFloat.setRepeatCount(-1);
            ofFloat.setStartDelay(jArr[i4]);
            addUpdateListener(ofFloat, new ValueAnimator.AnimatorUpdateListener() { // from class: com.wang.avi.indicators.LineScalePulseOutRapidIndicator.1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    LineScalePulseOutRapidIndicator.this.scaleYFloats[i4] = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    LineScalePulseOutRapidIndicator.this.postInvalidate();
                }
            });
            arrayList.add(ofFloat);
        }
        return arrayList;
    }
}

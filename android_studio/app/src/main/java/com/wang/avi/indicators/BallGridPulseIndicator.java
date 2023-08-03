package com.wang.avi.indicators;

import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Paint;
import androidx.recyclerview.widget.ItemTouchHelper;
import com.im.freechat.utils.h;
import com.wang.avi.Indicator;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class BallGridPulseIndicator extends Indicator {
    public static final int ALPHA = 255;
    public static final float SCALE = 1.0f;
    int[] alphas = {255, 255, 255, 255, 255, 255, 255, 255, 255};
    float[] scaleFloats = {1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f};

    @Override // com.wang.avi.Indicator
    public void draw(Canvas canvas, Paint paint) {
        float width = (getWidth() - 16.0f) / 6.0f;
        float f10 = 2.0f * width;
        float f11 = f10 + 4.0f;
        float width2 = (getWidth() / 2) - f11;
        float width3 = (getWidth() / 2) - f11;
        for (int i4 = 0; i4 < 3; i4++) {
            for (int i10 = 0; i10 < 3; i10++) {
                canvas.save();
                float f12 = i10;
                float f13 = (f10 * f12) + width2 + (f12 * 4.0f);
                float f14 = i4;
                canvas.translate(f13, (f10 * f14) + width3 + (f14 * 4.0f));
                float[] fArr = this.scaleFloats;
                int i11 = (i4 * 3) + i10;
                canvas.scale(fArr[i11], fArr[i11]);
                paint.setAlpha(this.alphas[i11]);
                canvas.drawCircle(0.0f, 0.0f, width, paint);
                canvas.restore();
            }
        }
    }

    @Override // com.wang.avi.Indicator
    public ArrayList<ValueAnimator> onCreateAnimators() {
        ArrayList<ValueAnimator> arrayList = new ArrayList<>();
        int[] iArr = {720, 1020, h.f43782b, 1420, 1450, 1180, 870, 1450, 1060};
        int[] iArr2 = {-60, ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION, -170, 480, 310, 30, 460, 780, 450};
        for (final int i4 = 0; i4 < 9; i4++) {
            ValueAnimator ofFloat = ValueAnimator.ofFloat(1.0f, 0.5f, 1.0f);
            ofFloat.setDuration(iArr[i4]);
            ofFloat.setRepeatCount(-1);
            ofFloat.setStartDelay(iArr2[i4]);
            addUpdateListener(ofFloat, new ValueAnimator.AnimatorUpdateListener() { // from class: com.wang.avi.indicators.BallGridPulseIndicator.1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    BallGridPulseIndicator.this.scaleFloats[i4] = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    BallGridPulseIndicator.this.postInvalidate();
                }
            });
            ValueAnimator ofInt = ValueAnimator.ofInt(255, 210, 122, 255);
            ofInt.setDuration(iArr[i4]);
            ofInt.setRepeatCount(-1);
            ofInt.setStartDelay(iArr2[i4]);
            addUpdateListener(ofInt, new ValueAnimator.AnimatorUpdateListener() { // from class: com.wang.avi.indicators.BallGridPulseIndicator.2
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    BallGridPulseIndicator.this.alphas[i4] = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                    BallGridPulseIndicator.this.postInvalidate();
                }
            });
            arrayList.add(ofFloat);
            arrayList.add(ofInt);
        }
        return arrayList;
    }
}

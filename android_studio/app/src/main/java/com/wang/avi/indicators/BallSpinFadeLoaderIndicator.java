package com.wang.avi.indicators;

import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Paint;
import com.google.android.exoplayer2.extractor.ts.a0;
import com.wang.avi.Indicator;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class BallSpinFadeLoaderIndicator extends Indicator {
    public static final int ALPHA = 255;
    public static final float SCALE = 1.0f;
    float[] scaleFloats = {1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f};
    int[] alphas = {255, 255, 255, 255, 255, 255, 255, 255};

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public final class Point {

        /* renamed from: x  reason: collision with root package name */
        public float f59864x;

        /* renamed from: y  reason: collision with root package name */
        public float f59865y;

        public Point(float f10, float f11) {
            this.f59864x = f10;
            this.f59865y = f11;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Point circleAt(int i4, int i10, float f10, double d4) {
        double d10 = f10;
        return new Point((float) ((i4 / 2) + (Math.cos(d4) * d10)), (float) ((i10 / 2) + (d10 * Math.sin(d4))));
    }

    @Override // com.wang.avi.Indicator
    public void draw(Canvas canvas, Paint paint) {
        float width = getWidth() / 10;
        for (int i4 = 0; i4 < 8; i4++) {
            canvas.save();
            Point circleAt = circleAt(getWidth(), getHeight(), (getWidth() / 2) - width, 0.7853981633974483d * i4);
            canvas.translate(circleAt.f59864x, circleAt.f59865y);
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
        int[] iArr = {0, 120, a0.A, 360, 480, 600, 720, 780, 840};
        for (final int i4 = 0; i4 < 8; i4++) {
            ValueAnimator ofFloat = ValueAnimator.ofFloat(1.0f, 0.4f, 1.0f);
            ofFloat.setDuration(1000L);
            ofFloat.setRepeatCount(-1);
            ofFloat.setStartDelay(iArr[i4]);
            addUpdateListener(ofFloat, new ValueAnimator.AnimatorUpdateListener() { // from class: com.wang.avi.indicators.BallSpinFadeLoaderIndicator.1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    BallSpinFadeLoaderIndicator.this.scaleFloats[i4] = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    BallSpinFadeLoaderIndicator.this.postInvalidate();
                }
            });
            ValueAnimator ofInt = ValueAnimator.ofInt(255, 77, 255);
            ofInt.setDuration(1000L);
            ofInt.setRepeatCount(-1);
            ofInt.setStartDelay(iArr[i4]);
            addUpdateListener(ofInt, new ValueAnimator.AnimatorUpdateListener() { // from class: com.wang.avi.indicators.BallSpinFadeLoaderIndicator.2
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    BallSpinFadeLoaderIndicator.this.alphas[i4] = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                    BallSpinFadeLoaderIndicator.this.postInvalidate();
                }
            });
            arrayList.add(ofFloat);
            arrayList.add(ofInt);
        }
        return arrayList;
    }
}

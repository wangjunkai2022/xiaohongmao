package com.wang.avi.indicators;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import com.wang.avi.indicators.BallSpinFadeLoaderIndicator;

/* loaded from: classes3.dex */
public class LineSpinFadeLoaderIndicator extends BallSpinFadeLoaderIndicator {
    @Override // com.wang.avi.indicators.BallSpinFadeLoaderIndicator, com.wang.avi.Indicator
    public void draw(Canvas canvas, Paint paint) {
        float width = getWidth() / 10;
        for (int i4 = 0; i4 < 8; i4++) {
            canvas.save();
            BallSpinFadeLoaderIndicator.Point circleAt = circleAt(getWidth(), getHeight(), (getWidth() / 2.5f) - width, 0.7853981633974483d * i4);
            canvas.translate(circleAt.f59864x, circleAt.f59865y);
            float[] fArr = this.scaleFloats;
            canvas.scale(fArr[i4], fArr[i4]);
            canvas.rotate(i4 * 45);
            paint.setAlpha(this.alphas[i4]);
            float f10 = -width;
            canvas.drawRoundRect(new RectF(f10, f10 / 1.5f, width * 1.5f, width / 1.5f), 5.0f, 5.0f, paint);
            canvas.restore();
        }
    }
}

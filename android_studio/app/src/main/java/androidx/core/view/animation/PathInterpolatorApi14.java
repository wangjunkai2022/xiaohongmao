package androidx.core.view.animation;

import android.graphics.Path;
import android.graphics.PathMeasure;
import android.view.animation.Interpolator;

/* loaded from: classes.dex */
class PathInterpolatorApi14 implements Interpolator {
    private static final float PRECISION = 0.002f;
    private final float[] mX;
    private final float[] mY;

    PathInterpolatorApi14(Path path) {
        PathMeasure pathMeasure = new PathMeasure(path, false);
        float length = pathMeasure.getLength();
        int i4 = ((int) (length / 0.002f)) + 1;
        this.mX = new float[i4];
        this.mY = new float[i4];
        float[] fArr = new float[2];
        for (int i10 = 0; i10 < i4; i10++) {
            pathMeasure.getPosTan((i10 * length) / (i4 - 1), fArr, null);
            this.mX[i10] = fArr[0];
            this.mY[i10] = fArr[1];
        }
    }

    private static Path createCubic(float f10, float f11, float f12, float f13) {
        Path path = new Path();
        path.moveTo(0.0f, 0.0f);
        path.cubicTo(f10, f11, f12, f13, 1.0f, 1.0f);
        return path;
    }

    private static Path createQuad(float f10, float f11) {
        Path path = new Path();
        path.moveTo(0.0f, 0.0f);
        path.quadTo(f10, f11, 1.0f, 1.0f);
        return path;
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f10) {
        if (f10 <= 0.0f) {
            return 0.0f;
        }
        if (f10 >= 1.0f) {
            return 1.0f;
        }
        int i4 = 0;
        int length = this.mX.length - 1;
        while (length - i4 > 1) {
            int i10 = (i4 + length) / 2;
            if (f10 < this.mX[i10]) {
                length = i10;
            } else {
                i4 = i10;
            }
        }
        float[] fArr = this.mX;
        float f11 = fArr[length] - fArr[i4];
        if (f11 == 0.0f) {
            return this.mY[i4];
        }
        float[] fArr2 = this.mY;
        float f12 = fArr2[i4];
        return f12 + (((f10 - fArr[i4]) / f11) * (fArr2[length] - f12));
    }

    PathInterpolatorApi14(float f10, float f11) {
        this(createQuad(f10, f11));
    }

    PathInterpolatorApi14(float f10, float f11, float f12, float f13) {
        this(createCubic(f10, f11, f12, f13));
    }
}

package androidx.constraintlayout.core.motion.utils;

/* loaded from: classes.dex */
public class VelocityMatrix {
    private static String TAG = "VelocityMatrix";
    float mDRotate;
    float mDScaleX;
    float mDScaleY;
    float mDTranslateX;
    float mDTranslateY;
    float mRotate;

    public void applyTransform(float f10, float f11, int i4, int i10, float[] fArr) {
        float f12;
        float f13 = fArr[0];
        float f14 = fArr[1];
        float f15 = (f11 - 0.5f) * 2.0f;
        float f16 = f13 + this.mDTranslateX;
        float f17 = f14 + this.mDTranslateY;
        float f18 = f16 + (this.mDScaleX * (f10 - 0.5f) * 2.0f);
        float f19 = f17 + (this.mDScaleY * f15);
        float radians = (float) Math.toRadians(this.mDRotate);
        double radians2 = (float) Math.toRadians(this.mRotate);
        double d4 = i10 * f15;
        fArr[0] = f18 + (((float) ((((-i4) * f12) * Math.sin(radians2)) - (Math.cos(radians2) * d4))) * radians);
        fArr[1] = f19 + (radians * ((float) (((i4 * f12) * Math.cos(radians2)) - (d4 * Math.sin(radians2)))));
    }

    public void clear() {
        this.mDRotate = 0.0f;
        this.mDTranslateY = 0.0f;
        this.mDTranslateX = 0.0f;
        this.mDScaleY = 0.0f;
        this.mDScaleX = 0.0f;
    }

    public void setRotationVelocity(SplineSet splineSet, float f10) {
        if (splineSet != null) {
            this.mDRotate = splineSet.getSlope(f10);
            this.mRotate = splineSet.get(f10);
        }
    }

    public void setScaleVelocity(SplineSet splineSet, SplineSet splineSet2, float f10) {
        if (splineSet != null) {
            this.mDScaleX = splineSet.getSlope(f10);
        }
        if (splineSet2 != null) {
            this.mDScaleY = splineSet2.getSlope(f10);
        }
    }

    public void setTranslationVelocity(SplineSet splineSet, SplineSet splineSet2, float f10) {
        if (splineSet != null) {
            this.mDTranslateX = splineSet.getSlope(f10);
        }
        if (splineSet2 != null) {
            this.mDTranslateY = splineSet2.getSlope(f10);
        }
    }

    public void setRotationVelocity(KeyCycleOscillator keyCycleOscillator, float f10) {
        if (keyCycleOscillator != null) {
            this.mDRotate = keyCycleOscillator.getSlope(f10);
        }
    }

    public void setScaleVelocity(KeyCycleOscillator keyCycleOscillator, KeyCycleOscillator keyCycleOscillator2, float f10) {
        if (keyCycleOscillator != null) {
            this.mDScaleX = keyCycleOscillator.getSlope(f10);
        }
        if (keyCycleOscillator2 != null) {
            this.mDScaleY = keyCycleOscillator2.getSlope(f10);
        }
    }

    public void setTranslationVelocity(KeyCycleOscillator keyCycleOscillator, KeyCycleOscillator keyCycleOscillator2, float f10) {
        if (keyCycleOscillator != null) {
            this.mDTranslateX = keyCycleOscillator.getSlope(f10);
        }
        if (keyCycleOscillator2 != null) {
            this.mDTranslateY = keyCycleOscillator2.getSlope(f10);
        }
    }
}

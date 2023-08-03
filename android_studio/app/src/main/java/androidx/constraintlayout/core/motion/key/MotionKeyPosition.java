package androidx.constraintlayout.core.motion.key;

import androidx.constraintlayout.core.motion.MotionWidget;
import androidx.constraintlayout.core.motion.utils.FloatRect;
import androidx.constraintlayout.core.motion.utils.SplineSet;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.constraintlayout.core.motion.utils.f;
import java.util.HashMap;
import java.util.HashSet;

/* loaded from: classes.dex */
public class MotionKeyPosition extends MotionKey {
    static final int KEY_TYPE = 2;
    static final String NAME = "KeyPosition";
    protected static final float SELECTION_SLOPE = 20.0f;
    public static final int TYPE_CARTESIAN = 0;
    public static final int TYPE_PATH = 1;
    public static final int TYPE_SCREEN = 2;
    public float mAltPercentX;
    public float mAltPercentY;
    private float mCalculatedPositionX;
    private float mCalculatedPositionY;
    public int mCurveFit;
    public int mDrawPath;
    public int mPathMotionArc;
    public float mPercentHeight;
    public float mPercentWidth;
    public float mPercentX;
    public float mPercentY;
    public int mPositionType;
    public String mTransitionEasing;

    public MotionKeyPosition() {
        int i4 = MotionKey.UNSET;
        this.mCurveFit = i4;
        this.mTransitionEasing = null;
        this.mPathMotionArc = i4;
        this.mDrawPath = 0;
        this.mPercentWidth = Float.NaN;
        this.mPercentHeight = Float.NaN;
        this.mPercentX = Float.NaN;
        this.mPercentY = Float.NaN;
        this.mAltPercentX = Float.NaN;
        this.mAltPercentY = Float.NaN;
        this.mPositionType = 0;
        this.mCalculatedPositionX = Float.NaN;
        this.mCalculatedPositionY = Float.NaN;
        this.mType = 2;
    }

    private void calcCartesianPosition(float f10, float f11, float f12, float f13) {
        float f14 = f12 - f10;
        float f15 = f13 - f11;
        float f16 = Float.isNaN(this.mPercentX) ? 0.0f : this.mPercentX;
        float f17 = Float.isNaN(this.mAltPercentY) ? 0.0f : this.mAltPercentY;
        float f18 = Float.isNaN(this.mPercentY) ? 0.0f : this.mPercentY;
        this.mCalculatedPositionX = (int) (f10 + (f16 * f14) + ((Float.isNaN(this.mAltPercentX) ? 0.0f : this.mAltPercentX) * f15));
        this.mCalculatedPositionY = (int) (f11 + (f14 * f17) + (f15 * f18));
    }

    private void calcPathPosition(float f10, float f11, float f12, float f13) {
        float f14 = f12 - f10;
        float f15 = f13 - f11;
        float f16 = this.mPercentX;
        float f17 = this.mPercentY;
        this.mCalculatedPositionX = f10 + (f14 * f16) + ((-f15) * f17);
        this.mCalculatedPositionY = f11 + (f15 * f16) + (f14 * f17);
    }

    private void calcScreenPosition(int i4, int i10) {
        float f10 = this.mPercentX;
        float f11 = 0;
        this.mCalculatedPositionX = ((i4 - 0) * f10) + f11;
        this.mCalculatedPositionY = ((i10 - 0) * f10) + f11;
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey
    public void addValues(HashMap<String, SplineSet> hashMap) {
    }

    void calcPosition(int i4, int i10, float f10, float f11, float f12, float f13) {
        int i11 = this.mPositionType;
        if (i11 == 1) {
            calcPathPosition(f10, f11, f12, f13);
        } else if (i11 != 2) {
            calcCartesianPosition(f10, f11, f12, f13);
        } else {
            calcScreenPosition(i4, i10);
        }
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey
    public MotionKey copy(MotionKey motionKey) {
        super.copy(motionKey);
        MotionKeyPosition motionKeyPosition = (MotionKeyPosition) motionKey;
        this.mTransitionEasing = motionKeyPosition.mTransitionEasing;
        this.mPathMotionArc = motionKeyPosition.mPathMotionArc;
        this.mDrawPath = motionKeyPosition.mDrawPath;
        this.mPercentWidth = motionKeyPosition.mPercentWidth;
        this.mPercentHeight = Float.NaN;
        this.mPercentX = motionKeyPosition.mPercentX;
        this.mPercentY = motionKeyPosition.mPercentY;
        this.mAltPercentX = motionKeyPosition.mAltPercentX;
        this.mAltPercentY = motionKeyPosition.mAltPercentY;
        this.mCalculatedPositionX = motionKeyPosition.mCalculatedPositionX;
        this.mCalculatedPositionY = motionKeyPosition.mCalculatedPositionY;
        return this;
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey
    public void getAttributeNames(HashSet<String> hashSet) {
    }

    @Override // androidx.constraintlayout.core.motion.utils.TypedValues
    public int getId(String str) {
        return f.a(str);
    }

    float getPositionX() {
        return this.mCalculatedPositionX;
    }

    float getPositionY() {
        return this.mCalculatedPositionY;
    }

    public boolean intersects(int i4, int i10, FloatRect floatRect, FloatRect floatRect2, float f10, float f11) {
        calcPosition(i4, i10, floatRect.centerX(), floatRect.centerY(), floatRect2.centerX(), floatRect2.centerY());
        return Math.abs(f10 - this.mCalculatedPositionX) < SELECTION_SLOPE && Math.abs(f11 - this.mCalculatedPositionY) < SELECTION_SLOPE;
    }

    public void positionAttributes(MotionWidget motionWidget, FloatRect floatRect, FloatRect floatRect2, float f10, float f11, String[] strArr, float[] fArr) {
        int i4 = this.mPositionType;
        if (i4 == 1) {
            positionPathAttributes(floatRect, floatRect2, f10, f11, strArr, fArr);
        } else if (i4 != 2) {
            positionCartAttributes(floatRect, floatRect2, f10, f11, strArr, fArr);
        } else {
            positionScreenAttributes(motionWidget, floatRect, floatRect2, f10, f11, strArr, fArr);
        }
    }

    void positionCartAttributes(FloatRect floatRect, FloatRect floatRect2, float f10, float f11, String[] strArr, float[] fArr) {
        float centerX = floatRect.centerX();
        float centerY = floatRect.centerY();
        float centerX2 = floatRect2.centerX() - centerX;
        float centerY2 = floatRect2.centerY() - centerY;
        if (strArr[0] != null) {
            if ("percentX".equals(strArr[0])) {
                fArr[0] = (f10 - centerX) / centerX2;
                fArr[1] = (f11 - centerY) / centerY2;
                return;
            }
            fArr[1] = (f10 - centerX) / centerX2;
            fArr[0] = (f11 - centerY) / centerY2;
            return;
        }
        strArr[0] = "percentX";
        fArr[0] = (f10 - centerX) / centerX2;
        strArr[1] = "percentY";
        fArr[1] = (f11 - centerY) / centerY2;
    }

    void positionPathAttributes(FloatRect floatRect, FloatRect floatRect2, float f10, float f11, String[] strArr, float[] fArr) {
        float centerX = floatRect.centerX();
        float centerY = floatRect.centerY();
        float centerX2 = floatRect2.centerX() - centerX;
        float centerY2 = floatRect2.centerY() - centerY;
        float hypot = (float) Math.hypot(centerX2, centerY2);
        if (hypot < 1.0E-4d) {
            System.out.println("distance ~ 0");
            fArr[0] = 0.0f;
            fArr[1] = 0.0f;
            return;
        }
        float f12 = centerX2 / hypot;
        float f13 = centerY2 / hypot;
        float f14 = f11 - centerY;
        float f15 = f10 - centerX;
        float f16 = ((f12 * f14) - (f15 * f13)) / hypot;
        float f17 = ((f12 * f15) + (f13 * f14)) / hypot;
        if (strArr[0] != null) {
            if ("percentX".equals(strArr[0])) {
                fArr[0] = f17;
                fArr[1] = f16;
                return;
            }
            return;
        }
        strArr[0] = "percentX";
        strArr[1] = "percentY";
        fArr[0] = f17;
        fArr[1] = f16;
    }

    void positionScreenAttributes(MotionWidget motionWidget, FloatRect floatRect, FloatRect floatRect2, float f10, float f11, String[] strArr, float[] fArr) {
        floatRect.centerX();
        floatRect.centerY();
        floatRect2.centerX();
        floatRect2.centerY();
        MotionWidget parent = motionWidget.getParent();
        int width = parent.getWidth();
        int height = parent.getHeight();
        if (strArr[0] != null) {
            if ("percentX".equals(strArr[0])) {
                fArr[0] = f10 / width;
                fArr[1] = f11 / height;
                return;
            }
            fArr[1] = f10 / width;
            fArr[0] = f11 / height;
            return;
        }
        strArr[0] = "percentX";
        fArr[0] = f10 / width;
        strArr[1] = "percentY";
        fArr[1] = f11 / height;
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey, androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i4, int i10) {
        if (i4 == 100) {
            this.mFramePosition = i10;
            return true;
        } else if (i4 == 508) {
            this.mCurveFit = i10;
            return true;
        } else if (i4 != 510) {
            return super.setValue(i4, i10);
        } else {
            this.mPositionType = i10;
            return true;
        }
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey
    public MotionKey clone() {
        return new MotionKeyPosition().copy(this);
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey, androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i4, float f10) {
        switch (i4) {
            case TypedValues.Position.TYPE_PERCENT_WIDTH /* 503 */:
                this.mPercentWidth = f10;
                return true;
            case TypedValues.Position.TYPE_PERCENT_HEIGHT /* 504 */:
                this.mPercentHeight = f10;
                return true;
            case TypedValues.Position.TYPE_SIZE_PERCENT /* 505 */:
                this.mPercentWidth = f10;
                this.mPercentHeight = f10;
                return true;
            case TypedValues.Position.TYPE_PERCENT_X /* 506 */:
                this.mPercentX = f10;
                return true;
            case TypedValues.Position.TYPE_PERCENT_Y /* 507 */:
                this.mPercentY = f10;
                return true;
            default:
                return super.setValue(i4, f10);
        }
    }

    @Override // androidx.constraintlayout.core.motion.key.MotionKey, androidx.constraintlayout.core.motion.utils.TypedValues
    public boolean setValue(int i4, String str) {
        if (i4 != 501) {
            return super.setValue(i4, str);
        }
        this.mTransitionEasing = str.toString();
        return true;
    }
}

package androidx.constraintlayout.core.motion;

import androidx.constraintlayout.core.motion.MotionWidget;
import androidx.constraintlayout.core.motion.key.MotionKeyPosition;
import androidx.constraintlayout.core.motion.utils.Easing;
import io.sentry.protocol.y;
import java.util.Arrays;
import java.util.HashMap;

/* loaded from: classes.dex */
public class MotionPaths implements Comparable<MotionPaths> {
    public static final int CARTESIAN = 0;
    public static final boolean DEBUG = false;
    static final int OFF_HEIGHT = 4;
    static final int OFF_PATH_ROTATE = 5;
    static final int OFF_POSITION = 0;
    static final int OFF_WIDTH = 3;
    static final int OFF_X = 1;
    static final int OFF_Y = 2;
    public static final boolean OLD_WAY = false;
    public static final int PERPENDICULAR = 1;
    public static final int SCREEN = 2;
    public static final String TAG = "MotionPaths";
    static String[] names = {"position", y.b.f83919g, y.b.f83920h, "width", "height", "pathRotate"};
    HashMap<String, CustomVariable> customAttributes;
    float height;
    int mAnimateCircleAngleTo;
    int mAnimateRelativeTo;
    int mDrawPath;
    Easing mKeyFrameEasing;
    int mMode;
    int mPathMotionArc;
    float mPathRotate;
    float mProgress;
    float mRelativeAngle;
    Motion mRelativeToController;
    double[] mTempDelta;
    double[] mTempValue;
    float position;
    float time;
    float width;

    /* renamed from: x  reason: collision with root package name */
    float f413x;

    /* renamed from: y  reason: collision with root package name */
    float f414y;

    public MotionPaths() {
        this.mDrawPath = 0;
        this.mPathRotate = Float.NaN;
        this.mProgress = Float.NaN;
        this.mPathMotionArc = -1;
        this.mAnimateRelativeTo = -1;
        this.mRelativeAngle = Float.NaN;
        this.mRelativeToController = null;
        this.customAttributes = new HashMap<>();
        this.mMode = 0;
        this.mTempValue = new double[18];
        this.mTempDelta = new double[18];
    }

    private boolean diff(float f10, float f11) {
        return (Float.isNaN(f10) || Float.isNaN(f11)) ? Float.isNaN(f10) != Float.isNaN(f11) : Math.abs(f10 - f11) > 1.0E-6f;
    }

    private static final float xRotate(float f10, float f11, float f12, float f13, float f14, float f15) {
        return (((f14 - f12) * f11) - ((f15 - f13) * f10)) + f12;
    }

    private static final float yRotate(float f10, float f11, float f12, float f13, float f14, float f15) {
        return ((f14 - f12) * f10) + ((f15 - f13) * f11) + f13;
    }

    public void applyParameters(MotionWidget motionWidget) {
        this.mKeyFrameEasing = Easing.getInterpolator(motionWidget.motion.mTransitionEasing);
        MotionWidget.Motion motion = motionWidget.motion;
        this.mPathMotionArc = motion.mPathMotionArc;
        this.mAnimateRelativeTo = motion.mAnimateRelativeTo;
        this.mPathRotate = motion.mPathRotate;
        this.mDrawPath = motion.mDrawPath;
        this.mAnimateCircleAngleTo = motion.mAnimateCircleAngleTo;
        this.mProgress = motionWidget.propertySet.mProgress;
        this.mRelativeAngle = 0.0f;
        for (String str : motionWidget.getCustomAttributeNames()) {
            CustomVariable customAttribute = motionWidget.getCustomAttribute(str);
            if (customAttribute != null && customAttribute.isContinuous()) {
                this.customAttributes.put(str, customAttribute);
            }
        }
    }

    public void configureRelativeTo(Motion motion) {
        motion.getPos(this.mProgress);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void different(MotionPaths motionPaths, boolean[] zArr, String[] strArr, boolean z9) {
        boolean diff = diff(this.f413x, motionPaths.f413x);
        boolean diff2 = diff(this.f414y, motionPaths.f414y);
        zArr[0] = zArr[0] | diff(this.position, motionPaths.position);
        boolean z10 = diff | diff2 | z9;
        zArr[1] = zArr[1] | z10;
        zArr[2] = z10 | zArr[2];
        zArr[3] = zArr[3] | diff(this.width, motionPaths.width);
        zArr[4] = diff(this.height, motionPaths.height) | zArr[4];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void fillStandard(double[] dArr, int[] iArr) {
        float[] fArr = {this.position, this.f413x, this.f414y, this.width, this.height, this.mPathRotate};
        int i4 = 0;
        for (int i10 = 0; i10 < iArr.length; i10++) {
            if (iArr[i10] < 6) {
                dArr[i4] = fArr[iArr[i10]];
                i4++;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void getBounds(int[] iArr, double[] dArr, float[] fArr, int i4) {
        float f10 = this.width;
        float f11 = this.height;
        for (int i10 = 0; i10 < iArr.length; i10++) {
            float f12 = (float) dArr[i10];
            int i11 = iArr[i10];
            if (i11 == 3) {
                f10 = f12;
            } else if (i11 == 4) {
                f11 = f12;
            }
        }
        fArr[i4] = f10;
        fArr[i4 + 1] = f11;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void getCenter(double d4, int[] iArr, double[] dArr, float[] fArr, int i4) {
        float f10 = this.f413x;
        float f11 = this.f414y;
        float f12 = this.width;
        float f13 = this.height;
        for (int i10 = 0; i10 < iArr.length; i10++) {
            float f14 = (float) dArr[i10];
            int i11 = iArr[i10];
            if (i11 == 1) {
                f10 = f14;
            } else if (i11 == 2) {
                f11 = f14;
            } else if (i11 == 3) {
                f12 = f14;
            } else if (i11 == 4) {
                f13 = f14;
            }
        }
        Motion motion = this.mRelativeToController;
        if (motion != null) {
            float[] fArr2 = new float[2];
            motion.getCenter(d4, fArr2, new float[2]);
            float f15 = fArr2[0];
            float f16 = fArr2[1];
            double d10 = f15;
            double d11 = f10;
            double d12 = f11;
            f10 = (float) ((d10 + (Math.sin(d12) * d11)) - (f12 / 2.0f));
            f11 = (float) ((f16 - (d11 * Math.cos(d12))) - (f13 / 2.0f));
        }
        fArr[i4] = f10 + (f12 / 2.0f) + 0.0f;
        fArr[i4 + 1] = f11 + (f13 / 2.0f) + 0.0f;
    }

    void getCenterVelocity(double d4, int[] iArr, double[] dArr, float[] fArr, int i4) {
        float f10 = this.f413x;
        float f11 = this.f414y;
        float f12 = this.width;
        float f13 = this.height;
        for (int i10 = 0; i10 < iArr.length; i10++) {
            float f14 = (float) dArr[i10];
            int i11 = iArr[i10];
            if (i11 == 1) {
                f10 = f14;
            } else if (i11 == 2) {
                f11 = f14;
            } else if (i11 == 3) {
                f12 = f14;
            } else if (i11 == 4) {
                f13 = f14;
            }
        }
        Motion motion = this.mRelativeToController;
        if (motion != null) {
            float[] fArr2 = new float[2];
            motion.getCenter(d4, fArr2, new float[2]);
            float f15 = fArr2[0];
            float f16 = fArr2[1];
            double d10 = f15;
            double d11 = f10;
            double d12 = f11;
            f10 = (float) ((d10 + (Math.sin(d12) * d11)) - (f12 / 2.0f));
            f11 = (float) ((f16 - (d11 * Math.cos(d12))) - (f13 / 2.0f));
        }
        fArr[i4] = f10 + (f12 / 2.0f) + 0.0f;
        fArr[i4 + 1] = f11 + (f13 / 2.0f) + 0.0f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getCustomData(String str, double[] dArr, int i4) {
        CustomVariable customVariable = this.customAttributes.get(str);
        int i10 = 0;
        if (customVariable == null) {
            return 0;
        }
        if (customVariable.numberOfInterpolatedValues() == 1) {
            dArr[i4] = customVariable.getValueToInterpolate();
            return 1;
        }
        int numberOfInterpolatedValues = customVariable.numberOfInterpolatedValues();
        float[] fArr = new float[numberOfInterpolatedValues];
        customVariable.getValuesToInterpolate(fArr);
        while (i10 < numberOfInterpolatedValues) {
            dArr[i4] = fArr[i10];
            i10++;
            i4++;
        }
        return numberOfInterpolatedValues;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getCustomDataCount(String str) {
        CustomVariable customVariable = this.customAttributes.get(str);
        if (customVariable == null) {
            return 0;
        }
        return customVariable.numberOfInterpolatedValues();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void getRect(int[] iArr, double[] dArr, float[] fArr, int i4) {
        float f10 = this.f413x;
        float f11 = this.f414y;
        float f12 = this.width;
        float f13 = this.height;
        for (int i10 = 0; i10 < iArr.length; i10++) {
            float f14 = (float) dArr[i10];
            int i11 = iArr[i10];
            if (i11 == 1) {
                f10 = f14;
            } else if (i11 == 2) {
                f11 = f14;
            } else if (i11 == 3) {
                f12 = f14;
            } else if (i11 == 4) {
                f13 = f14;
            }
        }
        Motion motion = this.mRelativeToController;
        if (motion != null) {
            float centerX = motion.getCenterX();
            double d4 = f10;
            double d10 = f11;
            f11 = (float) ((this.mRelativeToController.getCenterY() - (d4 * Math.cos(d10))) - (f13 / 2.0f));
            f10 = (float) ((centerX + (Math.sin(d10) * d4)) - (f12 / 2.0f));
        }
        float f15 = f12 + f10;
        float f16 = f13 + f11;
        Float.isNaN(Float.NaN);
        Float.isNaN(Float.NaN);
        int i12 = i4 + 1;
        fArr[i4] = f10 + 0.0f;
        int i13 = i12 + 1;
        fArr[i12] = f11 + 0.0f;
        int i14 = i13 + 1;
        fArr[i13] = f15 + 0.0f;
        int i15 = i14 + 1;
        fArr[i14] = f11 + 0.0f;
        int i16 = i15 + 1;
        fArr[i15] = f15 + 0.0f;
        int i17 = i16 + 1;
        fArr[i16] = f16 + 0.0f;
        fArr[i17] = f10 + 0.0f;
        fArr[i17 + 1] = f16 + 0.0f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean hasCustomData(String str) {
        return this.customAttributes.containsKey(str);
    }

    void initCartesian(MotionKeyPosition motionKeyPosition, MotionPaths motionPaths, MotionPaths motionPaths2) {
        float f10 = motionKeyPosition.mFramePosition / 100.0f;
        this.time = f10;
        this.mDrawPath = motionKeyPosition.mDrawPath;
        float f11 = Float.isNaN(motionKeyPosition.mPercentWidth) ? f10 : motionKeyPosition.mPercentWidth;
        float f12 = Float.isNaN(motionKeyPosition.mPercentHeight) ? f10 : motionKeyPosition.mPercentHeight;
        float f13 = motionPaths2.width;
        float f14 = motionPaths.width;
        float f15 = motionPaths2.height;
        float f16 = motionPaths.height;
        this.position = this.time;
        float f17 = motionPaths.f413x;
        float f18 = motionPaths.f414y;
        float f19 = (motionPaths2.f413x + (f13 / 2.0f)) - ((f14 / 2.0f) + f17);
        float f20 = (motionPaths2.f414y + (f15 / 2.0f)) - (f18 + (f16 / 2.0f));
        float f21 = (f13 - f14) * f11;
        float f22 = f21 / 2.0f;
        this.f413x = (int) ((f17 + (f19 * f10)) - f22);
        float f23 = (f15 - f16) * f12;
        float f24 = f23 / 2.0f;
        this.f414y = (int) ((f18 + (f20 * f10)) - f24);
        this.width = (int) (f14 + f21);
        this.height = (int) (f16 + f23);
        float f25 = Float.isNaN(motionKeyPosition.mPercentX) ? f10 : motionKeyPosition.mPercentX;
        float f26 = Float.isNaN(motionKeyPosition.mAltPercentY) ? 0.0f : motionKeyPosition.mAltPercentY;
        if (!Float.isNaN(motionKeyPosition.mPercentY)) {
            f10 = motionKeyPosition.mPercentY;
        }
        float f27 = Float.isNaN(motionKeyPosition.mAltPercentX) ? 0.0f : motionKeyPosition.mAltPercentX;
        this.mMode = 0;
        this.f413x = (int) (((motionPaths.f413x + (f25 * f19)) + (f27 * f20)) - f22);
        this.f414y = (int) (((motionPaths.f414y + (f19 * f26)) + (f20 * f10)) - f24);
        this.mKeyFrameEasing = Easing.getInterpolator(motionKeyPosition.mTransitionEasing);
        this.mPathMotionArc = motionKeyPosition.mPathMotionArc;
    }

    void initPath(MotionKeyPosition motionKeyPosition, MotionPaths motionPaths, MotionPaths motionPaths2) {
        float f10;
        float f11;
        float f12 = motionKeyPosition.mFramePosition / 100.0f;
        this.time = f12;
        this.mDrawPath = motionKeyPosition.mDrawPath;
        float f13 = Float.isNaN(motionKeyPosition.mPercentWidth) ? f12 : motionKeyPosition.mPercentWidth;
        float f14 = Float.isNaN(motionKeyPosition.mPercentHeight) ? f12 : motionKeyPosition.mPercentHeight;
        float f15 = motionPaths2.width - motionPaths.width;
        float f16 = motionPaths2.height - motionPaths.height;
        this.position = this.time;
        if (!Float.isNaN(motionKeyPosition.mPercentX)) {
            f12 = motionKeyPosition.mPercentX;
        }
        float f17 = motionPaths.f413x;
        float f18 = motionPaths.width;
        float f19 = motionPaths.f414y;
        float f20 = motionPaths.height;
        float f21 = (motionPaths2.f413x + (motionPaths2.width / 2.0f)) - ((f18 / 2.0f) + f17);
        float f22 = (motionPaths2.f414y + (motionPaths2.height / 2.0f)) - ((f20 / 2.0f) + f19);
        float f23 = f21 * f12;
        float f24 = (f15 * f13) / 2.0f;
        this.f413x = (int) ((f17 + f23) - f24);
        float f25 = f12 * f22;
        float f26 = (f16 * f14) / 2.0f;
        this.f414y = (int) ((f19 + f25) - f26);
        this.width = (int) (f18 + f10);
        this.height = (int) (f20 + f11);
        float f27 = Float.isNaN(motionKeyPosition.mPercentY) ? 0.0f : motionKeyPosition.mPercentY;
        this.mMode = 1;
        float f28 = (int) ((motionPaths.f413x + f23) - f24);
        float f29 = (int) ((motionPaths.f414y + f25) - f26);
        this.f413x = f28 + ((-f22) * f27);
        this.f414y = f29 + (f21 * f27);
        this.mAnimateRelativeTo = this.mAnimateRelativeTo;
        this.mKeyFrameEasing = Easing.getInterpolator(motionKeyPosition.mTransitionEasing);
        this.mPathMotionArc = motionKeyPosition.mPathMotionArc;
    }

    void initPolar(int i4, int i10, MotionKeyPosition motionKeyPosition, MotionPaths motionPaths, MotionPaths motionPaths2) {
        float min;
        float f10;
        float f11 = motionKeyPosition.mFramePosition / 100.0f;
        this.time = f11;
        this.mDrawPath = motionKeyPosition.mDrawPath;
        this.mMode = motionKeyPosition.mPositionType;
        float f12 = Float.isNaN(motionKeyPosition.mPercentWidth) ? f11 : motionKeyPosition.mPercentWidth;
        float f13 = Float.isNaN(motionKeyPosition.mPercentHeight) ? f11 : motionKeyPosition.mPercentHeight;
        float f14 = motionPaths2.width;
        float f15 = motionPaths.width;
        float f16 = motionPaths2.height;
        float f17 = motionPaths.height;
        this.position = this.time;
        this.width = (int) (f15 + ((f14 - f15) * f12));
        this.height = (int) (f17 + ((f16 - f17) * f13));
        int i11 = motionKeyPosition.mPositionType;
        if (i11 == 1) {
            float f18 = Float.isNaN(motionKeyPosition.mPercentX) ? f11 : motionKeyPosition.mPercentX;
            float f19 = motionPaths2.f413x;
            float f20 = motionPaths.f413x;
            this.f413x = (f18 * (f19 - f20)) + f20;
            if (!Float.isNaN(motionKeyPosition.mPercentY)) {
                f11 = motionKeyPosition.mPercentY;
            }
            float f21 = motionPaths2.f414y;
            float f22 = motionPaths.f414y;
            this.f414y = (f11 * (f21 - f22)) + f22;
        } else if (i11 != 2) {
            float f23 = Float.isNaN(motionKeyPosition.mPercentX) ? f11 : motionKeyPosition.mPercentX;
            float f24 = motionPaths2.f413x;
            float f25 = motionPaths.f413x;
            this.f413x = (f23 * (f24 - f25)) + f25;
            if (!Float.isNaN(motionKeyPosition.mPercentY)) {
                f11 = motionKeyPosition.mPercentY;
            }
            float f26 = motionPaths2.f414y;
            float f27 = motionPaths.f414y;
            this.f414y = (f11 * (f26 - f27)) + f27;
        } else {
            if (Float.isNaN(motionKeyPosition.mPercentX)) {
                float f28 = motionPaths2.f413x;
                float f29 = motionPaths.f413x;
                min = ((f28 - f29) * f11) + f29;
            } else {
                min = Math.min(f13, f12) * motionKeyPosition.mPercentX;
            }
            this.f413x = min;
            if (Float.isNaN(motionKeyPosition.mPercentY)) {
                float f30 = motionPaths2.f414y;
                float f31 = motionPaths.f414y;
                f10 = (f11 * (f30 - f31)) + f31;
            } else {
                f10 = motionKeyPosition.mPercentY;
            }
            this.f414y = f10;
        }
        this.mAnimateRelativeTo = motionPaths.mAnimateRelativeTo;
        this.mKeyFrameEasing = Easing.getInterpolator(motionKeyPosition.mTransitionEasing);
        this.mPathMotionArc = motionKeyPosition.mPathMotionArc;
    }

    void initScreen(int i4, int i10, MotionKeyPosition motionKeyPosition, MotionPaths motionPaths, MotionPaths motionPaths2) {
        float f10 = motionKeyPosition.mFramePosition / 100.0f;
        this.time = f10;
        this.mDrawPath = motionKeyPosition.mDrawPath;
        float f11 = Float.isNaN(motionKeyPosition.mPercentWidth) ? f10 : motionKeyPosition.mPercentWidth;
        float f12 = Float.isNaN(motionKeyPosition.mPercentHeight) ? f10 : motionKeyPosition.mPercentHeight;
        float f13 = motionPaths2.width;
        float f14 = motionPaths.width;
        float f15 = motionPaths2.height;
        float f16 = motionPaths.height;
        this.position = this.time;
        float f17 = motionPaths.f413x;
        float f18 = motionPaths.f414y;
        float f19 = motionPaths2.f413x + (f13 / 2.0f);
        float f20 = motionPaths2.f414y + (f15 / 2.0f);
        float f21 = (f13 - f14) * f11;
        this.f413x = (int) ((f17 + ((f19 - ((f14 / 2.0f) + f17)) * f10)) - (f21 / 2.0f));
        float f22 = (f15 - f16) * f12;
        this.f414y = (int) ((f18 + ((f20 - (f18 + (f16 / 2.0f))) * f10)) - (f22 / 2.0f));
        this.width = (int) (f14 + f21);
        this.height = (int) (f16 + f22);
        this.mMode = 2;
        if (!Float.isNaN(motionKeyPosition.mPercentX)) {
            this.f413x = (int) (motionKeyPosition.mPercentX * ((int) (i4 - this.width)));
        }
        if (!Float.isNaN(motionKeyPosition.mPercentY)) {
            this.f414y = (int) (motionKeyPosition.mPercentY * ((int) (i10 - this.height)));
        }
        this.mAnimateRelativeTo = this.mAnimateRelativeTo;
        this.mKeyFrameEasing = Easing.getInterpolator(motionKeyPosition.mTransitionEasing);
        this.mPathMotionArc = motionKeyPosition.mPathMotionArc;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setBounds(float f10, float f11, float f12, float f13) {
        this.f413x = f10;
        this.f414y = f11;
        this.width = f12;
        this.height = f13;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setDpDt(float f10, float f11, float[] fArr, int[] iArr, double[] dArr, double[] dArr2) {
        float f12 = 0.0f;
        float f13 = 0.0f;
        float f14 = 0.0f;
        float f15 = 0.0f;
        for (int i4 = 0; i4 < iArr.length; i4++) {
            float f16 = (float) dArr[i4];
            double d4 = dArr2[i4];
            int i10 = iArr[i4];
            if (i10 == 1) {
                f12 = f16;
            } else if (i10 == 2) {
                f14 = f16;
            } else if (i10 == 3) {
                f13 = f16;
            } else if (i10 == 4) {
                f15 = f16;
            }
        }
        float f17 = f12 - ((0.0f * f13) / 2.0f);
        float f18 = f14 - ((0.0f * f15) / 2.0f);
        fArr[0] = (f17 * (1.0f - f10)) + (((f13 * 1.0f) + f17) * f10) + 0.0f;
        fArr[1] = (f18 * (1.0f - f11)) + (((f15 * 1.0f) + f18) * f11) + 0.0f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setView(float f10, MotionWidget motionWidget, int[] iArr, double[] dArr, double[] dArr2, double[] dArr3) {
        float f11;
        float f12;
        float f13 = this.f413x;
        float f14 = this.f414y;
        float f15 = this.width;
        float f16 = this.height;
        if (iArr.length != 0 && this.mTempValue.length <= iArr[iArr.length - 1]) {
            int i4 = iArr[iArr.length - 1] + 1;
            this.mTempValue = new double[i4];
            this.mTempDelta = new double[i4];
        }
        Arrays.fill(this.mTempValue, Double.NaN);
        for (int i10 = 0; i10 < iArr.length; i10++) {
            this.mTempValue[iArr[i10]] = dArr[i10];
            this.mTempDelta[iArr[i10]] = dArr2[i10];
        }
        float f17 = Float.NaN;
        int i11 = 0;
        float f18 = 0.0f;
        float f19 = 0.0f;
        float f20 = 0.0f;
        float f21 = 0.0f;
        while (true) {
            double[] dArr4 = this.mTempValue;
            if (i11 >= dArr4.length) {
                break;
            }
            if (Double.isNaN(dArr4[i11]) && (dArr3 == null || dArr3[i11] == 0.0d)) {
                f12 = f17;
            } else {
                double d4 = dArr3 != null ? dArr3[i11] : 0.0d;
                if (!Double.isNaN(this.mTempValue[i11])) {
                    d4 = this.mTempValue[i11] + d4;
                }
                f12 = f17;
                float f22 = (float) d4;
                float f23 = (float) this.mTempDelta[i11];
                if (i11 == 1) {
                    f17 = f12;
                    f18 = f23;
                    f13 = f22;
                } else if (i11 == 2) {
                    f17 = f12;
                    f19 = f23;
                    f14 = f22;
                } else if (i11 == 3) {
                    f17 = f12;
                    f20 = f23;
                    f15 = f22;
                } else if (i11 == 4) {
                    f17 = f12;
                    f21 = f23;
                    f16 = f22;
                } else if (i11 == 5) {
                    f17 = f22;
                }
                i11++;
            }
            f17 = f12;
            i11++;
        }
        float f24 = f17;
        Motion motion = this.mRelativeToController;
        if (motion != null) {
            float[] fArr = new float[2];
            float[] fArr2 = new float[2];
            motion.getCenter(f10, fArr, fArr2);
            float f25 = fArr[0];
            float f26 = fArr[1];
            float f27 = fArr2[0];
            float f28 = fArr2[1];
            double d10 = f13;
            double d11 = f14;
            float sin = (float) ((f25 + (Math.sin(d11) * d10)) - (f15 / 2.0f));
            f11 = f16;
            float cos = (float) ((f26 - (Math.cos(d11) * d10)) - (f16 / 2.0f));
            double d12 = f18;
            double d13 = f19;
            float sin2 = (float) (f27 + (Math.sin(d11) * d12) + (Math.cos(d11) * d10 * d13));
            float cos2 = (float) ((f28 - (d12 * Math.cos(d11))) + (d10 * Math.sin(d11) * d13));
            if (dArr2.length >= 2) {
                dArr2[0] = sin2;
                dArr2[1] = cos2;
            }
            if (!Float.isNaN(f24)) {
                motionWidget.setRotationZ((float) (f24 + Math.toDegrees(Math.atan2(cos2, sin2))));
            }
            f13 = sin;
            f14 = cos;
        } else {
            f11 = f16;
            if (!Float.isNaN(f24)) {
                motionWidget.setRotationZ((float) (0.0f + f24 + Math.toDegrees(Math.atan2(f19 + (f21 / 2.0f), f18 + (f20 / 2.0f)))));
            }
        }
        float f29 = f13 + 0.5f;
        float f30 = f14 + 0.5f;
        motionWidget.layout((int) f29, (int) f30, (int) (f29 + f15), (int) (f30 + f11));
    }

    public void setupRelative(Motion motion, MotionPaths motionPaths) {
        double d4 = ((this.f413x + (this.width / 2.0f)) - motionPaths.f413x) - (motionPaths.width / 2.0f);
        double d10 = ((this.f414y + (this.height / 2.0f)) - motionPaths.f414y) - (motionPaths.height / 2.0f);
        this.mRelativeToController = motion;
        this.f413x = (float) Math.hypot(d10, d4);
        if (Float.isNaN(this.mRelativeAngle)) {
            this.f414y = (float) (Math.atan2(d10, d4) + 1.5707963267948966d);
        } else {
            this.f414y = (float) Math.toRadians(this.mRelativeAngle);
        }
    }

    @Override // java.lang.Comparable
    public int compareTo(MotionPaths motionPaths) {
        return Float.compare(this.position, motionPaths.position);
    }

    public MotionPaths(int i4, int i10, MotionKeyPosition motionKeyPosition, MotionPaths motionPaths, MotionPaths motionPaths2) {
        this.mDrawPath = 0;
        this.mPathRotate = Float.NaN;
        this.mProgress = Float.NaN;
        this.mPathMotionArc = -1;
        this.mAnimateRelativeTo = -1;
        this.mRelativeAngle = Float.NaN;
        this.mRelativeToController = null;
        this.customAttributes = new HashMap<>();
        this.mMode = 0;
        this.mTempValue = new double[18];
        this.mTempDelta = new double[18];
        if (motionPaths.mAnimateRelativeTo != -1) {
            initPolar(i4, i10, motionKeyPosition, motionPaths, motionPaths2);
            return;
        }
        int i11 = motionKeyPosition.mPositionType;
        if (i11 == 1) {
            initPath(motionKeyPosition, motionPaths, motionPaths2);
        } else if (i11 != 2) {
            initCartesian(motionKeyPosition, motionPaths, motionPaths2);
        } else {
            initScreen(i4, i10, motionKeyPosition, motionPaths, motionPaths2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void getCenter(double d4, int[] iArr, double[] dArr, float[] fArr, double[] dArr2, float[] fArr2) {
        float f10;
        float f11 = this.f413x;
        float f12 = this.f414y;
        float f13 = this.width;
        float f14 = this.height;
        float f15 = 0.0f;
        float f16 = 0.0f;
        float f17 = 0.0f;
        float f18 = 0.0f;
        for (int i4 = 0; i4 < iArr.length; i4++) {
            float f19 = (float) dArr[i4];
            float f20 = (float) dArr2[i4];
            int i10 = iArr[i4];
            if (i10 == 1) {
                f11 = f19;
                f15 = f20;
            } else if (i10 == 2) {
                f12 = f19;
                f17 = f20;
            } else if (i10 == 3) {
                f13 = f19;
                f16 = f20;
            } else if (i10 == 4) {
                f14 = f19;
                f18 = f20;
            }
        }
        float f21 = 2.0f;
        float f22 = (f16 / 2.0f) + f15;
        float f23 = (f18 / 2.0f) + f17;
        Motion motion = this.mRelativeToController;
        if (motion != null) {
            float[] fArr3 = new float[2];
            float[] fArr4 = new float[2];
            motion.getCenter(d4, fArr3, fArr4);
            float f24 = fArr3[0];
            float f25 = fArr3[1];
            float f26 = fArr4[0];
            float f27 = fArr4[1];
            double d10 = f11;
            double d11 = f12;
            f10 = f13;
            double d12 = f15;
            double d13 = f17;
            float sin = (float) (f26 + (Math.sin(d11) * d12) + (Math.cos(d11) * d13));
            f23 = (float) ((f27 - (d12 * Math.cos(d11))) + (Math.sin(d11) * d13));
            f22 = sin;
            f11 = (float) ((f24 + (Math.sin(d11) * d10)) - (f13 / 2.0f));
            f12 = (float) ((f25 - (d10 * Math.cos(d11))) - (f14 / 2.0f));
            f21 = 2.0f;
        } else {
            f10 = f13;
        }
        fArr[0] = f11 + (f10 / f21) + 0.0f;
        fArr[1] = f12 + (f14 / f21) + 0.0f;
        fArr2[0] = f22;
        fArr2[1] = f23;
    }
}

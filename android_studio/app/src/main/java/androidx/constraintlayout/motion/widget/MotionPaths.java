package androidx.constraintlayout.motion.widget;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.constraintlayout.core.motion.utils.Easing;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.ConstraintSet;
import io.sentry.protocol.y;
import java.util.Arrays;
import java.util.LinkedHashMap;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class MotionPaths implements Comparable<MotionPaths> {
    static final int CARTESIAN = 0;
    public static final boolean DEBUG = false;
    static final int OFF_HEIGHT = 4;
    static final int OFF_PATH_ROTATE = 5;
    static final int OFF_POSITION = 0;
    static final int OFF_WIDTH = 3;
    static final int OFF_X = 1;
    static final int OFF_Y = 2;
    public static final boolean OLD_WAY = false;
    static final int PERPENDICULAR = 1;
    static final int SCREEN = 2;
    public static final String TAG = "MotionPaths";
    static String[] names = {"position", y.b.f83919g, y.b.f83920h, "width", "height", "pathRotate"};
    LinkedHashMap<String, ConstraintAttribute> attributes;
    float height;
    int mAnimateCircleAngleTo;
    int mAnimateRelativeTo;
    Easing mKeyFrameEasing;
    int mMode;
    int mPathMotionArc;
    float mRelativeAngle;
    MotionController mRelativeToController;
    double[] mTempDelta;
    double[] mTempValue;
    float position;
    float time;
    float width;

    /* renamed from: x  reason: collision with root package name */
    float f437x;

    /* renamed from: y  reason: collision with root package name */
    float f438y;
    int mDrawPath = 0;
    float mPathRotate = Float.NaN;
    float mProgress = Float.NaN;

    public MotionPaths() {
        int i4 = Key.UNSET;
        this.mPathMotionArc = i4;
        this.mAnimateRelativeTo = i4;
        this.mRelativeAngle = Float.NaN;
        this.mRelativeToController = null;
        this.attributes = new LinkedHashMap<>();
        this.mMode = 0;
        this.mTempValue = new double[18];
        this.mTempDelta = new double[18];
    }

    private boolean diff(float a10, float b10) {
        return (Float.isNaN(a10) || Float.isNaN(b10)) ? Float.isNaN(a10) != Float.isNaN(b10) : Math.abs(a10 - b10) > 1.0E-6f;
    }

    private static final float xRotate(float sin, float cos, float cx, float cy, float x9, float y9) {
        return (((x9 - cx) * cos) - ((y9 - cy) * sin)) + cx;
    }

    private static final float yRotate(float sin, float cos, float cx, float cy, float x9, float y9) {
        return ((x9 - cx) * sin) + ((y9 - cy) * cos) + cy;
    }

    public void applyParameters(ConstraintSet.Constraint c10) {
        this.mKeyFrameEasing = Easing.getInterpolator(c10.motion.mTransitionEasing);
        ConstraintSet.Motion motion = c10.motion;
        this.mPathMotionArc = motion.mPathMotionArc;
        this.mAnimateRelativeTo = motion.mAnimateRelativeTo;
        this.mPathRotate = motion.mPathRotate;
        this.mDrawPath = motion.mDrawPath;
        this.mAnimateCircleAngleTo = motion.mAnimateCircleAngleTo;
        this.mProgress = c10.propertySet.mProgress;
        this.mRelativeAngle = c10.layout.circleAngle;
        for (String str : c10.mCustomConstraints.keySet()) {
            ConstraintAttribute constraintAttribute = c10.mCustomConstraints.get(str);
            if (constraintAttribute != null && constraintAttribute.isContinuous()) {
                this.attributes.put(str, constraintAttribute);
            }
        }
    }

    public void configureRelativeTo(MotionController toOrbit) {
        toOrbit.getPos(this.mProgress);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void different(MotionPaths points, boolean[] mask, String[] custom, boolean arcMode) {
        boolean diff = diff(this.f437x, points.f437x);
        boolean diff2 = diff(this.f438y, points.f438y);
        mask[0] = mask[0] | diff(this.position, points.position);
        boolean z9 = diff | diff2 | arcMode;
        mask[1] = mask[1] | z9;
        mask[2] = z9 | mask[2];
        mask[3] = mask[3] | diff(this.width, points.width);
        mask[4] = diff(this.height, points.height) | mask[4];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void fillStandard(double[] data, int[] toUse) {
        float[] fArr = {this.position, this.f437x, this.f438y, this.width, this.height, this.mPathRotate};
        int i4 = 0;
        for (int i10 = 0; i10 < toUse.length; i10++) {
            if (toUse[i10] < 6) {
                data[i4] = fArr[toUse[i10]];
                i4++;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void getBounds(int[] toUse, double[] data, float[] point, int offset) {
        float f10 = this.width;
        float f11 = this.height;
        for (int i4 = 0; i4 < toUse.length; i4++) {
            float f12 = (float) data[i4];
            int i10 = toUse[i4];
            if (i10 == 3) {
                f10 = f12;
            } else if (i10 == 4) {
                f11 = f12;
            }
        }
        point[offset] = f10;
        point[offset + 1] = f11;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void getCenter(double p9, int[] toUse, double[] data, float[] point, int offset) {
        float f10 = this.f437x;
        float f11 = this.f438y;
        float f12 = this.width;
        float f13 = this.height;
        for (int i4 = 0; i4 < toUse.length; i4++) {
            float f14 = (float) data[i4];
            int i10 = toUse[i4];
            if (i10 == 1) {
                f10 = f14;
            } else if (i10 == 2) {
                f11 = f14;
            } else if (i10 == 3) {
                f12 = f14;
            } else if (i10 == 4) {
                f13 = f14;
            }
        }
        MotionController motionController = this.mRelativeToController;
        if (motionController != null) {
            float[] fArr = new float[2];
            motionController.getCenter(p9, fArr, new float[2]);
            float f15 = fArr[0];
            float f16 = fArr[1];
            double d4 = f15;
            double d10 = f10;
            double d11 = f11;
            f10 = (float) ((d4 + (Math.sin(d11) * d10)) - (f12 / 2.0f));
            f11 = (float) ((f16 - (d10 * Math.cos(d11))) - (f13 / 2.0f));
        }
        point[offset] = f10 + (f12 / 2.0f) + 0.0f;
        point[offset + 1] = f11 + (f13 / 2.0f) + 0.0f;
    }

    void getCenterVelocity(double p9, int[] toUse, double[] data, float[] point, int offset) {
        float f10 = this.f437x;
        float f11 = this.f438y;
        float f12 = this.width;
        float f13 = this.height;
        for (int i4 = 0; i4 < toUse.length; i4++) {
            float f14 = (float) data[i4];
            int i10 = toUse[i4];
            if (i10 == 1) {
                f10 = f14;
            } else if (i10 == 2) {
                f11 = f14;
            } else if (i10 == 3) {
                f12 = f14;
            } else if (i10 == 4) {
                f13 = f14;
            }
        }
        MotionController motionController = this.mRelativeToController;
        if (motionController != null) {
            float[] fArr = new float[2];
            motionController.getCenter(p9, fArr, new float[2]);
            float f15 = fArr[0];
            float f16 = fArr[1];
            double d4 = f15;
            double d10 = f10;
            double d11 = f11;
            f10 = (float) ((d4 + (Math.sin(d11) * d10)) - (f12 / 2.0f));
            f11 = (float) ((f16 - (d10 * Math.cos(d11))) - (f13 / 2.0f));
        }
        point[offset] = f10 + (f12 / 2.0f) + 0.0f;
        point[offset + 1] = f11 + (f13 / 2.0f) + 0.0f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getCustomData(String name, double[] value, int offset) {
        ConstraintAttribute constraintAttribute = this.attributes.get(name);
        int i4 = 0;
        if (constraintAttribute == null) {
            return 0;
        }
        if (constraintAttribute.numberOfInterpolatedValues() == 1) {
            value[offset] = constraintAttribute.getValueToInterpolate();
            return 1;
        }
        int numberOfInterpolatedValues = constraintAttribute.numberOfInterpolatedValues();
        float[] fArr = new float[numberOfInterpolatedValues];
        constraintAttribute.getValuesToInterpolate(fArr);
        while (i4 < numberOfInterpolatedValues) {
            value[offset] = fArr[i4];
            i4++;
            offset++;
        }
        return numberOfInterpolatedValues;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getCustomDataCount(String name) {
        ConstraintAttribute constraintAttribute = this.attributes.get(name);
        if (constraintAttribute == null) {
            return 0;
        }
        return constraintAttribute.numberOfInterpolatedValues();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void getRect(int[] toUse, double[] data, float[] path, int offset) {
        float f10 = this.f437x;
        float f11 = this.f438y;
        float f12 = this.width;
        float f13 = this.height;
        for (int i4 = 0; i4 < toUse.length; i4++) {
            float f14 = (float) data[i4];
            int i10 = toUse[i4];
            if (i10 == 1) {
                f10 = f14;
            } else if (i10 == 2) {
                f11 = f14;
            } else if (i10 == 3) {
                f12 = f14;
            } else if (i10 == 4) {
                f13 = f14;
            }
        }
        MotionController motionController = this.mRelativeToController;
        if (motionController != null) {
            float centerX = motionController.getCenterX();
            double d4 = f10;
            double d10 = f11;
            f11 = (float) ((this.mRelativeToController.getCenterY() - (d4 * Math.cos(d10))) - (f13 / 2.0f));
            f10 = (float) ((centerX + (Math.sin(d10) * d4)) - (f12 / 2.0f));
        }
        float f15 = f12 + f10;
        float f16 = f13 + f11;
        Float.isNaN(Float.NaN);
        Float.isNaN(Float.NaN);
        int i11 = offset + 1;
        path[offset] = f10 + 0.0f;
        int i12 = i11 + 1;
        path[i11] = f11 + 0.0f;
        int i13 = i12 + 1;
        path[i12] = f15 + 0.0f;
        int i14 = i13 + 1;
        path[i13] = f11 + 0.0f;
        int i15 = i14 + 1;
        path[i14] = f15 + 0.0f;
        int i16 = i15 + 1;
        path[i15] = f16 + 0.0f;
        path[i16] = f10 + 0.0f;
        path[i16 + 1] = f16 + 0.0f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean hasCustomData(String name) {
        return this.attributes.containsKey(name);
    }

    void initCartesian(KeyPosition c10, MotionPaths startTimePoint, MotionPaths endTimePoint) {
        float f10 = c10.mFramePosition / 100.0f;
        this.time = f10;
        this.mDrawPath = c10.mDrawPath;
        float f11 = Float.isNaN(c10.mPercentWidth) ? f10 : c10.mPercentWidth;
        float f12 = Float.isNaN(c10.mPercentHeight) ? f10 : c10.mPercentHeight;
        float f13 = endTimePoint.width;
        float f14 = startTimePoint.width;
        float f15 = endTimePoint.height;
        float f16 = startTimePoint.height;
        this.position = this.time;
        float f17 = startTimePoint.f437x;
        float f18 = startTimePoint.f438y;
        float f19 = (endTimePoint.f437x + (f13 / 2.0f)) - ((f14 / 2.0f) + f17);
        float f20 = (endTimePoint.f438y + (f15 / 2.0f)) - (f18 + (f16 / 2.0f));
        float f21 = (f13 - f14) * f11;
        float f22 = f21 / 2.0f;
        this.f437x = (int) ((f17 + (f19 * f10)) - f22);
        float f23 = (f15 - f16) * f12;
        float f24 = f23 / 2.0f;
        this.f438y = (int) ((f18 + (f20 * f10)) - f24);
        this.width = (int) (f14 + f21);
        this.height = (int) (f16 + f23);
        float f25 = Float.isNaN(c10.mPercentX) ? f10 : c10.mPercentX;
        float f26 = Float.isNaN(c10.mAltPercentY) ? 0.0f : c10.mAltPercentY;
        if (!Float.isNaN(c10.mPercentY)) {
            f10 = c10.mPercentY;
        }
        float f27 = Float.isNaN(c10.mAltPercentX) ? 0.0f : c10.mAltPercentX;
        this.mMode = 0;
        this.f437x = (int) (((startTimePoint.f437x + (f25 * f19)) + (f27 * f20)) - f22);
        this.f438y = (int) (((startTimePoint.f438y + (f19 * f26)) + (f20 * f10)) - f24);
        this.mKeyFrameEasing = Easing.getInterpolator(c10.mTransitionEasing);
        this.mPathMotionArc = c10.mPathMotionArc;
    }

    void initPath(KeyPosition c10, MotionPaths startTimePoint, MotionPaths endTimePoint) {
        float f10;
        float f11;
        float f12 = c10.mFramePosition / 100.0f;
        this.time = f12;
        this.mDrawPath = c10.mDrawPath;
        float f13 = Float.isNaN(c10.mPercentWidth) ? f12 : c10.mPercentWidth;
        float f14 = Float.isNaN(c10.mPercentHeight) ? f12 : c10.mPercentHeight;
        float f15 = endTimePoint.width - startTimePoint.width;
        float f16 = endTimePoint.height - startTimePoint.height;
        this.position = this.time;
        if (!Float.isNaN(c10.mPercentX)) {
            f12 = c10.mPercentX;
        }
        float f17 = startTimePoint.f437x;
        float f18 = startTimePoint.width;
        float f19 = startTimePoint.f438y;
        float f20 = startTimePoint.height;
        float f21 = (endTimePoint.f437x + (endTimePoint.width / 2.0f)) - ((f18 / 2.0f) + f17);
        float f22 = (endTimePoint.f438y + (endTimePoint.height / 2.0f)) - ((f20 / 2.0f) + f19);
        float f23 = f21 * f12;
        float f24 = (f15 * f13) / 2.0f;
        this.f437x = (int) ((f17 + f23) - f24);
        float f25 = f12 * f22;
        float f26 = (f16 * f14) / 2.0f;
        this.f438y = (int) ((f19 + f25) - f26);
        this.width = (int) (f18 + f10);
        this.height = (int) (f20 + f11);
        float f27 = Float.isNaN(c10.mPercentY) ? 0.0f : c10.mPercentY;
        this.mMode = 1;
        float f28 = (int) ((startTimePoint.f437x + f23) - f24);
        float f29 = (int) ((startTimePoint.f438y + f25) - f26);
        this.f437x = f28 + ((-f22) * f27);
        this.f438y = f29 + (f21 * f27);
        this.mAnimateRelativeTo = this.mAnimateRelativeTo;
        this.mKeyFrameEasing = Easing.getInterpolator(c10.mTransitionEasing);
        this.mPathMotionArc = c10.mPathMotionArc;
    }

    void initPolar(int parentWidth, int parentHeight, KeyPosition c10, MotionPaths s9, MotionPaths e4) {
        float min;
        float f10;
        float f11 = c10.mFramePosition / 100.0f;
        this.time = f11;
        this.mDrawPath = c10.mDrawPath;
        this.mMode = c10.mPositionType;
        float f12 = Float.isNaN(c10.mPercentWidth) ? f11 : c10.mPercentWidth;
        float f13 = Float.isNaN(c10.mPercentHeight) ? f11 : c10.mPercentHeight;
        float f14 = e4.width;
        float f15 = s9.width;
        float f16 = e4.height;
        float f17 = s9.height;
        this.position = this.time;
        this.width = (int) (f15 + ((f14 - f15) * f12));
        this.height = (int) (f17 + ((f16 - f17) * f13));
        int i4 = c10.mPositionType;
        if (i4 == 1) {
            float f18 = Float.isNaN(c10.mPercentX) ? f11 : c10.mPercentX;
            float f19 = e4.f437x;
            float f20 = s9.f437x;
            this.f437x = (f18 * (f19 - f20)) + f20;
            if (!Float.isNaN(c10.mPercentY)) {
                f11 = c10.mPercentY;
            }
            float f21 = e4.f438y;
            float f22 = s9.f438y;
            this.f438y = (f11 * (f21 - f22)) + f22;
        } else if (i4 != 2) {
            float f23 = Float.isNaN(c10.mPercentX) ? f11 : c10.mPercentX;
            float f24 = e4.f437x;
            float f25 = s9.f437x;
            this.f437x = (f23 * (f24 - f25)) + f25;
            if (!Float.isNaN(c10.mPercentY)) {
                f11 = c10.mPercentY;
            }
            float f26 = e4.f438y;
            float f27 = s9.f438y;
            this.f438y = (f11 * (f26 - f27)) + f27;
        } else {
            if (Float.isNaN(c10.mPercentX)) {
                float f28 = e4.f437x;
                float f29 = s9.f437x;
                min = ((f28 - f29) * f11) + f29;
            } else {
                min = Math.min(f13, f12) * c10.mPercentX;
            }
            this.f437x = min;
            if (Float.isNaN(c10.mPercentY)) {
                float f30 = e4.f438y;
                float f31 = s9.f438y;
                f10 = (f11 * (f30 - f31)) + f31;
            } else {
                f10 = c10.mPercentY;
            }
            this.f438y = f10;
        }
        this.mAnimateRelativeTo = s9.mAnimateRelativeTo;
        this.mKeyFrameEasing = Easing.getInterpolator(c10.mTransitionEasing);
        this.mPathMotionArc = c10.mPathMotionArc;
    }

    void initScreen(int parentWidth, int parentHeight, KeyPosition c10, MotionPaths startTimePoint, MotionPaths endTimePoint) {
        float f10 = c10.mFramePosition / 100.0f;
        this.time = f10;
        this.mDrawPath = c10.mDrawPath;
        float f11 = Float.isNaN(c10.mPercentWidth) ? f10 : c10.mPercentWidth;
        float f12 = Float.isNaN(c10.mPercentHeight) ? f10 : c10.mPercentHeight;
        float f13 = endTimePoint.width;
        float f14 = startTimePoint.width;
        float f15 = endTimePoint.height;
        float f16 = startTimePoint.height;
        this.position = this.time;
        float f17 = startTimePoint.f437x;
        float f18 = startTimePoint.f438y;
        float f19 = endTimePoint.f437x + (f13 / 2.0f);
        float f20 = endTimePoint.f438y + (f15 / 2.0f);
        float f21 = (f13 - f14) * f11;
        this.f437x = (int) ((f17 + ((f19 - ((f14 / 2.0f) + f17)) * f10)) - (f21 / 2.0f));
        float f22 = (f15 - f16) * f12;
        this.f438y = (int) ((f18 + ((f20 - (f18 + (f16 / 2.0f))) * f10)) - (f22 / 2.0f));
        this.width = (int) (f14 + f21);
        this.height = (int) (f16 + f22);
        this.mMode = 2;
        if (!Float.isNaN(c10.mPercentX)) {
            this.f437x = (int) (c10.mPercentX * ((int) (parentWidth - this.width)));
        }
        if (!Float.isNaN(c10.mPercentY)) {
            this.f438y = (int) (c10.mPercentY * ((int) (parentHeight - this.height)));
        }
        this.mAnimateRelativeTo = this.mAnimateRelativeTo;
        this.mKeyFrameEasing = Easing.getInterpolator(c10.mTransitionEasing);
        this.mPathMotionArc = c10.mPathMotionArc;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setBounds(float x9, float y9, float w9, float h4) {
        this.f437x = x9;
        this.f438y = y9;
        this.width = w9;
        this.height = h4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setDpDt(float locationX, float locationY, float[] mAnchorDpDt, int[] toUse, double[] deltaData, double[] data) {
        float f10 = 0.0f;
        float f11 = 0.0f;
        float f12 = 0.0f;
        float f13 = 0.0f;
        for (int i4 = 0; i4 < toUse.length; i4++) {
            float f14 = (float) deltaData[i4];
            double d4 = data[i4];
            int i10 = toUse[i4];
            if (i10 == 1) {
                f10 = f14;
            } else if (i10 == 2) {
                f12 = f14;
            } else if (i10 == 3) {
                f11 = f14;
            } else if (i10 == 4) {
                f13 = f14;
            }
        }
        float f15 = f10 - ((0.0f * f11) / 2.0f);
        float f16 = f12 - ((0.0f * f13) / 2.0f);
        mAnchorDpDt[0] = (f15 * (1.0f - locationX)) + (((f11 * 1.0f) + f15) * locationX) + 0.0f;
        mAnchorDpDt[1] = (f16 * (1.0f - locationY)) + (((f13 * 1.0f) + f16) * locationY) + 0.0f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setView(float position, View view, int[] toUse, double[] data, double[] slope, double[] cycle, boolean mForceMeasure) {
        float f10;
        boolean z9;
        float f11;
        float f12 = this.f437x;
        float f13 = this.f438y;
        float f14 = this.width;
        float f15 = this.height;
        if (toUse.length != 0 && this.mTempValue.length <= toUse[toUse.length - 1]) {
            int i4 = toUse[toUse.length - 1] + 1;
            this.mTempValue = new double[i4];
            this.mTempDelta = new double[i4];
        }
        Arrays.fill(this.mTempValue, Double.NaN);
        for (int i10 = 0; i10 < toUse.length; i10++) {
            this.mTempValue[toUse[i10]] = data[i10];
            this.mTempDelta[toUse[i10]] = slope[i10];
        }
        float f16 = Float.NaN;
        int i11 = 0;
        float f17 = 0.0f;
        float f18 = 0.0f;
        float f19 = 0.0f;
        float f20 = 0.0f;
        while (true) {
            double[] dArr = this.mTempValue;
            if (i11 >= dArr.length) {
                break;
            }
            if (Double.isNaN(dArr[i11]) && (cycle == null || cycle[i11] == 0.0d)) {
                f11 = f16;
            } else {
                double d4 = cycle != null ? cycle[i11] : 0.0d;
                if (!Double.isNaN(this.mTempValue[i11])) {
                    d4 = this.mTempValue[i11] + d4;
                }
                f11 = f16;
                float f21 = (float) d4;
                float f22 = (float) this.mTempDelta[i11];
                if (i11 == 1) {
                    f16 = f11;
                    f17 = f22;
                    f12 = f21;
                } else if (i11 == 2) {
                    f16 = f11;
                    f18 = f22;
                    f13 = f21;
                } else if (i11 == 3) {
                    f16 = f11;
                    f19 = f22;
                    f14 = f21;
                } else if (i11 == 4) {
                    f16 = f11;
                    f20 = f22;
                    f15 = f21;
                } else if (i11 == 5) {
                    f16 = f21;
                }
                i11++;
            }
            f16 = f11;
            i11++;
        }
        float f23 = f16;
        MotionController motionController = this.mRelativeToController;
        if (motionController != null) {
            float[] fArr = new float[2];
            float[] fArr2 = new float[2];
            motionController.getCenter(position, fArr, fArr2);
            float f24 = fArr[0];
            float f25 = fArr[1];
            float f26 = fArr2[0];
            float f27 = fArr2[1];
            double d10 = f12;
            double d11 = f13;
            float sin = (float) ((f24 + (Math.sin(d11) * d10)) - (f14 / 2.0f));
            f10 = f15;
            float cos = (float) ((f25 - (Math.cos(d11) * d10)) - (f15 / 2.0f));
            double d12 = f17;
            double d13 = f18;
            float sin2 = (float) (f26 + (Math.sin(d11) * d12) + (Math.cos(d11) * d10 * d13));
            float cos2 = (float) ((f27 - (d12 * Math.cos(d11))) + (d10 * Math.sin(d11) * d13));
            if (slope.length >= 2) {
                z9 = false;
                slope[0] = sin2;
                slope[1] = cos2;
            } else {
                z9 = false;
            }
            if (!Float.isNaN(f23)) {
                view.setRotation((float) (f23 + Math.toDegrees(Math.atan2(cos2, sin2))));
            }
            f12 = sin;
            f13 = cos;
        } else {
            f10 = f15;
            z9 = false;
            if (!Float.isNaN(f23)) {
                view.setRotation((float) (0.0f + f23 + Math.toDegrees(Math.atan2(f18 + (f20 / 2.0f), f17 + (f19 / 2.0f)))));
            }
        }
        if (view instanceof FloatLayout) {
            ((FloatLayout) view).layout(f12, f13, f14 + f12, f13 + f10);
            return;
        }
        float f28 = f12 + 0.5f;
        int i12 = (int) f28;
        float f29 = f13 + 0.5f;
        int i13 = (int) f29;
        int i14 = (int) (f28 + f14);
        int i15 = (int) (f29 + f10);
        int i16 = i14 - i12;
        int i17 = i15 - i13;
        if (((i16 == view.getMeasuredWidth() && i17 == view.getMeasuredHeight()) ? true : true) || mForceMeasure) {
            view.measure(View.MeasureSpec.makeMeasureSpec(i16, 1073741824), View.MeasureSpec.makeMeasureSpec(i17, 1073741824));
        }
        view.layout(i12, i13, i14, i15);
    }

    public void setupRelative(MotionController mc, MotionPaths relative) {
        double d4 = ((this.f437x + (this.width / 2.0f)) - relative.f437x) - (relative.width / 2.0f);
        double d10 = ((this.f438y + (this.height / 2.0f)) - relative.f438y) - (relative.height / 2.0f);
        this.mRelativeToController = mc;
        this.f437x = (float) Math.hypot(d10, d4);
        if (Float.isNaN(this.mRelativeAngle)) {
            this.f438y = (float) (Math.atan2(d10, d4) + 1.5707963267948966d);
        } else {
            this.f438y = (float) Math.toRadians(this.mRelativeAngle);
        }
    }

    @Override // java.lang.Comparable
    public int compareTo(@NonNull MotionPaths o9) {
        return Float.compare(this.position, o9.position);
    }

    public MotionPaths(int parentWidth, int parentHeight, KeyPosition c10, MotionPaths startTimePoint, MotionPaths endTimePoint) {
        int i4 = Key.UNSET;
        this.mPathMotionArc = i4;
        this.mAnimateRelativeTo = i4;
        this.mRelativeAngle = Float.NaN;
        this.mRelativeToController = null;
        this.attributes = new LinkedHashMap<>();
        this.mMode = 0;
        this.mTempValue = new double[18];
        this.mTempDelta = new double[18];
        if (startTimePoint.mAnimateRelativeTo != Key.UNSET) {
            initPolar(parentWidth, parentHeight, c10, startTimePoint, endTimePoint);
            return;
        }
        int i10 = c10.mPositionType;
        if (i10 == 1) {
            initPath(c10, startTimePoint, endTimePoint);
        } else if (i10 != 2) {
            initCartesian(c10, startTimePoint, endTimePoint);
        } else {
            initScreen(parentWidth, parentHeight, c10, startTimePoint, endTimePoint);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void getCenter(double p9, int[] toUse, double[] data, float[] point, double[] vdata, float[] velocity) {
        float f10;
        float f11 = this.f437x;
        float f12 = this.f438y;
        float f13 = this.width;
        float f14 = this.height;
        float f15 = 0.0f;
        float f16 = 0.0f;
        float f17 = 0.0f;
        float f18 = 0.0f;
        for (int i4 = 0; i4 < toUse.length; i4++) {
            float f19 = (float) data[i4];
            float f20 = (float) vdata[i4];
            int i10 = toUse[i4];
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
        MotionController motionController = this.mRelativeToController;
        if (motionController != null) {
            float[] fArr = new float[2];
            float[] fArr2 = new float[2];
            motionController.getCenter(p9, fArr, fArr2);
            float f24 = fArr[0];
            float f25 = fArr[1];
            float f26 = fArr2[0];
            float f27 = fArr2[1];
            double d4 = f11;
            double d10 = f12;
            f10 = f13;
            double d11 = f15;
            double d12 = f17;
            float sin = (float) (f26 + (Math.sin(d10) * d11) + (Math.cos(d10) * d12));
            f23 = (float) ((f27 - (d11 * Math.cos(d10))) + (Math.sin(d10) * d12));
            f22 = sin;
            f11 = (float) ((f24 + (Math.sin(d10) * d4)) - (f13 / 2.0f));
            f12 = (float) ((f25 - (d4 * Math.cos(d10))) - (f14 / 2.0f));
            f21 = 2.0f;
        } else {
            f10 = f13;
        }
        point[0] = f11 + (f10 / f21) + 0.0f;
        point[1] = f12 + (f14 / f21) + 0.0f;
        velocity[0] = f22;
        velocity[1] = f23;
    }
}

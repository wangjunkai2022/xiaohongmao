package androidx.constraintlayout.core.motion;

import androidx.constraintlayout.core.motion.key.MotionKey;
import androidx.constraintlayout.core.motion.key.MotionKeyAttributes;
import androidx.constraintlayout.core.motion.key.MotionKeyCycle;
import androidx.constraintlayout.core.motion.key.MotionKeyPosition;
import androidx.constraintlayout.core.motion.key.MotionKeyTimeCycle;
import androidx.constraintlayout.core.motion.key.MotionKeyTrigger;
import androidx.constraintlayout.core.motion.utils.CurveFit;
import androidx.constraintlayout.core.motion.utils.DifferentialInterpolator;
import androidx.constraintlayout.core.motion.utils.Easing;
import androidx.constraintlayout.core.motion.utils.FloatRect;
import androidx.constraintlayout.core.motion.utils.KeyCache;
import androidx.constraintlayout.core.motion.utils.KeyCycleOscillator;
import androidx.constraintlayout.core.motion.utils.KeyFrameArray;
import androidx.constraintlayout.core.motion.utils.Rect;
import androidx.constraintlayout.core.motion.utils.SplineSet;
import androidx.constraintlayout.core.motion.utils.TimeCycleSplineSet;
import androidx.constraintlayout.core.motion.utils.Utils;
import androidx.constraintlayout.core.motion.utils.VelocityMatrix;
import androidx.constraintlayout.core.motion.utils.ViewState;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes.dex */
public class Motion {
    static final int BOUNCE = 4;
    private static final boolean DEBUG = false;
    public static final int DRAW_PATH_AS_CONFIGURED = 4;
    public static final int DRAW_PATH_BASIC = 1;
    public static final int DRAW_PATH_CARTESIAN = 3;
    public static final int DRAW_PATH_NONE = 0;
    public static final int DRAW_PATH_RECTANGLE = 5;
    public static final int DRAW_PATH_RELATIVE = 2;
    public static final int DRAW_PATH_SCREEN = 6;
    static final int EASE_IN = 1;
    static final int EASE_IN_OUT = 0;
    static final int EASE_OUT = 2;
    private static final boolean FAVOR_FIXED_SIZE_VIEWS = false;
    public static final int HORIZONTAL_PATH_X = 2;
    public static final int HORIZONTAL_PATH_Y = 3;
    private static final int INTERPOLATOR_REFERENCE_ID = -2;
    private static final int INTERPOLATOR_UNDEFINED = -3;
    static final int LINEAR = 3;
    static final int OVERSHOOT = 5;
    public static final int PATH_PERCENT = 0;
    public static final int PATH_PERPENDICULAR = 1;
    public static final int ROTATION_LEFT = 2;
    public static final int ROTATION_RIGHT = 1;
    private static final int SPLINE_STRING = -1;
    private static final String TAG = "MotionController";
    public static final int VERTICAL_PATH_X = 4;
    public static final int VERTICAL_PATH_Y = 5;
    String[] attributeTable;
    private CurveFit mArcSpline;
    private int[] mAttributeInterpolatorCount;
    private String[] mAttributeNames;
    private HashMap<String, SplineSet> mAttributesMap;
    String mConstraintTag;
    float mCurrentCenterX;
    float mCurrentCenterY;
    private HashMap<String, KeyCycleOscillator> mCycleMap;
    int mId;
    private double[] mInterpolateData;
    private int[] mInterpolateVariables;
    private double[] mInterpolateVelocity;
    private MotionKeyTrigger[] mKeyTriggers;
    private CurveFit[] mSpline;
    private HashMap<String, TimeCycleSplineSet> mTimeCycleAttributesMap;
    MotionWidget mView;
    Rect mTempRect = new Rect();
    private int mCurveFitType = -1;
    private MotionPaths mStartMotionPath = new MotionPaths();
    private MotionPaths mEndMotionPath = new MotionPaths();
    private MotionConstrainedPoint mStartPoint = new MotionConstrainedPoint();
    private MotionConstrainedPoint mEndPoint = new MotionConstrainedPoint();
    float mMotionStagger = Float.NaN;
    float mStaggerOffset = 0.0f;
    float mStaggerScale = 1.0f;
    private int MAX_DIMENSION = 4;
    private float[] mValuesBuff = new float[4];
    private ArrayList<MotionPaths> mMotionPaths = new ArrayList<>();
    private float[] mVelocity = new float[1];
    private ArrayList<MotionKey> mKeyList = new ArrayList<>();
    private int mPathMotionArc = -1;
    private int mTransformPivotTarget = -1;
    private MotionWidget mTransformPivotView = null;
    private int mQuantizeMotionSteps = -1;
    private float mQuantizeMotionPhase = Float.NaN;
    private DifferentialInterpolator mQuantizeMotionInterpolator = null;
    private boolean mNoMovement = false;

    public Motion(MotionWidget motionWidget) {
        setView(motionWidget);
    }

    private float getAdjustedPosition(float f10, float[] fArr) {
        float f11 = 0.0f;
        if (fArr != null) {
            fArr[0] = 1.0f;
        } else {
            float f12 = this.mStaggerScale;
            if (f12 != 1.0d) {
                float f13 = this.mStaggerOffset;
                if (f10 < f13) {
                    f10 = 0.0f;
                }
                if (f10 > f13 && f10 < 1.0d) {
                    f10 = Math.min((f10 - f13) * f12, 1.0f);
                }
            }
        }
        Easing easing = this.mStartMotionPath.mKeyFrameEasing;
        float f14 = Float.NaN;
        Iterator<MotionPaths> it = this.mMotionPaths.iterator();
        while (it.hasNext()) {
            MotionPaths next = it.next();
            Easing easing2 = next.mKeyFrameEasing;
            if (easing2 != null) {
                float f15 = next.time;
                if (f15 < f10) {
                    easing = easing2;
                    f11 = f15;
                } else if (Float.isNaN(f14)) {
                    f14 = next.time;
                }
            }
        }
        if (easing != null) {
            float f16 = (Float.isNaN(f14) ? 1.0f : f14) - f11;
            double d4 = (f10 - f11) / f16;
            f10 = (((float) easing.get(d4)) * f16) + f11;
            if (fArr != null) {
                fArr[0] = (float) easing.getDiff(d4);
            }
        }
        return f10;
    }

    private static DifferentialInterpolator getInterpolator(int i4, String str, int i10) {
        if (i4 != -1) {
            return null;
        }
        final Easing interpolator = Easing.getInterpolator(str);
        return new DifferentialInterpolator() { // from class: androidx.constraintlayout.core.motion.Motion.1
            float mX;

            @Override // androidx.constraintlayout.core.motion.utils.DifferentialInterpolator
            public float getInterpolation(float f10) {
                this.mX = f10;
                return (float) Easing.this.get(f10);
            }

            @Override // androidx.constraintlayout.core.motion.utils.DifferentialInterpolator
            public float getVelocity() {
                return (float) Easing.this.getDiff(this.mX);
            }
        };
    }

    private float getPreCycleDistance() {
        char c10;
        float f10;
        float f11;
        float[] fArr = new float[2];
        float f12 = 1.0f / 99;
        double d4 = 0.0d;
        double d10 = 0.0d;
        float f13 = 0.0f;
        int i4 = 0;
        while (i4 < 100) {
            float f14 = i4 * f12;
            double d11 = f14;
            Easing easing = this.mStartMotionPath.mKeyFrameEasing;
            Iterator<MotionPaths> it = this.mMotionPaths.iterator();
            float f15 = Float.NaN;
            float f16 = 0.0f;
            while (it.hasNext()) {
                MotionPaths next = it.next();
                Easing easing2 = next.mKeyFrameEasing;
                if (easing2 != null) {
                    float f17 = next.time;
                    if (f17 < f14) {
                        easing = easing2;
                        f16 = f17;
                    } else if (Float.isNaN(f15)) {
                        f15 = next.time;
                    }
                }
            }
            if (easing != null) {
                if (Float.isNaN(f15)) {
                    f15 = 1.0f;
                }
                d11 = (((float) easing.get((f14 - f16) / f11)) * (f15 - f16)) + f16;
            }
            this.mSpline[0].getPos(d11, this.mInterpolateData);
            float f18 = f13;
            int i10 = i4;
            this.mStartMotionPath.getCenter(d11, this.mInterpolateVariables, this.mInterpolateData, fArr, 0);
            if (i10 > 0) {
                c10 = 0;
                f10 = (float) (f18 + Math.hypot(d10 - fArr[1], d4 - fArr[0]));
            } else {
                c10 = 0;
                f10 = f18;
            }
            d4 = fArr[c10];
            i4 = i10 + 1;
            f13 = f10;
            d10 = fArr[1];
        }
        return f13;
    }

    private void insertKey(MotionPaths motionPaths) {
        Iterator<MotionPaths> it = this.mMotionPaths.iterator();
        MotionPaths motionPaths2 = null;
        while (it.hasNext()) {
            MotionPaths next = it.next();
            if (motionPaths.position == next.position) {
                motionPaths2 = next;
            }
        }
        if (motionPaths2 != null) {
            this.mMotionPaths.remove(motionPaths2);
        }
        int binarySearch = Collections.binarySearch(this.mMotionPaths, motionPaths);
        if (binarySearch == 0) {
            Utils.loge(TAG, " KeyPath position \"" + motionPaths.position + "\" outside of range");
        }
        this.mMotionPaths.add((-binarySearch) - 1, motionPaths);
    }

    private void readView(MotionPaths motionPaths) {
        motionPaths.setBounds(this.mView.getX(), this.mView.getY(), this.mView.getWidth(), this.mView.getHeight());
    }

    public void addKey(MotionKey motionKey) {
        this.mKeyList.add(motionKey);
    }

    void addKeys(ArrayList<MotionKey> arrayList) {
        this.mKeyList.addAll(arrayList);
    }

    void buildBounds(float[] fArr, int i4) {
        float f10;
        float f11 = 1.0f / (i4 - 1);
        HashMap<String, SplineSet> hashMap = this.mAttributesMap;
        if (hashMap != null) {
            hashMap.get("translationX");
        }
        HashMap<String, SplineSet> hashMap2 = this.mAttributesMap;
        if (hashMap2 != null) {
            hashMap2.get("translationY");
        }
        HashMap<String, KeyCycleOscillator> hashMap3 = this.mCycleMap;
        if (hashMap3 != null) {
            hashMap3.get("translationX");
        }
        HashMap<String, KeyCycleOscillator> hashMap4 = this.mCycleMap;
        if (hashMap4 != null) {
            hashMap4.get("translationY");
        }
        for (int i10 = 0; i10 < i4; i10++) {
            float f12 = i10 * f11;
            float f13 = this.mStaggerScale;
            float f14 = 0.0f;
            if (f13 != 1.0f) {
                float f15 = this.mStaggerOffset;
                if (f12 < f15) {
                    f12 = 0.0f;
                }
                if (f12 > f15 && f12 < 1.0d) {
                    f12 = Math.min((f12 - f15) * f13, 1.0f);
                }
            }
            double d4 = f12;
            Easing easing = this.mStartMotionPath.mKeyFrameEasing;
            float f16 = Float.NaN;
            Iterator<MotionPaths> it = this.mMotionPaths.iterator();
            while (it.hasNext()) {
                MotionPaths next = it.next();
                Easing easing2 = next.mKeyFrameEasing;
                if (easing2 != null) {
                    float f17 = next.time;
                    if (f17 < f12) {
                        easing = easing2;
                        f14 = f17;
                    } else if (Float.isNaN(f16)) {
                        f16 = next.time;
                    }
                }
            }
            if (easing != null) {
                if (Float.isNaN(f16)) {
                    f16 = 1.0f;
                }
                d4 = (((float) easing.get((f12 - f14) / f10)) * (f16 - f14)) + f14;
            }
            this.mSpline[0].getPos(d4, this.mInterpolateData);
            CurveFit curveFit = this.mArcSpline;
            if (curveFit != null) {
                double[] dArr = this.mInterpolateData;
                if (dArr.length > 0) {
                    curveFit.getPos(d4, dArr);
                }
            }
            this.mStartMotionPath.getBounds(this.mInterpolateVariables, this.mInterpolateData, fArr, i10 * 2);
        }
    }

    int buildKeyBounds(float[] fArr, int[] iArr) {
        if (fArr != null) {
            double[] timePoints = this.mSpline[0].getTimePoints();
            if (iArr != null) {
                Iterator<MotionPaths> it = this.mMotionPaths.iterator();
                int i4 = 0;
                while (it.hasNext()) {
                    iArr[i4] = it.next().mMode;
                    i4++;
                }
            }
            int i10 = 0;
            for (double d4 : timePoints) {
                this.mSpline[0].getPos(d4, this.mInterpolateData);
                this.mStartMotionPath.getBounds(this.mInterpolateVariables, this.mInterpolateData, fArr, i10);
                i10 += 2;
            }
            return i10 / 2;
        }
        return 0;
    }

    public int buildKeyFrames(float[] fArr, int[] iArr, int[] iArr2) {
        if (fArr != null) {
            double[] timePoints = this.mSpline[0].getTimePoints();
            if (iArr != null) {
                Iterator<MotionPaths> it = this.mMotionPaths.iterator();
                int i4 = 0;
                while (it.hasNext()) {
                    iArr[i4] = it.next().mMode;
                    i4++;
                }
            }
            if (iArr2 != null) {
                Iterator<MotionPaths> it2 = this.mMotionPaths.iterator();
                int i10 = 0;
                while (it2.hasNext()) {
                    iArr2[i10] = (int) (it2.next().position * 100.0f);
                    i10++;
                }
            }
            int i11 = 0;
            for (int i12 = 0; i12 < timePoints.length; i12++) {
                this.mSpline[0].getPos(timePoints[i12], this.mInterpolateData);
                this.mStartMotionPath.getCenter(timePoints[i12], this.mInterpolateVariables, this.mInterpolateData, fArr, i11);
                i11 += 2;
            }
            return i11 / 2;
        }
        return 0;
    }

    public void buildPath(float[] fArr, int i4) {
        double d4;
        float f10;
        float f11 = 1.0f;
        float f12 = 1.0f / (i4 - 1);
        HashMap<String, SplineSet> hashMap = this.mAttributesMap;
        SplineSet splineSet = hashMap == null ? null : hashMap.get("translationX");
        HashMap<String, SplineSet> hashMap2 = this.mAttributesMap;
        SplineSet splineSet2 = hashMap2 == null ? null : hashMap2.get("translationY");
        HashMap<String, KeyCycleOscillator> hashMap3 = this.mCycleMap;
        KeyCycleOscillator keyCycleOscillator = hashMap3 == null ? null : hashMap3.get("translationX");
        HashMap<String, KeyCycleOscillator> hashMap4 = this.mCycleMap;
        KeyCycleOscillator keyCycleOscillator2 = hashMap4 != null ? hashMap4.get("translationY") : null;
        int i10 = 0;
        while (i10 < i4) {
            float f13 = i10 * f12;
            float f14 = this.mStaggerScale;
            if (f14 != f11) {
                float f15 = this.mStaggerOffset;
                if (f13 < f15) {
                    f13 = 0.0f;
                }
                if (f13 > f15 && f13 < 1.0d) {
                    f13 = Math.min((f13 - f15) * f14, f11);
                }
            }
            float f16 = f13;
            double d10 = f16;
            Easing easing = this.mStartMotionPath.mKeyFrameEasing;
            float f17 = Float.NaN;
            Iterator<MotionPaths> it = this.mMotionPaths.iterator();
            float f18 = 0.0f;
            while (it.hasNext()) {
                MotionPaths next = it.next();
                Easing easing2 = next.mKeyFrameEasing;
                double d11 = d10;
                if (easing2 != null) {
                    float f19 = next.time;
                    if (f19 < f16) {
                        f18 = f19;
                        easing = easing2;
                    } else if (Float.isNaN(f17)) {
                        f17 = next.time;
                    }
                }
                d10 = d11;
            }
            double d12 = d10;
            if (easing != null) {
                if (Float.isNaN(f17)) {
                    f17 = 1.0f;
                }
                d4 = (((float) easing.get((f16 - f18) / f10)) * (f17 - f18)) + f18;
            } else {
                d4 = d12;
            }
            this.mSpline[0].getPos(d4, this.mInterpolateData);
            CurveFit curveFit = this.mArcSpline;
            if (curveFit != null) {
                double[] dArr = this.mInterpolateData;
                if (dArr.length > 0) {
                    curveFit.getPos(d4, dArr);
                }
            }
            int i11 = i10 * 2;
            int i12 = i10;
            this.mStartMotionPath.getCenter(d4, this.mInterpolateVariables, this.mInterpolateData, fArr, i11);
            if (keyCycleOscillator != null) {
                fArr[i11] = fArr[i11] + keyCycleOscillator.get(f16);
            } else if (splineSet != null) {
                fArr[i11] = fArr[i11] + splineSet.get(f16);
            }
            if (keyCycleOscillator2 != null) {
                int i13 = i11 + 1;
                fArr[i13] = fArr[i13] + keyCycleOscillator2.get(f16);
            } else if (splineSet2 != null) {
                int i14 = i11 + 1;
                fArr[i14] = fArr[i14] + splineSet2.get(f16);
            }
            i10 = i12 + 1;
            f11 = 1.0f;
        }
    }

    public void buildRect(float f10, float[] fArr, int i4) {
        this.mSpline[0].getPos(getAdjustedPosition(f10, null), this.mInterpolateData);
        this.mStartMotionPath.getRect(this.mInterpolateVariables, this.mInterpolateData, fArr, i4);
    }

    void buildRectangles(float[] fArr, int i4) {
        float f10 = 1.0f / (i4 - 1);
        for (int i10 = 0; i10 < i4; i10++) {
            this.mSpline[0].getPos(getAdjustedPosition(i10 * f10, null), this.mInterpolateData);
            this.mStartMotionPath.getRect(this.mInterpolateVariables, this.mInterpolateData, fArr, i10 * 8);
        }
    }

    void endTrigger(boolean z9) {
    }

    public int getAnimateRelativeTo() {
        return this.mStartMotionPath.mAnimateRelativeTo;
    }

    int getAttributeValues(String str, float[] fArr, int i4) {
        SplineSet splineSet = this.mAttributesMap.get(str);
        if (splineSet == null) {
            return -1;
        }
        for (int i10 = 0; i10 < fArr.length; i10++) {
            fArr[i10] = splineSet.get(i10 / (fArr.length - 1));
        }
        return fArr.length;
    }

    public void getCenter(double d4, float[] fArr, float[] fArr2) {
        double[] dArr = new double[4];
        double[] dArr2 = new double[4];
        this.mSpline[0].getPos(d4, dArr);
        this.mSpline[0].getSlope(d4, dArr2);
        Arrays.fill(fArr2, 0.0f);
        this.mStartMotionPath.getCenter(d4, this.mInterpolateVariables, dArr, fArr, dArr2, fArr2);
    }

    public float getCenterX() {
        return this.mCurrentCenterX;
    }

    public float getCenterY() {
        return this.mCurrentCenterY;
    }

    void getDpDt(float f10, float f11, float f12, float[] fArr) {
        double[] dArr;
        float adjustedPosition = getAdjustedPosition(f10, this.mVelocity);
        CurveFit[] curveFitArr = this.mSpline;
        int i4 = 0;
        if (curveFitArr != null) {
            double d4 = adjustedPosition;
            curveFitArr[0].getSlope(d4, this.mInterpolateVelocity);
            this.mSpline[0].getPos(d4, this.mInterpolateData);
            float f13 = this.mVelocity[0];
            while (true) {
                dArr = this.mInterpolateVelocity;
                if (i4 >= dArr.length) {
                    break;
                }
                dArr[i4] = dArr[i4] * f13;
                i4++;
            }
            CurveFit curveFit = this.mArcSpline;
            if (curveFit != null) {
                double[] dArr2 = this.mInterpolateData;
                if (dArr2.length > 0) {
                    curveFit.getPos(d4, dArr2);
                    this.mArcSpline.getSlope(d4, this.mInterpolateVelocity);
                    this.mStartMotionPath.setDpDt(f11, f12, fArr, this.mInterpolateVariables, this.mInterpolateVelocity, this.mInterpolateData);
                    return;
                }
                return;
            }
            this.mStartMotionPath.setDpDt(f11, f12, fArr, this.mInterpolateVariables, dArr, this.mInterpolateData);
            return;
        }
        MotionPaths motionPaths = this.mEndMotionPath;
        float f14 = motionPaths.f413x;
        MotionPaths motionPaths2 = this.mStartMotionPath;
        float f15 = f14 - motionPaths2.f413x;
        float f16 = motionPaths.f414y - motionPaths2.f414y;
        float f17 = (motionPaths.width - motionPaths2.width) + f15;
        float f18 = (motionPaths.height - motionPaths2.height) + f16;
        fArr[0] = (f15 * (1.0f - f11)) + (f17 * f11);
        fArr[1] = (f16 * (1.0f - f12)) + (f18 * f12);
    }

    public int getDrawPath() {
        int i4 = this.mStartMotionPath.mDrawPath;
        Iterator<MotionPaths> it = this.mMotionPaths.iterator();
        while (it.hasNext()) {
            i4 = Math.max(i4, it.next().mDrawPath);
        }
        return Math.max(i4, this.mEndMotionPath.mDrawPath);
    }

    public float getFinalHeight() {
        return this.mEndMotionPath.height;
    }

    public float getFinalWidth() {
        return this.mEndMotionPath.width;
    }

    public float getFinalX() {
        return this.mEndMotionPath.f413x;
    }

    public float getFinalY() {
        return this.mEndMotionPath.f414y;
    }

    public MotionPaths getKeyFrame(int i4) {
        return this.mMotionPaths.get(i4);
    }

    public int getKeyFrameInfo(int i4, int[] iArr) {
        float[] fArr = new float[2];
        Iterator<MotionKey> it = this.mKeyList.iterator();
        int i10 = 0;
        int i11 = 0;
        while (it.hasNext()) {
            MotionKey next = it.next();
            int i12 = next.mType;
            if (i12 == i4 || i4 != -1) {
                iArr[i11] = 0;
                int i13 = i11 + 1;
                iArr[i13] = i12;
                int i14 = i13 + 1;
                int i15 = next.mFramePosition;
                iArr[i14] = i15;
                double d4 = i15 / 100.0f;
                this.mSpline[0].getPos(d4, this.mInterpolateData);
                this.mStartMotionPath.getCenter(d4, this.mInterpolateVariables, this.mInterpolateData, fArr, 0);
                int i16 = i14 + 1;
                iArr[i16] = Float.floatToIntBits(fArr[0]);
                int i17 = i16 + 1;
                iArr[i17] = Float.floatToIntBits(fArr[1]);
                if (next instanceof MotionKeyPosition) {
                    MotionKeyPosition motionKeyPosition = (MotionKeyPosition) next;
                    int i18 = i17 + 1;
                    iArr[i18] = motionKeyPosition.mPositionType;
                    int i19 = i18 + 1;
                    iArr[i19] = Float.floatToIntBits(motionKeyPosition.mPercentX);
                    i17 = i19 + 1;
                    iArr[i17] = Float.floatToIntBits(motionKeyPosition.mPercentY);
                }
                int i20 = i17 + 1;
                iArr[i11] = i20 - i11;
                i10++;
                i11 = i20;
            }
        }
        return i10;
    }

    float getKeyFrameParameter(int i4, float f10, float f11) {
        MotionPaths motionPaths = this.mEndMotionPath;
        float f12 = motionPaths.f413x;
        MotionPaths motionPaths2 = this.mStartMotionPath;
        float f13 = motionPaths2.f413x;
        float f14 = f12 - f13;
        float f15 = motionPaths.f414y;
        float f16 = motionPaths2.f414y;
        float f17 = f15 - f16;
        float f18 = f13 + (motionPaths2.width / 2.0f);
        float f19 = f16 + (motionPaths2.height / 2.0f);
        float hypot = (float) Math.hypot(f14, f17);
        if (hypot < 1.0E-7d) {
            return Float.NaN;
        }
        float f20 = f10 - f18;
        float f21 = f11 - f19;
        if (((float) Math.hypot(f20, f21)) == 0.0f) {
            return 0.0f;
        }
        float f22 = (f20 * f14) + (f21 * f17);
        if (i4 != 0) {
            if (i4 != 1) {
                if (i4 != 2) {
                    if (i4 != 3) {
                        if (i4 != 4) {
                            if (i4 != 5) {
                                return 0.0f;
                            }
                            return f21 / f17;
                        }
                        return f20 / f17;
                    }
                    return f21 / f14;
                }
                return f20 / f14;
            }
            return (float) Math.sqrt((hypot * hypot) - (f22 * f22));
        }
        return f22 / hypot;
    }

    public int getKeyFramePositions(int[] iArr, float[] fArr) {
        Iterator<MotionKey> it = this.mKeyList.iterator();
        int i4 = 0;
        int i10 = 0;
        while (it.hasNext()) {
            MotionKey next = it.next();
            int i11 = next.mFramePosition;
            iArr[i4] = (next.mType * 1000) + i11;
            double d4 = i11 / 100.0f;
            this.mSpline[0].getPos(d4, this.mInterpolateData);
            this.mStartMotionPath.getCenter(d4, this.mInterpolateVariables, this.mInterpolateData, fArr, i10);
            i10 += 2;
            i4++;
        }
        return i4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public double[] getPos(double d4) {
        this.mSpline[0].getPos(d4, this.mInterpolateData);
        CurveFit curveFit = this.mArcSpline;
        if (curveFit != null) {
            double[] dArr = this.mInterpolateData;
            if (dArr.length > 0) {
                curveFit.getPos(d4, dArr);
            }
        }
        return this.mInterpolateData;
    }

    MotionKeyPosition getPositionKeyframe(int i4, int i10, float f10, float f11) {
        FloatRect floatRect = new FloatRect();
        MotionPaths motionPaths = this.mStartMotionPath;
        float f12 = motionPaths.f413x;
        floatRect.left = f12;
        float f13 = motionPaths.f414y;
        floatRect.top = f13;
        floatRect.right = f12 + motionPaths.width;
        floatRect.bottom = f13 + motionPaths.height;
        FloatRect floatRect2 = new FloatRect();
        MotionPaths motionPaths2 = this.mEndMotionPath;
        float f14 = motionPaths2.f413x;
        floatRect2.left = f14;
        float f15 = motionPaths2.f414y;
        floatRect2.top = f15;
        floatRect2.right = f14 + motionPaths2.width;
        floatRect2.bottom = f15 + motionPaths2.height;
        Iterator<MotionKey> it = this.mKeyList.iterator();
        while (it.hasNext()) {
            MotionKey next = it.next();
            if (next instanceof MotionKeyPosition) {
                MotionKeyPosition motionKeyPosition = (MotionKeyPosition) next;
                if (motionKeyPosition.intersects(i4, i10, floatRect, floatRect2, f10, f11)) {
                    return motionKeyPosition;
                }
            }
        }
        return null;
    }

    void getPostLayoutDvDp(float f10, int i4, int i10, float f11, float f12, float[] fArr) {
        float adjustedPosition = getAdjustedPosition(f10, this.mVelocity);
        HashMap<String, SplineSet> hashMap = this.mAttributesMap;
        SplineSet splineSet = hashMap == null ? null : hashMap.get("translationX");
        HashMap<String, SplineSet> hashMap2 = this.mAttributesMap;
        SplineSet splineSet2 = hashMap2 == null ? null : hashMap2.get("translationY");
        HashMap<String, SplineSet> hashMap3 = this.mAttributesMap;
        SplineSet splineSet3 = hashMap3 == null ? null : hashMap3.get("rotationZ");
        HashMap<String, SplineSet> hashMap4 = this.mAttributesMap;
        SplineSet splineSet4 = hashMap4 == null ? null : hashMap4.get("scaleX");
        HashMap<String, SplineSet> hashMap5 = this.mAttributesMap;
        SplineSet splineSet5 = hashMap5 == null ? null : hashMap5.get("scaleY");
        HashMap<String, KeyCycleOscillator> hashMap6 = this.mCycleMap;
        KeyCycleOscillator keyCycleOscillator = hashMap6 == null ? null : hashMap6.get("translationX");
        HashMap<String, KeyCycleOscillator> hashMap7 = this.mCycleMap;
        KeyCycleOscillator keyCycleOscillator2 = hashMap7 == null ? null : hashMap7.get("translationY");
        HashMap<String, KeyCycleOscillator> hashMap8 = this.mCycleMap;
        KeyCycleOscillator keyCycleOscillator3 = hashMap8 == null ? null : hashMap8.get("rotationZ");
        HashMap<String, KeyCycleOscillator> hashMap9 = this.mCycleMap;
        KeyCycleOscillator keyCycleOscillator4 = hashMap9 == null ? null : hashMap9.get("scaleX");
        HashMap<String, KeyCycleOscillator> hashMap10 = this.mCycleMap;
        KeyCycleOscillator keyCycleOscillator5 = hashMap10 != null ? hashMap10.get("scaleY") : null;
        VelocityMatrix velocityMatrix = new VelocityMatrix();
        velocityMatrix.clear();
        velocityMatrix.setRotationVelocity(splineSet3, adjustedPosition);
        velocityMatrix.setTranslationVelocity(splineSet, splineSet2, adjustedPosition);
        velocityMatrix.setScaleVelocity(splineSet4, splineSet5, adjustedPosition);
        velocityMatrix.setRotationVelocity(keyCycleOscillator3, adjustedPosition);
        velocityMatrix.setTranslationVelocity(keyCycleOscillator, keyCycleOscillator2, adjustedPosition);
        velocityMatrix.setScaleVelocity(keyCycleOscillator4, keyCycleOscillator5, adjustedPosition);
        CurveFit curveFit = this.mArcSpline;
        if (curveFit != null) {
            double[] dArr = this.mInterpolateData;
            if (dArr.length > 0) {
                double d4 = adjustedPosition;
                curveFit.getPos(d4, dArr);
                this.mArcSpline.getSlope(d4, this.mInterpolateVelocity);
                this.mStartMotionPath.setDpDt(f11, f12, fArr, this.mInterpolateVariables, this.mInterpolateVelocity, this.mInterpolateData);
            }
            velocityMatrix.applyTransform(f11, f12, i4, i10, fArr);
            return;
        }
        int i11 = 0;
        if (this.mSpline != null) {
            double adjustedPosition2 = getAdjustedPosition(adjustedPosition, this.mVelocity);
            this.mSpline[0].getSlope(adjustedPosition2, this.mInterpolateVelocity);
            this.mSpline[0].getPos(adjustedPosition2, this.mInterpolateData);
            float f13 = this.mVelocity[0];
            while (true) {
                double[] dArr2 = this.mInterpolateVelocity;
                if (i11 < dArr2.length) {
                    dArr2[i11] = dArr2[i11] * f13;
                    i11++;
                } else {
                    this.mStartMotionPath.setDpDt(f11, f12, fArr, this.mInterpolateVariables, dArr2, this.mInterpolateData);
                    velocityMatrix.applyTransform(f11, f12, i4, i10, fArr);
                    return;
                }
            }
        } else {
            MotionPaths motionPaths = this.mEndMotionPath;
            float f14 = motionPaths.f413x;
            MotionPaths motionPaths2 = this.mStartMotionPath;
            float f15 = f14 - motionPaths2.f413x;
            float f16 = motionPaths.f414y - motionPaths2.f414y;
            KeyCycleOscillator keyCycleOscillator6 = keyCycleOscillator4;
            float f17 = (motionPaths.height - motionPaths2.height) + f16;
            fArr[0] = (f15 * (1.0f - f11)) + (((motionPaths.width - motionPaths2.width) + f15) * f11);
            fArr[1] = (f16 * (1.0f - f12)) + (f17 * f12);
            velocityMatrix.clear();
            velocityMatrix.setRotationVelocity(splineSet3, adjustedPosition);
            velocityMatrix.setTranslationVelocity(splineSet, splineSet2, adjustedPosition);
            velocityMatrix.setScaleVelocity(splineSet4, splineSet5, adjustedPosition);
            velocityMatrix.setRotationVelocity(keyCycleOscillator3, adjustedPosition);
            velocityMatrix.setTranslationVelocity(keyCycleOscillator, keyCycleOscillator2, adjustedPosition);
            velocityMatrix.setScaleVelocity(keyCycleOscillator6, keyCycleOscillator5, adjustedPosition);
            velocityMatrix.applyTransform(f11, f12, i4, i10, fArr);
        }
    }

    public float getStartHeight() {
        return this.mStartMotionPath.height;
    }

    public float getStartWidth() {
        return this.mStartMotionPath.width;
    }

    public float getStartX() {
        return this.mStartMotionPath.f413x;
    }

    public float getStartY() {
        return this.mStartMotionPath.f414y;
    }

    public int getTransformPivotTarget() {
        return this.mTransformPivotTarget;
    }

    public MotionWidget getView() {
        return this.mView;
    }

    public boolean interpolate(MotionWidget motionWidget, float f10, long j4, KeyCache keyCache) {
        double d4;
        MotionWidget motionWidget2;
        float f11;
        float adjustedPosition = getAdjustedPosition(f10, null);
        int i4 = this.mQuantizeMotionSteps;
        if (i4 != -1) {
            float f12 = 1.0f / i4;
            float floor = ((float) Math.floor(adjustedPosition / f12)) * f12;
            float f13 = (adjustedPosition % f12) / f12;
            if (!Float.isNaN(this.mQuantizeMotionPhase)) {
                f13 = (f13 + this.mQuantizeMotionPhase) % 1.0f;
            }
            DifferentialInterpolator differentialInterpolator = this.mQuantizeMotionInterpolator;
            if (differentialInterpolator != null) {
                f11 = differentialInterpolator.getInterpolation(f13);
            } else {
                f11 = ((double) f13) > 0.5d ? 1.0f : 0.0f;
            }
            adjustedPosition = (f11 * f12) + floor;
        }
        float f14 = adjustedPosition;
        HashMap<String, SplineSet> hashMap = this.mAttributesMap;
        if (hashMap != null) {
            for (SplineSet splineSet : hashMap.values()) {
                splineSet.setProperty(motionWidget, f14);
            }
        }
        CurveFit[] curveFitArr = this.mSpline;
        if (curveFitArr != null) {
            double d10 = f14;
            curveFitArr[0].getPos(d10, this.mInterpolateData);
            this.mSpline[0].getSlope(d10, this.mInterpolateVelocity);
            CurveFit curveFit = this.mArcSpline;
            if (curveFit != null) {
                double[] dArr = this.mInterpolateData;
                if (dArr.length > 0) {
                    curveFit.getPos(d10, dArr);
                    this.mArcSpline.getSlope(d10, this.mInterpolateVelocity);
                }
            }
            if (this.mNoMovement) {
                d4 = d10;
            } else {
                d4 = d10;
                this.mStartMotionPath.setView(f14, motionWidget, this.mInterpolateVariables, this.mInterpolateData, this.mInterpolateVelocity, null);
            }
            if (this.mTransformPivotTarget != -1) {
                if (this.mTransformPivotView == null) {
                    this.mTransformPivotView = motionWidget.getParent().findViewById(this.mTransformPivotTarget);
                }
                if (this.mTransformPivotView != null) {
                    float top = (motionWidget2.getTop() + this.mTransformPivotView.getBottom()) / 2.0f;
                    float left = (this.mTransformPivotView.getLeft() + this.mTransformPivotView.getRight()) / 2.0f;
                    if (motionWidget.getRight() - motionWidget.getLeft() > 0 && motionWidget.getBottom() - motionWidget.getTop() > 0) {
                        motionWidget.setPivotX(left - motionWidget.getLeft());
                        motionWidget.setPivotY(top - motionWidget.getTop());
                    }
                }
            }
            int i10 = 1;
            while (true) {
                CurveFit[] curveFitArr2 = this.mSpline;
                if (i10 >= curveFitArr2.length) {
                    break;
                }
                curveFitArr2[i10].getPos(d4, this.mValuesBuff);
                this.mStartMotionPath.customAttributes.get(this.mAttributeNames[i10 - 1]).setInterpolatedValue(motionWidget, this.mValuesBuff);
                i10++;
            }
            MotionConstrainedPoint motionConstrainedPoint = this.mStartPoint;
            if (motionConstrainedPoint.mVisibilityMode == 0) {
                if (f14 <= 0.0f) {
                    motionWidget.setVisibility(motionConstrainedPoint.visibility);
                } else if (f14 >= 1.0f) {
                    motionWidget.setVisibility(this.mEndPoint.visibility);
                } else if (this.mEndPoint.visibility != motionConstrainedPoint.visibility) {
                    motionWidget.setVisibility(4);
                }
            }
            if (this.mKeyTriggers != null) {
                int i11 = 0;
                while (true) {
                    MotionKeyTrigger[] motionKeyTriggerArr = this.mKeyTriggers;
                    if (i11 >= motionKeyTriggerArr.length) {
                        break;
                    }
                    motionKeyTriggerArr[i11].conditionallyFire(f14, motionWidget);
                    i11++;
                }
            }
        } else {
            MotionPaths motionPaths = this.mStartMotionPath;
            float f15 = motionPaths.f413x;
            MotionPaths motionPaths2 = this.mEndMotionPath;
            float f16 = f15 + ((motionPaths2.f413x - f15) * f14);
            float f17 = motionPaths.f414y;
            float f18 = f17 + ((motionPaths2.f414y - f17) * f14);
            float f19 = motionPaths.width;
            float f20 = f19 + ((motionPaths2.width - f19) * f14);
            float f21 = motionPaths.height;
            float f22 = f16 + 0.5f;
            float f23 = f18 + 0.5f;
            motionWidget.layout((int) f22, (int) f23, (int) (f22 + f20), (int) (f23 + f21 + ((motionPaths2.height - f21) * f14)));
        }
        HashMap<String, KeyCycleOscillator> hashMap2 = this.mCycleMap;
        if (hashMap2 != null) {
            for (KeyCycleOscillator keyCycleOscillator : hashMap2.values()) {
                if (keyCycleOscillator instanceof KeyCycleOscillator.PathRotateSet) {
                    double[] dArr2 = this.mInterpolateVelocity;
                    ((KeyCycleOscillator.PathRotateSet) keyCycleOscillator).setPathRotate(motionWidget, f14, dArr2[0], dArr2[1]);
                } else {
                    keyCycleOscillator.setProperty(motionWidget, f14);
                }
            }
            return false;
        }
        return false;
    }

    String name() {
        return this.mView.getName();
    }

    void positionKeyframe(MotionWidget motionWidget, MotionKeyPosition motionKeyPosition, float f10, float f11, String[] strArr, float[] fArr) {
        FloatRect floatRect = new FloatRect();
        MotionPaths motionPaths = this.mStartMotionPath;
        float f12 = motionPaths.f413x;
        floatRect.left = f12;
        float f13 = motionPaths.f414y;
        floatRect.top = f13;
        floatRect.right = f12 + motionPaths.width;
        floatRect.bottom = f13 + motionPaths.height;
        FloatRect floatRect2 = new FloatRect();
        MotionPaths motionPaths2 = this.mEndMotionPath;
        float f14 = motionPaths2.f413x;
        floatRect2.left = f14;
        float f15 = motionPaths2.f414y;
        floatRect2.top = f15;
        floatRect2.right = f14 + motionPaths2.width;
        floatRect2.bottom = f15 + motionPaths2.height;
        motionKeyPosition.positionAttributes(motionWidget, floatRect, floatRect2, f10, f11, strArr, fArr);
    }

    void rotate(Rect rect, Rect rect2, int i4, int i10, int i11) {
        if (i4 == 1) {
            int i12 = rect.left + rect.right;
            rect2.left = ((rect.top + rect.bottom) - rect.width()) / 2;
            rect2.top = i11 - ((i12 + rect.height()) / 2);
            rect2.right = rect2.left + rect.width();
            rect2.bottom = rect2.top + rect.height();
        } else if (i4 == 2) {
            int i13 = rect.left + rect.right;
            rect2.left = i10 - (((rect.top + rect.bottom) + rect.width()) / 2);
            rect2.top = (i13 - rect.height()) / 2;
            rect2.right = rect2.left + rect.width();
            rect2.bottom = rect2.top + rect.height();
        } else if (i4 == 3) {
            int i14 = rect.left + rect.right;
            rect2.left = ((rect.height() / 2) + rect.top) - (i14 / 2);
            rect2.top = i11 - ((i14 + rect.height()) / 2);
            rect2.right = rect2.left + rect.width();
            rect2.bottom = rect2.top + rect.height();
        } else if (i4 != 4) {
        } else {
            int i15 = rect.left + rect.right;
            rect2.left = i10 - (((rect.bottom + rect.top) + rect.width()) / 2);
            rect2.top = (i15 - rect.height()) / 2;
            rect2.right = rect2.left + rect.width();
            rect2.bottom = rect2.top + rect.height();
        }
    }

    void setBothStates(MotionWidget motionWidget) {
        MotionPaths motionPaths = this.mStartMotionPath;
        motionPaths.time = 0.0f;
        motionPaths.position = 0.0f;
        this.mNoMovement = true;
        motionPaths.setBounds(motionWidget.getX(), motionWidget.getY(), motionWidget.getWidth(), motionWidget.getHeight());
        this.mEndMotionPath.setBounds(motionWidget.getX(), motionWidget.getY(), motionWidget.getWidth(), motionWidget.getHeight());
        this.mStartPoint.setState(motionWidget);
        this.mEndPoint.setState(motionWidget);
    }

    public void setDrawPath(int i4) {
        this.mStartMotionPath.mDrawPath = i4;
    }

    public void setEnd(MotionWidget motionWidget) {
        MotionPaths motionPaths = this.mEndMotionPath;
        motionPaths.time = 1.0f;
        motionPaths.position = 1.0f;
        readView(motionPaths);
        this.mEndMotionPath.setBounds(motionWidget.getLeft(), motionWidget.getTop(), motionWidget.getWidth(), motionWidget.getHeight());
        this.mEndMotionPath.applyParameters(motionWidget);
        this.mEndPoint.setState(motionWidget);
    }

    public void setPathMotionArc(int i4) {
        this.mPathMotionArc = i4;
    }

    public void setStart(MotionWidget motionWidget) {
        MotionPaths motionPaths = this.mStartMotionPath;
        motionPaths.time = 0.0f;
        motionPaths.position = 0.0f;
        motionPaths.setBounds(motionWidget.getX(), motionWidget.getY(), motionWidget.getWidth(), motionWidget.getHeight());
        this.mStartMotionPath.applyParameters(motionWidget);
        this.mStartPoint.setState(motionWidget);
    }

    public void setStartState(ViewState viewState, MotionWidget motionWidget, int i4, int i10, int i11) {
        MotionPaths motionPaths = this.mStartMotionPath;
        motionPaths.time = 0.0f;
        motionPaths.position = 0.0f;
        Rect rect = new Rect();
        if (i4 == 1) {
            int i12 = viewState.left + viewState.right;
            rect.left = ((viewState.top + viewState.bottom) - viewState.width()) / 2;
            rect.top = i10 - ((i12 + viewState.height()) / 2);
            rect.right = rect.left + viewState.width();
            rect.bottom = rect.top + viewState.height();
        } else if (i4 == 2) {
            int i13 = viewState.left + viewState.right;
            rect.left = i11 - (((viewState.top + viewState.bottom) + viewState.width()) / 2);
            rect.top = (i13 - viewState.height()) / 2;
            rect.right = rect.left + viewState.width();
            rect.bottom = rect.top + viewState.height();
        }
        this.mStartMotionPath.setBounds(rect.left, rect.top, rect.width(), rect.height());
        this.mStartPoint.setState(rect, motionWidget, i4, viewState.rotation);
    }

    public void setTransformPivotTarget(int i4) {
        this.mTransformPivotTarget = i4;
        this.mTransformPivotView = null;
    }

    public void setView(MotionWidget motionWidget) {
        this.mView = motionWidget;
    }

    public void setup(int i4, int i10, float f10, long j4) {
        ArrayList arrayList;
        String[] strArr;
        Class<double> cls;
        int i11;
        CustomVariable customVariable;
        SplineSet makeSpline;
        CustomVariable customVariable2;
        Integer num;
        Iterator<String> it;
        SplineSet makeSpline2;
        CustomVariable customVariable3;
        Class<double> cls2 = double.class;
        new HashSet();
        HashSet<String> hashSet = new HashSet<>();
        HashSet<String> hashSet2 = new HashSet<>();
        HashSet<String> hashSet3 = new HashSet<>();
        HashMap<String, Integer> hashMap = new HashMap<>();
        int i12 = this.mPathMotionArc;
        if (i12 != -1) {
            this.mStartMotionPath.mPathMotionArc = i12;
        }
        this.mStartPoint.different(this.mEndPoint, hashSet2);
        ArrayList<MotionKey> arrayList2 = this.mKeyList;
        if (arrayList2 != null) {
            Iterator<MotionKey> it2 = arrayList2.iterator();
            arrayList = null;
            while (it2.hasNext()) {
                MotionKey next = it2.next();
                if (next instanceof MotionKeyPosition) {
                    MotionKeyPosition motionKeyPosition = (MotionKeyPosition) next;
                    insertKey(new MotionPaths(i4, i10, motionKeyPosition, this.mStartMotionPath, this.mEndMotionPath));
                    int i13 = motionKeyPosition.mCurveFit;
                    if (i13 != -1) {
                        this.mCurveFitType = i13;
                    }
                } else if (next instanceof MotionKeyCycle) {
                    next.getAttributeNames(hashSet3);
                } else if (next instanceof MotionKeyTimeCycle) {
                    next.getAttributeNames(hashSet);
                } else if (next instanceof MotionKeyTrigger) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add((MotionKeyTrigger) next);
                } else {
                    next.setInterpolation(hashMap);
                    next.getAttributeNames(hashSet2);
                }
            }
        } else {
            arrayList = null;
        }
        if (arrayList != null) {
            this.mKeyTriggers = (MotionKeyTrigger[]) arrayList.toArray(new MotionKeyTrigger[0]);
        }
        char c10 = 1;
        if (!hashSet2.isEmpty()) {
            this.mAttributesMap = new HashMap<>();
            Iterator<String> it3 = hashSet2.iterator();
            while (it3.hasNext()) {
                String next2 = it3.next();
                if (next2.startsWith("CUSTOM,")) {
                    KeyFrameArray.CustomVar customVar = new KeyFrameArray.CustomVar();
                    String str = next2.split(",")[c10];
                    Iterator<MotionKey> it4 = this.mKeyList.iterator();
                    while (it4.hasNext()) {
                        MotionKey next3 = it4.next();
                        Iterator<String> it5 = it3;
                        HashMap<String, CustomVariable> hashMap2 = next3.mCustom;
                        if (hashMap2 != null && (customVariable3 = hashMap2.get(str)) != null) {
                            customVar.append(next3.mFramePosition, customVariable3);
                        }
                        it3 = it5;
                    }
                    it = it3;
                    makeSpline2 = SplineSet.makeCustomSplineSet(next2, customVar);
                } else {
                    it = it3;
                    makeSpline2 = SplineSet.makeSpline(next2, j4);
                }
                if (makeSpline2 != null) {
                    makeSpline2.setType(next2);
                    this.mAttributesMap.put(next2, makeSpline2);
                }
                it3 = it;
                c10 = 1;
            }
            ArrayList<MotionKey> arrayList3 = this.mKeyList;
            if (arrayList3 != null) {
                Iterator<MotionKey> it6 = arrayList3.iterator();
                while (it6.hasNext()) {
                    MotionKey next4 = it6.next();
                    if (next4 instanceof MotionKeyAttributes) {
                        next4.addValues(this.mAttributesMap);
                    }
                }
            }
            this.mStartPoint.addValues(this.mAttributesMap, 0);
            this.mEndPoint.addValues(this.mAttributesMap, 100);
            for (String str2 : this.mAttributesMap.keySet()) {
                int intValue = (!hashMap.containsKey(str2) || (num = hashMap.get(str2)) == null) ? 0 : num.intValue();
                SplineSet splineSet = this.mAttributesMap.get(str2);
                if (splineSet != null) {
                    splineSet.setup(intValue);
                }
            }
        }
        if (!hashSet.isEmpty()) {
            if (this.mTimeCycleAttributesMap == null) {
                this.mTimeCycleAttributesMap = new HashMap<>();
            }
            Iterator<String> it7 = hashSet.iterator();
            while (it7.hasNext()) {
                String next5 = it7.next();
                if (!this.mTimeCycleAttributesMap.containsKey(next5)) {
                    if (next5.startsWith("CUSTOM,")) {
                        KeyFrameArray.CustomVar customVar2 = new KeyFrameArray.CustomVar();
                        String str3 = next5.split(",")[1];
                        Iterator<MotionKey> it8 = this.mKeyList.iterator();
                        while (it8.hasNext()) {
                            MotionKey next6 = it8.next();
                            HashMap<String, CustomVariable> hashMap3 = next6.mCustom;
                            if (hashMap3 != null && (customVariable2 = hashMap3.get(str3)) != null) {
                                customVar2.append(next6.mFramePosition, customVariable2);
                            }
                        }
                        makeSpline = SplineSet.makeCustomSplineSet(next5, customVar2);
                    } else {
                        makeSpline = SplineSet.makeSpline(next5, j4);
                    }
                    if (makeSpline != null) {
                        makeSpline.setType(next5);
                    }
                }
            }
            ArrayList<MotionKey> arrayList4 = this.mKeyList;
            if (arrayList4 != null) {
                Iterator<MotionKey> it9 = arrayList4.iterator();
                while (it9.hasNext()) {
                    MotionKey next7 = it9.next();
                    if (next7 instanceof MotionKeyTimeCycle) {
                        ((MotionKeyTimeCycle) next7).addTimeValues(this.mTimeCycleAttributesMap);
                    }
                }
            }
            for (String str4 : this.mTimeCycleAttributesMap.keySet()) {
                this.mTimeCycleAttributesMap.get(str4).setup(hashMap.containsKey(str4) ? hashMap.get(str4).intValue() : 0);
            }
        }
        int i14 = 2;
        int size = this.mMotionPaths.size() + 2;
        MotionPaths[] motionPathsArr = new MotionPaths[size];
        motionPathsArr[0] = this.mStartMotionPath;
        motionPathsArr[size - 1] = this.mEndMotionPath;
        if (this.mMotionPaths.size() > 0 && this.mCurveFitType == MotionKey.UNSET) {
            this.mCurveFitType = 0;
        }
        Iterator<MotionPaths> it10 = this.mMotionPaths.iterator();
        int i15 = 1;
        while (it10.hasNext()) {
            motionPathsArr[i15] = it10.next();
            i15++;
        }
        HashSet hashSet4 = new HashSet();
        for (String str5 : this.mEndMotionPath.customAttributes.keySet()) {
            if (this.mStartMotionPath.customAttributes.containsKey(str5)) {
                if (!hashSet2.contains("CUSTOM," + str5)) {
                    hashSet4.add(str5);
                }
            }
        }
        String[] strArr2 = (String[]) hashSet4.toArray(new String[0]);
        this.mAttributeNames = strArr2;
        this.mAttributeInterpolatorCount = new int[strArr2.length];
        int i16 = 0;
        while (true) {
            strArr = this.mAttributeNames;
            if (i16 >= strArr.length) {
                break;
            }
            String str6 = strArr[i16];
            this.mAttributeInterpolatorCount[i16] = 0;
            int i17 = 0;
            while (true) {
                if (i17 >= size) {
                    break;
                }
                if (motionPathsArr[i17].customAttributes.containsKey(str6) && (customVariable = motionPathsArr[i17].customAttributes.get(str6)) != null) {
                    int[] iArr = this.mAttributeInterpolatorCount;
                    iArr[i16] = iArr[i16] + customVariable.numberOfInterpolatedValues();
                    break;
                }
                i17++;
            }
            i16++;
        }
        boolean z9 = motionPathsArr[0].mPathMotionArc != -1;
        int length = 18 + strArr.length;
        boolean[] zArr = new boolean[length];
        for (int i18 = 1; i18 < size; i18++) {
            motionPathsArr[i18].different(motionPathsArr[i18 - 1], zArr, this.mAttributeNames, z9);
        }
        int i19 = 0;
        for (int i20 = 1; i20 < length; i20++) {
            if (zArr[i20]) {
                i19++;
            }
        }
        this.mInterpolateVariables = new int[i19];
        int max = Math.max(2, i19);
        this.mInterpolateData = new double[max];
        this.mInterpolateVelocity = new double[max];
        int i21 = 0;
        for (int i22 = 1; i22 < length; i22++) {
            if (zArr[i22]) {
                this.mInterpolateVariables[i21] = i22;
                i21++;
            }
        }
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) cls2, size, this.mInterpolateVariables.length);
        double[] dArr2 = new double[size];
        for (int i23 = 0; i23 < size; i23++) {
            motionPathsArr[i23].fillStandard(dArr[i23], this.mInterpolateVariables);
            dArr2[i23] = motionPathsArr[i23].time;
        }
        int i24 = 0;
        while (true) {
            int[] iArr2 = this.mInterpolateVariables;
            if (i24 >= iArr2.length) {
                break;
            }
            if (iArr2[i24] < MotionPaths.names.length) {
                String str7 = MotionPaths.names[this.mInterpolateVariables[i24]] + " [";
                for (int i25 = 0; i25 < size; i25++) {
                    str7 = str7 + dArr[i25][i24];
                }
            }
            i24++;
        }
        this.mSpline = new CurveFit[this.mAttributeNames.length + 1];
        int i26 = 0;
        while (true) {
            String[] strArr3 = this.mAttributeNames;
            if (i26 >= strArr3.length) {
                break;
            }
            String str8 = strArr3[i26];
            int i27 = 0;
            int i28 = 0;
            double[] dArr3 = null;
            double[][] dArr4 = null;
            while (i27 < size) {
                if (motionPathsArr[i27].hasCustomData(str8)) {
                    if (dArr4 == null) {
                        dArr3 = new double[size];
                        int[] iArr3 = new int[i14];
                        iArr3[1] = motionPathsArr[i27].getCustomDataCount(str8);
                        i11 = 0;
                        iArr3[0] = size;
                        dArr4 = (double[][]) Array.newInstance((Class<?>) cls2, iArr3);
                    } else {
                        i11 = 0;
                    }
                    cls = cls2;
                    dArr3[i28] = motionPathsArr[i27].time;
                    motionPathsArr[i27].getCustomData(str8, dArr4[i28], i11);
                    i28++;
                } else {
                    cls = cls2;
                }
                i27++;
                cls2 = cls;
                i14 = 2;
            }
            i26++;
            this.mSpline[i26] = CurveFit.get(this.mCurveFitType, Arrays.copyOf(dArr3, i28), (double[][]) Arrays.copyOf(dArr4, i28));
            cls2 = cls2;
            i14 = 2;
        }
        Class<double> cls3 = cls2;
        this.mSpline[0] = CurveFit.get(this.mCurveFitType, dArr2, dArr);
        if (motionPathsArr[0].mPathMotionArc != -1) {
            int[] iArr4 = new int[size];
            double[] dArr5 = new double[size];
            double[][] dArr6 = (double[][]) Array.newInstance((Class<?>) cls3, size, 2);
            for (int i29 = 0; i29 < size; i29++) {
                iArr4[i29] = motionPathsArr[i29].mPathMotionArc;
                dArr5[i29] = motionPathsArr[i29].time;
                dArr6[i29][0] = motionPathsArr[i29].f413x;
                dArr6[i29][1] = motionPathsArr[i29].f414y;
            }
            this.mArcSpline = CurveFit.getArc(iArr4, dArr5, dArr6);
        }
        float f11 = Float.NaN;
        this.mCycleMap = new HashMap<>();
        if (this.mKeyList != null) {
            Iterator<String> it11 = hashSet3.iterator();
            while (it11.hasNext()) {
                String next8 = it11.next();
                KeyCycleOscillator makeWidgetCycle = KeyCycleOscillator.makeWidgetCycle(next8);
                if (makeWidgetCycle != null) {
                    if (makeWidgetCycle.variesByPath() && Float.isNaN(f11)) {
                        f11 = getPreCycleDistance();
                    }
                    makeWidgetCycle.setType(next8);
                    this.mCycleMap.put(next8, makeWidgetCycle);
                }
            }
            Iterator<MotionKey> it12 = this.mKeyList.iterator();
            while (it12.hasNext()) {
                MotionKey next9 = it12.next();
                if (next9 instanceof MotionKeyCycle) {
                    ((MotionKeyCycle) next9).addCycleValues(this.mCycleMap);
                }
            }
            for (KeyCycleOscillator keyCycleOscillator : this.mCycleMap.values()) {
                keyCycleOscillator.setup(f11);
            }
        }
    }

    public void setupRelative(Motion motion) {
        this.mStartMotionPath.setupRelative(motion, motion.mStartMotionPath);
        this.mEndMotionPath.setupRelative(motion, motion.mEndMotionPath);
    }

    public String toString() {
        return " start: x: " + this.mStartMotionPath.f413x + " y: " + this.mStartMotionPath.f414y + " end: x: " + this.mEndMotionPath.f413x + " y: " + this.mEndMotionPath.f414y;
    }
}

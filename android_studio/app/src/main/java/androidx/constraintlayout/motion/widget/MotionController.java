package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.BounceInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.OvershootInterpolator;
import androidx.constraintlayout.core.motion.utils.CurveFit;
import androidx.constraintlayout.core.motion.utils.Easing;
import androidx.constraintlayout.core.motion.utils.KeyCache;
import androidx.constraintlayout.core.motion.utils.VelocityMatrix;
import androidx.constraintlayout.motion.utils.ViewOscillator;
import androidx.constraintlayout.motion.utils.ViewSpline;
import androidx.constraintlayout.motion.utils.ViewState;
import androidx.constraintlayout.motion.utils.ViewTimeCycle;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintSet;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes.dex */
public class MotionController {
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
    private HashMap<String, ViewSpline> mAttributesMap;
    String mConstraintTag;
    float mCurrentCenterX;
    float mCurrentCenterY;
    private HashMap<String, ViewOscillator> mCycleMap;
    int mId;
    private double[] mInterpolateData;
    private int[] mInterpolateVariables;
    private double[] mInterpolateVelocity;
    private KeyTrigger[] mKeyTriggers;
    private boolean mNoMovement;
    private int mPathMotionArc;
    private Interpolator mQuantizeMotionInterpolator;
    private float mQuantizeMotionPhase;
    private int mQuantizeMotionSteps;
    private CurveFit[] mSpline;
    private HashMap<String, ViewTimeCycle> mTimeCycleAttributesMap;
    private int mTransformPivotTarget;
    private View mTransformPivotView;
    View mView;
    Rect mTempRect = new Rect();
    boolean mForceMeasure = false;
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
    private ArrayList<Key> mKeyList = new ArrayList<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    public MotionController(View view) {
        int i4 = Key.UNSET;
        this.mPathMotionArc = i4;
        this.mTransformPivotTarget = i4;
        this.mTransformPivotView = null;
        this.mQuantizeMotionSteps = i4;
        this.mQuantizeMotionPhase = Float.NaN;
        this.mQuantizeMotionInterpolator = null;
        this.mNoMovement = false;
        setView(view);
    }

    private float getAdjustedPosition(float position, float[] velocity) {
        float f10 = 0.0f;
        if (velocity != null) {
            velocity[0] = 1.0f;
        } else {
            float f11 = this.mStaggerScale;
            if (f11 != 1.0d) {
                float f12 = this.mStaggerOffset;
                if (position < f12) {
                    position = 0.0f;
                }
                if (position > f12 && position < 1.0d) {
                    position = Math.min((position - f12) * f11, 1.0f);
                }
            }
        }
        Easing easing = this.mStartMotionPath.mKeyFrameEasing;
        float f13 = Float.NaN;
        Iterator<MotionPaths> it = this.mMotionPaths.iterator();
        while (it.hasNext()) {
            MotionPaths next = it.next();
            Easing easing2 = next.mKeyFrameEasing;
            if (easing2 != null) {
                float f14 = next.time;
                if (f14 < position) {
                    easing = easing2;
                    f10 = f14;
                } else if (Float.isNaN(f13)) {
                    f13 = next.time;
                }
            }
        }
        if (easing != null) {
            float f15 = (Float.isNaN(f13) ? 1.0f : f13) - f10;
            double d4 = (position - f10) / f15;
            position = (((float) easing.get(d4)) * f15) + f10;
            if (velocity != null) {
                velocity[0] = (float) easing.getDiff(d4);
            }
        }
        return position;
    }

    private static Interpolator getInterpolator(Context context, int type, String interpolatorString, int id) {
        if (type != -2) {
            if (type == -1) {
                final Easing interpolator = Easing.getInterpolator(interpolatorString);
                return new Interpolator() { // from class: androidx.constraintlayout.motion.widget.MotionController.1
                    @Override // android.animation.TimeInterpolator
                    public float getInterpolation(float v9) {
                        return (float) Easing.this.get(v9);
                    }
                };
            } else if (type != 0) {
                if (type != 1) {
                    if (type != 2) {
                        if (type != 4) {
                            if (type != 5) {
                                return null;
                            }
                            return new OvershootInterpolator();
                        }
                        return new BounceInterpolator();
                    }
                    return new DecelerateInterpolator();
                }
                return new AccelerateInterpolator();
            } else {
                return new AccelerateDecelerateInterpolator();
            }
        }
        return AnimationUtils.loadInterpolator(context, id);
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

    private void insertKey(MotionPaths point) {
        int binarySearch = Collections.binarySearch(this.mMotionPaths, point);
        if (binarySearch == 0) {
            float f10 = point.position;
            StringBuilder sb = new StringBuilder(52);
            sb.append(" KeyPath position \"");
            sb.append(f10);
            sb.append("\" outside of range");
            Log.e(TAG, sb.toString());
        }
        this.mMotionPaths.add((-binarySearch) - 1, point);
    }

    private void readView(MotionPaths motionPaths) {
        motionPaths.setBounds((int) this.mView.getX(), (int) this.mView.getY(), this.mView.getWidth(), this.mView.getHeight());
    }

    public void addKey(Key key) {
        this.mKeyList.add(key);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addKeys(ArrayList<Key> list) {
        this.mKeyList.addAll(list);
    }

    void buildBounds(float[] bounds, int pointCount) {
        float f10;
        float f11 = 1.0f / (pointCount - 1);
        HashMap<String, ViewSpline> hashMap = this.mAttributesMap;
        if (hashMap != null) {
            hashMap.get("translationX");
        }
        HashMap<String, ViewSpline> hashMap2 = this.mAttributesMap;
        if (hashMap2 != null) {
            hashMap2.get("translationY");
        }
        HashMap<String, ViewOscillator> hashMap3 = this.mCycleMap;
        if (hashMap3 != null) {
            hashMap3.get("translationX");
        }
        HashMap<String, ViewOscillator> hashMap4 = this.mCycleMap;
        if (hashMap4 != null) {
            hashMap4.get("translationY");
        }
        for (int i4 = 0; i4 < pointCount; i4++) {
            float f12 = i4 * f11;
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
            this.mStartMotionPath.getBounds(this.mInterpolateVariables, this.mInterpolateData, bounds, i4 * 2);
        }
    }

    int buildKeyBounds(float[] keyBounds, int[] mode) {
        if (keyBounds != null) {
            double[] timePoints = this.mSpline[0].getTimePoints();
            if (mode != null) {
                Iterator<MotionPaths> it = this.mMotionPaths.iterator();
                int i4 = 0;
                while (it.hasNext()) {
                    mode[i4] = it.next().mMode;
                    i4++;
                }
            }
            int i10 = 0;
            for (double d4 : timePoints) {
                this.mSpline[0].getPos(d4, this.mInterpolateData);
                this.mStartMotionPath.getBounds(this.mInterpolateVariables, this.mInterpolateData, keyBounds, i10);
                i10 += 2;
            }
            return i10 / 2;
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int buildKeyFrames(float[] keyFrames, int[] mode) {
        if (keyFrames != null) {
            double[] timePoints = this.mSpline[0].getTimePoints();
            if (mode != null) {
                Iterator<MotionPaths> it = this.mMotionPaths.iterator();
                int i4 = 0;
                while (it.hasNext()) {
                    mode[i4] = it.next().mMode;
                    i4++;
                }
            }
            int i10 = 0;
            for (int i11 = 0; i11 < timePoints.length; i11++) {
                this.mSpline[0].getPos(timePoints[i11], this.mInterpolateData);
                this.mStartMotionPath.getCenter(timePoints[i11], this.mInterpolateVariables, this.mInterpolateData, keyFrames, i10);
                i10 += 2;
            }
            return i10 / 2;
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void buildPath(float[] points, int pointCount) {
        double d4;
        float f10;
        float f11 = 1.0f;
        float f12 = 1.0f / (pointCount - 1);
        HashMap<String, ViewSpline> hashMap = this.mAttributesMap;
        ViewSpline viewSpline = hashMap == null ? null : hashMap.get("translationX");
        HashMap<String, ViewSpline> hashMap2 = this.mAttributesMap;
        ViewSpline viewSpline2 = hashMap2 == null ? null : hashMap2.get("translationY");
        HashMap<String, ViewOscillator> hashMap3 = this.mCycleMap;
        ViewOscillator viewOscillator = hashMap3 == null ? null : hashMap3.get("translationX");
        HashMap<String, ViewOscillator> hashMap4 = this.mCycleMap;
        ViewOscillator viewOscillator2 = hashMap4 != null ? hashMap4.get("translationY") : null;
        int i4 = 0;
        while (i4 < pointCount) {
            float f13 = i4 * f12;
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
            int i10 = i4 * 2;
            int i11 = i4;
            this.mStartMotionPath.getCenter(d4, this.mInterpolateVariables, this.mInterpolateData, points, i10);
            if (viewOscillator != null) {
                points[i10] = points[i10] + viewOscillator.get(f16);
            } else if (viewSpline != null) {
                points[i10] = points[i10] + viewSpline.get(f16);
            }
            if (viewOscillator2 != null) {
                int i12 = i10 + 1;
                points[i12] = points[i12] + viewOscillator2.get(f16);
            } else if (viewSpline2 != null) {
                int i13 = i10 + 1;
                points[i13] = points[i13] + viewSpline2.get(f16);
            }
            i4 = i11 + 1;
            f11 = 1.0f;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void buildRect(float p9, float[] path, int offset) {
        this.mSpline[0].getPos(getAdjustedPosition(p9, null), this.mInterpolateData);
        this.mStartMotionPath.getRect(this.mInterpolateVariables, this.mInterpolateData, path, offset);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void buildRectangles(float[] path, int pointCount) {
        float f10 = 1.0f / (pointCount - 1);
        for (int i4 = 0; i4 < pointCount; i4++) {
            this.mSpline[0].getPos(getAdjustedPosition(i4 * f10, null), this.mInterpolateData);
            this.mStartMotionPath.getRect(this.mInterpolateVariables, this.mInterpolateData, path, i4 * 8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void endTrigger(boolean start) {
        if (!"button".equals(Debug.getName(this.mView)) || this.mKeyTriggers == null) {
            return;
        }
        int i4 = 0;
        while (true) {
            KeyTrigger[] keyTriggerArr = this.mKeyTriggers;
            if (i4 >= keyTriggerArr.length) {
                return;
            }
            keyTriggerArr[i4].conditionallyFire(start ? -100.0f : 100.0f, this.mView);
            i4++;
        }
    }

    public int getAnimateRelativeTo() {
        return this.mStartMotionPath.mAnimateRelativeTo;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getAttributeValues(String attributeType, float[] points, int pointCount) {
        ViewSpline viewSpline = this.mAttributesMap.get(attributeType);
        if (viewSpline == null) {
            return -1;
        }
        for (int i4 = 0; i4 < points.length; i4++) {
            points[i4] = viewSpline.get(i4 / (points.length - 1));
        }
        return points.length;
    }

    public void getCenter(double p9, float[] pos, float[] vel) {
        double[] dArr = new double[4];
        double[] dArr2 = new double[4];
        this.mSpline[0].getPos(p9, dArr);
        this.mSpline[0].getSlope(p9, dArr2);
        Arrays.fill(vel, 0.0f);
        this.mStartMotionPath.getCenter(p9, this.mInterpolateVariables, dArr, pos, dArr2, vel);
    }

    public float getCenterX() {
        return this.mCurrentCenterX;
    }

    public float getCenterY() {
        return this.mCurrentCenterY;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void getDpDt(float position, float locationX, float locationY, float[] mAnchorDpDt) {
        double[] dArr;
        float adjustedPosition = getAdjustedPosition(position, this.mVelocity);
        CurveFit[] curveFitArr = this.mSpline;
        int i4 = 0;
        if (curveFitArr != null) {
            double d4 = adjustedPosition;
            curveFitArr[0].getSlope(d4, this.mInterpolateVelocity);
            this.mSpline[0].getPos(d4, this.mInterpolateData);
            float f10 = this.mVelocity[0];
            while (true) {
                dArr = this.mInterpolateVelocity;
                if (i4 >= dArr.length) {
                    break;
                }
                dArr[i4] = dArr[i4] * f10;
                i4++;
            }
            CurveFit curveFit = this.mArcSpline;
            if (curveFit != null) {
                double[] dArr2 = this.mInterpolateData;
                if (dArr2.length > 0) {
                    curveFit.getPos(d4, dArr2);
                    this.mArcSpline.getSlope(d4, this.mInterpolateVelocity);
                    this.mStartMotionPath.setDpDt(locationX, locationY, mAnchorDpDt, this.mInterpolateVariables, this.mInterpolateVelocity, this.mInterpolateData);
                    return;
                }
                return;
            }
            this.mStartMotionPath.setDpDt(locationX, locationY, mAnchorDpDt, this.mInterpolateVariables, dArr, this.mInterpolateData);
            return;
        }
        MotionPaths motionPaths = this.mEndMotionPath;
        float f11 = motionPaths.f437x;
        MotionPaths motionPaths2 = this.mStartMotionPath;
        float f12 = f11 - motionPaths2.f437x;
        float f13 = motionPaths.f438y - motionPaths2.f438y;
        float f14 = (motionPaths.width - motionPaths2.width) + f12;
        float f15 = (motionPaths.height - motionPaths2.height) + f13;
        mAnchorDpDt[0] = (f12 * (1.0f - locationX)) + (f14 * locationX);
        mAnchorDpDt[1] = (f13 * (1.0f - locationY)) + (f15 * locationY);
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
        return this.mEndMotionPath.f437x;
    }

    public float getFinalY() {
        return this.mEndMotionPath.f438y;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MotionPaths getKeyFrame(int i4) {
        return this.mMotionPaths.get(i4);
    }

    public int getKeyFrameInfo(int type, int[] info) {
        float[] fArr = new float[2];
        Iterator<Key> it = this.mKeyList.iterator();
        int i4 = 0;
        int i10 = 0;
        while (it.hasNext()) {
            Key next = it.next();
            int i11 = next.mType;
            if (i11 == type || type != -1) {
                info[i10] = 0;
                int i12 = i10 + 1;
                info[i12] = i11;
                int i13 = i12 + 1;
                int i14 = next.mFramePosition;
                info[i13] = i14;
                double d4 = i14 / 100.0f;
                this.mSpline[0].getPos(d4, this.mInterpolateData);
                this.mStartMotionPath.getCenter(d4, this.mInterpolateVariables, this.mInterpolateData, fArr, 0);
                int i15 = i13 + 1;
                info[i15] = Float.floatToIntBits(fArr[0]);
                int i16 = i15 + 1;
                info[i16] = Float.floatToIntBits(fArr[1]);
                if (next instanceof KeyPosition) {
                    KeyPosition keyPosition = (KeyPosition) next;
                    int i17 = i16 + 1;
                    info[i17] = keyPosition.mPositionType;
                    int i18 = i17 + 1;
                    info[i18] = Float.floatToIntBits(keyPosition.mPercentX);
                    i16 = i18 + 1;
                    info[i16] = Float.floatToIntBits(keyPosition.mPercentY);
                }
                int i19 = i16 + 1;
                info[i10] = i19 - i10;
                i4++;
                i10 = i19;
            }
        }
        return i4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float getKeyFrameParameter(int type, float x9, float y9) {
        MotionPaths motionPaths = this.mEndMotionPath;
        float f10 = motionPaths.f437x;
        MotionPaths motionPaths2 = this.mStartMotionPath;
        float f11 = motionPaths2.f437x;
        float f12 = f10 - f11;
        float f13 = motionPaths.f438y;
        float f14 = motionPaths2.f438y;
        float f15 = f13 - f14;
        float f16 = f11 + (motionPaths2.width / 2.0f);
        float f17 = f14 + (motionPaths2.height / 2.0f);
        float hypot = (float) Math.hypot(f12, f15);
        if (hypot < 1.0E-7d) {
            return Float.NaN;
        }
        float f18 = x9 - f16;
        float f19 = y9 - f17;
        if (((float) Math.hypot(f18, f19)) == 0.0f) {
            return 0.0f;
        }
        float f20 = (f18 * f12) + (f19 * f15);
        if (type != 0) {
            if (type != 1) {
                if (type != 2) {
                    if (type != 3) {
                        if (type != 4) {
                            if (type != 5) {
                                return 0.0f;
                            }
                            return f19 / f15;
                        }
                        return f18 / f15;
                    }
                    return f19 / f12;
                }
                return f18 / f12;
            }
            return (float) Math.sqrt((hypot * hypot) - (f20 * f20));
        }
        return f20 / hypot;
    }

    public int getKeyFramePositions(int[] type, float[] pos) {
        Iterator<Key> it = this.mKeyList.iterator();
        int i4 = 0;
        int i10 = 0;
        while (it.hasNext()) {
            Key next = it.next();
            int i11 = next.mFramePosition;
            type[i4] = (next.mType * 1000) + i11;
            double d4 = i11 / 100.0f;
            this.mSpline[0].getPos(d4, this.mInterpolateData);
            this.mStartMotionPath.getCenter(d4, this.mInterpolateVariables, this.mInterpolateData, pos, i10);
            i10 += 2;
            i4++;
        }
        return i4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public double[] getPos(double position) {
        this.mSpline[0].getPos(position, this.mInterpolateData);
        CurveFit curveFit = this.mArcSpline;
        if (curveFit != null) {
            double[] dArr = this.mInterpolateData;
            if (dArr.length > 0) {
                curveFit.getPos(position, dArr);
            }
        }
        return this.mInterpolateData;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public KeyPositionBase getPositionKeyframe(int layoutWidth, int layoutHeight, float x9, float y9) {
        RectF rectF = new RectF();
        MotionPaths motionPaths = this.mStartMotionPath;
        float f10 = motionPaths.f437x;
        rectF.left = f10;
        float f11 = motionPaths.f438y;
        rectF.top = f11;
        rectF.right = f10 + motionPaths.width;
        rectF.bottom = f11 + motionPaths.height;
        RectF rectF2 = new RectF();
        MotionPaths motionPaths2 = this.mEndMotionPath;
        float f12 = motionPaths2.f437x;
        rectF2.left = f12;
        float f13 = motionPaths2.f438y;
        rectF2.top = f13;
        rectF2.right = f12 + motionPaths2.width;
        rectF2.bottom = f13 + motionPaths2.height;
        Iterator<Key> it = this.mKeyList.iterator();
        while (it.hasNext()) {
            Key next = it.next();
            if (next instanceof KeyPositionBase) {
                KeyPositionBase keyPositionBase = (KeyPositionBase) next;
                if (keyPositionBase.intersects(layoutWidth, layoutHeight, rectF, rectF2, x9, y9)) {
                    return keyPositionBase;
                }
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void getPostLayoutDvDp(float position, int width, int height, float locationX, float locationY, float[] mAnchorDpDt) {
        float adjustedPosition = getAdjustedPosition(position, this.mVelocity);
        HashMap<String, ViewSpline> hashMap = this.mAttributesMap;
        ViewSpline viewSpline = hashMap == null ? null : hashMap.get("translationX");
        HashMap<String, ViewSpline> hashMap2 = this.mAttributesMap;
        ViewSpline viewSpline2 = hashMap2 == null ? null : hashMap2.get("translationY");
        HashMap<String, ViewSpline> hashMap3 = this.mAttributesMap;
        ViewSpline viewSpline3 = hashMap3 == null ? null : hashMap3.get(Key.ROTATION);
        HashMap<String, ViewSpline> hashMap4 = this.mAttributesMap;
        ViewSpline viewSpline4 = hashMap4 == null ? null : hashMap4.get("scaleX");
        HashMap<String, ViewSpline> hashMap5 = this.mAttributesMap;
        ViewSpline viewSpline5 = hashMap5 == null ? null : hashMap5.get("scaleY");
        HashMap<String, ViewOscillator> hashMap6 = this.mCycleMap;
        ViewOscillator viewOscillator = hashMap6 == null ? null : hashMap6.get("translationX");
        HashMap<String, ViewOscillator> hashMap7 = this.mCycleMap;
        ViewOscillator viewOscillator2 = hashMap7 == null ? null : hashMap7.get("translationY");
        HashMap<String, ViewOscillator> hashMap8 = this.mCycleMap;
        ViewOscillator viewOscillator3 = hashMap8 == null ? null : hashMap8.get(Key.ROTATION);
        HashMap<String, ViewOscillator> hashMap9 = this.mCycleMap;
        ViewOscillator viewOscillator4 = hashMap9 == null ? null : hashMap9.get("scaleX");
        HashMap<String, ViewOscillator> hashMap10 = this.mCycleMap;
        ViewOscillator viewOscillator5 = hashMap10 != null ? hashMap10.get("scaleY") : null;
        VelocityMatrix velocityMatrix = new VelocityMatrix();
        velocityMatrix.clear();
        velocityMatrix.setRotationVelocity(viewSpline3, adjustedPosition);
        velocityMatrix.setTranslationVelocity(viewSpline, viewSpline2, adjustedPosition);
        velocityMatrix.setScaleVelocity(viewSpline4, viewSpline5, adjustedPosition);
        velocityMatrix.setRotationVelocity(viewOscillator3, adjustedPosition);
        velocityMatrix.setTranslationVelocity(viewOscillator, viewOscillator2, adjustedPosition);
        velocityMatrix.setScaleVelocity(viewOscillator4, viewOscillator5, adjustedPosition);
        CurveFit curveFit = this.mArcSpline;
        if (curveFit != null) {
            double[] dArr = this.mInterpolateData;
            if (dArr.length > 0) {
                double d4 = adjustedPosition;
                curveFit.getPos(d4, dArr);
                this.mArcSpline.getSlope(d4, this.mInterpolateVelocity);
                this.mStartMotionPath.setDpDt(locationX, locationY, mAnchorDpDt, this.mInterpolateVariables, this.mInterpolateVelocity, this.mInterpolateData);
            }
            velocityMatrix.applyTransform(locationX, locationY, width, height, mAnchorDpDt);
            return;
        }
        int i4 = 0;
        if (this.mSpline != null) {
            double adjustedPosition2 = getAdjustedPosition(adjustedPosition, this.mVelocity);
            this.mSpline[0].getSlope(adjustedPosition2, this.mInterpolateVelocity);
            this.mSpline[0].getPos(adjustedPosition2, this.mInterpolateData);
            float f10 = this.mVelocity[0];
            while (true) {
                double[] dArr2 = this.mInterpolateVelocity;
                if (i4 < dArr2.length) {
                    dArr2[i4] = dArr2[i4] * f10;
                    i4++;
                } else {
                    this.mStartMotionPath.setDpDt(locationX, locationY, mAnchorDpDt, this.mInterpolateVariables, dArr2, this.mInterpolateData);
                    velocityMatrix.applyTransform(locationX, locationY, width, height, mAnchorDpDt);
                    return;
                }
            }
        } else {
            MotionPaths motionPaths = this.mEndMotionPath;
            float f11 = motionPaths.f437x;
            MotionPaths motionPaths2 = this.mStartMotionPath;
            float f12 = f11 - motionPaths2.f437x;
            float f13 = motionPaths.f438y - motionPaths2.f438y;
            ViewOscillator viewOscillator6 = viewOscillator4;
            float f14 = (motionPaths.height - motionPaths2.height) + f13;
            mAnchorDpDt[0] = (f12 * (1.0f - locationX)) + (((motionPaths.width - motionPaths2.width) + f12) * locationX);
            mAnchorDpDt[1] = (f13 * (1.0f - locationY)) + (f14 * locationY);
            velocityMatrix.clear();
            velocityMatrix.setRotationVelocity(viewSpline3, adjustedPosition);
            velocityMatrix.setTranslationVelocity(viewSpline, viewSpline2, adjustedPosition);
            velocityMatrix.setScaleVelocity(viewSpline4, viewSpline5, adjustedPosition);
            velocityMatrix.setRotationVelocity(viewOscillator3, adjustedPosition);
            velocityMatrix.setTranslationVelocity(viewOscillator, viewOscillator2, adjustedPosition);
            velocityMatrix.setScaleVelocity(viewOscillator6, viewOscillator5, adjustedPosition);
            velocityMatrix.applyTransform(locationX, locationY, width, height, mAnchorDpDt);
        }
    }

    public float getStartHeight() {
        return this.mStartMotionPath.height;
    }

    public float getStartWidth() {
        return this.mStartMotionPath.width;
    }

    public float getStartX() {
        return this.mStartMotionPath.f437x;
    }

    public float getStartY() {
        return this.mStartMotionPath.f438y;
    }

    public int getTransformPivotTarget() {
        return this.mTransformPivotTarget;
    }

    public View getView() {
        return this.mView;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean interpolate(View child, float global_position, long time, KeyCache keyCache) {
        ViewTimeCycle.PathRotate pathRotate;
        boolean z9;
        char c10;
        double d4;
        View view;
        float f10;
        float adjustedPosition = getAdjustedPosition(global_position, null);
        int i4 = this.mQuantizeMotionSteps;
        if (i4 != Key.UNSET) {
            float f11 = 1.0f / i4;
            float floor = ((float) Math.floor(adjustedPosition / f11)) * f11;
            float f12 = (adjustedPosition % f11) / f11;
            if (!Float.isNaN(this.mQuantizeMotionPhase)) {
                f12 = (f12 + this.mQuantizeMotionPhase) % 1.0f;
            }
            Interpolator interpolator = this.mQuantizeMotionInterpolator;
            if (interpolator != null) {
                f10 = interpolator.getInterpolation(f12);
            } else {
                f10 = ((double) f12) > 0.5d ? 1.0f : 0.0f;
            }
            adjustedPosition = (f10 * f11) + floor;
        }
        float f13 = adjustedPosition;
        HashMap<String, ViewSpline> hashMap = this.mAttributesMap;
        if (hashMap != null) {
            for (ViewSpline viewSpline : hashMap.values()) {
                viewSpline.setProperty(child, f13);
            }
        }
        HashMap<String, ViewTimeCycle> hashMap2 = this.mTimeCycleAttributesMap;
        if (hashMap2 != null) {
            ViewTimeCycle.PathRotate pathRotate2 = null;
            boolean z10 = false;
            for (ViewTimeCycle viewTimeCycle : hashMap2.values()) {
                if (viewTimeCycle instanceof ViewTimeCycle.PathRotate) {
                    pathRotate2 = (ViewTimeCycle.PathRotate) viewTimeCycle;
                } else {
                    z10 |= viewTimeCycle.setProperty(child, f13, time, keyCache);
                }
            }
            z9 = z10;
            pathRotate = pathRotate2;
        } else {
            pathRotate = null;
            z9 = false;
        }
        CurveFit[] curveFitArr = this.mSpline;
        if (curveFitArr != null) {
            double d10 = f13;
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
                this.mStartMotionPath.setView(f13, child, this.mInterpolateVariables, this.mInterpolateData, this.mInterpolateVelocity, null, this.mForceMeasure);
                this.mForceMeasure = false;
            }
            if (this.mTransformPivotTarget != Key.UNSET) {
                if (this.mTransformPivotView == null) {
                    this.mTransformPivotView = ((View) child.getParent()).findViewById(this.mTransformPivotTarget);
                }
                if (this.mTransformPivotView != null) {
                    float top = (view.getTop() + this.mTransformPivotView.getBottom()) / 2.0f;
                    float left = (this.mTransformPivotView.getLeft() + this.mTransformPivotView.getRight()) / 2.0f;
                    if (child.getRight() - child.getLeft() > 0 && child.getBottom() - child.getTop() > 0) {
                        child.setPivotX(left - child.getLeft());
                        child.setPivotY(top - child.getTop());
                    }
                }
            }
            HashMap<String, ViewSpline> hashMap3 = this.mAttributesMap;
            if (hashMap3 != null) {
                for (ViewSpline viewSpline2 : hashMap3.values()) {
                    if (viewSpline2 instanceof ViewSpline.PathRotate) {
                        double[] dArr2 = this.mInterpolateVelocity;
                        if (dArr2.length > 1) {
                            ((ViewSpline.PathRotate) viewSpline2).setPathRotate(child, f13, dArr2[0], dArr2[1]);
                        }
                    }
                }
            }
            if (pathRotate != null) {
                double[] dArr3 = this.mInterpolateVelocity;
                c10 = 1;
                z9 |= pathRotate.setPathRotate(child, keyCache, f13, time, dArr3[0], dArr3[1]);
            } else {
                c10 = 1;
            }
            int i10 = 1;
            while (true) {
                CurveFit[] curveFitArr2 = this.mSpline;
                if (i10 >= curveFitArr2.length) {
                    break;
                }
                curveFitArr2[i10].getPos(d4, this.mValuesBuff);
                this.mStartMotionPath.attributes.get(this.mAttributeNames[i10 - 1]).setInterpolatedValue(child, this.mValuesBuff);
                i10++;
            }
            MotionConstrainedPoint motionConstrainedPoint = this.mStartPoint;
            if (motionConstrainedPoint.mVisibilityMode == 0) {
                if (f13 <= 0.0f) {
                    child.setVisibility(motionConstrainedPoint.visibility);
                } else if (f13 >= 1.0f) {
                    child.setVisibility(this.mEndPoint.visibility);
                } else if (this.mEndPoint.visibility != motionConstrainedPoint.visibility) {
                    child.setVisibility(0);
                }
            }
            if (this.mKeyTriggers != null) {
                int i11 = 0;
                while (true) {
                    KeyTrigger[] keyTriggerArr = this.mKeyTriggers;
                    if (i11 >= keyTriggerArr.length) {
                        break;
                    }
                    keyTriggerArr[i11].conditionallyFire(f13, child);
                    i11++;
                }
            }
        } else {
            c10 = 1;
            MotionPaths motionPaths = this.mStartMotionPath;
            float f14 = motionPaths.f437x;
            MotionPaths motionPaths2 = this.mEndMotionPath;
            float f15 = f14 + ((motionPaths2.f437x - f14) * f13);
            float f16 = motionPaths.f438y;
            float f17 = f16 + ((motionPaths2.f438y - f16) * f13);
            float f18 = motionPaths.width;
            float f19 = motionPaths2.width;
            float f20 = motionPaths.height;
            float f21 = motionPaths2.height;
            float f22 = f15 + 0.5f;
            int i12 = (int) f22;
            float f23 = f17 + 0.5f;
            int i13 = (int) f23;
            int i14 = (int) (f22 + ((f19 - f18) * f13) + f18);
            int i15 = (int) (f23 + ((f21 - f20) * f13) + f20);
            int i16 = i14 - i12;
            int i17 = i15 - i13;
            if (f19 != f18 || f21 != f20 || this.mForceMeasure) {
                child.measure(View.MeasureSpec.makeMeasureSpec(i16, 1073741824), View.MeasureSpec.makeMeasureSpec(i17, 1073741824));
                this.mForceMeasure = false;
            }
            child.layout(i12, i13, i14, i15);
        }
        HashMap<String, ViewOscillator> hashMap4 = this.mCycleMap;
        if (hashMap4 != null) {
            for (ViewOscillator viewOscillator : hashMap4.values()) {
                if (viewOscillator instanceof ViewOscillator.PathRotateSet) {
                    double[] dArr4 = this.mInterpolateVelocity;
                    ((ViewOscillator.PathRotateSet) viewOscillator).setPathRotate(child, f13, dArr4[0], dArr4[c10]);
                } else {
                    viewOscillator.setProperty(child, f13);
                }
            }
        }
        return z9;
    }

    String name() {
        return this.mView.getContext().getResources().getResourceEntryName(this.mView.getId());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void positionKeyframe(View view, KeyPositionBase key, float x9, float y9, String[] attribute, float[] value) {
        RectF rectF = new RectF();
        MotionPaths motionPaths = this.mStartMotionPath;
        float f10 = motionPaths.f437x;
        rectF.left = f10;
        float f11 = motionPaths.f438y;
        rectF.top = f11;
        rectF.right = f10 + motionPaths.width;
        rectF.bottom = f11 + motionPaths.height;
        RectF rectF2 = new RectF();
        MotionPaths motionPaths2 = this.mEndMotionPath;
        float f12 = motionPaths2.f437x;
        rectF2.left = f12;
        float f13 = motionPaths2.f438y;
        rectF2.top = f13;
        rectF2.right = f12 + motionPaths2.width;
        rectF2.bottom = f13 + motionPaths2.height;
        key.positionAttributes(view, rectF, rectF2, x9, y9, attribute, value);
    }

    public void remeasure() {
        this.mForceMeasure = true;
    }

    void rotate(Rect rect, Rect out, int rotation, int preHeight, int preWidth) {
        if (rotation == 1) {
            int i4 = rect.left + rect.right;
            out.left = ((rect.top + rect.bottom) - rect.width()) / 2;
            out.top = preWidth - ((i4 + rect.height()) / 2);
            out.right = out.left + rect.width();
            out.bottom = out.top + rect.height();
        } else if (rotation == 2) {
            int i10 = rect.left + rect.right;
            out.left = preHeight - (((rect.top + rect.bottom) + rect.width()) / 2);
            out.top = (i10 - rect.height()) / 2;
            out.right = out.left + rect.width();
            out.bottom = out.top + rect.height();
        } else if (rotation == 3) {
            int i11 = rect.left + rect.right;
            out.left = ((rect.height() / 2) + rect.top) - (i11 / 2);
            out.top = preWidth - ((i11 + rect.height()) / 2);
            out.right = out.left + rect.width();
            out.bottom = out.top + rect.height();
        } else if (rotation != 4) {
        } else {
            int i12 = rect.left + rect.right;
            out.left = preHeight - (((rect.bottom + rect.top) + rect.width()) / 2);
            out.top = (i12 - rect.height()) / 2;
            out.right = out.left + rect.width();
            out.bottom = out.top + rect.height();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setBothStates(View v9) {
        MotionPaths motionPaths = this.mStartMotionPath;
        motionPaths.time = 0.0f;
        motionPaths.position = 0.0f;
        this.mNoMovement = true;
        motionPaths.setBounds(v9.getX(), v9.getY(), v9.getWidth(), v9.getHeight());
        this.mEndMotionPath.setBounds(v9.getX(), v9.getY(), v9.getWidth(), v9.getHeight());
        this.mStartPoint.setState(v9);
        this.mEndPoint.setState(v9);
    }

    public void setDrawPath(int debugMode) {
        this.mStartMotionPath.mDrawPath = debugMode;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setEndState(Rect cw, ConstraintSet constraintSet, int parentWidth, int parentHeight) {
        int i4 = constraintSet.mRotate;
        if (i4 != 0) {
            rotate(cw, this.mTempRect, i4, parentWidth, parentHeight);
            cw = this.mTempRect;
        }
        MotionPaths motionPaths = this.mEndMotionPath;
        motionPaths.time = 1.0f;
        motionPaths.position = 1.0f;
        readView(motionPaths);
        this.mEndMotionPath.setBounds(cw.left, cw.top, cw.width(), cw.height());
        this.mEndMotionPath.applyParameters(constraintSet.getParameters(this.mId));
        this.mEndPoint.setState(cw, constraintSet, i4, this.mId);
    }

    public void setPathMotionArc(int arc) {
        this.mPathMotionArc = arc;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setStartCurrentState(View v9) {
        MotionPaths motionPaths = this.mStartMotionPath;
        motionPaths.time = 0.0f;
        motionPaths.position = 0.0f;
        motionPaths.setBounds(v9.getX(), v9.getY(), v9.getWidth(), v9.getHeight());
        this.mStartPoint.setState(v9);
    }

    public void setStartState(ViewState rect, View v9, int rotation, int preWidth, int preHeight) {
        MotionPaths motionPaths = this.mStartMotionPath;
        motionPaths.time = 0.0f;
        motionPaths.position = 0.0f;
        Rect rect2 = new Rect();
        if (rotation == 1) {
            int i4 = rect.left + rect.right;
            rect2.left = ((rect.top + rect.bottom) - rect.width()) / 2;
            rect2.top = preWidth - ((i4 + rect.height()) / 2);
            rect2.right = rect2.left + rect.width();
            rect2.bottom = rect2.top + rect.height();
        } else if (rotation == 2) {
            int i10 = rect.left + rect.right;
            rect2.left = preHeight - (((rect.top + rect.bottom) + rect.width()) / 2);
            rect2.top = (i10 - rect.height()) / 2;
            rect2.right = rect2.left + rect.width();
            rect2.bottom = rect2.top + rect.height();
        }
        this.mStartMotionPath.setBounds(rect2.left, rect2.top, rect2.width(), rect2.height());
        this.mStartPoint.setState(rect2, v9, rotation, rect.rotation);
    }

    public void setTransformPivotTarget(int transformPivotTarget) {
        this.mTransformPivotTarget = transformPivotTarget;
        this.mTransformPivotView = null;
    }

    public void setView(View view) {
        this.mView = view;
        this.mId = view.getId();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof ConstraintLayout.LayoutParams) {
            this.mConstraintTag = ((ConstraintLayout.LayoutParams) layoutParams).getConstraintTag();
        }
    }

    public void setup(int parentWidth, int parentHeight, float transitionDuration, long currentTime) {
        ArrayList arrayList;
        String[] strArr;
        ConstraintAttribute constraintAttribute;
        ViewTimeCycle makeSpline;
        ConstraintAttribute constraintAttribute2;
        Integer num;
        ViewSpline makeSpline2;
        ConstraintAttribute constraintAttribute3;
        new HashSet();
        HashSet<String> hashSet = new HashSet<>();
        HashSet<String> hashSet2 = new HashSet<>();
        HashSet<String> hashSet3 = new HashSet<>();
        HashMap<String, Integer> hashMap = new HashMap<>();
        int i4 = this.mPathMotionArc;
        if (i4 != Key.UNSET) {
            this.mStartMotionPath.mPathMotionArc = i4;
        }
        this.mStartPoint.different(this.mEndPoint, hashSet2);
        ArrayList<Key> arrayList2 = this.mKeyList;
        if (arrayList2 != null) {
            Iterator<Key> it = arrayList2.iterator();
            arrayList = null;
            while (it.hasNext()) {
                Key next = it.next();
                if (next instanceof KeyPosition) {
                    KeyPosition keyPosition = (KeyPosition) next;
                    insertKey(new MotionPaths(parentWidth, parentHeight, keyPosition, this.mStartMotionPath, this.mEndMotionPath));
                    int i10 = keyPosition.mCurveFit;
                    if (i10 != Key.UNSET) {
                        this.mCurveFitType = i10;
                    }
                } else if (next instanceof KeyCycle) {
                    next.getAttributeNames(hashSet3);
                } else if (next instanceof KeyTimeCycle) {
                    next.getAttributeNames(hashSet);
                } else if (next instanceof KeyTrigger) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add((KeyTrigger) next);
                } else {
                    next.setInterpolation(hashMap);
                    next.getAttributeNames(hashSet2);
                }
            }
        } else {
            arrayList = null;
        }
        char c10 = 0;
        if (arrayList != null) {
            this.mKeyTriggers = (KeyTrigger[]) arrayList.toArray(new KeyTrigger[0]);
        }
        char c11 = 1;
        if (!hashSet2.isEmpty()) {
            this.mAttributesMap = new HashMap<>();
            Iterator<String> it2 = hashSet2.iterator();
            while (it2.hasNext()) {
                String next2 = it2.next();
                if (next2.startsWith("CUSTOM,")) {
                    SparseArray sparseArray = new SparseArray();
                    String str = next2.split(",")[c11];
                    Iterator<Key> it3 = this.mKeyList.iterator();
                    while (it3.hasNext()) {
                        Key next3 = it3.next();
                        HashMap<String, ConstraintAttribute> hashMap2 = next3.mCustomConstraints;
                        if (hashMap2 != null && (constraintAttribute3 = hashMap2.get(str)) != null) {
                            sparseArray.append(next3.mFramePosition, constraintAttribute3);
                        }
                    }
                    makeSpline2 = ViewSpline.makeCustomSpline(next2, sparseArray);
                } else {
                    makeSpline2 = ViewSpline.makeSpline(next2);
                }
                if (makeSpline2 != null) {
                    makeSpline2.setType(next2);
                    this.mAttributesMap.put(next2, makeSpline2);
                }
                c11 = 1;
            }
            ArrayList<Key> arrayList3 = this.mKeyList;
            if (arrayList3 != null) {
                Iterator<Key> it4 = arrayList3.iterator();
                while (it4.hasNext()) {
                    Key next4 = it4.next();
                    if (next4 instanceof KeyAttributes) {
                        next4.addValues(this.mAttributesMap);
                    }
                }
            }
            this.mStartPoint.addValues(this.mAttributesMap, 0);
            this.mEndPoint.addValues(this.mAttributesMap, 100);
            for (String str2 : this.mAttributesMap.keySet()) {
                int intValue = (!hashMap.containsKey(str2) || (num = hashMap.get(str2)) == null) ? 0 : num.intValue();
                ViewSpline viewSpline = this.mAttributesMap.get(str2);
                if (viewSpline != null) {
                    viewSpline.setup(intValue);
                }
            }
        }
        if (!hashSet.isEmpty()) {
            if (this.mTimeCycleAttributesMap == null) {
                this.mTimeCycleAttributesMap = new HashMap<>();
            }
            Iterator<String> it5 = hashSet.iterator();
            while (it5.hasNext()) {
                String next5 = it5.next();
                if (!this.mTimeCycleAttributesMap.containsKey(next5)) {
                    if (next5.startsWith("CUSTOM,")) {
                        SparseArray sparseArray2 = new SparseArray();
                        String str3 = next5.split(",")[1];
                        Iterator<Key> it6 = this.mKeyList.iterator();
                        while (it6.hasNext()) {
                            Key next6 = it6.next();
                            HashMap<String, ConstraintAttribute> hashMap3 = next6.mCustomConstraints;
                            if (hashMap3 != null && (constraintAttribute2 = hashMap3.get(str3)) != null) {
                                sparseArray2.append(next6.mFramePosition, constraintAttribute2);
                            }
                        }
                        makeSpline = ViewTimeCycle.makeCustomSpline(next5, sparseArray2);
                    } else {
                        makeSpline = ViewTimeCycle.makeSpline(next5, currentTime);
                    }
                    if (makeSpline != null) {
                        makeSpline.setType(next5);
                        this.mTimeCycleAttributesMap.put(next5, makeSpline);
                    }
                }
            }
            ArrayList<Key> arrayList4 = this.mKeyList;
            if (arrayList4 != null) {
                Iterator<Key> it7 = arrayList4.iterator();
                while (it7.hasNext()) {
                    Key next7 = it7.next();
                    if (next7 instanceof KeyTimeCycle) {
                        ((KeyTimeCycle) next7).addTimeValues(this.mTimeCycleAttributesMap);
                    }
                }
            }
            for (String str4 : this.mTimeCycleAttributesMap.keySet()) {
                this.mTimeCycleAttributesMap.get(str4).setup(hashMap.containsKey(str4) ? hashMap.get(str4).intValue() : 0);
            }
        }
        int i11 = 2;
        int size = this.mMotionPaths.size() + 2;
        MotionPaths[] motionPathsArr = new MotionPaths[size];
        motionPathsArr[0] = this.mStartMotionPath;
        motionPathsArr[size - 1] = this.mEndMotionPath;
        if (this.mMotionPaths.size() > 0 && this.mCurveFitType == -1) {
            this.mCurveFitType = 0;
        }
        Iterator<MotionPaths> it8 = this.mMotionPaths.iterator();
        int i12 = 1;
        while (it8.hasNext()) {
            motionPathsArr[i12] = it8.next();
            i12++;
        }
        HashSet hashSet4 = new HashSet();
        for (String str5 : this.mEndMotionPath.attributes.keySet()) {
            if (this.mStartMotionPath.attributes.containsKey(str5)) {
                String valueOf = String.valueOf(str5);
                if (!hashSet2.contains(valueOf.length() != 0 ? "CUSTOM,".concat(valueOf) : new String("CUSTOM,"))) {
                    hashSet4.add(str5);
                }
            }
        }
        String[] strArr2 = (String[]) hashSet4.toArray(new String[0]);
        this.mAttributeNames = strArr2;
        this.mAttributeInterpolatorCount = new int[strArr2.length];
        int i13 = 0;
        while (true) {
            strArr = this.mAttributeNames;
            if (i13 >= strArr.length) {
                break;
            }
            String str6 = strArr[i13];
            this.mAttributeInterpolatorCount[i13] = 0;
            int i14 = 0;
            while (true) {
                if (i14 >= size) {
                    break;
                }
                if (motionPathsArr[i14].attributes.containsKey(str6) && (constraintAttribute = motionPathsArr[i14].attributes.get(str6)) != null) {
                    int[] iArr = this.mAttributeInterpolatorCount;
                    iArr[i13] = iArr[i13] + constraintAttribute.numberOfInterpolatedValues();
                    break;
                }
                i14++;
            }
            i13++;
        }
        boolean z9 = motionPathsArr[0].mPathMotionArc != Key.UNSET;
        int length = 18 + strArr.length;
        boolean[] zArr = new boolean[length];
        for (int i15 = 1; i15 < size; i15++) {
            motionPathsArr[i15].different(motionPathsArr[i15 - 1], zArr, this.mAttributeNames, z9);
        }
        int i16 = 0;
        for (int i17 = 1; i17 < length; i17++) {
            if (zArr[i17]) {
                i16++;
            }
        }
        this.mInterpolateVariables = new int[i16];
        int max = Math.max(2, i16);
        this.mInterpolateData = new double[max];
        this.mInterpolateVelocity = new double[max];
        int i18 = 0;
        for (int i19 = 1; i19 < length; i19++) {
            if (zArr[i19]) {
                this.mInterpolateVariables[i18] = i19;
                i18++;
            }
        }
        double[][] dArr = (double[][]) Array.newInstance(double.class, size, this.mInterpolateVariables.length);
        double[] dArr2 = new double[size];
        for (int i20 = 0; i20 < size; i20++) {
            motionPathsArr[i20].fillStandard(dArr[i20], this.mInterpolateVariables);
            dArr2[i20] = motionPathsArr[i20].time;
        }
        int i21 = 0;
        while (true) {
            int[] iArr2 = this.mInterpolateVariables;
            if (i21 >= iArr2.length) {
                break;
            }
            int i22 = iArr2[i21];
            String[] strArr3 = MotionPaths.names;
            if (i22 < strArr3.length) {
                String concat = String.valueOf(strArr3[iArr2[i21]]).concat(" [");
                for (int i23 = 0; i23 < size; i23++) {
                    String valueOf2 = String.valueOf(concat);
                    double d4 = dArr[i23][i21];
                    StringBuilder sb = new StringBuilder(valueOf2.length() + 24);
                    sb.append(valueOf2);
                    sb.append(d4);
                    concat = sb.toString();
                }
            }
            i21++;
        }
        this.mSpline = new CurveFit[this.mAttributeNames.length + 1];
        int i24 = 0;
        while (true) {
            String[] strArr4 = this.mAttributeNames;
            if (i24 >= strArr4.length) {
                break;
            }
            String str7 = strArr4[i24];
            int i25 = 0;
            double[] dArr3 = null;
            int i26 = 0;
            double[][] dArr4 = null;
            while (i25 < size) {
                if (motionPathsArr[i25].hasCustomData(str7)) {
                    if (dArr4 == null) {
                        dArr3 = new double[size];
                        int[] iArr3 = new int[i11];
                        iArr3[1] = motionPathsArr[i25].getCustomDataCount(str7);
                        iArr3[c10] = size;
                        dArr4 = (double[][]) Array.newInstance(double.class, iArr3);
                    }
                    dArr3[i26] = motionPathsArr[i25].time;
                    motionPathsArr[i25].getCustomData(str7, dArr4[i26], 0);
                    i26++;
                }
                i25++;
                i11 = 2;
                c10 = 0;
            }
            i24++;
            this.mSpline[i24] = CurveFit.get(this.mCurveFitType, Arrays.copyOf(dArr3, i26), (double[][]) Arrays.copyOf(dArr4, i26));
            i11 = 2;
            c10 = 0;
        }
        this.mSpline[0] = CurveFit.get(this.mCurveFitType, dArr2, dArr);
        if (motionPathsArr[0].mPathMotionArc != Key.UNSET) {
            int[] iArr4 = new int[size];
            double[] dArr5 = new double[size];
            double[][] dArr6 = (double[][]) Array.newInstance(double.class, size, 2);
            for (int i27 = 0; i27 < size; i27++) {
                iArr4[i27] = motionPathsArr[i27].mPathMotionArc;
                dArr5[i27] = motionPathsArr[i27].time;
                dArr6[i27][0] = motionPathsArr[i27].f437x;
                dArr6[i27][1] = motionPathsArr[i27].f438y;
            }
            this.mArcSpline = CurveFit.getArc(iArr4, dArr5, dArr6);
        }
        float f10 = Float.NaN;
        this.mCycleMap = new HashMap<>();
        if (this.mKeyList != null) {
            Iterator<String> it9 = hashSet3.iterator();
            while (it9.hasNext()) {
                String next8 = it9.next();
                ViewOscillator makeSpline3 = ViewOscillator.makeSpline(next8);
                if (makeSpline3 != null) {
                    if (makeSpline3.variesByPath() && Float.isNaN(f10)) {
                        f10 = getPreCycleDistance();
                    }
                    makeSpline3.setType(next8);
                    this.mCycleMap.put(next8, makeSpline3);
                }
            }
            Iterator<Key> it10 = this.mKeyList.iterator();
            while (it10.hasNext()) {
                Key next9 = it10.next();
                if (next9 instanceof KeyCycle) {
                    ((KeyCycle) next9).addCycleValues(this.mCycleMap);
                }
            }
            for (ViewOscillator viewOscillator : this.mCycleMap.values()) {
                viewOscillator.setup(f10);
            }
        }
    }

    public void setupRelative(MotionController motionController) {
        this.mStartMotionPath.setupRelative(motionController, motionController.mStartMotionPath);
        this.mEndMotionPath.setupRelative(motionController, motionController.mEndMotionPath);
    }

    public String toString() {
        MotionPaths motionPaths = this.mStartMotionPath;
        float f10 = motionPaths.f437x;
        float f11 = motionPaths.f438y;
        MotionPaths motionPaths2 = this.mEndMotionPath;
        float f12 = motionPaths2.f437x;
        float f13 = motionPaths2.f438y;
        StringBuilder sb = new StringBuilder(88);
        sb.append(" start: x: ");
        sb.append(f10);
        sb.append(" y: ");
        sb.append(f11);
        sb.append(" end: x: ");
        sb.append(f12);
        sb.append(" y: ");
        sb.append(f13);
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setStartState(Rect cw, ConstraintSet constraintSet, int parentWidth, int parentHeight) {
        int i4 = constraintSet.mRotate;
        if (i4 != 0) {
            rotate(cw, this.mTempRect, i4, parentWidth, parentHeight);
        }
        MotionPaths motionPaths = this.mStartMotionPath;
        motionPaths.time = 0.0f;
        motionPaths.position = 0.0f;
        readView(motionPaths);
        this.mStartMotionPath.setBounds(cw.left, cw.top, cw.width(), cw.height());
        ConstraintSet.Constraint parameters = constraintSet.getParameters(this.mId);
        this.mStartMotionPath.applyParameters(parameters);
        this.mMotionStagger = parameters.motion.mMotionStagger;
        this.mStartPoint.setState(cw, constraintSet, i4, this.mId);
        this.mTransformPivotTarget = parameters.transform.transformPivotTarget;
        ConstraintSet.Motion motion = parameters.motion;
        this.mQuantizeMotionSteps = motion.mQuantizeMotionSteps;
        this.mQuantizeMotionPhase = motion.mQuantizeMotionPhase;
        Context context = this.mView.getContext();
        ConstraintSet.Motion motion2 = parameters.motion;
        this.mQuantizeMotionInterpolator = getInterpolator(context, motion2.mQuantizeInterpolatorType, motion2.mQuantizeInterpolatorString, motion2.mQuantizeInterpolatorID);
    }
}

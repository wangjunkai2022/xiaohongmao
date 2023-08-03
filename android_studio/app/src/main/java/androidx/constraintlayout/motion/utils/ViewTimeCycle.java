package androidx.constraintlayout.motion.utils;

import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import androidx.constraintlayout.core.motion.utils.CurveFit;
import androidx.constraintlayout.core.motion.utils.KeyCache;
import androidx.constraintlayout.core.motion.utils.TimeCycleSplineSet;
import androidx.constraintlayout.motion.widget.Key;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.widget.ConstraintAttribute;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public abstract class ViewTimeCycle extends TimeCycleSplineSet {
    private static final String TAG = "ViewTimeCycle";

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class AlphaSet extends ViewTimeCycle {
        AlphaSet() {
        }

        @Override // androidx.constraintlayout.motion.utils.ViewTimeCycle
        public boolean setProperty(View view, float t9, long time, KeyCache cache) {
            view.setAlpha(get(t9, time, view, cache));
            return this.mContinue;
        }
    }

    /* loaded from: classes.dex */
    public static class CustomSet extends ViewTimeCycle {
        String mAttributeName;
        float[] mCache;
        SparseArray<ConstraintAttribute> mConstraintAttributeList;
        float[] mTempValues;
        SparseArray<float[]> mWaveProperties = new SparseArray<>();

        public CustomSet(String attribute, SparseArray<ConstraintAttribute> attrList) {
            this.mAttributeName = attribute.split(",")[1];
            this.mConstraintAttributeList = attrList;
        }

        @Override // androidx.constraintlayout.core.motion.utils.TimeCycleSplineSet
        public void setPoint(int position, float value, float period, int shape, float offset) {
            throw new RuntimeException("don't call for custom attribute call setPoint(pos, ConstraintAttribute,...)");
        }

        @Override // androidx.constraintlayout.motion.utils.ViewTimeCycle
        public boolean setProperty(View view, float t9, long time, KeyCache cache) {
            this.mCurveFit.getPos(t9, this.mTempValues);
            float[] fArr = this.mTempValues;
            float f10 = fArr[fArr.length - 2];
            float f11 = fArr[fArr.length - 1];
            long j4 = time - this.last_time;
            if (Float.isNaN(this.last_cycle)) {
                float floatValue = cache.getFloatValue(view, this.mAttributeName, 0);
                this.last_cycle = floatValue;
                if (Float.isNaN(floatValue)) {
                    this.last_cycle = 0.0f;
                }
            }
            float f12 = (float) ((this.last_cycle + ((j4 * 1.0E-9d) * f10)) % 1.0d);
            this.last_cycle = f12;
            this.last_time = time;
            float calcWave = calcWave(f12);
            this.mContinue = false;
            int i4 = 0;
            while (true) {
                float[] fArr2 = this.mCache;
                if (i4 >= fArr2.length) {
                    break;
                }
                boolean z9 = this.mContinue;
                float[] fArr3 = this.mTempValues;
                this.mContinue = z9 | (((double) fArr3[i4]) != 0.0d);
                fArr2[i4] = (fArr3[i4] * calcWave) + f11;
                i4++;
            }
            this.mConstraintAttributeList.valueAt(0).setInterpolatedValue(view, this.mCache);
            if (f10 != 0.0f) {
                this.mContinue = true;
            }
            return this.mContinue;
        }

        @Override // androidx.constraintlayout.core.motion.utils.TimeCycleSplineSet
        public void setup(int curveType) {
            int size = this.mConstraintAttributeList.size();
            int numberOfInterpolatedValues = this.mConstraintAttributeList.valueAt(0).numberOfInterpolatedValues();
            double[] dArr = new double[size];
            int i4 = numberOfInterpolatedValues + 2;
            this.mTempValues = new float[i4];
            this.mCache = new float[numberOfInterpolatedValues];
            double[][] dArr2 = (double[][]) Array.newInstance(double.class, size, i4);
            for (int i10 = 0; i10 < size; i10++) {
                int keyAt = this.mConstraintAttributeList.keyAt(i10);
                float[] valueAt = this.mWaveProperties.valueAt(i10);
                dArr[i10] = keyAt * 0.01d;
                this.mConstraintAttributeList.valueAt(i10).getValuesToInterpolate(this.mTempValues);
                int i11 = 0;
                while (true) {
                    float[] fArr = this.mTempValues;
                    if (i11 < fArr.length) {
                        dArr2[i10][i11] = fArr[i11];
                        i11++;
                    }
                }
                dArr2[i10][numberOfInterpolatedValues] = valueAt[0];
                dArr2[i10][numberOfInterpolatedValues + 1] = valueAt[1];
            }
            this.mCurveFit = CurveFit.get(curveType, dArr, dArr2);
        }

        public void setPoint(int position, ConstraintAttribute value, float period, int shape, float offset) {
            this.mConstraintAttributeList.append(position, value);
            this.mWaveProperties.append(position, new float[]{period, offset});
            this.mWaveShape = Math.max(this.mWaveShape, shape);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class ElevationSet extends ViewTimeCycle {
        ElevationSet() {
        }

        @Override // androidx.constraintlayout.motion.utils.ViewTimeCycle
        public boolean setProperty(View view, float t9, long time, KeyCache cache) {
            view.setElevation(get(t9, time, view, cache));
            return this.mContinue;
        }
    }

    /* loaded from: classes.dex */
    public static class PathRotate extends ViewTimeCycle {
        public boolean setPathRotate(View view, KeyCache cache, float t9, long time, double dx, double dy) {
            view.setRotation(get(t9, time, view, cache) + ((float) Math.toDegrees(Math.atan2(dy, dx))));
            return this.mContinue;
        }

        @Override // androidx.constraintlayout.motion.utils.ViewTimeCycle
        public boolean setProperty(View view, float t9, long time, KeyCache cache) {
            return this.mContinue;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class ProgressSet extends ViewTimeCycle {
        boolean mNoMethod = false;

        ProgressSet() {
        }

        @Override // androidx.constraintlayout.motion.utils.ViewTimeCycle
        public boolean setProperty(View view, float t9, long time, KeyCache cache) {
            if (view instanceof MotionLayout) {
                ((MotionLayout) view).setProgress(get(t9, time, view, cache));
            } else if (this.mNoMethod) {
                return false;
            } else {
                Method method = null;
                try {
                    method = view.getClass().getMethod("setProgress", Float.TYPE);
                } catch (NoSuchMethodException unused) {
                    this.mNoMethod = true;
                }
                Method method2 = method;
                if (method2 != null) {
                    try {
                        method2.invoke(view, Float.valueOf(get(t9, time, view, cache)));
                    } catch (IllegalAccessException e4) {
                        Log.e(ViewTimeCycle.TAG, "unable to setProgress", e4);
                    } catch (InvocationTargetException e10) {
                        Log.e(ViewTimeCycle.TAG, "unable to setProgress", e10);
                    }
                }
            }
            return this.mContinue;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class RotationSet extends ViewTimeCycle {
        RotationSet() {
        }

        @Override // androidx.constraintlayout.motion.utils.ViewTimeCycle
        public boolean setProperty(View view, float t9, long time, KeyCache cache) {
            view.setRotation(get(t9, time, view, cache));
            return this.mContinue;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class RotationXset extends ViewTimeCycle {
        RotationXset() {
        }

        @Override // androidx.constraintlayout.motion.utils.ViewTimeCycle
        public boolean setProperty(View view, float t9, long time, KeyCache cache) {
            view.setRotationX(get(t9, time, view, cache));
            return this.mContinue;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class RotationYset extends ViewTimeCycle {
        RotationYset() {
        }

        @Override // androidx.constraintlayout.motion.utils.ViewTimeCycle
        public boolean setProperty(View view, float t9, long time, KeyCache cache) {
            view.setRotationY(get(t9, time, view, cache));
            return this.mContinue;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class ScaleXset extends ViewTimeCycle {
        ScaleXset() {
        }

        @Override // androidx.constraintlayout.motion.utils.ViewTimeCycle
        public boolean setProperty(View view, float t9, long time, KeyCache cache) {
            view.setScaleX(get(t9, time, view, cache));
            return this.mContinue;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class ScaleYset extends ViewTimeCycle {
        ScaleYset() {
        }

        @Override // androidx.constraintlayout.motion.utils.ViewTimeCycle
        public boolean setProperty(View view, float t9, long time, KeyCache cache) {
            view.setScaleY(get(t9, time, view, cache));
            return this.mContinue;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class TranslationXset extends ViewTimeCycle {
        TranslationXset() {
        }

        @Override // androidx.constraintlayout.motion.utils.ViewTimeCycle
        public boolean setProperty(View view, float t9, long time, KeyCache cache) {
            view.setTranslationX(get(t9, time, view, cache));
            return this.mContinue;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class TranslationYset extends ViewTimeCycle {
        TranslationYset() {
        }

        @Override // androidx.constraintlayout.motion.utils.ViewTimeCycle
        public boolean setProperty(View view, float t9, long time, KeyCache cache) {
            view.setTranslationY(get(t9, time, view, cache));
            return this.mContinue;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class TranslationZset extends ViewTimeCycle {
        TranslationZset() {
        }

        @Override // androidx.constraintlayout.motion.utils.ViewTimeCycle
        public boolean setProperty(View view, float t9, long time, KeyCache cache) {
            view.setTranslationZ(get(t9, time, view, cache));
            return this.mContinue;
        }
    }

    public static ViewTimeCycle makeCustomSpline(String str, SparseArray<ConstraintAttribute> attrList) {
        return new CustomSet(str, attrList);
    }

    public static ViewTimeCycle makeSpline(String str, long currentTime) {
        ViewTimeCycle rotationXset;
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -1249320806:
                if (str.equals("rotationX")) {
                    c10 = 0;
                    break;
                }
                break;
            case -1249320805:
                if (str.equals("rotationY")) {
                    c10 = 1;
                    break;
                }
                break;
            case -1225497657:
                if (str.equals("translationX")) {
                    c10 = 2;
                    break;
                }
                break;
            case -1225497656:
                if (str.equals("translationY")) {
                    c10 = 3;
                    break;
                }
                break;
            case -1225497655:
                if (str.equals("translationZ")) {
                    c10 = 4;
                    break;
                }
                break;
            case -1001078227:
                if (str.equals("progress")) {
                    c10 = 5;
                    break;
                }
                break;
            case -908189618:
                if (str.equals("scaleX")) {
                    c10 = 6;
                    break;
                }
                break;
            case -908189617:
                if (str.equals("scaleY")) {
                    c10 = 7;
                    break;
                }
                break;
            case -40300674:
                if (str.equals(Key.ROTATION)) {
                    c10 = '\b';
                    break;
                }
                break;
            case -4379043:
                if (str.equals("elevation")) {
                    c10 = '\t';
                    break;
                }
                break;
            case 37232917:
                if (str.equals("transitionPathRotate")) {
                    c10 = '\n';
                    break;
                }
                break;
            case 92909918:
                if (str.equals("alpha")) {
                    c10 = 11;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                rotationXset = new RotationXset();
                break;
            case 1:
                rotationXset = new RotationYset();
                break;
            case 2:
                rotationXset = new TranslationXset();
                break;
            case 3:
                rotationXset = new TranslationYset();
                break;
            case 4:
                rotationXset = new TranslationZset();
                break;
            case 5:
                rotationXset = new ProgressSet();
                break;
            case 6:
                rotationXset = new ScaleXset();
                break;
            case 7:
                rotationXset = new ScaleYset();
                break;
            case '\b':
                rotationXset = new RotationSet();
                break;
            case '\t':
                rotationXset = new ElevationSet();
                break;
            case '\n':
                rotationXset = new PathRotate();
                break;
            case 11:
                rotationXset = new AlphaSet();
                break;
            default:
                return null;
        }
        rotationXset.setStartTime(currentTime);
        return rotationXset;
    }

    public float get(float pos, long time, View view, KeyCache cache) {
        this.mCurveFit.getPos(pos, this.mCache);
        float[] fArr = this.mCache;
        float f10 = fArr[1];
        int i4 = (f10 > 0.0f ? 1 : (f10 == 0.0f ? 0 : -1));
        if (i4 == 0) {
            this.mContinue = false;
            return fArr[2];
        }
        if (Float.isNaN(this.last_cycle)) {
            float floatValue = cache.getFloatValue(view, this.mType, 0);
            this.last_cycle = floatValue;
            if (Float.isNaN(floatValue)) {
                this.last_cycle = 0.0f;
            }
        }
        float f11 = (float) ((this.last_cycle + (((time - this.last_time) * 1.0E-9d) * f10)) % 1.0d);
        this.last_cycle = f11;
        cache.setFloatValue(view, this.mType, 0, f11);
        this.last_time = time;
        float f12 = this.mCache[0];
        float calcWave = (calcWave(this.last_cycle) * f12) + this.mCache[2];
        this.mContinue = (f12 == 0.0f && i4 == 0) ? false : true;
        return calcWave;
    }

    public abstract boolean setProperty(View view, float t9, long time, KeyCache cache);
}

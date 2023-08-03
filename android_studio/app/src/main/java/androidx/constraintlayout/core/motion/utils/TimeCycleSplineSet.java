package androidx.constraintlayout.core.motion.utils;

import androidx.constraintlayout.core.motion.CustomAttribute;
import androidx.constraintlayout.core.motion.CustomVariable;
import androidx.constraintlayout.core.motion.MotionWidget;
import androidx.constraintlayout.core.motion.utils.KeyFrameArray;
import java.io.PrintStream;
import java.lang.reflect.Array;
import java.text.DecimalFormat;

/* loaded from: classes.dex */
public abstract class TimeCycleSplineSet {
    protected static final int CURVE_OFFSET = 2;
    protected static final int CURVE_PERIOD = 1;
    protected static final int CURVE_VALUE = 0;
    private static final String TAG = "SplineSet";
    protected static float VAL_2PI = 6.2831855f;
    protected int count;
    protected long last_time;
    protected CurveFit mCurveFit;
    protected String mType;
    protected int mWaveShape = 0;
    protected int[] mTimePoints = new int[10];
    protected float[][] mValues = (float[][]) Array.newInstance(float.class, 10, 3);
    protected float[] mCache = new float[3];
    protected boolean mContinue = false;
    protected float last_cycle = Float.NaN;

    /* loaded from: classes.dex */
    public static class CustomSet extends TimeCycleSplineSet {
        String mAttributeName;
        float[] mCache;
        KeyFrameArray.CustomArray mConstraintAttributeList;
        float[] mTempValues;
        KeyFrameArray.FloatArray mWaveProperties = new KeyFrameArray.FloatArray();

        public CustomSet(String str, KeyFrameArray.CustomArray customArray) {
            this.mAttributeName = str.split(",")[1];
            this.mConstraintAttributeList = customArray;
        }

        @Override // androidx.constraintlayout.core.motion.utils.TimeCycleSplineSet
        public void setPoint(int i4, float f10, float f11, int i10, float f12) {
            throw new RuntimeException("don't call for custom attribute call setPoint(pos, ConstraintAttribute,...)");
        }

        public boolean setProperty(MotionWidget motionWidget, float f10, long j4, KeyCache keyCache) {
            this.mCurveFit.getPos(f10, this.mTempValues);
            float[] fArr = this.mTempValues;
            float f11 = fArr[fArr.length - 2];
            float f12 = fArr[fArr.length - 1];
            long j10 = j4 - this.last_time;
            if (Float.isNaN(this.last_cycle)) {
                float floatValue = keyCache.getFloatValue(motionWidget, this.mAttributeName, 0);
                this.last_cycle = floatValue;
                if (Float.isNaN(floatValue)) {
                    this.last_cycle = 0.0f;
                }
            }
            float f13 = (float) ((this.last_cycle + ((j10 * 1.0E-9d) * f11)) % 1.0d);
            this.last_cycle = f13;
            this.last_time = j4;
            float calcWave = calcWave(f13);
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
                fArr2[i4] = (fArr3[i4] * calcWave) + f12;
                i4++;
            }
            this.mConstraintAttributeList.valueAt(0).setInterpolatedValue(motionWidget, this.mCache);
            if (f11 != 0.0f) {
                this.mContinue = true;
            }
            return this.mContinue;
        }

        @Override // androidx.constraintlayout.core.motion.utils.TimeCycleSplineSet
        public void setup(int i4) {
            int size = this.mConstraintAttributeList.size();
            int numberOfInterpolatedValues = this.mConstraintAttributeList.valueAt(0).numberOfInterpolatedValues();
            double[] dArr = new double[size];
            int i10 = numberOfInterpolatedValues + 2;
            this.mTempValues = new float[i10];
            this.mCache = new float[numberOfInterpolatedValues];
            double[][] dArr2 = (double[][]) Array.newInstance(double.class, size, i10);
            for (int i11 = 0; i11 < size; i11++) {
                int keyAt = this.mConstraintAttributeList.keyAt(i11);
                CustomAttribute valueAt = this.mConstraintAttributeList.valueAt(i11);
                float[] valueAt2 = this.mWaveProperties.valueAt(i11);
                dArr[i11] = keyAt * 0.01d;
                valueAt.getValuesToInterpolate(this.mTempValues);
                int i12 = 0;
                while (true) {
                    float[] fArr = this.mTempValues;
                    if (i12 < fArr.length) {
                        dArr2[i11][i12] = fArr[i12];
                        i12++;
                    }
                }
                dArr2[i11][numberOfInterpolatedValues] = valueAt2[0];
                dArr2[i11][numberOfInterpolatedValues + 1] = valueAt2[1];
            }
            this.mCurveFit = CurveFit.get(i4, dArr, dArr2);
        }

        public void setPoint(int i4, CustomAttribute customAttribute, float f10, int i10, float f11) {
            this.mConstraintAttributeList.append(i4, customAttribute);
            this.mWaveProperties.append(i4, new float[]{f10, f11});
            this.mWaveShape = Math.max(this.mWaveShape, i10);
        }
    }

    /* loaded from: classes.dex */
    public static class CustomVarSet extends TimeCycleSplineSet {
        String mAttributeName;
        float[] mCache;
        KeyFrameArray.CustomVar mConstraintAttributeList;
        float[] mTempValues;
        KeyFrameArray.FloatArray mWaveProperties = new KeyFrameArray.FloatArray();

        public CustomVarSet(String str, KeyFrameArray.CustomVar customVar) {
            this.mAttributeName = str.split(",")[1];
            this.mConstraintAttributeList = customVar;
        }

        @Override // androidx.constraintlayout.core.motion.utils.TimeCycleSplineSet
        public void setPoint(int i4, float f10, float f11, int i10, float f12) {
            throw new RuntimeException("don't call for custom attribute call setPoint(pos, ConstraintAttribute,...)");
        }

        public boolean setProperty(MotionWidget motionWidget, float f10, long j4, KeyCache keyCache) {
            this.mCurveFit.getPos(f10, this.mTempValues);
            float[] fArr = this.mTempValues;
            float f11 = fArr[fArr.length - 2];
            float f12 = fArr[fArr.length - 1];
            long j10 = j4 - this.last_time;
            if (Float.isNaN(this.last_cycle)) {
                float floatValue = keyCache.getFloatValue(motionWidget, this.mAttributeName, 0);
                this.last_cycle = floatValue;
                if (Float.isNaN(floatValue)) {
                    this.last_cycle = 0.0f;
                }
            }
            float f13 = (float) ((this.last_cycle + ((j10 * 1.0E-9d) * f11)) % 1.0d);
            this.last_cycle = f13;
            this.last_time = j4;
            float calcWave = calcWave(f13);
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
                fArr2[i4] = (fArr3[i4] * calcWave) + f12;
                i4++;
            }
            this.mConstraintAttributeList.valueAt(0).setInterpolatedValue(motionWidget, this.mCache);
            if (f11 != 0.0f) {
                this.mContinue = true;
            }
            return this.mContinue;
        }

        @Override // androidx.constraintlayout.core.motion.utils.TimeCycleSplineSet
        public void setup(int i4) {
            int size = this.mConstraintAttributeList.size();
            int numberOfInterpolatedValues = this.mConstraintAttributeList.valueAt(0).numberOfInterpolatedValues();
            double[] dArr = new double[size];
            int i10 = numberOfInterpolatedValues + 2;
            this.mTempValues = new float[i10];
            this.mCache = new float[numberOfInterpolatedValues];
            double[][] dArr2 = (double[][]) Array.newInstance(double.class, size, i10);
            for (int i11 = 0; i11 < size; i11++) {
                int keyAt = this.mConstraintAttributeList.keyAt(i11);
                CustomVariable valueAt = this.mConstraintAttributeList.valueAt(i11);
                float[] valueAt2 = this.mWaveProperties.valueAt(i11);
                dArr[i11] = keyAt * 0.01d;
                valueAt.getValuesToInterpolate(this.mTempValues);
                int i12 = 0;
                while (true) {
                    float[] fArr = this.mTempValues;
                    if (i12 < fArr.length) {
                        dArr2[i11][i12] = fArr[i12];
                        i12++;
                    }
                }
                dArr2[i11][numberOfInterpolatedValues] = valueAt2[0];
                dArr2[i11][numberOfInterpolatedValues + 1] = valueAt2[1];
            }
            this.mCurveFit = CurveFit.get(i4, dArr, dArr2);
        }

        public void setPoint(int i4, CustomVariable customVariable, float f10, int i10, float f11) {
            this.mConstraintAttributeList.append(i4, customVariable);
            this.mWaveProperties.append(i4, new float[]{f10, f11});
            this.mWaveShape = Math.max(this.mWaveShape, i10);
        }
    }

    /* loaded from: classes.dex */
    protected static class Sort {
        protected Sort() {
        }

        static void doubleQuickSort(int[] iArr, float[][] fArr, int i4, int i10) {
            int[] iArr2 = new int[iArr.length + 10];
            iArr2[0] = i10;
            iArr2[1] = i4;
            int i11 = 2;
            while (i11 > 0) {
                int i12 = i11 - 1;
                int i13 = iArr2[i12];
                i11 = i12 - 1;
                int i14 = iArr2[i11];
                if (i13 < i14) {
                    int partition = partition(iArr, fArr, i13, i14);
                    int i15 = i11 + 1;
                    iArr2[i11] = partition - 1;
                    int i16 = i15 + 1;
                    iArr2[i15] = i13;
                    int i17 = i16 + 1;
                    iArr2[i16] = i14;
                    i11 = i17 + 1;
                    iArr2[i17] = partition + 1;
                }
            }
        }

        private static int partition(int[] iArr, float[][] fArr, int i4, int i10) {
            int i11 = iArr[i10];
            int i12 = i4;
            while (i4 < i10) {
                if (iArr[i4] <= i11) {
                    swap(iArr, fArr, i12, i4);
                    i12++;
                }
                i4++;
            }
            swap(iArr, fArr, i12, i10);
            return i12;
        }

        private static void swap(int[] iArr, float[][] fArr, int i4, int i10) {
            int i11 = iArr[i4];
            iArr[i4] = iArr[i10];
            iArr[i10] = i11;
            float[] fArr2 = fArr[i4];
            fArr[i4] = fArr[i10];
            fArr[i10] = fArr2;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public float calcWave(float f10) {
        float abs;
        switch (this.mWaveShape) {
            case 1:
                return Math.signum(f10 * VAL_2PI);
            case 2:
                abs = Math.abs(f10);
                break;
            case 3:
                return (((f10 * 2.0f) + 1.0f) % 2.0f) - 1.0f;
            case 4:
                abs = ((f10 * 2.0f) + 1.0f) % 2.0f;
                break;
            case 5:
                return (float) Math.cos(f10 * VAL_2PI);
            case 6:
                float abs2 = 1.0f - Math.abs(((f10 * 4.0f) % 4.0f) - 2.0f);
                abs = abs2 * abs2;
                break;
            default:
                return (float) Math.sin(f10 * VAL_2PI);
        }
        return 1.0f - abs;
    }

    public CurveFit getCurveFit() {
        return this.mCurveFit;
    }

    public void setPoint(int i4, float f10, float f11, int i10, float f12) {
        int[] iArr = this.mTimePoints;
        int i11 = this.count;
        iArr[i11] = i4;
        float[][] fArr = this.mValues;
        fArr[i11][0] = f10;
        fArr[i11][1] = f11;
        fArr[i11][2] = f12;
        this.mWaveShape = Math.max(this.mWaveShape, i10);
        this.count++;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setStartTime(long j4) {
        this.last_time = j4;
    }

    public void setType(String str) {
        this.mType = str;
    }

    public void setup(int i4) {
        int i10;
        int i11 = this.count;
        if (i11 == 0) {
            PrintStream printStream = System.err;
            printStream.println("Error no points added to " + this.mType);
            return;
        }
        Sort.doubleQuickSort(this.mTimePoints, this.mValues, 0, i11 - 1);
        int i12 = 1;
        int i13 = 0;
        while (true) {
            int[] iArr = this.mTimePoints;
            if (i12 >= iArr.length) {
                break;
            }
            if (iArr[i12] != iArr[i12 - 1]) {
                i13++;
            }
            i12++;
        }
        if (i13 == 0) {
            i13 = 1;
        }
        double[] dArr = new double[i13];
        double[][] dArr2 = (double[][]) Array.newInstance(double.class, i13, 3);
        int i14 = 0;
        while (i10 < this.count) {
            if (i10 > 0) {
                int[] iArr2 = this.mTimePoints;
                i10 = iArr2[i10] == iArr2[i10 + (-1)] ? i10 + 1 : 0;
            }
            dArr[i14] = this.mTimePoints[i10] * 0.01d;
            double[] dArr3 = dArr2[i14];
            float[][] fArr = this.mValues;
            dArr3[0] = fArr[i10][0];
            dArr2[i14][1] = fArr[i10][1];
            dArr2[i14][2] = fArr[i10][2];
            i14++;
        }
        this.mCurveFit = CurveFit.get(i4, dArr, dArr2);
    }

    public String toString() {
        String str = this.mType;
        DecimalFormat decimalFormat = new DecimalFormat("##.##");
        for (int i4 = 0; i4 < this.count; i4++) {
            str = str + "[" + this.mTimePoints[i4] + " , " + decimalFormat.format(this.mValues[i4]) + "] ";
        }
        return str;
    }
}

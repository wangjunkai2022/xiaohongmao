package androidx.constraintlayout.core.motion.utils;

import androidx.constraintlayout.core.motion.CustomAttribute;
import androidx.constraintlayout.core.motion.CustomVariable;
import androidx.constraintlayout.core.motion.MotionWidget;
import androidx.constraintlayout.core.motion.utils.KeyFrameArray;
import androidx.constraintlayout.core.state.WidgetFrame;
import java.lang.reflect.Array;
import java.text.DecimalFormat;
import java.util.Arrays;

/* loaded from: classes.dex */
public abstract class SplineSet {
    private static final String TAG = "SplineSet";
    private int count;
    protected CurveFit mCurveFit;
    private String mType;
    protected int[] mTimePoints = new int[10];
    protected float[] mValues = new float[10];

    /* loaded from: classes.dex */
    private static class CoreSpline extends SplineSet {
        long start;
        String type;

        public CoreSpline(String str, long j4) {
            this.type = str;
            this.start = j4;
        }

        @Override // androidx.constraintlayout.core.motion.utils.SplineSet
        public void setProperty(TypedValues typedValues, float f10) {
            typedValues.setValue(typedValues.getId(this.type), get(f10));
        }
    }

    /* loaded from: classes.dex */
    public static class CustomSet extends SplineSet {
        String mAttributeName;
        KeyFrameArray.CustomArray mConstraintAttributeList;
        float[] mTempValues;

        public CustomSet(String str, KeyFrameArray.CustomArray customArray) {
            this.mAttributeName = str.split(",")[1];
            this.mConstraintAttributeList = customArray;
        }

        @Override // androidx.constraintlayout.core.motion.utils.SplineSet
        public void setPoint(int i4, float f10) {
            throw new RuntimeException("don't call for custom attribute call setPoint(pos, ConstraintAttribute)");
        }

        public void setProperty(WidgetFrame widgetFrame, float f10) {
            this.mCurveFit.getPos(f10, this.mTempValues);
            this.mConstraintAttributeList.valueAt(0).setInterpolatedValue(widgetFrame, this.mTempValues);
        }

        @Override // androidx.constraintlayout.core.motion.utils.SplineSet
        public void setup(int i4) {
            int size = this.mConstraintAttributeList.size();
            int numberOfInterpolatedValues = this.mConstraintAttributeList.valueAt(0).numberOfInterpolatedValues();
            double[] dArr = new double[size];
            this.mTempValues = new float[numberOfInterpolatedValues];
            double[][] dArr2 = (double[][]) Array.newInstance(double.class, size, numberOfInterpolatedValues);
            for (int i10 = 0; i10 < size; i10++) {
                int keyAt = this.mConstraintAttributeList.keyAt(i10);
                CustomAttribute valueAt = this.mConstraintAttributeList.valueAt(i10);
                dArr[i10] = keyAt * 0.01d;
                valueAt.getValuesToInterpolate(this.mTempValues);
                int i11 = 0;
                while (true) {
                    float[] fArr = this.mTempValues;
                    if (i11 < fArr.length) {
                        dArr2[i10][i11] = fArr[i11];
                        i11++;
                    }
                }
            }
            this.mCurveFit = CurveFit.get(i4, dArr, dArr2);
        }

        public void setPoint(int i4, CustomAttribute customAttribute) {
            this.mConstraintAttributeList.append(i4, customAttribute);
        }
    }

    /* loaded from: classes.dex */
    public static class CustomSpline extends SplineSet {
        String mAttributeName;
        KeyFrameArray.CustomVar mConstraintAttributeList;
        float[] mTempValues;

        public CustomSpline(String str, KeyFrameArray.CustomVar customVar) {
            this.mAttributeName = str.split(",")[1];
            this.mConstraintAttributeList = customVar;
        }

        @Override // androidx.constraintlayout.core.motion.utils.SplineSet
        public void setPoint(int i4, float f10) {
            throw new RuntimeException("don't call for custom attribute call setPoint(pos, ConstraintAttribute)");
        }

        @Override // androidx.constraintlayout.core.motion.utils.SplineSet
        public void setProperty(TypedValues typedValues, float f10) {
            setProperty((MotionWidget) typedValues, f10);
        }

        @Override // androidx.constraintlayout.core.motion.utils.SplineSet
        public void setup(int i4) {
            int size = this.mConstraintAttributeList.size();
            int numberOfInterpolatedValues = this.mConstraintAttributeList.valueAt(0).numberOfInterpolatedValues();
            double[] dArr = new double[size];
            this.mTempValues = new float[numberOfInterpolatedValues];
            double[][] dArr2 = (double[][]) Array.newInstance(double.class, size, numberOfInterpolatedValues);
            for (int i10 = 0; i10 < size; i10++) {
                int keyAt = this.mConstraintAttributeList.keyAt(i10);
                CustomVariable valueAt = this.mConstraintAttributeList.valueAt(i10);
                dArr[i10] = keyAt * 0.01d;
                valueAt.getValuesToInterpolate(this.mTempValues);
                int i11 = 0;
                while (true) {
                    float[] fArr = this.mTempValues;
                    if (i11 < fArr.length) {
                        dArr2[i10][i11] = fArr[i11];
                        i11++;
                    }
                }
            }
            this.mCurveFit = CurveFit.get(i4, dArr, dArr2);
        }

        public void setPoint(int i4, CustomVariable customVariable) {
            this.mConstraintAttributeList.append(i4, customVariable);
        }

        public void setProperty(MotionWidget motionWidget, float f10) {
            this.mCurveFit.getPos(f10, this.mTempValues);
            this.mConstraintAttributeList.valueAt(0).setInterpolatedValue(motionWidget, this.mTempValues);
        }
    }

    /* loaded from: classes.dex */
    private static class Sort {
        private Sort() {
        }

        static void doubleQuickSort(int[] iArr, float[] fArr, int i4, int i10) {
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

        private static int partition(int[] iArr, float[] fArr, int i4, int i10) {
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

        private static void swap(int[] iArr, float[] fArr, int i4, int i10) {
            int i11 = iArr[i4];
            iArr[i4] = iArr[i10];
            iArr[i10] = i11;
            float f10 = fArr[i4];
            fArr[i4] = fArr[i10];
            fArr[i10] = f10;
        }
    }

    public static SplineSet makeCustomSpline(String str, KeyFrameArray.CustomArray customArray) {
        return new CustomSet(str, customArray);
    }

    public static SplineSet makeCustomSplineSet(String str, KeyFrameArray.CustomVar customVar) {
        return new CustomSpline(str, customVar);
    }

    public static SplineSet makeSpline(String str, long j4) {
        return new CoreSpline(str, j4);
    }

    public float get(float f10) {
        return (float) this.mCurveFit.getPos(f10, 0);
    }

    public CurveFit getCurveFit() {
        return this.mCurveFit;
    }

    public float getSlope(float f10) {
        return (float) this.mCurveFit.getSlope(f10, 0);
    }

    public void setPoint(int i4, float f10) {
        int[] iArr = this.mTimePoints;
        if (iArr.length < this.count + 1) {
            this.mTimePoints = Arrays.copyOf(iArr, iArr.length * 2);
            float[] fArr = this.mValues;
            this.mValues = Arrays.copyOf(fArr, fArr.length * 2);
        }
        int[] iArr2 = this.mTimePoints;
        int i10 = this.count;
        iArr2[i10] = i4;
        this.mValues[i10] = f10;
        this.count = i10 + 1;
    }

    public void setProperty(TypedValues typedValues, float f10) {
        typedValues.setValue(a.a(this.mType), get(f10));
    }

    public void setType(String str) {
        this.mType = str;
    }

    public void setup(int i4) {
        int i10;
        int i11 = this.count;
        if (i11 == 0) {
            return;
        }
        Sort.doubleQuickSort(this.mTimePoints, this.mValues, 0, i11 - 1);
        int i12 = 1;
        for (int i13 = 1; i13 < this.count; i13++) {
            int[] iArr = this.mTimePoints;
            if (iArr[i13 - 1] != iArr[i13]) {
                i12++;
            }
        }
        double[] dArr = new double[i12];
        double[][] dArr2 = (double[][]) Array.newInstance(double.class, i12, 1);
        int i14 = 0;
        while (i10 < this.count) {
            if (i10 > 0) {
                int[] iArr2 = this.mTimePoints;
                i10 = iArr2[i10] == iArr2[i10 + (-1)] ? i10 + 1 : 0;
            }
            dArr[i14] = this.mTimePoints[i10] * 0.01d;
            dArr2[i14][0] = this.mValues[i10];
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

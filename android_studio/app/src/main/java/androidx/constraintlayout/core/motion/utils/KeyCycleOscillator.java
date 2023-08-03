package androidx.constraintlayout.core.motion.utils;

import androidx.constraintlayout.core.motion.MotionWidget;
import java.lang.reflect.Array;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;

/* loaded from: classes.dex */
public abstract class KeyCycleOscillator {
    private static final String TAG = "KeyCycleOscillator";
    private CurveFit mCurveFit;
    private CycleOscillator mCycleOscillator;
    private String mType;
    private int mWaveShape = 0;
    private String mWaveString = null;
    public int mVariesBy = 0;
    ArrayList<WavePoint> mWavePoints = new ArrayList<>();

    /* loaded from: classes.dex */
    private static class CoreSpline extends KeyCycleOscillator {
        String type;
        int typeId;

        public CoreSpline(String str) {
            this.type = str;
            this.typeId = c.a(str);
        }

        @Override // androidx.constraintlayout.core.motion.utils.KeyCycleOscillator
        public void setProperty(MotionWidget motionWidget, float f10) {
            motionWidget.setValue(this.typeId, get(f10));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class CycleOscillator {
        private static final String TAG = "CycleOscillator";
        static final int UNSET = -1;
        private final int OFFST;
        private final int PHASE;
        private final int VALUE;
        CurveFit mCurveFit;
        float[] mOffset;
        Oscillator mOscillator;
        float mPathLength;
        float[] mPeriod;
        float[] mPhase;
        double[] mPosition;
        float[] mScale;
        double[] mSplineSlopeCache;
        double[] mSplineValueCache;
        float[] mValues;
        private final int mVariesBy;
        int mWaveShape;

        CycleOscillator(int i4, String str, int i10, int i11) {
            Oscillator oscillator = new Oscillator();
            this.mOscillator = oscillator;
            this.OFFST = 0;
            this.PHASE = 1;
            this.VALUE = 2;
            this.mWaveShape = i4;
            this.mVariesBy = i10;
            oscillator.setType(i4, str);
            this.mValues = new float[i11];
            this.mPosition = new double[i11];
            this.mPeriod = new float[i11];
            this.mOffset = new float[i11];
            this.mPhase = new float[i11];
            this.mScale = new float[i11];
        }

        public double getLastPhase() {
            return this.mSplineValueCache[1];
        }

        public double getSlope(float f10) {
            CurveFit curveFit = this.mCurveFit;
            if (curveFit != null) {
                double d4 = f10;
                curveFit.getSlope(d4, this.mSplineSlopeCache);
                this.mCurveFit.getPos(d4, this.mSplineValueCache);
            } else {
                double[] dArr = this.mSplineSlopeCache;
                dArr[0] = 0.0d;
                dArr[1] = 0.0d;
                dArr[2] = 0.0d;
            }
            double d10 = f10;
            double value = this.mOscillator.getValue(d10, this.mSplineValueCache[1]);
            double slope = this.mOscillator.getSlope(d10, this.mSplineValueCache[1], this.mSplineSlopeCache[1]);
            double[] dArr2 = this.mSplineSlopeCache;
            return dArr2[0] + (value * dArr2[2]) + (slope * this.mSplineValueCache[2]);
        }

        public double getValues(float f10) {
            CurveFit curveFit = this.mCurveFit;
            if (curveFit != null) {
                curveFit.getPos(f10, this.mSplineValueCache);
            } else {
                double[] dArr = this.mSplineValueCache;
                dArr[0] = this.mOffset[0];
                dArr[1] = this.mPhase[0];
                dArr[2] = this.mValues[0];
            }
            double[] dArr2 = this.mSplineValueCache;
            return dArr2[0] + (this.mOscillator.getValue(f10, dArr2[1]) * this.mSplineValueCache[2]);
        }

        public void setPoint(int i4, int i10, float f10, float f11, float f12, float f13) {
            this.mPosition[i4] = i10 / 100.0d;
            this.mPeriod[i4] = f10;
            this.mOffset[i4] = f11;
            this.mPhase[i4] = f12;
            this.mValues[i4] = f13;
        }

        public void setup(float f10) {
            this.mPathLength = f10;
            double[][] dArr = (double[][]) Array.newInstance(double.class, this.mPosition.length, 3);
            float[] fArr = this.mValues;
            this.mSplineValueCache = new double[fArr.length + 2];
            this.mSplineSlopeCache = new double[fArr.length + 2];
            if (this.mPosition[0] > 0.0d) {
                this.mOscillator.addPoint(0.0d, this.mPeriod[0]);
            }
            double[] dArr2 = this.mPosition;
            int length = dArr2.length - 1;
            if (dArr2[length] < 1.0d) {
                this.mOscillator.addPoint(1.0d, this.mPeriod[length]);
            }
            for (int i4 = 0; i4 < dArr.length; i4++) {
                dArr[i4][0] = this.mOffset[i4];
                dArr[i4][1] = this.mPhase[i4];
                dArr[i4][2] = this.mValues[i4];
                this.mOscillator.addPoint(this.mPosition[i4], this.mPeriod[i4]);
            }
            this.mOscillator.normalize();
            double[] dArr3 = this.mPosition;
            if (dArr3.length > 1) {
                this.mCurveFit = CurveFit.get(0, dArr3, dArr);
            } else {
                this.mCurveFit = null;
            }
        }
    }

    /* loaded from: classes.dex */
    private static class IntDoubleSort {
        private IntDoubleSort() {
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

        static void sort(int[] iArr, float[] fArr, int i4, int i10) {
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

        private static void swap(int[] iArr, float[] fArr, int i4, int i10) {
            int i11 = iArr[i4];
            iArr[i4] = iArr[i10];
            iArr[i10] = i11;
            float f10 = fArr[i4];
            fArr[i4] = fArr[i10];
            fArr[i10] = f10;
        }
    }

    /* loaded from: classes.dex */
    private static class IntFloatFloatSort {
        private IntFloatFloatSort() {
        }

        private static int partition(int[] iArr, float[] fArr, float[] fArr2, int i4, int i10) {
            int i11 = iArr[i10];
            int i12 = i4;
            while (i4 < i10) {
                if (iArr[i4] <= i11) {
                    swap(iArr, fArr, fArr2, i12, i4);
                    i12++;
                }
                i4++;
            }
            swap(iArr, fArr, fArr2, i12, i10);
            return i12;
        }

        static void sort(int[] iArr, float[] fArr, float[] fArr2, int i4, int i10) {
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
                    int partition = partition(iArr, fArr, fArr2, i13, i14);
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

        private static void swap(int[] iArr, float[] fArr, float[] fArr2, int i4, int i10) {
            int i11 = iArr[i4];
            iArr[i4] = iArr[i10];
            iArr[i10] = i11;
            float f10 = fArr[i4];
            fArr[i4] = fArr[i10];
            fArr[i10] = f10;
            float f11 = fArr2[i4];
            fArr2[i4] = fArr2[i10];
            fArr2[i10] = f11;
        }
    }

    /* loaded from: classes.dex */
    public static class PathRotateSet extends KeyCycleOscillator {
        String type;
        int typeId;

        public PathRotateSet(String str) {
            this.type = str;
            this.typeId = c.a(str);
        }

        public void setPathRotate(MotionWidget motionWidget, float f10, double d4, double d10) {
            motionWidget.setRotationZ(get(f10) + ((float) Math.toDegrees(Math.atan2(d10, d4))));
        }

        @Override // androidx.constraintlayout.core.motion.utils.KeyCycleOscillator
        public void setProperty(MotionWidget motionWidget, float f10) {
            motionWidget.setValue(this.typeId, get(f10));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class WavePoint {
        float mOffset;
        float mPeriod;
        float mPhase;
        int mPosition;
        float mValue;

        public WavePoint(int i4, float f10, float f11, float f12, float f13) {
            this.mPosition = i4;
            this.mValue = f13;
            this.mOffset = f11;
            this.mPeriod = f10;
            this.mPhase = f12;
        }
    }

    public static KeyCycleOscillator makeWidgetCycle(String str) {
        if (str.equals("pathRotate")) {
            return new PathRotateSet(str);
        }
        return new CoreSpline(str);
    }

    public float get(float f10) {
        return (float) this.mCycleOscillator.getValues(f10);
    }

    public CurveFit getCurveFit() {
        return this.mCurveFit;
    }

    public float getSlope(float f10) {
        return (float) this.mCycleOscillator.getSlope(f10);
    }

    protected void setCustom(Object obj) {
    }

    public void setPoint(int i4, int i10, String str, int i11, float f10, float f11, float f12, float f13, Object obj) {
        this.mWavePoints.add(new WavePoint(i4, f10, f11, f12, f13));
        if (i11 != -1) {
            this.mVariesBy = i11;
        }
        this.mWaveShape = i10;
        setCustom(obj);
        this.mWaveString = str;
    }

    public void setProperty(MotionWidget motionWidget, float f10) {
    }

    public void setType(String str) {
        this.mType = str;
    }

    public void setup(float f10) {
        int size = this.mWavePoints.size();
        if (size == 0) {
            return;
        }
        Collections.sort(this.mWavePoints, new Comparator<WavePoint>() { // from class: androidx.constraintlayout.core.motion.utils.KeyCycleOscillator.1
            @Override // java.util.Comparator
            public int compare(WavePoint wavePoint, WavePoint wavePoint2) {
                return Integer.compare(wavePoint.mPosition, wavePoint2.mPosition);
            }
        });
        double[] dArr = new double[size];
        char c10 = 0;
        double[][] dArr2 = (double[][]) Array.newInstance(double.class, size, 3);
        this.mCycleOscillator = new CycleOscillator(this.mWaveShape, this.mWaveString, this.mVariesBy, size);
        Iterator<WavePoint> it = this.mWavePoints.iterator();
        int i4 = 0;
        while (it.hasNext()) {
            WavePoint next = it.next();
            float f11 = next.mPeriod;
            dArr[i4] = f11 * 0.01d;
            double[] dArr3 = dArr2[i4];
            float f12 = next.mValue;
            dArr3[c10] = f12;
            double[] dArr4 = dArr2[i4];
            float f13 = next.mOffset;
            dArr4[1] = f13;
            double[] dArr5 = dArr2[i4];
            float f14 = next.mPhase;
            dArr5[2] = f14;
            this.mCycleOscillator.setPoint(i4, next.mPosition, f11, f13, f14, f12);
            i4++;
            c10 = 0;
        }
        this.mCycleOscillator.setup(f10);
        this.mCurveFit = CurveFit.get(0, dArr, dArr2);
    }

    public String toString() {
        String str = this.mType;
        DecimalFormat decimalFormat = new DecimalFormat("##.##");
        Iterator<WavePoint> it = this.mWavePoints.iterator();
        while (it.hasNext()) {
            WavePoint next = it.next();
            str = str + "[" + next.mPosition + " , " + decimalFormat.format(next.mValue) + "] ";
        }
        return str;
    }

    public boolean variesByPath() {
        return this.mVariesBy == 1;
    }

    public void setPoint(int i4, int i10, String str, int i11, float f10, float f11, float f12, float f13) {
        this.mWavePoints.add(new WavePoint(i4, f10, f11, f12, f13));
        if (i11 != -1) {
            this.mVariesBy = i11;
        }
        this.mWaveShape = i10;
        this.mWaveString = str;
    }
}

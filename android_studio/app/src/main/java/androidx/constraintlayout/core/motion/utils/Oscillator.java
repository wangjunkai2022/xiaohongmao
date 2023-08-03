package androidx.constraintlayout.core.motion.utils;

import java.util.Arrays;

/* loaded from: classes.dex */
public class Oscillator {
    public static final int BOUNCE = 6;
    public static final int COS_WAVE = 5;
    public static final int CUSTOM = 7;
    public static final int REVERSE_SAW_WAVE = 4;
    public static final int SAW_WAVE = 3;
    public static final int SIN_WAVE = 0;
    public static final int SQUARE_WAVE = 1;
    public static String TAG = "Oscillator";
    public static final int TRIANGLE_WAVE = 2;
    double[] mArea;
    MonotonicCurveFit mCustomCurve;
    String mCustomType;
    int mType;
    float[] mPeriod = new float[0];
    double[] mPosition = new double[0];
    double PI2 = 6.283185307179586d;
    private boolean mNormalized = false;

    public void addPoint(double d4, float f10) {
        int length = this.mPeriod.length + 1;
        int binarySearch = Arrays.binarySearch(this.mPosition, d4);
        if (binarySearch < 0) {
            binarySearch = (-binarySearch) - 1;
        }
        this.mPosition = Arrays.copyOf(this.mPosition, length);
        this.mPeriod = Arrays.copyOf(this.mPeriod, length);
        this.mArea = new double[length];
        double[] dArr = this.mPosition;
        System.arraycopy(dArr, binarySearch, dArr, binarySearch + 1, (length - binarySearch) - 1);
        this.mPosition[binarySearch] = d4;
        this.mPeriod[binarySearch] = f10;
        this.mNormalized = false;
    }

    double getDP(double d4) {
        if (d4 <= 0.0d) {
            d4 = 1.0E-5d;
        } else if (d4 >= 1.0d) {
            d4 = 0.999999d;
        }
        int binarySearch = Arrays.binarySearch(this.mPosition, d4);
        if (binarySearch <= 0 && binarySearch != 0) {
            int i4 = (-binarySearch) - 1;
            float[] fArr = this.mPeriod;
            int i10 = i4 - 1;
            double d10 = fArr[i4] - fArr[i10];
            double[] dArr = this.mPosition;
            double d11 = d10 / (dArr[i4] - dArr[i10]);
            return (fArr[i10] - (d11 * dArr[i10])) + (d4 * d11);
        }
        return 0.0d;
    }

    double getP(double d4) {
        if (d4 < 0.0d) {
            d4 = 0.0d;
        } else if (d4 > 1.0d) {
            d4 = 1.0d;
        }
        int binarySearch = Arrays.binarySearch(this.mPosition, d4);
        if (binarySearch > 0) {
            return 1.0d;
        }
        if (binarySearch != 0) {
            int i4 = (-binarySearch) - 1;
            float[] fArr = this.mPeriod;
            int i10 = i4 - 1;
            double d10 = fArr[i4] - fArr[i10];
            double[] dArr = this.mPosition;
            double d11 = d10 / (dArr[i4] - dArr[i10]);
            return this.mArea[i10] + ((fArr[i10] - (dArr[i10] * d11)) * (d4 - dArr[i10])) + ((d11 * ((d4 * d4) - (dArr[i10] * dArr[i10]))) / 2.0d);
        }
        return 0.0d;
    }

    public double getSlope(double d4, double d10, double d11) {
        double p9 = d10 + getP(d4);
        double dp = getDP(d4) + d11;
        switch (this.mType) {
            case 1:
                return 0.0d;
            case 2:
                return dp * 4.0d * Math.signum((((p9 * 4.0d) + 3.0d) % 4.0d) - 2.0d);
            case 3:
                return dp * 2.0d;
            case 4:
                return (-dp) * 2.0d;
            case 5:
                double d12 = this.PI2;
                return (-d12) * dp * Math.sin(d12 * p9);
            case 6:
                return dp * 4.0d * ((((p9 * 4.0d) + 2.0d) % 4.0d) - 2.0d);
            case 7:
                return this.mCustomCurve.getSlope(p9 % 1.0d, 0);
            default:
                double d13 = this.PI2;
                return dp * d13 * Math.cos(d13 * p9);
        }
    }

    public double getValue(double d4, double d10) {
        double abs;
        double p9 = getP(d4) + d10;
        switch (this.mType) {
            case 1:
                return Math.signum(0.5d - (p9 % 1.0d));
            case 2:
                abs = Math.abs((((p9 * 4.0d) + 1.0d) % 4.0d) - 2.0d);
                break;
            case 3:
                return (((p9 * 2.0d) + 1.0d) % 2.0d) - 1.0d;
            case 4:
                abs = ((p9 * 2.0d) + 1.0d) % 2.0d;
                break;
            case 5:
                return Math.cos(this.PI2 * (d10 + p9));
            case 6:
                double abs2 = 1.0d - Math.abs(((p9 * 4.0d) % 4.0d) - 2.0d);
                abs = abs2 * abs2;
                break;
            case 7:
                return this.mCustomCurve.getPos(p9 % 1.0d, 0);
            default:
                return Math.sin(this.PI2 * p9);
        }
        return 1.0d - abs;
    }

    public void normalize() {
        float[] fArr;
        float[] fArr2;
        float[] fArr3;
        int i4;
        double d4 = 0.0d;
        int i10 = 0;
        while (true) {
            if (i10 >= this.mPeriod.length) {
                break;
            }
            d4 += fArr[i10];
            i10++;
        }
        double d10 = 0.0d;
        int i11 = 1;
        while (true) {
            if (i11 >= this.mPeriod.length) {
                break;
            }
            double[] dArr = this.mPosition;
            d10 += (dArr[i11] - dArr[i11 - 1]) * ((fArr2[i4] + fArr2[i11]) / 2.0f);
            i11++;
        }
        int i12 = 0;
        while (true) {
            float[] fArr4 = this.mPeriod;
            if (i12 >= fArr4.length) {
                break;
            }
            fArr4[i12] = (float) (fArr4[i12] * (d4 / d10));
            i12++;
        }
        this.mArea[0] = 0.0d;
        int i13 = 1;
        while (true) {
            if (i13 < this.mPeriod.length) {
                int i14 = i13 - 1;
                double[] dArr2 = this.mPosition;
                double d11 = dArr2[i13] - dArr2[i14];
                double[] dArr3 = this.mArea;
                dArr3[i13] = dArr3[i14] + (d11 * ((fArr3[i14] + fArr3[i13]) / 2.0f));
                i13++;
            } else {
                this.mNormalized = true;
                return;
            }
        }
    }

    public void setType(int i4, String str) {
        this.mType = i4;
        this.mCustomType = str;
        if (str != null) {
            this.mCustomCurve = MonotonicCurveFit.buildWave(str);
        }
    }

    public String toString() {
        return "pos =" + Arrays.toString(this.mPosition) + " period=" + Arrays.toString(this.mPeriod);
    }
}

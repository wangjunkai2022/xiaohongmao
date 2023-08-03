package androidx.constraintlayout.core.motion.utils;

import java.lang.reflect.Array;
import java.util.Arrays;

/* loaded from: classes.dex */
public class MonotonicCurveFit extends CurveFit {
    private static final String TAG = "MonotonicCurveFit";
    private boolean mExtrapolate = true;
    double[] mSlopeTemp;
    private double[] mT;
    private double[][] mTangent;
    private double[][] mY;

    public MonotonicCurveFit(double[] dArr, double[][] dArr2) {
        int length = dArr.length;
        int length2 = dArr2[0].length;
        this.mSlopeTemp = new double[length2];
        int i4 = length - 1;
        double[][] dArr3 = (double[][]) Array.newInstance(double.class, i4, length2);
        double[][] dArr4 = (double[][]) Array.newInstance(double.class, length, length2);
        for (int i10 = 0; i10 < length2; i10++) {
            int i11 = 0;
            while (i11 < i4) {
                int i12 = i11 + 1;
                dArr3[i11][i10] = (dArr2[i12][i10] - dArr2[i11][i10]) / (dArr[i12] - dArr[i11]);
                if (i11 == 0) {
                    dArr4[i11][i10] = dArr3[i11][i10];
                } else {
                    dArr4[i11][i10] = (dArr3[i11 - 1][i10] + dArr3[i11][i10]) * 0.5d;
                }
                i11 = i12;
            }
            dArr4[i4][i10] = dArr3[length - 2][i10];
        }
        for (int i13 = 0; i13 < i4; i13++) {
            for (int i14 = 0; i14 < length2; i14++) {
                if (dArr3[i13][i14] == 0.0d) {
                    dArr4[i13][i14] = 0.0d;
                    dArr4[i13 + 1][i14] = 0.0d;
                } else {
                    double d4 = dArr4[i13][i14] / dArr3[i13][i14];
                    int i15 = i13 + 1;
                    double d10 = dArr4[i15][i14] / dArr3[i13][i14];
                    double hypot = Math.hypot(d4, d10);
                    if (hypot > 9.0d) {
                        double d11 = 3.0d / hypot;
                        dArr4[i13][i14] = d4 * d11 * dArr3[i13][i14];
                        dArr4[i15][i14] = d11 * d10 * dArr3[i13][i14];
                    }
                }
            }
        }
        this.mT = dArr;
        this.mY = dArr2;
        this.mTangent = dArr4;
    }

    public static MonotonicCurveFit buildWave(String str) {
        double[] dArr = new double[str.length() / 2];
        int indexOf = str.indexOf(40) + 1;
        int indexOf2 = str.indexOf(44, indexOf);
        int i4 = 0;
        while (indexOf2 != -1) {
            dArr[i4] = Double.parseDouble(str.substring(indexOf, indexOf2).trim());
            indexOf = indexOf2 + 1;
            indexOf2 = str.indexOf(44, indexOf);
            i4++;
        }
        dArr[i4] = Double.parseDouble(str.substring(indexOf, str.indexOf(41, indexOf)).trim());
        return buildWave(Arrays.copyOf(dArr, i4 + 1));
    }

    private static double diff(double d4, double d10, double d11, double d12, double d13, double d14) {
        double d15 = d10 * d10;
        double d16 = d10 * 6.0d;
        double d17 = 3.0d * d4;
        return ((((((((((-6.0d) * d15) * d12) + (d16 * d12)) + ((6.0d * d15) * d11)) - (d16 * d11)) + ((d17 * d14) * d15)) + ((d17 * d13) * d15)) - (((2.0d * d4) * d14) * d10)) - (((4.0d * d4) * d13) * d10)) + (d4 * d13);
    }

    private static double interpolate(double d4, double d10, double d11, double d12, double d13, double d14) {
        double d15 = d10 * d10;
        double d16 = d15 * d10;
        double d17 = 3.0d * d15;
        double d18 = d4 * d14;
        double d19 = d4 * d13;
        return (((((((((((-2.0d) * d16) * d12) + (d17 * d12)) + ((d16 * 2.0d) * d11)) - (d17 * d11)) + d11) + (d18 * d16)) + (d16 * d19)) - (d18 * d15)) - (((d4 * 2.0d) * d13) * d15)) + (d19 * d10);
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public void getPos(double d4, double[] dArr) {
        double[] dArr2 = this.mT;
        int length = dArr2.length;
        int i4 = 0;
        int length2 = this.mY[0].length;
        if (this.mExtrapolate) {
            if (d4 <= dArr2[0]) {
                getSlope(dArr2[0], this.mSlopeTemp);
                for (int i10 = 0; i10 < length2; i10++) {
                    dArr[i10] = this.mY[0][i10] + ((d4 - this.mT[0]) * this.mSlopeTemp[i10]);
                }
                return;
            }
            int i11 = length - 1;
            if (d4 >= dArr2[i11]) {
                getSlope(dArr2[i11], this.mSlopeTemp);
                while (i4 < length2) {
                    dArr[i4] = this.mY[i11][i4] + ((d4 - this.mT[i11]) * this.mSlopeTemp[i4]);
                    i4++;
                }
                return;
            }
        } else if (d4 <= dArr2[0]) {
            for (int i12 = 0; i12 < length2; i12++) {
                dArr[i12] = this.mY[0][i12];
            }
            return;
        } else {
            int i13 = length - 1;
            if (d4 >= dArr2[i13]) {
                while (i4 < length2) {
                    dArr[i4] = this.mY[i13][i4];
                    i4++;
                }
                return;
            }
        }
        int i14 = 0;
        while (i14 < length - 1) {
            if (d4 == this.mT[i14]) {
                for (int i15 = 0; i15 < length2; i15++) {
                    dArr[i15] = this.mY[i14][i15];
                }
            }
            double[] dArr3 = this.mT;
            int i16 = i14 + 1;
            if (d4 < dArr3[i16]) {
                double d10 = dArr3[i16] - dArr3[i14];
                double d11 = (d4 - dArr3[i14]) / d10;
                while (i4 < length2) {
                    double[][] dArr4 = this.mY;
                    double d12 = dArr4[i14][i4];
                    double d13 = dArr4[i16][i4];
                    double[][] dArr5 = this.mTangent;
                    dArr[i4] = interpolate(d10, d11, d12, d13, dArr5[i14][i4], dArr5[i16][i4]);
                    i4++;
                }
                return;
            }
            i14 = i16;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public void getSlope(double d4, double[] dArr) {
        double d10;
        double[] dArr2 = this.mT;
        int length = dArr2.length;
        int length2 = this.mY[0].length;
        if (d4 <= dArr2[0]) {
            d10 = dArr2[0];
        } else {
            int i4 = length - 1;
            d10 = d4 >= dArr2[i4] ? dArr2[i4] : d4;
        }
        int i10 = 0;
        while (i10 < length - 1) {
            double[] dArr3 = this.mT;
            int i11 = i10 + 1;
            if (d10 <= dArr3[i11]) {
                double d11 = dArr3[i11] - dArr3[i10];
                double d12 = (d10 - dArr3[i10]) / d11;
                for (int i12 = 0; i12 < length2; i12++) {
                    double[][] dArr4 = this.mY;
                    double d13 = dArr4[i10][i12];
                    double d14 = dArr4[i11][i12];
                    double[][] dArr5 = this.mTangent;
                    dArr[i12] = diff(d11, d12, d13, d14, dArr5[i10][i12], dArr5[i11][i12]) / d11;
                }
                return;
            }
            i10 = i11;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public double[] getTimePoints() {
        return this.mT;
    }

    private static MonotonicCurveFit buildWave(double[] dArr) {
        int length = (dArr.length * 3) - 2;
        int length2 = dArr.length - 1;
        double d4 = 1.0d / length2;
        double[][] dArr2 = (double[][]) Array.newInstance(double.class, length, 1);
        double[] dArr3 = new double[length];
        for (int i4 = 0; i4 < dArr.length; i4++) {
            double d10 = dArr[i4];
            int i10 = i4 + length2;
            dArr2[i10][0] = d10;
            double d11 = i4 * d4;
            dArr3[i10] = d11;
            if (i4 > 0) {
                int i11 = (length2 * 2) + i4;
                dArr2[i11][0] = d10 + 1.0d;
                dArr3[i11] = d11 + 1.0d;
                int i12 = i4 - 1;
                dArr2[i12][0] = (d10 - 1.0d) - d4;
                dArr3[i12] = (d11 - 1.0d) - d4;
            }
        }
        return new MonotonicCurveFit(dArr3, dArr2);
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public double getSlope(double d4, int i4) {
        double d10;
        double[] dArr = this.mT;
        int length = dArr.length;
        int i10 = 0;
        if (d4 < dArr[0]) {
            d10 = dArr[0];
        } else {
            int i11 = length - 1;
            d10 = d4 >= dArr[i11] ? dArr[i11] : d4;
        }
        while (i10 < length - 1) {
            double[] dArr2 = this.mT;
            int i12 = i10 + 1;
            if (d10 <= dArr2[i12]) {
                double d11 = dArr2[i12] - dArr2[i10];
                double[][] dArr3 = this.mY;
                double d12 = dArr3[i10][i4];
                double d13 = dArr3[i12][i4];
                double[][] dArr4 = this.mTangent;
                return diff(d11, (d10 - dArr2[i10]) / d11, d12, d13, dArr4[i10][i4], dArr4[i12][i4]) / d11;
            }
            i10 = i12;
        }
        return 0.0d;
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public void getPos(double d4, float[] fArr) {
        double[] dArr = this.mT;
        int length = dArr.length;
        int i4 = 0;
        int length2 = this.mY[0].length;
        if (this.mExtrapolate) {
            if (d4 <= dArr[0]) {
                getSlope(dArr[0], this.mSlopeTemp);
                for (int i10 = 0; i10 < length2; i10++) {
                    fArr[i10] = (float) (this.mY[0][i10] + ((d4 - this.mT[0]) * this.mSlopeTemp[i10]));
                }
                return;
            }
            int i11 = length - 1;
            if (d4 >= dArr[i11]) {
                getSlope(dArr[i11], this.mSlopeTemp);
                while (i4 < length2) {
                    fArr[i4] = (float) (this.mY[i11][i4] + ((d4 - this.mT[i11]) * this.mSlopeTemp[i4]));
                    i4++;
                }
                return;
            }
        } else if (d4 <= dArr[0]) {
            for (int i12 = 0; i12 < length2; i12++) {
                fArr[i12] = (float) this.mY[0][i12];
            }
            return;
        } else {
            int i13 = length - 1;
            if (d4 >= dArr[i13]) {
                while (i4 < length2) {
                    fArr[i4] = (float) this.mY[i13][i4];
                    i4++;
                }
                return;
            }
        }
        int i14 = 0;
        while (i14 < length - 1) {
            if (d4 == this.mT[i14]) {
                for (int i15 = 0; i15 < length2; i15++) {
                    fArr[i15] = (float) this.mY[i14][i15];
                }
            }
            double[] dArr2 = this.mT;
            int i16 = i14 + 1;
            if (d4 < dArr2[i16]) {
                double d10 = dArr2[i16] - dArr2[i14];
                double d11 = (d4 - dArr2[i14]) / d10;
                while (i4 < length2) {
                    double[][] dArr3 = this.mY;
                    double d12 = dArr3[i14][i4];
                    double d13 = dArr3[i16][i4];
                    double[][] dArr4 = this.mTangent;
                    fArr[i4] = (float) interpolate(d10, d11, d12, d13, dArr4[i14][i4], dArr4[i16][i4]);
                    i4++;
                }
                return;
            }
            i14 = i16;
        }
    }

    @Override // androidx.constraintlayout.core.motion.utils.CurveFit
    public double getPos(double d4, int i4) {
        double[] dArr = this.mT;
        int length = dArr.length;
        int i10 = 0;
        if (this.mExtrapolate) {
            if (d4 <= dArr[0]) {
                return this.mY[0][i4] + ((d4 - dArr[0]) * getSlope(dArr[0], i4));
            }
            int i11 = length - 1;
            if (d4 >= dArr[i11]) {
                return this.mY[i11][i4] + ((d4 - dArr[i11]) * getSlope(dArr[i11], i4));
            }
        } else if (d4 <= dArr[0]) {
            return this.mY[0][i4];
        } else {
            int i12 = length - 1;
            if (d4 >= dArr[i12]) {
                return this.mY[i12][i4];
            }
        }
        while (i10 < length - 1) {
            double[] dArr2 = this.mT;
            if (d4 == dArr2[i10]) {
                return this.mY[i10][i4];
            }
            int i13 = i10 + 1;
            if (d4 < dArr2[i13]) {
                double d10 = dArr2[i13] - dArr2[i10];
                double d11 = (d4 - dArr2[i10]) / d10;
                double[][] dArr3 = this.mY;
                double d12 = dArr3[i10][i4];
                double d13 = dArr3[i13][i4];
                double[][] dArr4 = this.mTangent;
                return interpolate(d10, d11, d12, d13, dArr4[i10][i4], dArr4[i13][i4]);
            }
            i10 = i13;
        }
        return 0.0d;
    }
}

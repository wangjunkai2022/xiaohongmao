package androidx.constraintlayout.core.motion.utils;

import java.lang.reflect.Array;
import java.util.Arrays;

/* loaded from: classes.dex */
public class StepCurve extends Easing {
    private static final boolean DEBUG = false;
    MonotonicCurveFit mCurveFit;

    /* JADX INFO: Access modifiers changed from: package-private */
    public StepCurve(String str) {
        this.str = str;
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
        this.mCurveFit = genSpline(Arrays.copyOf(dArr, i4 + 1));
    }

    private static MonotonicCurveFit genSpline(String str) {
        String[] split = str.split("\\s+");
        int length = split.length;
        double[] dArr = new double[length];
        for (int i4 = 0; i4 < length; i4++) {
            dArr[i4] = Double.parseDouble(split[i4]);
        }
        return genSpline(dArr);
    }

    @Override // androidx.constraintlayout.core.motion.utils.Easing
    public double get(double d4) {
        return this.mCurveFit.getPos(d4, 0);
    }

    @Override // androidx.constraintlayout.core.motion.utils.Easing
    public double getDiff(double d4) {
        return this.mCurveFit.getSlope(d4, 0);
    }

    private static MonotonicCurveFit genSpline(double[] dArr) {
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
        MonotonicCurveFit monotonicCurveFit = new MonotonicCurveFit(dArr3, dArr2);
        System.out.println(" 0 " + monotonicCurveFit.getPos(0.0d, 0));
        System.out.println(" 1 " + monotonicCurveFit.getPos(1.0d, 0));
        return monotonicCurveFit;
    }
}

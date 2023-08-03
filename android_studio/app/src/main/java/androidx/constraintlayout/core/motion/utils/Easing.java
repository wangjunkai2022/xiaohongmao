package androidx.constraintlayout.core.motion.utils;

import java.io.PrintStream;
import java.util.Arrays;

/* loaded from: classes.dex */
public class Easing {
    private static final String ACCELERATE = "cubic(0.4, 0.05, 0.8, 0.7)";
    private static final String ANTICIPATE = "cubic(0.36, 0, 0.66, -0.56)";
    private static final String ANTICIPATE_NAME = "anticipate";
    private static final String DECELERATE = "cubic(0.0, 0.0, 0.2, 0.95)";
    private static final String LINEAR = "cubic(1, 1, 0, 0)";
    private static final String OVERSHOOT = "cubic(0.34, 1.56, 0.64, 1)";
    private static final String OVERSHOOT_NAME = "overshoot";
    private static final String STANDARD = "cubic(0.4, 0.0, 0.2, 1)";
    String str = "identity";
    static Easing sDefault = new Easing();
    private static final String STANDARD_NAME = "standard";
    private static final String ACCELERATE_NAME = "accelerate";
    private static final String DECELERATE_NAME = "decelerate";
    private static final String LINEAR_NAME = "linear";
    public static String[] NAMED_EASING = {STANDARD_NAME, ACCELERATE_NAME, DECELERATE_NAME, LINEAR_NAME};

    public static Easing getInterpolator(String str) {
        if (str == null) {
            return null;
        }
        if (str.startsWith("cubic")) {
            return new CubicEasing(str);
        }
        if (str.startsWith("spline")) {
            return new StepCurve(str);
        }
        if (str.startsWith("Schlick")) {
            return new Schlick(str);
        }
        char c10 = 65535;
        switch (str.hashCode()) {
            case -1354466595:
                if (str.equals(ACCELERATE_NAME)) {
                    c10 = 0;
                    break;
                }
                break;
            case -1263948740:
                if (str.equals(DECELERATE_NAME)) {
                    c10 = 1;
                    break;
                }
                break;
            case -1197605014:
                if (str.equals(ANTICIPATE_NAME)) {
                    c10 = 2;
                    break;
                }
                break;
            case -1102672091:
                if (str.equals(LINEAR_NAME)) {
                    c10 = 3;
                    break;
                }
                break;
            case -749065269:
                if (str.equals(OVERSHOOT_NAME)) {
                    c10 = 4;
                    break;
                }
                break;
            case 1312628413:
                if (str.equals(STANDARD_NAME)) {
                    c10 = 5;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return new CubicEasing(ACCELERATE);
            case 1:
                return new CubicEasing(DECELERATE);
            case 2:
                return new CubicEasing(ANTICIPATE);
            case 3:
                return new CubicEasing(LINEAR);
            case 4:
                return new CubicEasing(OVERSHOOT);
            case 5:
                return new CubicEasing(STANDARD);
            default:
                PrintStream printStream = System.err;
                printStream.println("transitionEasing syntax error syntax:transitionEasing=\"cubic(1.0,0.5,0.0,0.6)\" or " + Arrays.toString(NAMED_EASING));
                return sDefault;
        }
    }

    public double get(double d4) {
        return d4;
    }

    public double getDiff(double d4) {
        return 1.0d;
    }

    public String toString() {
        return this.str;
    }

    /* loaded from: classes.dex */
    static class CubicEasing extends Easing {
        private static double d_error = 1.0E-4d;
        private static double error = 0.01d;

        /* renamed from: x1  reason: collision with root package name */
        double f417x1;

        /* renamed from: x2  reason: collision with root package name */
        double f418x2;

        /* renamed from: y1  reason: collision with root package name */
        double f419y1;

        /* renamed from: y2  reason: collision with root package name */
        double f420y2;

        CubicEasing(String str) {
            this.str = str;
            int indexOf = str.indexOf(40);
            int indexOf2 = str.indexOf(44, indexOf);
            this.f417x1 = Double.parseDouble(str.substring(indexOf + 1, indexOf2).trim());
            int i4 = indexOf2 + 1;
            int indexOf3 = str.indexOf(44, i4);
            this.f419y1 = Double.parseDouble(str.substring(i4, indexOf3).trim());
            int i10 = indexOf3 + 1;
            int indexOf4 = str.indexOf(44, i10);
            this.f418x2 = Double.parseDouble(str.substring(i10, indexOf4).trim());
            int i11 = indexOf4 + 1;
            this.f420y2 = Double.parseDouble(str.substring(i11, str.indexOf(41, i11)).trim());
        }

        private double getDiffX(double d4) {
            double d10 = 1.0d - d4;
            double d11 = this.f417x1;
            double d12 = this.f418x2;
            return (d10 * 3.0d * d10 * d11) + (d10 * 6.0d * d4 * (d12 - d11)) + (3.0d * d4 * d4 * (1.0d - d12));
        }

        private double getDiffY(double d4) {
            double d10 = 1.0d - d4;
            double d11 = this.f419y1;
            double d12 = this.f420y2;
            return (d10 * 3.0d * d10 * d11) + (d10 * 6.0d * d4 * (d12 - d11)) + (3.0d * d4 * d4 * (1.0d - d12));
        }

        private double getX(double d4) {
            double d10 = 1.0d - d4;
            double d11 = 3.0d * d10;
            return (this.f417x1 * d10 * d11 * d4) + (this.f418x2 * d11 * d4 * d4) + (d4 * d4 * d4);
        }

        private double getY(double d4) {
            double d10 = 1.0d - d4;
            double d11 = 3.0d * d10;
            return (this.f419y1 * d10 * d11 * d4) + (this.f420y2 * d11 * d4 * d4) + (d4 * d4 * d4);
        }

        @Override // androidx.constraintlayout.core.motion.utils.Easing
        public double get(double d4) {
            if (d4 <= 0.0d) {
                return 0.0d;
            }
            if (d4 >= 1.0d) {
                return 1.0d;
            }
            double d10 = 0.5d;
            double d11 = 0.5d;
            while (d10 > error) {
                d10 *= 0.5d;
                d11 = getX(d11) < d4 ? d11 + d10 : d11 - d10;
            }
            double d12 = d11 - d10;
            double x9 = getX(d12);
            double d13 = d11 + d10;
            double x10 = getX(d13);
            double y9 = getY(d12);
            return (((getY(d13) - y9) * (d4 - x9)) / (x10 - x9)) + y9;
        }

        @Override // androidx.constraintlayout.core.motion.utils.Easing
        public double getDiff(double d4) {
            double d10 = 0.5d;
            double d11 = 0.5d;
            while (d10 > d_error) {
                d10 *= 0.5d;
                d11 = getX(d11) < d4 ? d11 + d10 : d11 - d10;
            }
            double d12 = d11 - d10;
            double d13 = d11 + d10;
            return (getY(d13) - getY(d12)) / (getX(d13) - getX(d12));
        }

        void setup(double d4, double d10, double d11, double d12) {
            this.f417x1 = d4;
            this.f419y1 = d10;
            this.f418x2 = d11;
            this.f420y2 = d12;
        }

        public CubicEasing(double d4, double d10, double d11, double d12) {
            setup(d4, d10, d11, d12);
        }
    }
}

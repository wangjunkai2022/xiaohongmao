package k7;

/* compiled from: Elastic.java */
/* loaded from: classes3.dex */
public class f implements e {
    @Override // k7.e
    public double a(double d4, double d10, double d11, double d12) {
        return d(d4, d10, d11, d12, d10 + d11, d12);
    }

    @Override // k7.e
    public double b(double d4, double d10, double d11, double d12) {
        return e(d4, d10, d11, d12, d10 + d11, d12);
    }

    @Override // k7.e
    public double c(double d4, double d10, double d11, double d12) {
        return f(d4, d10, d11, d12, d10 + d11, d12);
    }

    public double d(double d4, double d10, double d11, double d12, double d13, double d14) {
        double d15;
        double d16;
        if (d4 == 0.0d) {
            return d10;
        }
        double d17 = d4 / d12;
        if (d17 == 1.0d) {
            return d10 + d11;
        }
        double d18 = d14 <= 0.0d ? 0.3d * d12 : d14;
        if (d13 <= 0.0d || d13 < Math.abs(d11)) {
            d15 = d18 / 4.0d;
            d16 = d11;
        } else {
            d15 = (d18 / 6.283185307179586d) * Math.asin(d11 / d13);
            d16 = d13;
        }
        double d19 = d17 - 1.0d;
        return (-(d16 * Math.pow(2.0d, 10.0d * d19) * Math.sin((((d19 * d12) - d15) * 6.283185307179586d) / d18))) + d10;
    }

    public double e(double d4, double d10, double d11, double d12, double d13, double d14) {
        double d15;
        double d16;
        double pow;
        if (d4 == 0.0d) {
            return d10;
        }
        double d17 = d4 / (d12 / 2.0d);
        if (d17 == 2.0d) {
            return d10 + d11;
        }
        double d18 = d14 <= 0.0d ? 0.44999999999999996d * d12 : d14;
        if (d13 <= 0.0d || d13 < Math.abs(d11)) {
            d15 = d18 / 4.0d;
            d16 = d11;
        } else {
            d15 = (d18 / 6.283185307179586d) * Math.asin(d11 / d13);
            d16 = d13;
        }
        if (d17 < 1.0d) {
            double d19 = d17 - 1.0d;
            pow = d16 * Math.pow(2.0d, d19 * 10.0d) * Math.sin((((d19 * d12) - d15) * 6.283185307179586d) / d18) * (-0.5d);
        } else {
            double d20 = d17 - 1.0d;
            pow = (d16 * Math.pow(2.0d, (-10.0d) * d20) * Math.sin((((d20 * d12) - d15) * 6.283185307179586d) / d18) * 0.5d) + d11;
        }
        return pow + d10;
    }

    public double f(double d4, double d10, double d11, double d12, double d13, double d14) {
        double d15;
        double d16;
        if (d4 == 0.0d) {
            return d10;
        }
        double d17 = d4 / d12;
        if (d17 == 1.0d) {
            return d10 + d11;
        }
        double d18 = d14 <= 0.0d ? 0.3d * d12 : d14;
        if (d13 <= 0.0d || d13 < Math.abs(d11)) {
            d15 = d18 / 4.0d;
            d16 = d11;
        } else {
            d15 = (d18 / 6.283185307179586d) * Math.asin(d11 / d13);
            d16 = d13;
        }
        return (d16 * Math.pow(2.0d, (-10.0d) * d17) * Math.sin((((d17 * d12) - d15) * 6.283185307179586d) / d18)) + d11 + d10;
    }
}

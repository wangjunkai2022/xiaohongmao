package k7;

/* compiled from: Back.java */
/* loaded from: classes3.dex */
public class a implements e {
    @Override // k7.e
    public double a(double d4, double d10, double d11, double d12) {
        return d(d4, d10, d11, d12, 0.0d);
    }

    @Override // k7.e
    public double b(double d4, double d10, double d11, double d12) {
        return e(d4, d10, d11, d12, 0.9d);
    }

    @Override // k7.e
    public double c(double d4, double d10, double d11, double d12) {
        return f(d4, d10, d11, d12, 0.0d);
    }

    public double d(double d4, double d10, double d11, double d12, double d13) {
        if (d13 == 0.0d) {
            d13 = 1.70158d;
        }
        double d14 = d4 / d12;
        return (d11 * d14 * d14 * (((1.0d + d13) * d14) - d13)) + d10;
    }

    public double e(double d4, double d10, double d11, double d12, double d13) {
        double d14 = d13 == 0.0d ? 1.70158d : d13;
        double d15 = d4 / (d12 / 2.0d);
        if (d15 < 1.0d) {
            double d16 = d14 * 1.525d;
            return ((d11 / 2.0d) * d15 * d15 * (((1.0d + d16) * d15) - d16)) + d10;
        }
        double d17 = d15 - 2.0d;
        double d18 = d14 * 1.525d;
        return ((d11 / 2.0d) * ((d17 * d17 * (((1.0d + d18) * d17) + d18)) + 2.0d)) + d10;
    }

    public double f(double d4, double d10, double d11, double d12, double d13) {
        if (d13 == 0.0d) {
            d13 = 1.70158d;
        }
        double d14 = (d4 / d12) - 1.0d;
        return (d11 * ((d14 * d14 * (((d13 + 1.0d) * d14) + d13)) + 1.0d)) + d10;
    }
}

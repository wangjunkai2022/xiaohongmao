package k7;

/* compiled from: Bounce.java */
/* loaded from: classes3.dex */
public class b implements e {
    @Override // k7.e
    public double a(double d4, double d10, double d11, double d12) {
        return (d11 - c(d12 - d4, 0.0d, d11, d12)) + d10;
    }

    @Override // k7.e
    public double b(double d4, double d10, double d11, double d12) {
        double c10;
        if (d4 < d12 / 2.0d) {
            c10 = a(d4 * 2.0d, 0.0d, d11, d12) * 0.5d;
        } else {
            c10 = (c((2.0d * d4) - d12, 0.0d, d11, d12) * 0.5d) + (d11 * 0.5d);
        }
        return c10 + d10;
    }

    @Override // k7.e
    public double c(double d4, double d10, double d11, double d12) {
        double d13;
        double d14;
        double d15;
        double d16 = d4 / d12;
        if (d16 < 0.36363636363636365d) {
            d15 = 7.5625d * d16 * d16;
        } else {
            if (d16 < 0.7272727272727273d) {
                double d17 = d16 - 0.5454545454545454d;
                d13 = 7.5625d * d17 * d17;
                d14 = 0.75d;
            } else if (d16 < 0.9090909090909091d) {
                double d18 = d16 - 0.8181818181818182d;
                d13 = 7.5625d * d18 * d18;
                d14 = 0.9375d;
            } else {
                double d19 = d16 - 0.9545454545454546d;
                d13 = 7.5625d * d19 * d19;
                d14 = 0.984375d;
            }
            d15 = d13 + d14;
        }
        return (d11 * d15) + d10;
    }
}

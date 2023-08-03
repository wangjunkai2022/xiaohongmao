package k7;

/* compiled from: Expo.java */
/* loaded from: classes3.dex */
public class g implements e {
    @Override // k7.e
    public double a(double d4, double d10, double d11, double d12) {
        return d4 == 0.0d ? d10 : d10 + (d11 * Math.pow(2.0d, ((d4 / d12) - 1.0d) * 10.0d));
    }

    @Override // k7.e
    public double b(double d4, double d10, double d11, double d12) {
        double d13;
        double d14;
        if (d4 == 0.0d) {
            return d10;
        }
        if (d4 == d12) {
            return d10 + d11;
        }
        double d15 = d4 / (d12 / 2.0d);
        if (d15 < 1.0d) {
            d13 = d11 / 2.0d;
            d14 = Math.pow(2.0d, (d15 - 1.0d) * 10.0d);
        } else {
            d13 = d11 / 2.0d;
            d14 = (-Math.pow(2.0d, (d15 - 1.0d) * (-10.0d))) + 2.0d;
        }
        return (d13 * d14) + d10;
    }

    @Override // k7.e
    public double c(double d4, double d10, double d11, double d12) {
        return d4 == d12 ? d10 + d11 : d10 + (d11 * ((-Math.pow(2.0d, (d4 * (-10.0d)) / d12)) + 1.0d));
    }
}

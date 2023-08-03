package k7;

/* compiled from: Circ.java */
/* loaded from: classes3.dex */
public class c implements e {
    @Override // k7.e
    public double a(double d4, double d10, double d11, double d12) {
        double d13 = d4 / d12;
        return ((-d11) * (Math.sqrt(1.0d - (d13 * d13)) - 1.0d)) + d10;
    }

    @Override // k7.e
    public double b(double d4, double d10, double d11, double d12) {
        double d13;
        double sqrt;
        double d14 = d4 / (d12 / 2.0d);
        if (d14 < 1.0d) {
            d13 = (-d11) / 2.0d;
            sqrt = Math.sqrt(1.0d - (d14 * d14)) - 1.0d;
        } else {
            d13 = d11 / 2.0d;
            double d15 = d14 - 2.0d;
            sqrt = Math.sqrt(1.0d - (d15 * d15)) + 1.0d;
        }
        return (d13 * sqrt) + d10;
    }

    @Override // k7.e
    public double c(double d4, double d10, double d11, double d12) {
        double d13 = (d4 / d12) - 1.0d;
        return (d11 * Math.sqrt(1.0d - (d13 * d13))) + d10;
    }
}

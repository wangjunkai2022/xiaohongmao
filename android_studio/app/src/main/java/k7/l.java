package k7;

/* compiled from: Sine.java */
/* loaded from: classes3.dex */
public class l implements e {
    @Override // k7.e
    public double a(double d4, double d10, double d11, double d12) {
        return ((-d11) * Math.cos((d4 / d12) * 1.5707963267948966d)) + d11 + d10;
    }

    @Override // k7.e
    public double b(double d4, double d10, double d11, double d12) {
        return (((-d11) / 2.0d) * (Math.cos((d4 * 3.141592653589793d) / d12) - 1.0d)) + d10;
    }

    @Override // k7.e
    public double c(double d4, double d10, double d11, double d12) {
        return (d11 * Math.sin((d4 / d12) * 1.5707963267948966d)) + d10;
    }
}

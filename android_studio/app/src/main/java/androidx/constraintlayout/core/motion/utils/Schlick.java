package androidx.constraintlayout.core.motion.utils;

/* loaded from: classes.dex */
public class Schlick extends Easing {
    private static final boolean DEBUG = false;
    double eps;
    double mS;
    double mT;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Schlick(String str) {
        this.str = str;
        int indexOf = str.indexOf(40);
        int indexOf2 = str.indexOf(44, indexOf);
        this.mS = Double.parseDouble(str.substring(indexOf + 1, indexOf2).trim());
        int i4 = indexOf2 + 1;
        this.mT = Double.parseDouble(str.substring(i4, str.indexOf(44, i4)).trim());
    }

    private double dfunc(double d4) {
        double d10 = this.mT;
        if (d4 < d10) {
            double d11 = this.mS;
            return ((d11 * d10) * d10) / ((((d10 - d4) * d11) + d4) * ((d11 * (d10 - d4)) + d4));
        }
        double d12 = this.mS;
        return (((d10 - 1.0d) * d12) * (d10 - 1.0d)) / (((((-d12) * (d10 - d4)) - d4) + 1.0d) * ((((-d12) * (d10 - d4)) - d4) + 1.0d));
    }

    private double func(double d4) {
        double d10 = this.mT;
        if (d4 < d10) {
            return (d10 * d4) / (d4 + (this.mS * (d10 - d4)));
        }
        return ((1.0d - d10) * (d4 - 1.0d)) / ((1.0d - d4) - (this.mS * (d10 - d4)));
    }

    @Override // androidx.constraintlayout.core.motion.utils.Easing
    public double get(double d4) {
        return func(d4);
    }

    @Override // androidx.constraintlayout.core.motion.utils.Easing
    public double getDiff(double d4) {
        return dfunc(d4);
    }
}

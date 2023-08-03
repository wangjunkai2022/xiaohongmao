package z3;

/* loaded from: classes2.dex */
public class a {
    public float a(int i4, int i10) {
        if (i10 <= 0 || i4 <= 0) {
            return 0.0f;
        }
        float f10 = i4 / i10;
        if (f10 > 1.0f) {
            return 1.0f;
        }
        return f10;
    }
}

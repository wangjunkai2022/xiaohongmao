package u5;

import android.graphics.Color;

/* compiled from: ColorGradient.java */
/* loaded from: classes3.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private int f94019a;

    /* renamed from: b  reason: collision with root package name */
    private int f94020b;

    /* renamed from: c  reason: collision with root package name */
    private int f94021c;

    /* renamed from: d  reason: collision with root package name */
    private int[] f94022d;

    /* renamed from: e  reason: collision with root package name */
    private int[] f94023e;

    public a(int i4, int i10, int i11) {
        this.f94019a = i4;
        this.f94020b = i10;
        this.f94021c = i11;
        this.f94022d = e(i4);
        this.f94023e = e(i10);
    }

    private int[] e(int i4) {
        return new int[]{Color.alpha(i4), Color.red(i4), Color.green(i4), Color.blue(i4)};
    }

    public int a(int i4) {
        int[] iArr = new int[4];
        int i10 = 0;
        while (true) {
            int[] iArr2 = this.f94023e;
            if (i10 < iArr2.length) {
                int[] iArr3 = this.f94022d;
                iArr[i10] = (int) (iArr3[i10] + ((((iArr2[i10] - iArr3[i10]) * 1.0d) / this.f94021c) * i4));
                i10++;
            } else {
                return Color.argb(iArr[0], iArr[1], iArr[2], iArr[3]);
            }
        }
    }

    public int b() {
        return this.f94019a;
    }

    public int c() {
        return this.f94020b;
    }

    public int d() {
        return this.f94021c;
    }
}

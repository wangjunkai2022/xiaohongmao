package com.google.android.exoplayer2.video.spherical;

import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* compiled from: Projection.java */
/* loaded from: classes2.dex */
final class e {

    /* renamed from: e  reason: collision with root package name */
    public static final int f28041e = 0;

    /* renamed from: f  reason: collision with root package name */
    public static final int f28042f = 1;

    /* renamed from: g  reason: collision with root package name */
    public static final int f28043g = 2;

    /* renamed from: h  reason: collision with root package name */
    public static final int f28044h = 2;

    /* renamed from: i  reason: collision with root package name */
    public static final int f28045i = 3;

    /* renamed from: a  reason: collision with root package name */
    public final b f28046a;

    /* renamed from: b  reason: collision with root package name */
    public final b f28047b;

    /* renamed from: c  reason: collision with root package name */
    public final int f28048c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f28049d;

    /* compiled from: Projection.java */
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface a {
    }

    /* compiled from: Projection.java */
    /* loaded from: classes2.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final c[] f28050a;

        public b(c... cVarArr) {
            this.f28050a = cVarArr;
        }

        public c a(int i4) {
            return this.f28050a[i4];
        }

        public int b() {
            return this.f28050a.length;
        }
    }

    /* compiled from: Projection.java */
    /* loaded from: classes2.dex */
    public static final class c {

        /* renamed from: e  reason: collision with root package name */
        public static final int f28051e = 0;

        /* renamed from: a  reason: collision with root package name */
        public final int f28052a;

        /* renamed from: b  reason: collision with root package name */
        public final int f28053b;

        /* renamed from: c  reason: collision with root package name */
        public final float[] f28054c;

        /* renamed from: d  reason: collision with root package name */
        public final float[] f28055d;

        public c(int i4, float[] fArr, float[] fArr2, int i10) {
            this.f28052a = i4;
            com.google.android.exoplayer2.util.a.a(((long) fArr.length) * 2 == ((long) fArr2.length) * 3);
            this.f28054c = fArr;
            this.f28055d = fArr2;
            this.f28053b = i10;
        }

        public int a() {
            return this.f28054c.length / 3;
        }
    }

    public e(b bVar, int i4) {
        this(bVar, bVar, i4);
    }

    public static e a(float f10, int i4, int i10, float f11, float f12, int i11) {
        int i12;
        float f13;
        int i13;
        int i14;
        int i15;
        float[] fArr;
        int i16 = i4;
        int i17 = i10;
        com.google.android.exoplayer2.util.a.a(f10 > 0.0f);
        com.google.android.exoplayer2.util.a.a(i16 >= 1);
        com.google.android.exoplayer2.util.a.a(i17 >= 1);
        com.google.android.exoplayer2.util.a.a(f11 > 0.0f && f11 <= 180.0f);
        com.google.android.exoplayer2.util.a.a(f12 > 0.0f && f12 <= 360.0f);
        float radians = (float) Math.toRadians(f11);
        float radians2 = (float) Math.toRadians(f12);
        float f14 = radians / i16;
        float f15 = radians2 / i17;
        int i18 = i17 + 1;
        int i19 = ((i18 * 2) + 2) * i16;
        float[] fArr2 = new float[i19 * 3];
        float[] fArr3 = new float[i19 * 2];
        int i20 = 0;
        int i21 = 0;
        int i22 = 0;
        while (i20 < i16) {
            float f16 = radians / 2.0f;
            float f17 = (i20 * f14) - f16;
            int i23 = i20 + 1;
            float f18 = (i23 * f14) - f16;
            int i24 = 0;
            while (i24 < i18) {
                float f19 = f17;
                int i25 = i23;
                int i26 = 0;
                while (i26 < 2) {
                    if (i26 == 0) {
                        f13 = f19;
                        i12 = i18;
                    } else {
                        i12 = i18;
                        f13 = f18;
                    }
                    float f20 = i24 * f15;
                    float f21 = f15;
                    int i27 = i21 + 1;
                    int i28 = i24;
                    double d4 = f10;
                    float f22 = f14;
                    int i29 = i26;
                    double d10 = (f20 + 3.1415927f) - (radians2 / 2.0f);
                    double d11 = f13;
                    float[] fArr4 = fArr3;
                    float f23 = f18;
                    fArr2[i21] = -((float) (Math.sin(d10) * d4 * Math.cos(d11)));
                    int i30 = i27 + 1;
                    int i31 = i20;
                    fArr2[i27] = (float) (d4 * Math.sin(d11));
                    int i32 = i30 + 1;
                    fArr2[i30] = (float) (d4 * Math.cos(d10) * Math.cos(d11));
                    int i33 = i22 + 1;
                    fArr4[i22] = f20 / radians2;
                    int i34 = i33 + 1;
                    fArr4[i33] = ((i31 + i29) * f22) / radians;
                    if (i28 == 0 && i29 == 0) {
                        i13 = i10;
                        i14 = i28;
                        i15 = i29;
                    } else {
                        i13 = i10;
                        i14 = i28;
                        i15 = i29;
                        if (i14 != i13 || i15 != 1) {
                            fArr = fArr4;
                            i22 = i34;
                            i21 = i32;
                            i26 = i15 + 1;
                            i17 = i13;
                            i24 = i14;
                            fArr3 = fArr;
                            i20 = i31;
                            i18 = i12;
                            f15 = f21;
                            f14 = f22;
                            f18 = f23;
                        }
                    }
                    System.arraycopy(fArr2, i32 - 3, fArr2, i32, 3);
                    i32 += 3;
                    fArr = fArr4;
                    System.arraycopy(fArr, i34 - 2, fArr, i34, 2);
                    i34 += 2;
                    i22 = i34;
                    i21 = i32;
                    i26 = i15 + 1;
                    i17 = i13;
                    i24 = i14;
                    fArr3 = fArr;
                    i20 = i31;
                    i18 = i12;
                    f15 = f21;
                    f14 = f22;
                    f18 = f23;
                }
                float f24 = f14;
                int i35 = i24;
                int i36 = i17;
                int i37 = i35 + 1;
                f17 = f19;
                i23 = i25;
                i18 = i18;
                f15 = f15;
                f14 = f24;
                f18 = f18;
                i17 = i36;
                i24 = i37;
            }
            i16 = i4;
            i20 = i23;
        }
        return new e(new b(new c(0, fArr2, fArr3, 1)), i11);
    }

    public static e b(int i4) {
        return a(50.0f, 36, 72, 180.0f, 360.0f, i4);
    }

    public e(b bVar, b bVar2, int i4) {
        this.f28046a = bVar;
        this.f28047b = bVar2;
        this.f28048c = i4;
        this.f28049d = bVar == bVar2;
    }
}

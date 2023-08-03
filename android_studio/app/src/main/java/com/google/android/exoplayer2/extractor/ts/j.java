package com.google.android.exoplayer2.extractor.ts;

import android.util.SparseArray;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.extractor.ts.i0;
import com.google.common.collect.ImmutableList;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.List;

/* compiled from: DefaultTsPayloadReaderFactory.java */
/* loaded from: classes2.dex */
public final class j implements i0.c {

    /* renamed from: c  reason: collision with root package name */
    public static final int f23178c = 1;

    /* renamed from: d  reason: collision with root package name */
    public static final int f23179d = 2;

    /* renamed from: e  reason: collision with root package name */
    public static final int f23180e = 4;

    /* renamed from: f  reason: collision with root package name */
    public static final int f23181f = 8;

    /* renamed from: g  reason: collision with root package name */
    public static final int f23182g = 16;

    /* renamed from: h  reason: collision with root package name */
    public static final int f23183h = 32;

    /* renamed from: i  reason: collision with root package name */
    public static final int f23184i = 64;

    /* renamed from: j  reason: collision with root package name */
    private static final int f23185j = 134;

    /* renamed from: a  reason: collision with root package name */
    private final int f23186a;

    /* renamed from: b  reason: collision with root package name */
    private final List<Format> f23187b;

    /* compiled from: DefaultTsPayloadReaderFactory.java */
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface a {
    }

    public j() {
        this(0);
    }

    private d0 c(i0.b bVar) {
        return new d0(e(bVar));
    }

    private k0 d(i0.b bVar) {
        return new k0(e(bVar));
    }

    private List<Format> e(i0.b bVar) {
        String str;
        int i4;
        if (f(32)) {
            return this.f23187b;
        }
        com.google.android.exoplayer2.util.h0 h0Var = new com.google.android.exoplayer2.util.h0(bVar.f23171d);
        List<Format> list = this.f23187b;
        while (h0Var.a() > 0) {
            int G = h0Var.G();
            int e4 = h0Var.e() + h0Var.G();
            if (G == 134) {
                list = new ArrayList<>();
                int G2 = h0Var.G() & 31;
                for (int i10 = 0; i10 < G2; i10++) {
                    String D = h0Var.D(3);
                    int G3 = h0Var.G();
                    boolean z9 = (G3 & 128) != 0;
                    if (z9) {
                        i4 = G3 & 63;
                        str = com.google.android.exoplayer2.util.a0.f27460o0;
                    } else {
                        str = com.google.android.exoplayer2.util.a0.f27458n0;
                        i4 = 1;
                    }
                    byte G4 = (byte) h0Var.G();
                    h0Var.T(1);
                    List<byte[]> list2 = null;
                    if (z9) {
                        list2 = com.google.android.exoplayer2.util.e.b((G4 & com.google.common.primitives.k.f34876a) != 0);
                    }
                    list.add(new Format.b().e0(str).V(D).F(i4).T(list2).E());
                }
            }
            h0Var.S(e4);
        }
        return list;
    }

    private boolean f(int i4) {
        return (i4 & this.f23186a) != 0;
    }

    @Override // com.google.android.exoplayer2.extractor.ts.i0.c
    public SparseArray<i0> a() {
        return new SparseArray<>();
    }

    @Override // com.google.android.exoplayer2.extractor.ts.i0.c
    @Nullable
    public i0 b(int i4, i0.b bVar) {
        if (i4 != 2) {
            if (i4 == 3 || i4 == 4) {
                return new w(new t(bVar.f23169b));
            }
            if (i4 != 21) {
                if (i4 == 27) {
                    if (f(4)) {
                        return null;
                    }
                    return new w(new p(c(bVar), f(1), f(8)));
                } else if (i4 != 36) {
                    if (i4 != 89) {
                        if (i4 != 138) {
                            if (i4 != 172) {
                                if (i4 != 257) {
                                    if (i4 != 129) {
                                        if (i4 != 130) {
                                            if (i4 == 134) {
                                                if (f(16)) {
                                                    return null;
                                                }
                                                return new c0(new v(com.google.android.exoplayer2.util.a0.f27478x0));
                                            } else if (i4 != 135) {
                                                switch (i4) {
                                                    case 15:
                                                        if (f(2)) {
                                                            return null;
                                                        }
                                                        return new w(new i(false, bVar.f23169b));
                                                    case 16:
                                                        return new w(new o(d(bVar)));
                                                    case 17:
                                                        if (f(2)) {
                                                            return null;
                                                        }
                                                        return new w(new s(bVar.f23169b));
                                                    default:
                                                        return null;
                                                }
                                            }
                                        } else if (!f(64)) {
                                            return null;
                                        }
                                    }
                                    return new w(new c(bVar.f23169b));
                                }
                                return new c0(new v(com.google.android.exoplayer2.util.a0.D0));
                            }
                            return new w(new f(bVar.f23169b));
                        }
                        return new w(new k(bVar.f23169b));
                    }
                    return new w(new l(bVar.f23170c));
                } else {
                    return new w(new q(c(bVar)));
                }
            }
            return new w(new r());
        }
        return new w(new n(d(bVar)));
    }

    public j(int i4) {
        this(i4, ImmutableList.of());
    }

    public j(int i4, List<Format> list) {
        this.f23186a = i4;
        this.f23187b = list;
    }
}

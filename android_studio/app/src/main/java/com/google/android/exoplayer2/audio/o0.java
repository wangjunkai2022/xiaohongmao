package com.google.android.exoplayer2.audio;

import com.google.android.exoplayer2.util.z0;

/* compiled from: WavUtil.java */
/* loaded from: classes2.dex */
public final class o0 {

    /* renamed from: a  reason: collision with root package name */
    public static final int f21345a = 1380533830;

    /* renamed from: b  reason: collision with root package name */
    public static final int f21346b = 1463899717;

    /* renamed from: c  reason: collision with root package name */
    public static final int f21347c = 1718449184;

    /* renamed from: d  reason: collision with root package name */
    public static final int f21348d = 1684108385;

    /* renamed from: e  reason: collision with root package name */
    public static final int f21349e = 1;

    /* renamed from: f  reason: collision with root package name */
    public static final int f21350f = 3;

    /* renamed from: g  reason: collision with root package name */
    public static final int f21351g = 6;

    /* renamed from: h  reason: collision with root package name */
    public static final int f21352h = 7;

    /* renamed from: i  reason: collision with root package name */
    public static final int f21353i = 17;

    /* renamed from: j  reason: collision with root package name */
    public static final int f21354j = 65534;

    private o0() {
    }

    public static int a(int i4, int i10) {
        if (i4 != 1) {
            if (i4 == 3) {
                return i10 == 32 ? 4 : 0;
            } else if (i4 != 65534) {
                return 0;
            }
        }
        return z0.i0(i10);
    }

    public static int b(int i4) {
        if (i4 == 2 || i4 == 3) {
            return 1;
        }
        if (i4 != 4) {
            if (i4 == 536870912 || i4 == 805306368) {
                return 1;
            }
            throw new IllegalArgumentException();
        }
        return 3;
    }
}

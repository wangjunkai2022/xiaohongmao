package com.google.android.exoplayer2;

import android.os.Bundle;
import com.google.android.exoplayer2.h;

/* compiled from: Rating.java */
/* loaded from: classes2.dex */
public abstract class c2 implements h {

    /* renamed from: a  reason: collision with root package name */
    public static final float f21521a = -1.0f;

    /* renamed from: b  reason: collision with root package name */
    static final int f21522b = -1;

    /* renamed from: c  reason: collision with root package name */
    static final int f21523c = 0;

    /* renamed from: d  reason: collision with root package name */
    static final int f21524d = 1;

    /* renamed from: e  reason: collision with root package name */
    static final int f21525e = 2;

    /* renamed from: f  reason: collision with root package name */
    static final int f21526f = 3;

    /* renamed from: g  reason: collision with root package name */
    static final int f21527g = 0;

    /* renamed from: h  reason: collision with root package name */
    public static final h.a<c2> f21528h = b2.f21516a;

    /* JADX INFO: Access modifiers changed from: private */
    public static c2 b(Bundle bundle) {
        int i4 = bundle.getInt(d(0), -1);
        if (i4 != 0) {
            if (i4 != 1) {
                if (i4 != 2) {
                    if (i4 == 3) {
                        return q2.f24513n.a(bundle);
                    }
                    StringBuilder sb = new StringBuilder(44);
                    sb.append("Encountered unknown rating type: ");
                    sb.append(i4);
                    throw new IllegalArgumentException(sb.toString());
                }
                return m2.f23938o.a(bundle);
            }
            return q1.f24508l.a(bundle);
        }
        return x0.f28138n.a(bundle);
    }

    private static String d(int i4) {
        return Integer.toString(i4, 36);
    }

    public abstract boolean c();
}

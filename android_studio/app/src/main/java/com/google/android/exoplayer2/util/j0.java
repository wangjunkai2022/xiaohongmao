package com.google.android.exoplayer2.util;

import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* compiled from: RepeatModeUtil.java */
/* loaded from: classes2.dex */
public final class j0 {

    /* renamed from: a  reason: collision with root package name */
    public static final int f27566a = 0;

    /* renamed from: b  reason: collision with root package name */
    public static final int f27567b = 1;

    /* renamed from: c  reason: collision with root package name */
    public static final int f27568c = 2;

    /* compiled from: RepeatModeUtil.java */
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface a {
    }

    private j0() {
    }

    public static int a(int i4, int i10) {
        for (int i11 = 1; i11 <= 2; i11++) {
            int i12 = (i4 + i11) % 3;
            if (b(i12, i10)) {
                return i12;
            }
        }
        return i4;
    }

    public static boolean b(int i4, int i10) {
        if (i4 != 0) {
            return i4 != 1 ? i4 == 2 && (i10 & 2) != 0 : (i10 & 1) != 0;
        }
        return true;
    }
}

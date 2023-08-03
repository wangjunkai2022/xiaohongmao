package com.google.android.exoplayer2;

import android.annotation.SuppressLint;

/* compiled from: RendererCapabilities.java */
/* loaded from: classes2.dex */
public final /* synthetic */ class f2 {
    public static int a(int i4) {
        return b(i4, 0, 0);
    }

    @SuppressLint({"WrongConstant"})
    public static int b(int i4, int i10, int i11) {
        return i4 | i10 | i11;
    }

    @SuppressLint({"WrongConstant"})
    public static int c(int i4) {
        return i4 & 24;
    }

    @SuppressLint({"WrongConstant"})
    public static int d(int i4) {
        return i4 & 7;
    }

    @SuppressLint({"WrongConstant"})
    public static int e(int i4) {
        return i4 & 32;
    }
}

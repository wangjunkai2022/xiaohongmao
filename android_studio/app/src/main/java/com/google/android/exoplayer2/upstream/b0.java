package com.google.android.exoplayer2.upstream;

import android.text.TextUtils;

/* compiled from: HttpDataSource.java */
/* loaded from: classes2.dex */
public final /* synthetic */ class b0 {
    static {
        com.google.common.base.b0<String> b0Var = HttpDataSource.f26967a;
    }

    public static /* synthetic */ boolean a(String str) {
        if (str == null) {
            return false;
        }
        String g4 = com.google.common.base.c.g(str);
        if (TextUtils.isEmpty(g4)) {
            return false;
        }
        return ((g4.contains("text") && !g4.contains(com.google.android.exoplayer2.util.a0.f27440e0)) || g4.contains("html") || g4.contains("xml")) ? false : true;
    }
}

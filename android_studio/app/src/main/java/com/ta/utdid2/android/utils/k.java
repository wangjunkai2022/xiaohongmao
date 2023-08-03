package com.ta.utdid2.android.utils;

import android.util.Log;

/* compiled from: TimeUtils.java */
/* loaded from: classes3.dex */
public class k {

    /* renamed from: a  reason: collision with root package name */
    public static final String f55846a = "com.ta.utdid2.android.utils.k";

    /* renamed from: b  reason: collision with root package name */
    public static final int f55847b = 86400000;

    public static boolean a(long j4, int i4) {
        boolean z9 = (System.currentTimeMillis() - j4) / 86400000 < ((long) i4);
        if (d.f55837b) {
            String str = f55846a;
            Log.d(str, "isUpToDate: " + z9 + "; oldTimestamp: " + j4 + "; currentTimestamp" + System.currentTimeMillis());
        }
        return z9;
    }
}

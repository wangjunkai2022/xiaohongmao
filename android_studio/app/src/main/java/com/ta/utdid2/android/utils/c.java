package com.ta.utdid2.android.utils;

import android.annotation.TargetApi;
import android.util.Base64;

/* compiled from: Base64Helper.java */
/* loaded from: classes3.dex */
public class c {
    @TargetApi(8)
    public static String a(byte[] bArr, int i4) {
        return Base64.encodeToString(bArr, i4);
    }
}

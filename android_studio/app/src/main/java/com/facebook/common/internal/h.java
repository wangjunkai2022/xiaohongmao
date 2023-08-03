package com.facebook.common.internal;

import com.facebook.infer.annotation.Nullsafe;

/* compiled from: Ints.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class h {
    private h() {
    }

    public static int a(int... array) {
        j.d(Boolean.valueOf(array.length > 0));
        int i4 = array[0];
        for (int i10 = 1; i10 < array.length; i10++) {
            if (array[i10] > i4) {
                i4 = array[i10];
            }
        }
        return i4;
    }
}

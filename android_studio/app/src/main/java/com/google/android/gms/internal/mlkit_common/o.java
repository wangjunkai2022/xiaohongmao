package com.google.android.gms.internal.mlkit_common;

/* compiled from: com.google.mlkit:common@@18.4.0 */
/* loaded from: classes2.dex */
public final class o {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object[] a(Object[] objArr, int i4) {
        for (int i10 = 0; i10 < i4; i10++) {
            if (objArr[i10] == null) {
                throw new NullPointerException("at index " + i10);
            }
        }
        return objArr;
    }
}

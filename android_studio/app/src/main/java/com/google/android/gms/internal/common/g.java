package com.google.android.gms.internal.common;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
/* loaded from: classes2.dex */
public final class g {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object[] a(Object[] objArr, int i4) {
        for (int i10 = 0; i10 < i4; i10++) {
            if (objArr[i10] == null) {
                StringBuilder sb = new StringBuilder(20);
                sb.append("at index ");
                sb.append(i10);
                throw new NullPointerException(sb.toString());
            }
        }
        return objArr;
    }
}

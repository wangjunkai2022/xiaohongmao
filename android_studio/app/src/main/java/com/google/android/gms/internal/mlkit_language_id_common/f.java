package com.google.android.gms.internal.mlkit_language_id_common;

import java.util.Iterator;
import java.util.Set;

/* compiled from: com.google.mlkit:language-id-common@@16.0.0 */
/* loaded from: classes2.dex */
public final class f {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(Set set) {
        Iterator it = set.iterator();
        int i4 = 0;
        while (it.hasNext()) {
            Object next = it.next();
            i4 += next != null ? next.hashCode() : 0;
        }
        return i4;
    }
}

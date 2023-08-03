package com.google.android.play.core.internal;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final class i1 {
    public static Object a(Object obj, Object obj2) {
        if (obj != null) {
            return obj;
        }
        throw new NullPointerException((String) obj2);
    }

    public static void b(boolean z9, Object obj) {
        if (!z9) {
            throw new IllegalStateException(String.valueOf(obj));
        }
    }
}

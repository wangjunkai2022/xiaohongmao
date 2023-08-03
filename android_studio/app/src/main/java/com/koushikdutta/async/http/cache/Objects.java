package com.koushikdutta.async.http.cache;

/* loaded from: classes3.dex */
final class Objects {
    private Objects() {
    }

    public static boolean a(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public static int b(Object obj) {
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }
}

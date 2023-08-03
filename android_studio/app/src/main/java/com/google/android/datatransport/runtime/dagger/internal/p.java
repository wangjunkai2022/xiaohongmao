package com.google.android.datatransport.runtime.dagger.internal;

import java.util.Objects;

/* compiled from: Preconditions.java */
/* loaded from: classes2.dex */
public final class p {
    private p() {
    }

    public static <T> void a(T t9, Class<T> cls) {
        if (t9 != null) {
            return;
        }
        throw new IllegalStateException(cls.getCanonicalName() + " must be set");
    }

    public static <T> T b(T t9) {
        Objects.requireNonNull(t9);
        return t9;
    }

    public static <T> T c(T t9, String str) {
        Objects.requireNonNull(t9, str);
        return t9;
    }

    public static <T> T d(T t9, String str, Object obj) {
        String valueOf;
        if (t9 == null) {
            if (str.contains("%s")) {
                if (str.indexOf("%s") == str.lastIndexOf("%s")) {
                    if (obj instanceof Class) {
                        valueOf = ((Class) obj).getCanonicalName();
                    } else {
                        valueOf = String.valueOf(obj);
                    }
                    throw new NullPointerException(str.replace("%s", valueOf));
                }
                throw new IllegalArgumentException("errorMessageTemplate has more than one format specifier");
            }
            throw new IllegalArgumentException("errorMessageTemplate has no format specifiers");
        }
        return t9;
    }
}

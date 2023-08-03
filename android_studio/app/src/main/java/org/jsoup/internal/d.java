package org.jsoup.internal;

import java.util.Locale;

/* compiled from: Normalizer.java */
/* loaded from: classes5.dex */
public final class d {
    public static String a(String str) {
        return str != null ? str.toLowerCase(Locale.ENGLISH) : "";
    }

    public static String b(String str) {
        return a(str).trim();
    }

    public static String c(String str, boolean z9) {
        return z9 ? a(str) : b(str);
    }
}

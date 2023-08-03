package com.google.firebase.components;

import java.util.Objects;

/* compiled from: Preconditions.java */
/* loaded from: classes2.dex */
public final class c0 {
    public static void a(boolean z9, String str) {
        if (!z9) {
            throw new IllegalArgumentException(str);
        }
    }

    public static <T> T b(T t9) {
        Objects.requireNonNull(t9);
        return t9;
    }

    public static <T> T c(T t9, String str) {
        Objects.requireNonNull(t9, str);
        return t9;
    }

    public static void d(boolean z9, String str) {
        if (!z9) {
            throw new IllegalStateException(str);
        }
    }
}

package com.google.gson.internal;

import java.util.Objects;

/* renamed from: com.google.gson.internal.$Gson$Preconditions  reason: invalid class name */
/* loaded from: classes2.dex */
public final class C$Gson$Preconditions {
    private C$Gson$Preconditions() {
        throw new UnsupportedOperationException();
    }

    public static void checkArgument(boolean z9) {
        if (!z9) {
            throw new IllegalArgumentException();
        }
    }

    public static <T> T checkNotNull(T t9) {
        Objects.requireNonNull(t9);
        return t9;
    }
}

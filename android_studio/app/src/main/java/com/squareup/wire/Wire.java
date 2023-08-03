package com.squareup.wire;

/* loaded from: classes3.dex */
public final class Wire {
    private Wire() {
    }

    public static <T> T get(T t9, T t10) {
        return t9 != null ? t9 : t10;
    }
}

package com.bumptech.glide.util;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Collection;
import java.util.Objects;

/* compiled from: Preconditions.java */
/* loaded from: classes.dex */
public final class m {
    private m() {
    }

    public static void a(boolean z9, @NonNull String str) {
        if (!z9) {
            throw new IllegalArgumentException(str);
        }
    }

    @NonNull
    public static String b(@Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Must not be null or empty");
        }
        return str;
    }

    @NonNull
    public static <T extends Collection<Y>, Y> T c(@NonNull T t9) {
        if (t9.isEmpty()) {
            throw new IllegalArgumentException("Must not be empty.");
        }
        return t9;
    }

    @NonNull
    public static <T> T d(@Nullable T t9) {
        return (T) e(t9, "Argument must not be null");
    }

    @NonNull
    public static <T> T e(@Nullable T t9, @NonNull String str) {
        Objects.requireNonNull(t9, str);
        return t9;
    }
}

package com.google.android.datatransport;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Objects;

/* compiled from: Encoding.java */
/* loaded from: classes2.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private final String f20192a;

    private c(@NonNull String str) {
        Objects.requireNonNull(str, "name is null");
        this.f20192a = str;
    }

    public static c b(@NonNull String str) {
        return new c(str);
    }

    public String a() {
        return this.f20192a;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof c) {
            return this.f20192a.equals(((c) obj).f20192a);
        }
        return false;
    }

    public int hashCode() {
        return this.f20192a.hashCode() ^ 1000003;
    }

    @NonNull
    public String toString() {
        return "Encoding{name=\"" + this.f20192a + "\"}";
    }
}

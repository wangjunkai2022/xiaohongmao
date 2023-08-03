package com.google.android.datatransport.runtime;

import androidx.annotation.NonNull;
import java.util.Arrays;
import java.util.Objects;

/* compiled from: EncodedPayload.java */
/* loaded from: classes2.dex */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    private final com.google.android.datatransport.c f20453a;

    /* renamed from: b  reason: collision with root package name */
    private final byte[] f20454b;

    public h(@NonNull com.google.android.datatransport.c cVar, @NonNull byte[] bArr) {
        Objects.requireNonNull(cVar, "encoding is null");
        Objects.requireNonNull(bArr, "bytes is null");
        this.f20453a = cVar;
        this.f20454b = bArr;
    }

    public byte[] a() {
        return this.f20454b;
    }

    public com.google.android.datatransport.c b() {
        return this.f20453a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof h) {
            h hVar = (h) obj;
            if (this.f20453a.equals(hVar.f20453a)) {
                return Arrays.equals(this.f20454b, hVar.f20454b);
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        return ((this.f20453a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f20454b);
    }

    public String toString() {
        return "EncodedPayload{encoding=" + this.f20453a + ", bytes=[...]}";
    }
}

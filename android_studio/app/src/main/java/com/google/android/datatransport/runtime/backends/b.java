package com.google.android.datatransport.runtime.backends;

import com.google.android.datatransport.runtime.backends.BackendResponse;
import java.util.Objects;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AutoValue_BackendResponse.java */
/* loaded from: classes2.dex */
public final class b extends BackendResponse {

    /* renamed from: a  reason: collision with root package name */
    private final BackendResponse.Status f20378a;

    /* renamed from: b  reason: collision with root package name */
    private final long f20379b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(BackendResponse.Status status, long j4) {
        Objects.requireNonNull(status, "Null status");
        this.f20378a = status;
        this.f20379b = j4;
    }

    @Override // com.google.android.datatransport.runtime.backends.BackendResponse
    public long b() {
        return this.f20379b;
    }

    @Override // com.google.android.datatransport.runtime.backends.BackendResponse
    public BackendResponse.Status c() {
        return this.f20378a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof BackendResponse) {
            BackendResponse backendResponse = (BackendResponse) obj;
            return this.f20378a.equals(backendResponse.c()) && this.f20379b == backendResponse.b();
        }
        return false;
    }

    public int hashCode() {
        long j4 = this.f20379b;
        return ((this.f20378a.hashCode() ^ 1000003) * 1000003) ^ ((int) (j4 ^ (j4 >>> 32)));
    }

    public String toString() {
        return "BackendResponse{status=" + this.f20378a + ", nextRequestWaitMillis=" + this.f20379b + com.alipay.sdk.util.i.f6967d;
    }
}

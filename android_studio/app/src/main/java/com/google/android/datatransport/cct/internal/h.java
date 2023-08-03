package com.google.android.datatransport.cct.internal;

/* compiled from: AutoValue_LogResponse.java */
/* loaded from: classes2.dex */
final class h extends m {

    /* renamed from: b  reason: collision with root package name */
    private final long f20345b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(long j4) {
        this.f20345b = j4;
    }

    @Override // com.google.android.datatransport.cct.internal.m
    public long c() {
        return this.f20345b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof m) && this.f20345b == ((m) obj).c();
    }

    public int hashCode() {
        long j4 = this.f20345b;
        return 1000003 ^ ((int) (j4 ^ (j4 >>> 32)));
    }

    public String toString() {
        return "LogResponse{nextRequestWaitMillis=" + this.f20345b + com.alipay.sdk.util.i.f6967d;
    }
}

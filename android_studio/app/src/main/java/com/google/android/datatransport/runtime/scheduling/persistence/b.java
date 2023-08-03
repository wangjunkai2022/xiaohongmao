package com.google.android.datatransport.runtime.scheduling.persistence;

import java.util.Objects;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AutoValue_PersistedEvent.java */
/* loaded from: classes2.dex */
public final class b extends i {

    /* renamed from: a  reason: collision with root package name */
    private final long f20577a;

    /* renamed from: b  reason: collision with root package name */
    private final com.google.android.datatransport.runtime.o f20578b;

    /* renamed from: c  reason: collision with root package name */
    private final com.google.android.datatransport.runtime.i f20579c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(long j4, com.google.android.datatransport.runtime.o oVar, com.google.android.datatransport.runtime.i iVar) {
        this.f20577a = j4;
        Objects.requireNonNull(oVar, "Null transportContext");
        this.f20578b = oVar;
        Objects.requireNonNull(iVar, "Null event");
        this.f20579c = iVar;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.i
    public com.google.android.datatransport.runtime.i b() {
        return this.f20579c;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.i
    public long c() {
        return this.f20577a;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.i
    public com.google.android.datatransport.runtime.o d() {
        return this.f20578b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof i) {
            i iVar = (i) obj;
            return this.f20577a == iVar.c() && this.f20578b.equals(iVar.d()) && this.f20579c.equals(iVar.b());
        }
        return false;
    }

    public int hashCode() {
        long j4 = this.f20577a;
        return this.f20579c.hashCode() ^ ((((((int) (j4 ^ (j4 >>> 32))) ^ 1000003) * 1000003) ^ this.f20578b.hashCode()) * 1000003);
    }

    public String toString() {
        return "PersistedEvent{id=" + this.f20577a + ", transportContext=" + this.f20578b + ", event=" + this.f20579c + com.alipay.sdk.util.i.f6967d;
    }
}

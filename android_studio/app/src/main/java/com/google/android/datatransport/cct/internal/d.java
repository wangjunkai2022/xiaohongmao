package com.google.android.datatransport.cct.internal;

import androidx.annotation.NonNull;
import java.util.List;
import java.util.Objects;
import l3.a;

/* compiled from: AutoValue_BatchedLogRequest.java */
/* loaded from: classes2.dex */
final class d extends j {

    /* renamed from: a  reason: collision with root package name */
    private final List<l> f20312a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(List<l> list) {
        Objects.requireNonNull(list, "Null logRequests");
        this.f20312a = list;
    }

    @Override // com.google.android.datatransport.cct.internal.j
    @NonNull
    @a.InterfaceC0771a(name = "logRequest")
    public List<l> c() {
        return this.f20312a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof j) {
            return this.f20312a.equals(((j) obj).c());
        }
        return false;
    }

    public int hashCode() {
        return this.f20312a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "BatchedLogRequest{logRequests=" + this.f20312a + com.alipay.sdk.util.i.f6967d;
    }
}

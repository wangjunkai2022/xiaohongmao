package com.google.mlkit.common.internal.model;

import com.google.mlkit.common.internal.model.c;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.mlkit:common@@18.4.0 */
/* loaded from: classes2.dex */
public final class b extends c.b {

    /* renamed from: a  reason: collision with root package name */
    private final long f35726a;

    /* renamed from: b  reason: collision with root package name */
    private final String f35727b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f35728c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(long j4, String str, boolean z9) {
        this.f35726a = j4;
        this.f35727b = str;
        this.f35728c = z9;
    }

    @Override // com.google.mlkit.common.internal.model.c.b
    @u2.a
    public String a() {
        return this.f35727b;
    }

    @Override // com.google.mlkit.common.internal.model.c.b
    @u2.a
    public long b() {
        return this.f35726a;
    }

    @Override // com.google.mlkit.common.internal.model.c.b
    @u2.a
    public boolean c() {
        return this.f35728c;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof c.b) {
            c.b bVar = (c.b) obj;
            if (this.f35726a == bVar.b() && this.f35727b.equals(bVar.a()) && this.f35728c == bVar.c()) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        long j4 = this.f35726a;
        return (true != this.f35728c ? 1237 : 1231) ^ ((((((int) (j4 ^ (j4 >>> 32))) ^ 1000003) * 1000003) ^ this.f35727b.hashCode()) * 1000003);
    }

    public final String toString() {
        long j4 = this.f35726a;
        String str = this.f35727b;
        boolean z9 = this.f35728c;
        return "ModelLoggingInfo{size=" + j4 + ", hash=" + str + ", manifestModel=" + z9 + com.alipay.sdk.util.i.f6967d;
    }
}

package com.google.android.datatransport.runtime.scheduling.persistence;

import com.google.android.datatransport.runtime.scheduling.persistence.d;

/* compiled from: AutoValue_EventStoreConfig.java */
/* loaded from: classes2.dex */
final class a extends d {

    /* renamed from: g  reason: collision with root package name */
    private final long f20566g;

    /* renamed from: h  reason: collision with root package name */
    private final int f20567h;

    /* renamed from: i  reason: collision with root package name */
    private final int f20568i;

    /* renamed from: j  reason: collision with root package name */
    private final long f20569j;

    /* renamed from: k  reason: collision with root package name */
    private final int f20570k;

    /* compiled from: AutoValue_EventStoreConfig.java */
    /* loaded from: classes2.dex */
    static final class b extends d.a {

        /* renamed from: a  reason: collision with root package name */
        private Long f20571a;

        /* renamed from: b  reason: collision with root package name */
        private Integer f20572b;

        /* renamed from: c  reason: collision with root package name */
        private Integer f20573c;

        /* renamed from: d  reason: collision with root package name */
        private Long f20574d;

        /* renamed from: e  reason: collision with root package name */
        private Integer f20575e;

        @Override // com.google.android.datatransport.runtime.scheduling.persistence.d.a
        d a() {
            String str = "";
            if (this.f20571a == null) {
                str = " maxStorageSizeInBytes";
            }
            if (this.f20572b == null) {
                str = str + " loadBatchSize";
            }
            if (this.f20573c == null) {
                str = str + " criticalSectionEnterTimeoutMs";
            }
            if (this.f20574d == null) {
                str = str + " eventCleanUpAge";
            }
            if (this.f20575e == null) {
                str = str + " maxBlobByteSizePerRow";
            }
            if (str.isEmpty()) {
                return new a(this.f20571a.longValue(), this.f20572b.intValue(), this.f20573c.intValue(), this.f20574d.longValue(), this.f20575e.intValue());
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // com.google.android.datatransport.runtime.scheduling.persistence.d.a
        d.a b(int i4) {
            this.f20573c = Integer.valueOf(i4);
            return this;
        }

        @Override // com.google.android.datatransport.runtime.scheduling.persistence.d.a
        d.a c(long j4) {
            this.f20574d = Long.valueOf(j4);
            return this;
        }

        @Override // com.google.android.datatransport.runtime.scheduling.persistence.d.a
        d.a d(int i4) {
            this.f20572b = Integer.valueOf(i4);
            return this;
        }

        @Override // com.google.android.datatransport.runtime.scheduling.persistence.d.a
        d.a e(int i4) {
            this.f20575e = Integer.valueOf(i4);
            return this;
        }

        @Override // com.google.android.datatransport.runtime.scheduling.persistence.d.a
        d.a f(long j4) {
            this.f20571a = Long.valueOf(j4);
            return this;
        }
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.d
    int b() {
        return this.f20568i;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.d
    long c() {
        return this.f20569j;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.d
    int d() {
        return this.f20567h;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.d
    int e() {
        return this.f20570k;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof d) {
            d dVar = (d) obj;
            return this.f20566g == dVar.f() && this.f20567h == dVar.d() && this.f20568i == dVar.b() && this.f20569j == dVar.c() && this.f20570k == dVar.e();
        }
        return false;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.d
    long f() {
        return this.f20566g;
    }

    public int hashCode() {
        long j4 = this.f20566g;
        long j10 = this.f20569j;
        return this.f20570k ^ ((((((((((int) (j4 ^ (j4 >>> 32))) ^ 1000003) * 1000003) ^ this.f20567h) * 1000003) ^ this.f20568i) * 1000003) ^ ((int) ((j10 >>> 32) ^ j10))) * 1000003);
    }

    public String toString() {
        return "EventStoreConfig{maxStorageSizeInBytes=" + this.f20566g + ", loadBatchSize=" + this.f20567h + ", criticalSectionEnterTimeoutMs=" + this.f20568i + ", eventCleanUpAge=" + this.f20569j + ", maxBlobByteSizePerRow=" + this.f20570k + com.alipay.sdk.util.i.f6967d;
    }

    private a(long j4, int i4, int i10, long j10, int i11) {
        this.f20566g = j4;
        this.f20567h = i4;
        this.f20568i = i10;
        this.f20569j = j10;
        this.f20570k = i11;
    }
}

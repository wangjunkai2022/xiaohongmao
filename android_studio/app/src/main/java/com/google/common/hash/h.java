package com.google.common.hash;

import com.google.errorprone.annotations.Immutable;
import java.io.Serializable;
import java.util.zip.Checksum;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ChecksumHashFunction.java */
@Immutable
/* loaded from: classes2.dex */
public final class h extends c implements Serializable {

    /* renamed from: d  reason: collision with root package name */
    private static final long f34289d = 0;

    /* renamed from: a  reason: collision with root package name */
    private final r<? extends Checksum> f34290a;

    /* renamed from: b  reason: collision with root package name */
    private final int f34291b;

    /* renamed from: c  reason: collision with root package name */
    private final String f34292c;

    /* compiled from: ChecksumHashFunction.java */
    /* loaded from: classes2.dex */
    private final class b extends com.google.common.hash.a {

        /* renamed from: b  reason: collision with root package name */
        private final Checksum f34293b;

        @Override // com.google.common.hash.n
        public l i() {
            long value = this.f34293b.getValue();
            if (h.this.f34291b == 32) {
                return l.k((int) value);
            }
            return l.l(value);
        }

        @Override // com.google.common.hash.a
        protected void k(byte b10) {
            this.f34293b.update(b10);
        }

        @Override // com.google.common.hash.a
        protected void n(byte[] bArr, int i4, int i10) {
            this.f34293b.update(bArr, i4, i10);
        }

        private b(Checksum checksum) {
            this.f34293b = (Checksum) com.google.common.base.a0.E(checksum);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(r<? extends Checksum> rVar, int i4, String str) {
        this.f34290a = (r) com.google.common.base.a0.E(rVar);
        com.google.common.base.a0.k(i4 == 32 || i4 == 64, "bits (%s) must be either 32 or 64", i4);
        this.f34291b = i4;
        this.f34292c = (String) com.google.common.base.a0.E(str);
    }

    @Override // com.google.common.hash.m
    public int c() {
        return this.f34291b;
    }

    @Override // com.google.common.hash.m
    public n h() {
        return new b(this.f34290a.get());
    }

    public String toString() {
        return this.f34292c;
    }
}

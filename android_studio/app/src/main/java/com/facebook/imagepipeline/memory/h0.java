package com.facebook.imagepipeline.memory;

import androidx.annotation.VisibleForTesting;
import com.facebook.common.memory.MemoryTrimType;
import com.facebook.infer.annotation.Nullsafe;
import java.util.concurrent.Semaphore;

/* compiled from: SharedByteArray.java */
@s7.d
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class h0 implements com.facebook.common.memory.b {
    @VisibleForTesting

    /* renamed from: a  reason: collision with root package name */
    final int f12635a;
    @VisibleForTesting

    /* renamed from: b  reason: collision with root package name */
    final int f12636b;
    @VisibleForTesting

    /* renamed from: c  reason: collision with root package name */
    final com.facebook.common.references.f<byte[]> f12637c;
    @VisibleForTesting

    /* renamed from: d  reason: collision with root package name */
    final Semaphore f12638d;

    /* renamed from: e  reason: collision with root package name */
    private final com.facebook.common.references.h<byte[]> f12639e;

    /* compiled from: SharedByteArray.java */
    /* loaded from: classes.dex */
    class a implements com.facebook.common.references.h<byte[]> {
        a() {
        }

        @Override // com.facebook.common.references.h
        /* renamed from: a */
        public void release(byte[] unused) {
            h0.this.f12638d.release();
        }
    }

    public h0(com.facebook.common.memory.c memoryTrimmableRegistry, f0 params) {
        com.facebook.common.internal.j.i(memoryTrimmableRegistry);
        com.facebook.common.internal.j.d(Boolean.valueOf(params.f12613d > 0));
        com.facebook.common.internal.j.d(Boolean.valueOf(params.f12614e >= params.f12613d));
        this.f12636b = params.f12614e;
        this.f12635a = params.f12613d;
        this.f12637c = new com.facebook.common.references.f<>();
        this.f12638d = new Semaphore(1);
        this.f12639e = new a();
        memoryTrimmableRegistry.a(this);
    }

    private synchronized byte[] i(int size) {
        byte[] bArr;
        this.f12637c.a();
        bArr = new byte[size];
        this.f12637c.c(bArr);
        return bArr;
    }

    private byte[] t(int requestedSize) {
        int s9 = s(requestedSize);
        byte[] b10 = this.f12637c.b();
        return (b10 == null || b10.length < s9) ? i(s9) : b10;
    }

    @Override // com.facebook.common.memory.b
    public void m(MemoryTrimType trimType) {
        if (this.f12638d.tryAcquire()) {
            try {
                this.f12637c.a();
            } finally {
                this.f12638d.release();
            }
        }
    }

    public com.facebook.common.references.a<byte[]> r(int size) {
        com.facebook.common.internal.j.e(size > 0, "Size must be greater than zero");
        com.facebook.common.internal.j.e(size <= this.f12636b, "Requested size is too big");
        this.f12638d.acquireUninterruptibly();
        try {
            return com.facebook.common.references.a.G(t(size), this.f12639e);
        } catch (Throwable th) {
            this.f12638d.release();
            throw com.facebook.common.internal.o.d(th);
        }
    }

    @VisibleForTesting
    int s(int size) {
        return Integer.highestOneBit(Math.max(size, this.f12635a) - 1) * 2;
    }
}

package com.facebook.imagepipeline.memory;

import androidx.annotation.VisibleForTesting;
import com.facebook.infer.annotation.Nullsafe;
import java.util.Map;

/* compiled from: FlexByteArrayPool.java */
@s7.d
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class r {

    /* renamed from: a  reason: collision with root package name */
    private final com.facebook.common.references.h<byte[]> f12664a;
    @VisibleForTesting

    /* renamed from: b  reason: collision with root package name */
    final b f12665b;

    /* compiled from: FlexByteArrayPool.java */
    /* loaded from: classes.dex */
    class a implements com.facebook.common.references.h<byte[]> {
        a() {
        }

        @Override // com.facebook.common.references.h
        /* renamed from: a */
        public void release(byte[] unused) {
            r.this.d(unused);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlexByteArrayPool.java */
    @VisibleForTesting
    /* loaded from: classes.dex */
    public static class b extends s {
        public b(com.facebook.common.memory.c memoryTrimmableRegistry, f0 poolParams, g0 poolStatsTracker) {
            super(memoryTrimmableRegistry, poolParams, poolStatsTracker);
        }

        @Override // com.facebook.imagepipeline.memory.BasePool
        h<byte[]> I(int bucketedSize) {
            return new b0(z(bucketedSize), this.f12533c.f12616g, 0);
        }
    }

    public r(com.facebook.common.memory.c memoryTrimmableRegistry, f0 params) {
        com.facebook.common.internal.j.d(Boolean.valueOf(params.f12616g > 0));
        this.f12665b = new b(memoryTrimmableRegistry, params, a0.h());
        this.f12664a = new a();
    }

    public com.facebook.common.references.a<byte[]> a(int size) {
        return com.facebook.common.references.a.G(this.f12665b.get(size), this.f12664a);
    }

    public int b() {
        return this.f12665b.R();
    }

    public Map<String, Integer> c() {
        return this.f12665b.A();
    }

    public void d(byte[] value) {
        this.f12665b.release(value);
    }
}

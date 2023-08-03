package com.google.common.cache;

import com.google.common.cache.q;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;

/* compiled from: LongAdder.java */
@h3.b(emulated = true)
/* loaded from: classes2.dex */
final class m extends q implements Serializable, k {

    /* renamed from: j  reason: collision with root package name */
    private static final long f32562j = 7249069246863182397L;

    private void n(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        this.f32575c = 0;
        this.f32573a = null;
        this.f32574b = objectInputStream.readLong();
    }

    private void q(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeLong(c());
    }

    @Override // com.google.common.cache.k
    public void a(long j4) {
        int length;
        q.b bVar;
        q.b[] bVarArr = this.f32573a;
        if (bVarArr == null) {
            long j10 = this.f32574b;
            if (e(j10, j10 + j4)) {
                return;
            }
        }
        int[] iArr = q.f32567d.get();
        boolean z9 = true;
        if (iArr != null && bVarArr != null && (length = bVarArr.length) >= 1 && (bVar = bVarArr[(length - 1) & iArr[0]]) != null) {
            long j11 = bVar.f32585h;
            z9 = bVar.a(j11, j11 + j4);
            if (z9) {
                return;
            }
        }
        l(j4, iArr, z9);
    }

    @Override // com.google.common.cache.k
    public void b() {
        a(1L);
    }

    @Override // com.google.common.cache.k
    public long c() {
        long j4 = this.f32574b;
        q.b[] bVarArr = this.f32573a;
        if (bVarArr != null) {
            for (q.b bVar : bVarArr) {
                if (bVar != null) {
                    j4 += bVar.f32585h;
                }
            }
        }
        return j4;
    }

    @Override // java.lang.Number
    public double doubleValue() {
        return c();
    }

    @Override // java.lang.Number
    public float floatValue() {
        return (float) c();
    }

    @Override // com.google.common.cache.q
    final long i(long j4, long j10) {
        return j4 + j10;
    }

    @Override // java.lang.Number
    public int intValue() {
        return (int) c();
    }

    @Override // java.lang.Number
    public long longValue() {
        return c();
    }

    public void m() {
        a(-1L);
    }

    public void o() {
        k(0L);
    }

    public long p() {
        long j4 = this.f32574b;
        q.b[] bVarArr = this.f32573a;
        this.f32574b = 0L;
        if (bVarArr != null) {
            for (q.b bVar : bVarArr) {
                if (bVar != null) {
                    j4 += bVar.f32585h;
                    bVar.f32585h = 0L;
                }
            }
        }
        return j4;
    }

    public String toString() {
        return Long.toString(c());
    }
}

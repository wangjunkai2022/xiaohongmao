package com.google.common.hash;

import com.google.common.hash.c0;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;

/* compiled from: LongAdder.java */
/* loaded from: classes2.dex */
final class v extends c0 implements Serializable, t {

    /* renamed from: j  reason: collision with root package name */
    private static final long f34345j = 7249069246863182397L;

    private void n(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        this.f34260c = 0;
        this.f34258a = null;
        this.f34259b = objectInputStream.readLong();
    }

    private void q(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeLong(c());
    }

    @Override // com.google.common.hash.t
    public void a(long j4) {
        int length;
        c0.b bVar;
        c0.b[] bVarArr = this.f34258a;
        if (bVarArr == null) {
            long j10 = this.f34259b;
            if (e(j10, j10 + j4)) {
                return;
            }
        }
        int[] iArr = c0.f34252d.get();
        boolean z9 = true;
        if (iArr != null && bVarArr != null && (length = bVarArr.length) >= 1 && (bVar = bVarArr[(length - 1) & iArr[0]]) != null) {
            long j11 = bVar.f34270h;
            z9 = bVar.a(j11, j11 + j4);
            if (z9) {
                return;
            }
        }
        l(j4, iArr, z9);
    }

    @Override // com.google.common.hash.t
    public void b() {
        a(1L);
    }

    @Override // com.google.common.hash.t
    public long c() {
        long j4 = this.f34259b;
        c0.b[] bVarArr = this.f34258a;
        if (bVarArr != null) {
            for (c0.b bVar : bVarArr) {
                if (bVar != null) {
                    j4 += bVar.f34270h;
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

    @Override // com.google.common.hash.c0
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
        long j4 = this.f34259b;
        c0.b[] bVarArr = this.f34258a;
        this.f34259b = 0L;
        if (bVarArr != null) {
            for (c0.b bVar : bVarArr) {
                if (bVar != null) {
                    j4 += bVar.f34270h;
                    bVar.f34270h = 0L;
                }
            }
        }
        return j4;
    }

    public String toString() {
        return Long.toString(c());
    }
}

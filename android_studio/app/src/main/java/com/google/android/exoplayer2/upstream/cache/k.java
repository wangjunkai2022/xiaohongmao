package com.google.android.exoplayer2.upstream.cache;

import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import java.io.IOException;
import java.io.InterruptedIOException;

/* compiled from: CacheWriter.java */
/* loaded from: classes2.dex */
public final class k {

    /* renamed from: k  reason: collision with root package name */
    public static final int f27111k = 131072;

    /* renamed from: a  reason: collision with root package name */
    private final b f27112a;

    /* renamed from: b  reason: collision with root package name */
    private final Cache f27113b;

    /* renamed from: c  reason: collision with root package name */
    private final com.google.android.exoplayer2.upstream.o f27114c;

    /* renamed from: d  reason: collision with root package name */
    private final String f27115d;

    /* renamed from: e  reason: collision with root package name */
    private final byte[] f27116e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private final a f27117f;

    /* renamed from: g  reason: collision with root package name */
    private long f27118g;

    /* renamed from: h  reason: collision with root package name */
    private long f27119h;

    /* renamed from: i  reason: collision with root package name */
    private long f27120i;

    /* renamed from: j  reason: collision with root package name */
    private volatile boolean f27121j;

    /* compiled from: CacheWriter.java */
    /* loaded from: classes2.dex */
    public interface a {
        void a(long j4, long j10, long j11);
    }

    public k(b bVar, com.google.android.exoplayer2.upstream.o oVar, @Nullable byte[] bArr, @Nullable a aVar) {
        this.f27112a = bVar;
        this.f27113b = bVar.u();
        this.f27114c = oVar;
        this.f27116e = bArr == null ? new byte[131072] : bArr;
        this.f27117f = aVar;
        this.f27115d = bVar.v().a(oVar);
        this.f27118g = oVar.f27294g;
    }

    private long c() {
        long j4 = this.f27119h;
        if (j4 == -1) {
            return -1L;
        }
        return j4 - this.f27114c.f27294g;
    }

    private void d(long j4) {
        this.f27120i += j4;
        a aVar = this.f27117f;
        if (aVar != null) {
            aVar.a(c(), this.f27120i, j4);
        }
    }

    private void e(long j4) {
        if (this.f27119h == j4) {
            return;
        }
        this.f27119h = j4;
        a aVar = this.f27117f;
        if (aVar != null) {
            aVar.a(c(), this.f27120i, 0L);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x006f A[Catch: IOException -> 0x0068, TryCatch #0 {IOException -> 0x0068, blocks: (B:27:0x0064, B:33:0x006f, B:35:0x007d, B:37:0x0085), top: B:43:0x0064 }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0085 A[Catch: IOException -> 0x0068, TRY_LEAVE, TryCatch #0 {IOException -> 0x0068, blocks: (B:27:0x0064, B:33:0x006f, B:35:0x007d, B:37:0x0085), top: B:43:0x0064 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private long f(long r10, long r12) throws java.io.IOException {
        /*
            r9 = this;
            long r0 = r10 + r12
            long r2 = r9.f27119h
            r4 = 1
            r5 = 0
            r6 = -1
            int r8 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r8 == 0) goto L13
            int r0 = (r12 > r6 ? 1 : (r12 == r6 ? 0 : -1))
            if (r0 != 0) goto L11
            goto L13
        L11:
            r0 = 0
            goto L14
        L13:
            r0 = 1
        L14:
            int r1 = (r12 > r6 ? 1 : (r12 == r6 ? 0 : -1))
            if (r1 == 0) goto L36
            com.google.android.exoplayer2.upstream.o r1 = r9.f27114c
            com.google.android.exoplayer2.upstream.o$b r1 = r1.a()
            com.google.android.exoplayer2.upstream.o$b r1 = r1.i(r10)
            com.google.android.exoplayer2.upstream.o$b r12 = r1.h(r12)
            com.google.android.exoplayer2.upstream.o r12 = r12.a()
            com.google.android.exoplayer2.upstream.cache.b r13 = r9.f27112a     // Catch: java.io.IOException -> L31
            long r12 = r13.a(r12)     // Catch: java.io.IOException -> L31
            goto L38
        L31:
            com.google.android.exoplayer2.upstream.cache.b r12 = r9.f27112a
            com.google.android.exoplayer2.util.z0.p(r12)
        L36:
            r12 = r6
            r4 = 0
        L38:
            if (r4 != 0) goto L5d
            r9.g()
            com.google.android.exoplayer2.upstream.o r12 = r9.f27114c
            com.google.android.exoplayer2.upstream.o$b r12 = r12.a()
            com.google.android.exoplayer2.upstream.o$b r12 = r12.i(r10)
            com.google.android.exoplayer2.upstream.o$b r12 = r12.h(r6)
            com.google.android.exoplayer2.upstream.o r12 = r12.a()
            com.google.android.exoplayer2.upstream.cache.b r13 = r9.f27112a     // Catch: java.io.IOException -> L56
            long r12 = r13.a(r12)     // Catch: java.io.IOException -> L56
            goto L5d
        L56:
            r10 = move-exception
            com.google.android.exoplayer2.upstream.cache.b r11 = r9.f27112a
            com.google.android.exoplayer2.util.z0.p(r11)
            throw r10
        L5d:
            if (r0 == 0) goto L6a
            int r1 = (r12 > r6 ? 1 : (r12 == r6 ? 0 : -1))
            if (r1 == 0) goto L6a
            long r12 = r12 + r10
            r9.e(r12)     // Catch: java.io.IOException -> L68
            goto L6a
        L68:
            r10 = move-exception
            goto L8b
        L6a:
            r12 = 0
            r13 = 0
        L6c:
            r1 = -1
            if (r12 == r1) goto L83
            r9.g()     // Catch: java.io.IOException -> L68
            com.google.android.exoplayer2.upstream.cache.b r12 = r9.f27112a     // Catch: java.io.IOException -> L68
            byte[] r2 = r9.f27116e     // Catch: java.io.IOException -> L68
            int r3 = r2.length     // Catch: java.io.IOException -> L68
            int r12 = r12.read(r2, r5, r3)     // Catch: java.io.IOException -> L68
            if (r12 == r1) goto L6c
            long r1 = (long) r12     // Catch: java.io.IOException -> L68
            r9.d(r1)     // Catch: java.io.IOException -> L68
            int r13 = r13 + r12
            goto L6c
        L83:
            if (r0 == 0) goto L91
            long r0 = (long) r13     // Catch: java.io.IOException -> L68
            long r10 = r10 + r0
            r9.e(r10)     // Catch: java.io.IOException -> L68
            goto L91
        L8b:
            com.google.android.exoplayer2.upstream.cache.b r11 = r9.f27112a
            com.google.android.exoplayer2.util.z0.p(r11)
            throw r10
        L91:
            com.google.android.exoplayer2.upstream.cache.b r10 = r9.f27112a
            r10.close()
            long r10 = (long) r13
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.upstream.cache.k.f(long, long):long");
    }

    private void g() throws InterruptedIOException {
        if (this.f27121j) {
            throw new InterruptedIOException();
        }
    }

    @WorkerThread
    public void a() throws IOException {
        g();
        Cache cache = this.f27113b;
        String str = this.f27115d;
        com.google.android.exoplayer2.upstream.o oVar = this.f27114c;
        this.f27120i = cache.d(str, oVar.f27294g, oVar.f27295h);
        com.google.android.exoplayer2.upstream.o oVar2 = this.f27114c;
        long j4 = oVar2.f27295h;
        if (j4 != -1) {
            this.f27119h = oVar2.f27294g + j4;
        } else {
            long a10 = o.a(this.f27113b.b(this.f27115d));
            if (a10 == -1) {
                a10 = -1;
            }
            this.f27119h = a10;
        }
        a aVar = this.f27117f;
        if (aVar != null) {
            aVar.a(c(), this.f27120i, 0L);
        }
        while (true) {
            long j10 = this.f27119h;
            if (j10 != -1 && this.f27118g >= j10) {
                return;
            }
            g();
            long j11 = this.f27119h;
            long f10 = this.f27113b.f(this.f27115d, this.f27118g, j11 == -1 ? Long.MAX_VALUE : j11 - this.f27118g);
            if (f10 > 0) {
                this.f27118g += f10;
            } else {
                long j12 = -f10;
                if (j12 == Long.MAX_VALUE) {
                    j12 = -1;
                }
                long j13 = this.f27118g;
                this.f27118g = j13 + f(j13, j12);
            }
        }
    }

    public void b() {
        this.f27121j = true;
    }
}

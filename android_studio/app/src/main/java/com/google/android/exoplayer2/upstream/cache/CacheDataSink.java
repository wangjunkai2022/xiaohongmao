package com.google.android.exoplayer2.upstream.cache;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.upstream.cache.Cache;
import com.google.android.exoplayer2.upstream.k;
import com.google.android.exoplayer2.util.k0;
import com.google.android.exoplayer2.util.z0;
import io.sentry.instrumentation.file.l;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* loaded from: classes2.dex */
public final class CacheDataSink implements com.google.android.exoplayer2.upstream.k {

    /* renamed from: k  reason: collision with root package name */
    public static final long f27026k = 5242880;

    /* renamed from: l  reason: collision with root package name */
    public static final int f27027l = 20480;

    /* renamed from: m  reason: collision with root package name */
    private static final long f27028m = 2097152;

    /* renamed from: n  reason: collision with root package name */
    private static final String f27029n = "CacheDataSink";

    /* renamed from: a  reason: collision with root package name */
    private final Cache f27030a;

    /* renamed from: b  reason: collision with root package name */
    private final long f27031b;

    /* renamed from: c  reason: collision with root package name */
    private final int f27032c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private com.google.android.exoplayer2.upstream.o f27033d;

    /* renamed from: e  reason: collision with root package name */
    private long f27034e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private File f27035f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private OutputStream f27036g;

    /* renamed from: h  reason: collision with root package name */
    private long f27037h;

    /* renamed from: i  reason: collision with root package name */
    private long f27038i;

    /* renamed from: j  reason: collision with root package name */
    private k0 f27039j;

    /* loaded from: classes2.dex */
    public static final class CacheDataSinkException extends Cache.CacheException {
        public CacheDataSinkException(IOException iOException) {
            super(iOException);
        }
    }

    /* loaded from: classes2.dex */
    public static final class a implements k.a {

        /* renamed from: a  reason: collision with root package name */
        private Cache f27040a;

        /* renamed from: b  reason: collision with root package name */
        private long f27041b = CacheDataSink.f27026k;

        /* renamed from: c  reason: collision with root package name */
        private int f27042c = CacheDataSink.f27027l;

        @Override // com.google.android.exoplayer2.upstream.k.a
        public com.google.android.exoplayer2.upstream.k a() {
            return new CacheDataSink((Cache) com.google.android.exoplayer2.util.a.g(this.f27040a), this.f27041b, this.f27042c);
        }

        public a b(int i4) {
            this.f27042c = i4;
            return this;
        }

        public a c(Cache cache) {
            this.f27040a = cache;
            return this;
        }

        public a d(long j4) {
            this.f27041b = j4;
            return this;
        }
    }

    public CacheDataSink(Cache cache, long j4) {
        this(cache, j4, f27027l);
    }

    private void b() throws IOException {
        OutputStream outputStream = this.f27036g;
        if (outputStream == null) {
            return;
        }
        try {
            outputStream.flush();
            z0.q(this.f27036g);
            this.f27036g = null;
            this.f27035f = null;
            this.f27030a.l((File) z0.k(this.f27035f), this.f27037h);
        } catch (Throwable th) {
            z0.q(this.f27036g);
            this.f27036g = null;
            this.f27035f = null;
            ((File) z0.k(this.f27035f)).delete();
            throw th;
        }
    }

    private void c(com.google.android.exoplayer2.upstream.o oVar) throws IOException {
        long j4 = oVar.f27295h;
        this.f27035f = this.f27030a.a((String) z0.k(oVar.f27296i), oVar.f27294g + this.f27038i, j4 != -1 ? Math.min(j4 - this.f27038i, this.f27034e) : -1L);
        File file = this.f27035f;
        FileOutputStream a10 = l.b.a(new FileOutputStream(file), file);
        if (this.f27032c > 0) {
            k0 k0Var = this.f27039j;
            if (k0Var == null) {
                this.f27039j = new k0(a10, this.f27032c);
            } else {
                k0Var.a(a10);
            }
            this.f27036g = this.f27039j;
        } else {
            this.f27036g = a10;
        }
        this.f27037h = 0L;
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public void a(com.google.android.exoplayer2.upstream.o oVar) throws CacheDataSinkException {
        com.google.android.exoplayer2.util.a.g(oVar.f27296i);
        if (oVar.f27295h == -1 && oVar.d(2)) {
            this.f27033d = null;
            return;
        }
        this.f27033d = oVar;
        this.f27034e = oVar.d(4) ? this.f27031b : Long.MAX_VALUE;
        this.f27038i = 0L;
        try {
            c(oVar);
        } catch (IOException e4) {
            throw new CacheDataSinkException(e4);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public void close() throws CacheDataSinkException {
        if (this.f27033d == null) {
            return;
        }
        try {
            b();
        } catch (IOException e4) {
            throw new CacheDataSinkException(e4);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public void write(byte[] bArr, int i4, int i10) throws CacheDataSinkException {
        com.google.android.exoplayer2.upstream.o oVar = this.f27033d;
        if (oVar == null) {
            return;
        }
        int i11 = 0;
        while (i11 < i10) {
            try {
                if (this.f27037h == this.f27034e) {
                    b();
                    c(oVar);
                }
                int min = (int) Math.min(i10 - i11, this.f27034e - this.f27037h);
                ((OutputStream) z0.k(this.f27036g)).write(bArr, i4 + i11, min);
                i11 += min;
                long j4 = min;
                this.f27037h += j4;
                this.f27038i += j4;
            } catch (IOException e4) {
                throw new CacheDataSinkException(e4);
            }
        }
    }

    public CacheDataSink(Cache cache, long j4, int i4) {
        com.google.android.exoplayer2.util.a.j(j4 > 0 || j4 == -1, "fragmentSize must be positive or C.LENGTH_UNSET.");
        int i10 = (j4 > (-1L) ? 1 : (j4 == (-1L) ? 0 : -1));
        if (i10 != 0 && j4 < 2097152) {
            com.google.android.exoplayer2.util.w.n(f27029n, "fragmentSize is below the minimum recommended value of 2097152. This may cause poor cache performance.");
        }
        this.f27030a = (Cache) com.google.android.exoplayer2.util.a.g(cache);
        this.f27031b = i10 == 0 ? Long.MAX_VALUE : j4;
        this.f27032c = i4;
    }
}

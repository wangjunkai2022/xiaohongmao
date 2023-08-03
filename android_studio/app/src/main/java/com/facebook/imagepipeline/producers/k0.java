package com.facebook.imagepipeline.producers;

import android.os.SystemClock;
import androidx.annotation.VisibleForTesting;
import com.facebook.imagepipeline.image.EncodedImageOrigin;
import com.facebook.imagepipeline.producers.l0;
import com.facebook.infer.annotation.Nullsafe;
import java.io.IOException;
import java.io.InputStream;
import java.util.Map;

/* compiled from: NetworkFetchProducer.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class k0 implements q0<com.facebook.imagepipeline.image.e> {

    /* renamed from: d  reason: collision with root package name */
    public static final String f13061d = "NetworkFetchProducer";

    /* renamed from: e  reason: collision with root package name */
    public static final String f13062e = "intermediate_result";

    /* renamed from: f  reason: collision with root package name */
    private static final int f13063f = 16384;
    @VisibleForTesting

    /* renamed from: g  reason: collision with root package name */
    static final long f13064g = 100;

    /* renamed from: a  reason: collision with root package name */
    protected final com.facebook.common.memory.g f13065a;

    /* renamed from: b  reason: collision with root package name */
    private final com.facebook.common.memory.a f13066b;

    /* renamed from: c  reason: collision with root package name */
    private final l0 f13067c;

    /* compiled from: NetworkFetchProducer.java */
    /* loaded from: classes.dex */
    class a implements l0.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ w f13068a;

        a(final w val$fetchState) {
            this.f13068a = val$fetchState;
        }

        @Override // com.facebook.imagepipeline.producers.l0.a
        public void a(Throwable throwable) {
            k0.this.l(this.f13068a, throwable);
        }

        @Override // com.facebook.imagepipeline.producers.l0.a
        public void b() {
            k0.this.k(this.f13068a);
        }

        @Override // com.facebook.imagepipeline.producers.l0.a
        public void c(InputStream response, int responseLength) throws IOException {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("NetworkFetcher->onResponse");
            }
            k0.this.m(this.f13068a, response, responseLength);
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
        }
    }

    public k0(com.facebook.common.memory.g pooledByteBufferFactory, com.facebook.common.memory.a byteArrayPool, l0 networkFetcher) {
        this.f13065a = pooledByteBufferFactory;
        this.f13066b = byteArrayPool;
        this.f13067c = networkFetcher;
    }

    protected static float e(int downloaded, int total) {
        return total > 0 ? downloaded / total : 1.0f - ((float) Math.exp((-downloaded) / 50000.0d));
    }

    @r7.h
    private Map<String, String> f(w fetchState, int byteSize) {
        if (fetchState.e().f(fetchState.b(), f13061d)) {
            return this.f13067c.d(fetchState, byteSize);
        }
        return null;
    }

    protected static void j(com.facebook.common.memory.i pooledOutputStream, int status, @r7.h com.facebook.imagepipeline.common.a responseBytesRange, l<com.facebook.imagepipeline.image.e> consumer, s0 context) {
        com.facebook.imagepipeline.image.e eVar;
        com.facebook.common.references.a D = com.facebook.common.references.a.D(pooledOutputStream.a());
        com.facebook.imagepipeline.image.e eVar2 = null;
        try {
            eVar = new com.facebook.imagepipeline.image.e(D);
        } catch (Throwable th) {
            th = th;
        }
        try {
            eVar.n0(responseBytesRange);
            eVar.d0();
            context.o(EncodedImageOrigin.NETWORK);
            consumer.c(eVar, status);
            com.facebook.imagepipeline.image.e.d(eVar);
            com.facebook.common.references.a.k(D);
        } catch (Throwable th2) {
            th = th2;
            eVar2 = eVar;
            com.facebook.imagepipeline.image.e.d(eVar2);
            com.facebook.common.references.a.k(D);
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k(w fetchState) {
        fetchState.e().c(fetchState.b(), f13061d, null);
        fetchState.a().b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(w fetchState, Throwable e4) {
        fetchState.e().k(fetchState.b(), f13061d, e4, null);
        fetchState.e().b(fetchState.b(), f13061d, false);
        fetchState.b().j("network");
        fetchState.a().a(e4);
    }

    private boolean n(w fetchState) {
        if (fetchState.b().l()) {
            return this.f13067c.c(fetchState);
        }
        return false;
    }

    @Override // com.facebook.imagepipeline.producers.q0
    public void b(l<com.facebook.imagepipeline.image.e> consumer, s0 context) {
        context.k().d(context, f13061d);
        w e4 = this.f13067c.e(consumer, context);
        this.f13067c.a(e4, new a(e4));
    }

    @VisibleForTesting
    protected long g() {
        return SystemClock.uptimeMillis();
    }

    protected void h(com.facebook.common.memory.i pooledOutputStream, w fetchState) {
        Map<String, String> f10 = f(fetchState, pooledOutputStream.size());
        u0 e4 = fetchState.e();
        e4.j(fetchState.b(), f13061d, f10);
        e4.b(fetchState.b(), f13061d, true);
        fetchState.b().j("network");
        j(pooledOutputStream, fetchState.f() | 1, fetchState.g(), fetchState.a(), fetchState.b());
    }

    protected void i(com.facebook.common.memory.i pooledOutputStream, w fetchState) {
        long g4 = g();
        if (!n(fetchState) || g4 - fetchState.d() < f13064g) {
            return;
        }
        fetchState.i(g4);
        fetchState.e().h(fetchState.b(), f13061d, f13062e);
        j(pooledOutputStream, fetchState.f(), fetchState.g(), fetchState.a(), fetchState.b());
    }

    protected void m(w fetchState, InputStream responseData, int responseContentLength) throws IOException {
        com.facebook.common.memory.i c10;
        if (responseContentLength > 0) {
            c10 = this.f13065a.f(responseContentLength);
        } else {
            c10 = this.f13065a.c();
        }
        byte[] bArr = this.f13066b.get(16384);
        while (true) {
            try {
                int read = responseData.read(bArr);
                if (read < 0) {
                    this.f13067c.b(fetchState, c10.size());
                    h(c10, fetchState);
                    return;
                } else if (read > 0) {
                    c10.write(bArr, 0, read);
                    i(c10, fetchState);
                    fetchState.a().d(e(c10.size(), responseContentLength));
                }
            } finally {
                this.f13066b.release(bArr);
                c10.close();
            }
        }
    }
}

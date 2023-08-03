package com.facebook.imagepipeline.backends.okhttp3;

import android.os.Looper;
import android.os.SystemClock;
import com.facebook.imagepipeline.producers.e;
import com.facebook.imagepipeline.producers.l;
import com.facebook.imagepipeline.producers.l0;
import com.facebook.imagepipeline.producers.s0;
import com.facebook.imagepipeline.producers.w;
import com.facebook.infer.annotation.Nullsafe;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import okhttp3.CacheControl;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import r7.h;

/* compiled from: OkHttpNetworkFetcher.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class c extends com.facebook.imagepipeline.producers.c<C0096c> {

    /* renamed from: d  reason: collision with root package name */
    private static final String f11886d = "queue_time";

    /* renamed from: e  reason: collision with root package name */
    private static final String f11887e = "fetch_time";

    /* renamed from: f  reason: collision with root package name */
    private static final String f11888f = "total_time";

    /* renamed from: g  reason: collision with root package name */
    private static final String f11889g = "image_size";

    /* renamed from: a  reason: collision with root package name */
    private final Call.Factory f11890a;
    @h

    /* renamed from: b  reason: collision with root package name */
    private final CacheControl f11891b;

    /* renamed from: c  reason: collision with root package name */
    private Executor f11892c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: OkHttpNetworkFetcher.java */
    /* loaded from: classes.dex */
    public class a extends e {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Call f11893a;

        /* compiled from: OkHttpNetworkFetcher.java */
        /* renamed from: com.facebook.imagepipeline.backends.okhttp3.c$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        class RunnableC0095a implements Runnable {
            RunnableC0095a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                a.this.f11893a.cancel();
            }
        }

        a(final Call val$call) {
            this.f11893a = val$call;
        }

        @Override // com.facebook.imagepipeline.producers.e, com.facebook.imagepipeline.producers.t0
        public void b() {
            if (Looper.myLooper() != Looper.getMainLooper()) {
                this.f11893a.cancel();
            } else {
                c.this.f11892c.execute(new RunnableC0095a());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: OkHttpNetworkFetcher.java */
    /* loaded from: classes.dex */
    public class b implements Callback {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ C0096c f11896a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ l0.a f11897b;

        b(final C0096c val$callback, final l0.a val$fetchState) {
            this.f11896a = val$callback;
            this.f11897b = val$fetchState;
        }

        @Override // okhttp3.Callback
        public void onFailure(Call call, IOException e4) {
            c.this.l(call, e4, this.f11897b);
        }

        @Override // okhttp3.Callback
        public void onResponse(Call call, Response response) throws IOException {
            this.f11896a.f11900g = SystemClock.elapsedRealtime();
            ResponseBody body = response.body();
            try {
                if (body == null) {
                    c.this.l(call, new IOException("Response body null: " + response), this.f11897b);
                    return;
                }
                try {
                } catch (Exception e4) {
                    c.this.l(call, e4, this.f11897b);
                }
                if (!response.isSuccessful()) {
                    c.this.l(call, new IOException("Unexpected HTTP code " + response), this.f11897b);
                    return;
                }
                com.facebook.imagepipeline.common.a c10 = com.facebook.imagepipeline.common.a.c(response.header(com.google.common.net.b.f34610b0));
                if (c10 != null && (c10.f12171a != 0 || c10.f12172b != Integer.MAX_VALUE)) {
                    this.f11896a.k(c10);
                    this.f11896a.j(8);
                }
                long contentLength = body.contentLength();
                if (contentLength < 0) {
                    contentLength = 0;
                }
                this.f11897b.c(body.byteStream(), (int) contentLength);
            } finally {
                body.close();
            }
        }
    }

    /* compiled from: OkHttpNetworkFetcher.java */
    /* renamed from: com.facebook.imagepipeline.backends.okhttp3.c$c  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0096c extends w {

        /* renamed from: f  reason: collision with root package name */
        public long f11899f;

        /* renamed from: g  reason: collision with root package name */
        public long f11900g;

        /* renamed from: h  reason: collision with root package name */
        public long f11901h;

        public C0096c(l<com.facebook.imagepipeline.image.e> consumer, s0 producerContext) {
            super(consumer, producerContext);
        }
    }

    public c(OkHttpClient okHttpClient) {
        this(okHttpClient, okHttpClient.dispatcher().executorService());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(final Call call, final Exception e4, final l0.a callback) {
        if (call.isCanceled()) {
            callback.b();
        } else {
            callback.a(e4);
        }
    }

    @Override // com.facebook.imagepipeline.producers.l0
    /* renamed from: h */
    public C0096c e(l<com.facebook.imagepipeline.image.e> consumer, s0 context) {
        return new C0096c(consumer, context);
    }

    @Override // com.facebook.imagepipeline.producers.l0
    /* renamed from: i */
    public void a(final C0096c fetchState, final l0.a callback) {
        fetchState.f11899f = SystemClock.elapsedRealtime();
        try {
            Request.Builder builder = new Request.Builder().url(fetchState.h().toString()).get();
            CacheControl cacheControl = this.f11891b;
            if (cacheControl != null) {
                builder.cacheControl(cacheControl);
            }
            com.facebook.imagepipeline.common.a e4 = fetchState.b().c().e();
            if (e4 != null) {
                builder.addHeader(com.google.common.net.b.G, e4.d());
            }
            j(fetchState, callback, builder.build());
        } catch (Exception e10) {
            callback.a(e10);
        }
    }

    protected void j(final C0096c fetchState, final l0.a callback, final Request request) {
        Call newCall = this.f11890a.newCall(request);
        fetchState.b().f(new a(newCall));
        newCall.enqueue(new b(fetchState, callback));
    }

    @Override // com.facebook.imagepipeline.producers.c, com.facebook.imagepipeline.producers.l0
    /* renamed from: k */
    public Map<String, String> d(C0096c fetchState, int byteSize) {
        HashMap hashMap = new HashMap(4);
        hashMap.put(f11886d, Long.toString(fetchState.f11900g - fetchState.f11899f));
        hashMap.put(f11887e, Long.toString(fetchState.f11901h - fetchState.f11900g));
        hashMap.put(f11888f, Long.toString(fetchState.f11901h - fetchState.f11899f));
        hashMap.put("image_size", Integer.toString(byteSize));
        return hashMap;
    }

    @Override // com.facebook.imagepipeline.producers.c, com.facebook.imagepipeline.producers.l0
    /* renamed from: m */
    public void b(C0096c fetchState, int byteSize) {
        fetchState.f11901h = SystemClock.elapsedRealtime();
    }

    public c(Call.Factory callFactory, Executor cancellationExecutor) {
        this(callFactory, cancellationExecutor, true);
    }

    public c(Call.Factory callFactory, Executor cancellationExecutor, boolean disableOkHttpCache) {
        this.f11890a = callFactory;
        this.f11892c = cancellationExecutor;
        this.f11891b = disableOkHttpCache ? new CacheControl.Builder().noStore().build() : null;
    }
}

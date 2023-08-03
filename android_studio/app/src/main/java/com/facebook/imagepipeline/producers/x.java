package com.facebook.imagepipeline.producers;

import android.net.Uri;
import androidx.annotation.VisibleForTesting;
import com.facebook.common.time.RealtimeSinceBootClock;
import com.facebook.imagepipeline.producers.l0;
import com.facebook.infer.annotation.Nullsafe;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

/* compiled from: HttpUrlConnectionNetworkFetcher.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class x extends com.facebook.imagepipeline.producers.c<c> {

    /* renamed from: f  reason: collision with root package name */
    private static final String f13264f = "queue_time";

    /* renamed from: g  reason: collision with root package name */
    private static final String f13265g = "fetch_time";

    /* renamed from: h  reason: collision with root package name */
    private static final String f13266h = "total_time";

    /* renamed from: i  reason: collision with root package name */
    private static final String f13267i = "image_size";

    /* renamed from: j  reason: collision with root package name */
    private static final int f13268j = 3;

    /* renamed from: k  reason: collision with root package name */
    private static final int f13269k = 5;

    /* renamed from: l  reason: collision with root package name */
    public static final int f13270l = 307;

    /* renamed from: m  reason: collision with root package name */
    public static final int f13271m = 308;

    /* renamed from: n  reason: collision with root package name */
    public static final int f13272n = 30000;

    /* renamed from: a  reason: collision with root package name */
    private int f13273a;
    @r7.h

    /* renamed from: b  reason: collision with root package name */
    private String f13274b;
    @r7.h

    /* renamed from: c  reason: collision with root package name */
    private final Map<String, String> f13275c;

    /* renamed from: d  reason: collision with root package name */
    private final ExecutorService f13276d;

    /* renamed from: e  reason: collision with root package name */
    private final s0.c f13277e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: HttpUrlConnectionNetworkFetcher.java */
    /* loaded from: classes.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ c f13278a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ l0.a f13279b;

        a(final c val$callback, final l0.a val$fetchState) {
            this.f13278a = val$callback;
            this.f13279b = val$fetchState;
        }

        @Override // java.lang.Runnable
        public void run() {
            x.this.j(this.f13278a, this.f13279b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: HttpUrlConnectionNetworkFetcher.java */
    /* loaded from: classes.dex */
    public class b extends e {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Future f13281a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ l0.a f13282b;

        b(final Future val$callback, final l0.a val$future) {
            this.f13281a = val$callback;
            this.f13282b = val$future;
        }

        @Override // com.facebook.imagepipeline.producers.e, com.facebook.imagepipeline.producers.t0
        public void b() {
            if (this.f13281a.cancel(false)) {
                this.f13282b.b();
            }
        }
    }

    /* compiled from: HttpUrlConnectionNetworkFetcher.java */
    /* loaded from: classes.dex */
    public static class c extends w {

        /* renamed from: f  reason: collision with root package name */
        private long f13284f;

        /* renamed from: g  reason: collision with root package name */
        private long f13285g;

        /* renamed from: h  reason: collision with root package name */
        private long f13286h;

        public c(l<com.facebook.imagepipeline.image.e> consumer, s0 producerContext) {
            super(consumer, producerContext);
        }
    }

    public x() {
        this((String) null, (Map<String, String>) null, RealtimeSinceBootClock.get());
    }

    private HttpURLConnection g(Uri uri, int maxRedirects) throws IOException {
        HttpURLConnection o9 = o(uri);
        String str = this.f13274b;
        if (str != null) {
            o9.setRequestProperty(com.google.common.net.b.M, str);
        }
        Map<String, String> map = this.f13275c;
        if (map != null) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                o9.setRequestProperty(entry.getKey(), entry.getValue());
            }
        }
        o9.setConnectTimeout(this.f13273a);
        int responseCode = o9.getResponseCode();
        if (m(responseCode)) {
            return o9;
        }
        if (l(responseCode)) {
            String headerField = o9.getHeaderField(com.google.common.net.b.f34636m0);
            o9.disconnect();
            Uri parse = headerField == null ? null : Uri.parse(headerField);
            String scheme = uri.getScheme();
            if (maxRedirects > 0 && parse != null && !com.facebook.common.internal.i.a(parse.getScheme(), scheme)) {
                return g(parse, maxRedirects - 1);
            }
            throw new IOException(maxRedirects == 0 ? h("URL %s follows too many redirects", uri.toString()) : h("URL %s returned %d without a valid redirect", uri.toString(), Integer.valueOf(responseCode)));
        }
        o9.disconnect();
        throw new IOException(String.format("Image URL %s returned HTTP code %d", uri.toString(), Integer.valueOf(responseCode)));
    }

    private static String h(String format, Object... args) {
        return String.format(Locale.getDefault(), format, args);
    }

    private static boolean l(int responseCode) {
        if (responseCode == 307 || responseCode == 308) {
            return true;
        }
        switch (responseCode) {
            case 300:
            case 301:
            case 302:
            case 303:
                return true;
            default:
                return false;
        }
    }

    private static boolean m(int responseCode) {
        return responseCode >= 200 && responseCode < 300;
    }

    @VisibleForTesting
    static HttpURLConnection o(Uri uri) throws IOException {
        return (HttpURLConnection) com.facebook.common.util.f.q(uri).openConnection();
    }

    @Override // com.facebook.imagepipeline.producers.l0
    /* renamed from: f */
    public c e(l<com.facebook.imagepipeline.image.e> consumer, s0 context) {
        return new c(consumer, context);
    }

    @Override // com.facebook.imagepipeline.producers.l0
    /* renamed from: i */
    public void a(final c fetchState, final l0.a callback) {
        fetchState.f13284f = this.f13277e.now();
        fetchState.b().f(new b(this.f13276d.submit(new a(fetchState, callback)), callback));
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0041 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @androidx.annotation.VisibleForTesting
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    void j(com.facebook.imagepipeline.producers.x.c r5, com.facebook.imagepipeline.producers.l0.a r6) {
        /*
            r4 = this;
            r0 = 0
            android.net.Uri r1 = r5.h()     // Catch: java.lang.Throwable -> L29 java.io.IOException -> L2c
            r2 = 5
            java.net.HttpURLConnection r1 = r4.g(r1, r2)     // Catch: java.lang.Throwable -> L29 java.io.IOException -> L2c
            s0.c r2 = r4.f13277e     // Catch: java.io.IOException -> L27 java.lang.Throwable -> L3e
            long r2 = r2.now()     // Catch: java.io.IOException -> L27 java.lang.Throwable -> L3e
            com.facebook.imagepipeline.producers.x.c.o(r5, r2)     // Catch: java.io.IOException -> L27 java.lang.Throwable -> L3e
            if (r1 == 0) goto L1d
            java.io.InputStream r0 = r1.getInputStream()     // Catch: java.io.IOException -> L27 java.lang.Throwable -> L3e
            r5 = -1
            r6.c(r0, r5)     // Catch: java.io.IOException -> L27 java.lang.Throwable -> L3e
        L1d:
            if (r0 == 0) goto L24
            r0.close()     // Catch: java.io.IOException -> L23
            goto L24
        L23:
        L24:
            if (r1 == 0) goto L3d
            goto L3a
        L27:
            r5 = move-exception
            goto L2e
        L29:
            r5 = move-exception
            r1 = r0
            goto L3f
        L2c:
            r5 = move-exception
            r1 = r0
        L2e:
            r6.a(r5)     // Catch: java.lang.Throwable -> L3e
            if (r0 == 0) goto L38
            r0.close()     // Catch: java.io.IOException -> L37
            goto L38
        L37:
        L38:
            if (r1 == 0) goto L3d
        L3a:
            r1.disconnect()
        L3d:
            return
        L3e:
            r5 = move-exception
        L3f:
            if (r0 == 0) goto L46
            r0.close()     // Catch: java.io.IOException -> L45
            goto L46
        L45:
        L46:
            if (r1 == 0) goto L4b
            r1.disconnect()
        L4b:
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.imagepipeline.producers.x.j(com.facebook.imagepipeline.producers.x$c, com.facebook.imagepipeline.producers.l0$a):void");
    }

    @Override // com.facebook.imagepipeline.producers.c, com.facebook.imagepipeline.producers.l0
    /* renamed from: k */
    public Map<String, String> d(c fetchState, int byteSize) {
        HashMap hashMap = new HashMap(4);
        hashMap.put(f13264f, Long.toString(fetchState.f13285g - fetchState.f13284f));
        hashMap.put(f13265g, Long.toString(fetchState.f13286h - fetchState.f13285g));
        hashMap.put(f13266h, Long.toString(fetchState.f13286h - fetchState.f13284f));
        hashMap.put("image_size", Integer.toString(byteSize));
        return hashMap;
    }

    @Override // com.facebook.imagepipeline.producers.c, com.facebook.imagepipeline.producers.l0
    /* renamed from: n */
    public void b(c fetchState, int byteSize) {
        fetchState.f13286h = this.f13277e.now();
    }

    public x(int httpConnectionTimeout) {
        this((String) null, (Map<String, String>) null, RealtimeSinceBootClock.get());
        this.f13273a = httpConnectionTimeout;
    }

    public x(String userAgent, int httpConnectionTimeout) {
        this(userAgent, (Map<String, String>) null, RealtimeSinceBootClock.get());
        this.f13273a = httpConnectionTimeout;
    }

    public x(String userAgent, @r7.h Map<String, String> requestHeaders, int httpConnectionTimeout) {
        this(userAgent, requestHeaders, RealtimeSinceBootClock.get());
        this.f13273a = httpConnectionTimeout;
    }

    @VisibleForTesting
    x(@r7.h String userAgent, @r7.h Map<String, String> requestHeaders, s0.c monotonicClock) {
        this.f13276d = Executors.newFixedThreadPool(3);
        this.f13277e = monotonicClock;
        this.f13275c = requestHeaders;
        this.f13274b = userAgent;
    }
}

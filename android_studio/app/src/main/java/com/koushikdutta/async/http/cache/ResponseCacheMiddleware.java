package com.koushikdutta.async.http.cache;

import android.net.Uri;
import android.util.Base64;
import c5.j;
import com.google.common.net.b;
import com.koushikdutta.async.AsyncSSLSocket;
import com.koushikdutta.async.AsyncServer;
import com.koushikdutta.async.AsyncSocket;
import com.koushikdutta.async.ByteBufferList;
import com.koushikdutta.async.DataEmitter;
import com.koushikdutta.async.FilteredDataEmitter;
import com.koushikdutta.async.Util;
import com.koushikdutta.async.callback.CompletedCallback;
import com.koushikdutta.async.callback.WritableCallback;
import com.koushikdutta.async.future.Cancellable;
import com.koushikdutta.async.future.SimpleCancellable;
import com.koushikdutta.async.http.AsyncHttpClient;
import com.koushikdutta.async.http.AsyncHttpClientMiddleware;
import com.koushikdutta.async.http.AsyncHttpGet;
import com.koushikdutta.async.http.AsyncHttpRequest;
import com.koushikdutta.async.http.Headers;
import com.koushikdutta.async.http.SimpleMiddleware;
import com.koushikdutta.async.util.Allocator;
import com.koushikdutta.async.util.Charsets;
import com.koushikdutta.async.util.FileCache;
import com.koushikdutta.async.util.StreamUtility;
import io.sentry.instrumentation.file.l;
import java.io.BufferedWriter;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.net.CacheResponse;
import java.nio.ByteBuffer;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import javax.net.ssl.SSLEngine;

/* loaded from: classes3.dex */
public class ResponseCacheMiddleware extends SimpleMiddleware {

    /* renamed from: j  reason: collision with root package name */
    public static final int f44805j = 0;

    /* renamed from: k  reason: collision with root package name */
    public static final int f44806k = 1;

    /* renamed from: l  reason: collision with root package name */
    public static final int f44807l = 2;

    /* renamed from: m  reason: collision with root package name */
    public static final String f44808m = "X-Served-From";

    /* renamed from: n  reason: collision with root package name */
    public static final String f44809n = "conditional-cache";

    /* renamed from: o  reason: collision with root package name */
    public static final String f44810o = "cache";

    /* renamed from: p  reason: collision with root package name */
    private static final String f44811p = "AsyncHttpCache";

    /* renamed from: a  reason: collision with root package name */
    private boolean f44812a = true;

    /* renamed from: b  reason: collision with root package name */
    private int f44813b;

    /* renamed from: c  reason: collision with root package name */
    private int f44814c;

    /* renamed from: d  reason: collision with root package name */
    private FileCache f44815d;

    /* renamed from: e  reason: collision with root package name */
    private AsyncServer f44816e;

    /* renamed from: f  reason: collision with root package name */
    private int f44817f;

    /* renamed from: g  reason: collision with root package name */
    private int f44818g;

    /* renamed from: h  reason: collision with root package name */
    private int f44819h;

    /* renamed from: i  reason: collision with root package name */
    private int f44820i;

    /* loaded from: classes3.dex */
    private static class BodyCacher extends FilteredDataEmitter {

        /* renamed from: h  reason: collision with root package name */
        EntryEditor f44824h;

        /* renamed from: i  reason: collision with root package name */
        ByteBufferList f44825i;

        private BodyCacher() {
        }

        @Override // com.koushikdutta.async.FilteredDataEmitter, com.koushikdutta.async.DataEmitter
        public void close() {
            w0();
            super.close();
        }

        @Override // com.koushikdutta.async.FilteredDataEmitter, com.koushikdutta.async.callback.DataCallback
        public void s(DataEmitter dataEmitter, ByteBufferList byteBufferList) {
            ByteBufferList byteBufferList2 = this.f44825i;
            if (byteBufferList2 != null) {
                super.s(dataEmitter, byteBufferList2);
                if (this.f44825i.P() > 0) {
                    return;
                }
                this.f44825i = null;
            }
            ByteBufferList byteBufferList3 = new ByteBufferList();
            try {
                try {
                    EntryEditor entryEditor = this.f44824h;
                    if (entryEditor != null) {
                        FileOutputStream c10 = entryEditor.c(1);
                        if (c10 != null) {
                            while (!byteBufferList.x()) {
                                ByteBuffer Q = byteBufferList.Q();
                                try {
                                    ByteBufferList.X(c10, Q);
                                    byteBufferList3.b(Q);
                                } catch (Throwable th) {
                                    byteBufferList3.b(Q);
                                    throw th;
                                }
                            }
                        } else {
                            w0();
                        }
                    }
                } catch (Exception unused) {
                    w0();
                }
                super.s(dataEmitter, byteBufferList);
                if (this.f44824h == null || byteBufferList.P() <= 0) {
                    return;
                }
                ByteBufferList byteBufferList4 = new ByteBufferList();
                this.f44825i = byteBufferList4;
                byteBufferList.j(byteBufferList4);
            } finally {
                byteBufferList.j(byteBufferList3);
                byteBufferList3.j(byteBufferList);
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.koushikdutta.async.DataEmitterBase
        public void v0(Exception exc) {
            super.v0(exc);
            if (exc != null) {
                w0();
            }
        }

        public void w0() {
            EntryEditor entryEditor = this.f44824h;
            if (entryEditor != null) {
                entryEditor.a();
                this.f44824h = null;
            }
        }

        public void x0() {
            EntryEditor entryEditor = this.f44824h;
            if (entryEditor != null) {
                entryEditor.b();
                this.f44824h = null;
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class CacheData {

        /* renamed from: a  reason: collision with root package name */
        FileInputStream[] f44826a;

        /* renamed from: b  reason: collision with root package name */
        EntryCacheResponse f44827b;

        /* renamed from: c  reason: collision with root package name */
        long f44828c;

        /* renamed from: d  reason: collision with root package name */
        ResponseHeaders f44829d;
    }

    /* loaded from: classes3.dex */
    private static class CachedBodyEmitter extends FilteredDataEmitter {

        /* renamed from: h  reason: collision with root package name */
        EntryCacheResponse f44830h;

        /* renamed from: j  reason: collision with root package name */
        private boolean f44832j;

        /* renamed from: l  reason: collision with root package name */
        boolean f44834l;

        /* renamed from: i  reason: collision with root package name */
        ByteBufferList f44831i = new ByteBufferList();

        /* renamed from: k  reason: collision with root package name */
        private Allocator f44833k = new Allocator();

        /* renamed from: m  reason: collision with root package name */
        Runnable f44835m = new Runnable() { // from class: com.koushikdutta.async.http.cache.ResponseCacheMiddleware.CachedBodyEmitter.1
            @Override // java.lang.Runnable
            public void run() {
                CachedBodyEmitter.this.x0();
            }
        };

        public CachedBodyEmitter(EntryCacheResponse entryCacheResponse, long j4) {
            this.f44830h = entryCacheResponse;
            this.f44833k.e((int) j4);
        }

        @Override // com.koushikdutta.async.FilteredDataEmitter, com.koushikdutta.async.DataEmitter
        public void close() {
            if (b().A() != Thread.currentThread()) {
                b().c0(new Runnable() { // from class: com.koushikdutta.async.http.cache.ResponseCacheMiddleware.CachedBodyEmitter.2
                    @Override // java.lang.Runnable
                    public void run() {
                        CachedBodyEmitter.this.close();
                    }
                });
                return;
            }
            this.f44831i.O();
            StreamUtility.a(this.f44830h.getBody());
            super.close();
        }

        @Override // com.koushikdutta.async.FilteredDataEmitter, com.koushikdutta.async.DataEmitter
        public boolean i() {
            return this.f44832j;
        }

        @Override // com.koushikdutta.async.FilteredDataEmitter, com.koushikdutta.async.DataEmitter
        public void k() {
            this.f44832j = false;
            w0();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.koushikdutta.async.DataEmitterBase
        public void v0(Exception exc) {
            if (this.f44834l) {
                StreamUtility.a(this.f44830h.getBody());
                super.v0(exc);
            }
        }

        void w0() {
            b().c0(this.f44835m);
        }

        void x0() {
            if (this.f44831i.P() > 0) {
                super.s(this, this.f44831i);
                if (this.f44831i.P() > 0) {
                    return;
                }
            }
            try {
                ByteBuffer a10 = this.f44833k.a();
                int read = this.f44830h.getBody().read(a10.array(), a10.arrayOffset(), a10.capacity());
                if (read == -1) {
                    ByteBufferList.M(a10);
                    this.f44834l = true;
                    v0(null);
                    return;
                }
                this.f44833k.g(read);
                a10.limit(read);
                this.f44831i.b(a10);
                super.s(this, this.f44831i);
                if (this.f44831i.P() > 0) {
                    return;
                }
                b().e0(this.f44835m, 10L);
            } catch (IOException e4) {
                this.f44834l = true;
                v0(e4);
            }
        }
    }

    /* loaded from: classes3.dex */
    private class CachedSSLSocket extends CachedSocket implements AsyncSSLSocket {
        public CachedSSLSocket(EntryCacheResponse entryCacheResponse, long j4) {
            super(entryCacheResponse, j4);
        }

        @Override // com.koushikdutta.async.AsyncSSLSocket
        public SSLEngine l() {
            return null;
        }

        @Override // com.koushikdutta.async.AsyncSSLSocket
        public X509Certificate[] m() {
            return null;
        }
    }

    /* loaded from: classes3.dex */
    private class CachedSocket extends CachedBodyEmitter implements AsyncSocket {

        /* renamed from: n  reason: collision with root package name */
        boolean f44839n;

        /* renamed from: o  reason: collision with root package name */
        boolean f44840o;

        /* renamed from: p  reason: collision with root package name */
        CompletedCallback f44841p;

        public CachedSocket(EntryCacheResponse entryCacheResponse, long j4) {
            super(entryCacheResponse, j4);
            this.f44834l = true;
        }

        @Override // com.koushikdutta.async.DataSink
        public void a0(ByteBufferList byteBufferList) {
            byteBufferList.O();
        }

        @Override // com.koushikdutta.async.FilteredDataEmitter, com.koushikdutta.async.DataEmitter, com.koushikdutta.async.DataSink
        public AsyncServer b() {
            return ResponseCacheMiddleware.this.f44816e;
        }

        @Override // com.koushikdutta.async.http.cache.ResponseCacheMiddleware.CachedBodyEmitter, com.koushikdutta.async.FilteredDataEmitter, com.koushikdutta.async.DataEmitter
        public void close() {
            this.f44840o = false;
        }

        @Override // com.koushikdutta.async.DataSink
        public void e0(WritableCallback writableCallback) {
        }

        @Override // com.koushikdutta.async.DataSink
        public CompletedCallback f0() {
            return this.f44841p;
        }

        @Override // com.koushikdutta.async.DataSink
        public boolean isOpen() {
            return this.f44840o;
        }

        @Override // com.koushikdutta.async.DataSink
        public void j() {
        }

        @Override // com.koushikdutta.async.DataSink
        public void j0(CompletedCallback completedCallback) {
            this.f44841p = completedCallback;
        }

        @Override // com.koushikdutta.async.DataSink
        public WritableCallback v() {
            return null;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.koushikdutta.async.http.cache.ResponseCacheMiddleware.CachedBodyEmitter, com.koushikdutta.async.DataEmitterBase
        public void v0(Exception exc) {
            super.v0(exc);
            if (this.f44839n) {
                return;
            }
            this.f44839n = true;
            CompletedCallback completedCallback = this.f44841p;
            if (completedCallback != null) {
                completedCallback.g(exc);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class EntryCacheResponse extends CacheResponse {

        /* renamed from: a  reason: collision with root package name */
        private final Entry f44850a;

        /* renamed from: b  reason: collision with root package name */
        private final FileInputStream f44851b;

        public EntryCacheResponse(Entry entry, FileInputStream fileInputStream) {
            this.f44850a = entry;
            this.f44851b = fileInputStream;
        }

        @Override // java.net.CacheResponse
        /* renamed from: a */
        public FileInputStream getBody() {
            return this.f44851b;
        }

        @Override // java.net.CacheResponse
        public Map<String, List<String>> getHeaders() {
            return this.f44850a.f44846d.t();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class EntryEditor {

        /* renamed from: a  reason: collision with root package name */
        String f44852a;

        /* renamed from: b  reason: collision with root package name */
        File[] f44853b;

        /* renamed from: c  reason: collision with root package name */
        FileOutputStream[] f44854c = new FileOutputStream[2];

        /* renamed from: d  reason: collision with root package name */
        boolean f44855d;

        public EntryEditor(String str) {
            this.f44852a = str;
            this.f44853b = ResponseCacheMiddleware.this.f44815d.m(2);
        }

        void a() {
            StreamUtility.a(this.f44854c);
            FileCache.q(this.f44853b);
            if (this.f44855d) {
                return;
            }
            ResponseCacheMiddleware.l(ResponseCacheMiddleware.this);
            this.f44855d = true;
        }

        void b() {
            StreamUtility.a(this.f44854c);
            if (this.f44855d) {
                return;
            }
            ResponseCacheMiddleware.this.f44815d.b(this.f44852a, this.f44853b);
            ResponseCacheMiddleware.k(ResponseCacheMiddleware.this);
            this.f44855d = true;
        }

        FileOutputStream c(int i4) throws IOException {
            FileOutputStream[] fileOutputStreamArr = this.f44854c;
            if (fileOutputStreamArr[i4] == null) {
                File file = this.f44853b[i4];
                fileOutputStreamArr[i4] = l.b.a(new FileOutputStream(file), file);
            }
            return this.f44854c[i4];
        }
    }

    private ResponseCacheMiddleware() {
    }

    static /* synthetic */ int k(ResponseCacheMiddleware responseCacheMiddleware) {
        int i4 = responseCacheMiddleware.f44813b;
        responseCacheMiddleware.f44813b = i4 + 1;
        return i4;
    }

    static /* synthetic */ int l(ResponseCacheMiddleware responseCacheMiddleware) {
        int i4 = responseCacheMiddleware.f44814c;
        responseCacheMiddleware.f44814c = i4 + 1;
        return i4;
    }

    public static ResponseCacheMiddleware m(AsyncHttpClient asyncHttpClient, File file, long j4) throws IOException {
        for (AsyncHttpClientMiddleware asyncHttpClientMiddleware : asyncHttpClient.B()) {
            if (asyncHttpClientMiddleware instanceof ResponseCacheMiddleware) {
                throw new IOException("Response cache already added to http client");
            }
        }
        ResponseCacheMiddleware responseCacheMiddleware = new ResponseCacheMiddleware();
        responseCacheMiddleware.f44816e = asyncHttpClient.D();
        responseCacheMiddleware.f44815d = new FileCache(file, j4, false);
        asyncHttpClient.G(responseCacheMiddleware);
        return responseCacheMiddleware;
    }

    @Override // com.koushikdutta.async.http.SimpleMiddleware, com.koushikdutta.async.http.AsyncHttpClientMiddleware
    public Cancellable e(final AsyncHttpClientMiddleware.GetSocketData getSocketData) {
        FileInputStream[] fileInputStreamArr;
        RequestHeaders requestHeaders = new RequestHeaders(getSocketData.f44551b.t(), RawHeaders.e(getSocketData.f44551b.i().i()));
        getSocketData.f44550a.c("request-headers", requestHeaders);
        if (this.f44815d != null && this.f44812a && !requestHeaders.z()) {
            try {
                fileInputStreamArr = this.f44815d.h(FileCache.v(getSocketData.f44551b.t()), 2);
                try {
                    if (fileInputStreamArr == null) {
                        this.f44819h++;
                        return null;
                    }
                    long available = fileInputStreamArr[1].available();
                    Entry entry = new Entry(fileInputStreamArr[0]);
                    if (!entry.d(getSocketData.f44551b.t(), getSocketData.f44551b.m(), getSocketData.f44551b.i().i())) {
                        this.f44819h++;
                        StreamUtility.a(fileInputStreamArr);
                        return null;
                    }
                    EntryCacheResponse entryCacheResponse = new EntryCacheResponse(entry, fileInputStreamArr[1]);
                    try {
                        Map<String, List<String>> headers = entryCacheResponse.getHeaders();
                        FileInputStream body = entryCacheResponse.getBody();
                        if (headers != null && body != null) {
                            RawHeaders e4 = RawHeaders.e(headers);
                            ResponseHeaders responseHeaders = new ResponseHeaders(getSocketData.f44551b.t(), e4);
                            e4.q(b.f34609b, String.valueOf(available));
                            e4.p("Content-Encoding");
                            e4.p(b.C0);
                            responseHeaders.J(System.currentTimeMillis(), System.currentTimeMillis());
                            ResponseSource g4 = responseHeaders.g(System.currentTimeMillis(), requestHeaders);
                            if (g4 == ResponseSource.CACHE) {
                                getSocketData.f44551b.z("Response retrieved from cache");
                                final CachedSocket cachedSSLSocket = entry.c() ? new CachedSSLSocket(entryCacheResponse, available) : new CachedSocket(entryCacheResponse, available);
                                cachedSSLSocket.f44831i.b(ByteBuffer.wrap(e4.s().getBytes()));
                                this.f44816e.c0(new Runnable() { // from class: com.koushikdutta.async.http.cache.ResponseCacheMiddleware.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        getSocketData.f44542c.a(null, cachedSSLSocket);
                                        cachedSSLSocket.x0();
                                    }
                                });
                                this.f44818g++;
                                getSocketData.f44550a.c("socket-owner", this);
                                SimpleCancellable simpleCancellable = new SimpleCancellable();
                                simpleCancellable.i();
                                return simpleCancellable;
                            } else if (g4 == ResponseSource.CONDITIONAL_CACHE) {
                                getSocketData.f44551b.z("Response may be served from conditional cache");
                                CacheData cacheData = new CacheData();
                                cacheData.f44826a = fileInputStreamArr;
                                cacheData.f44828c = available;
                                cacheData.f44829d = responseHeaders;
                                cacheData.f44827b = entryCacheResponse;
                                getSocketData.f44550a.c("cache-data", cacheData);
                                return null;
                            } else {
                                getSocketData.f44551b.v("Response can not be served from cache");
                                this.f44819h++;
                                StreamUtility.a(fileInputStreamArr);
                                return null;
                            }
                        }
                        this.f44819h++;
                        StreamUtility.a(fileInputStreamArr);
                        return null;
                    } catch (Exception unused) {
                        this.f44819h++;
                        StreamUtility.a(fileInputStreamArr);
                        return null;
                    }
                } catch (IOException unused2) {
                    this.f44819h++;
                    StreamUtility.a(fileInputStreamArr);
                    return null;
                }
            } catch (IOException unused3) {
                fileInputStreamArr = null;
            }
        } else {
            this.f44819h++;
            return null;
        }
    }

    @Override // com.koushikdutta.async.http.SimpleMiddleware, com.koushikdutta.async.http.AsyncHttpClientMiddleware
    public void f(AsyncHttpClientMiddleware.OnBodyDecoderData onBodyDecoderData) {
        if (((CachedSocket) Util.e(onBodyDecoderData.f44546f, CachedSocket.class)) != null) {
            onBodyDecoderData.f44547g.f().n(f44808m, f44810o);
            return;
        }
        CacheData cacheData = (CacheData) onBodyDecoderData.f44550a.a("cache-data");
        RawHeaders e4 = RawHeaders.e(onBodyDecoderData.f44547g.f().i());
        e4.p(b.f34609b);
        e4.r(String.format(Locale.ENGLISH, "%s %s %s", onBodyDecoderData.f44547g.protocol(), Integer.valueOf(onBodyDecoderData.f44547g.c()), onBodyDecoderData.f44547g.message()));
        ResponseHeaders responseHeaders = new ResponseHeaders(onBodyDecoderData.f44551b.t(), e4);
        onBodyDecoderData.f44550a.c("response-headers", responseHeaders);
        if (cacheData != null) {
            if (cacheData.f44829d.L(responseHeaders)) {
                onBodyDecoderData.f44551b.z("Serving response from conditional cache");
                ResponseHeaders h4 = cacheData.f44829d.h(responseHeaders);
                onBodyDecoderData.f44547g.P(new Headers(h4.p().t()));
                onBodyDecoderData.f44547g.h(h4.p().j());
                onBodyDecoderData.f44547g.O(h4.p().k());
                onBodyDecoderData.f44547g.f().n(f44808m, f44809n);
                this.f44817f++;
                CachedBodyEmitter cachedBodyEmitter = new CachedBodyEmitter(cacheData.f44827b, cacheData.f44828c);
                cachedBodyEmitter.G(onBodyDecoderData.f44545j);
                onBodyDecoderData.f44545j = cachedBodyEmitter;
                cachedBodyEmitter.w0();
                return;
            }
            onBodyDecoderData.f44550a.d("cache-data");
            StreamUtility.a(cacheData.f44826a);
        }
        if (this.f44812a) {
            RequestHeaders requestHeaders = (RequestHeaders) onBodyDecoderData.f44550a.a("request-headers");
            if (requestHeaders != null && responseHeaders.A(requestHeaders) && onBodyDecoderData.f44551b.m().equals(AsyncHttpGet.f44554o)) {
                String v9 = FileCache.v(onBodyDecoderData.f44551b.t());
                Entry entry = new Entry(onBodyDecoderData.f44551b.t(), requestHeaders.k().g(responseHeaders.w()), onBodyDecoderData.f44551b, responseHeaders.p());
                BodyCacher bodyCacher = new BodyCacher();
                EntryEditor entryEditor = new EntryEditor(v9);
                try {
                    entry.g(entryEditor);
                    entryEditor.c(1);
                    bodyCacher.f44824h = entryEditor;
                    bodyCacher.G(onBodyDecoderData.f44545j);
                    onBodyDecoderData.f44545j = bodyCacher;
                    onBodyDecoderData.f44550a.c("body-cacher", bodyCacher);
                    onBodyDecoderData.f44551b.v("Caching response");
                    this.f44820i++;
                    return;
                } catch (Exception unused) {
                    entryEditor.a();
                    this.f44819h++;
                    return;
                }
            }
            this.f44819h++;
            onBodyDecoderData.f44551b.v("Response is not cacheable");
        }
    }

    @Override // com.koushikdutta.async.http.SimpleMiddleware, com.koushikdutta.async.http.AsyncHttpClientMiddleware
    public void h(AsyncHttpClientMiddleware.OnResponseCompleteData onResponseCompleteData) {
        FileInputStream[] fileInputStreamArr;
        CacheData cacheData = (CacheData) onResponseCompleteData.f44550a.a("cache-data");
        if (cacheData != null && (fileInputStreamArr = cacheData.f44826a) != null) {
            StreamUtility.a(fileInputStreamArr);
        }
        CachedSocket cachedSocket = (CachedSocket) Util.e(onResponseCompleteData.f44546f, CachedSocket.class);
        if (cachedSocket != null) {
            StreamUtility.a(cachedSocket.f44830h.getBody());
        }
        BodyCacher bodyCacher = (BodyCacher) onResponseCompleteData.f44550a.a("body-cacher");
        if (bodyCacher != null) {
            if (onResponseCompleteData.f44552k != null) {
                bodyCacher.w0();
            } else {
                bodyCacher.x0();
            }
        }
    }

    public void n() {
        FileCache fileCache = this.f44815d;
        if (fileCache != null) {
            fileCache.a();
        }
    }

    public int o() {
        return this.f44818g;
    }

    public int p() {
        return this.f44820i;
    }

    public boolean q() {
        return this.f44812a;
    }

    public int r() {
        return this.f44817f;
    }

    public FileCache s() {
        return this.f44815d;
    }

    public int t() {
        return this.f44819h;
    }

    public void u(Uri uri) {
        s().p(FileCache.v(uri));
    }

    public void v(boolean z9) {
        this.f44812a = z9;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static final class Entry {

        /* renamed from: a  reason: collision with root package name */
        private final String f44843a;

        /* renamed from: b  reason: collision with root package name */
        private final RawHeaders f44844b;

        /* renamed from: c  reason: collision with root package name */
        private final String f44845c;

        /* renamed from: d  reason: collision with root package name */
        private final RawHeaders f44846d;

        /* renamed from: e  reason: collision with root package name */
        private final String f44847e;

        /* renamed from: f  reason: collision with root package name */
        private final Certificate[] f44848f;

        /* renamed from: g  reason: collision with root package name */
        private final Certificate[] f44849g;

        public Entry(InputStream inputStream) throws IOException {
            StrictLineReader strictLineReader;
            Throwable th;
            try {
                strictLineReader = new StrictLineReader(inputStream, Charsets.f45142a);
            } catch (Throwable th2) {
                strictLineReader = null;
                th = th2;
            }
            try {
                this.f44843a = strictLineReader.d();
                this.f44845c = strictLineReader.d();
                this.f44844b = new RawHeaders();
                int readInt = strictLineReader.readInt();
                for (int i4 = 0; i4 < readInt; i4++) {
                    this.f44844b.c(strictLineReader.d());
                }
                RawHeaders rawHeaders = new RawHeaders();
                this.f44846d = rawHeaders;
                rawHeaders.r(strictLineReader.d());
                int readInt2 = strictLineReader.readInt();
                for (int i10 = 0; i10 < readInt2; i10++) {
                    this.f44846d.c(strictLineReader.d());
                }
                this.f44847e = null;
                this.f44848f = null;
                this.f44849g = null;
                StreamUtility.a(strictLineReader, inputStream);
            } catch (Throwable th3) {
                th = th3;
                StreamUtility.a(strictLineReader, inputStream);
                throw th;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean c() {
            return this.f44843a.startsWith(j.f4022b);
        }

        private Certificate[] e(StrictLineReader strictLineReader) throws IOException {
            int readInt = strictLineReader.readInt();
            if (readInt == -1) {
                return null;
            }
            try {
                CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
                Certificate[] certificateArr = new Certificate[readInt];
                for (int i4 = 0; i4 < readInt; i4++) {
                    certificateArr[i4] = certificateFactory.generateCertificate(new ByteArrayInputStream(Base64.decode(strictLineReader.d(), 0)));
                }
                return certificateArr;
            } catch (CertificateException e4) {
                throw new IOException(e4.getMessage());
            }
        }

        private void f(Writer writer, Certificate[] certificateArr) throws IOException {
            if (certificateArr == null) {
                writer.write("-1\n");
                return;
            }
            try {
                writer.write(Integer.toString(certificateArr.length) + '\n');
                for (Certificate certificate : certificateArr) {
                    writer.write(Base64.encodeToString(certificate.getEncoded(), 0) + '\n');
                }
            } catch (CertificateEncodingException e4) {
                throw new IOException(e4.getMessage());
            }
        }

        public boolean d(Uri uri, String str, Map<String, List<String>> map) {
            return this.f44843a.equals(uri.toString()) && this.f44845c.equals(str) && new ResponseHeaders(uri, this.f44846d).M(this.f44844b.t(), map);
        }

        public void g(EntryEditor entryEditor) throws IOException {
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(entryEditor.c(0), Charsets.f45143b));
            bufferedWriter.write(this.f44843a + '\n');
            bufferedWriter.write(this.f44845c + '\n');
            bufferedWriter.write(Integer.toString(this.f44844b.n()) + '\n');
            for (int i4 = 0; i4 < this.f44844b.n(); i4++) {
                bufferedWriter.write(this.f44844b.h(i4) + ": " + this.f44844b.m(i4) + '\n');
            }
            bufferedWriter.write(this.f44846d.l() + '\n');
            bufferedWriter.write(Integer.toString(this.f44846d.n()) + '\n');
            for (int i10 = 0; i10 < this.f44846d.n(); i10++) {
                bufferedWriter.write(this.f44846d.h(i10) + ": " + this.f44846d.m(i10) + '\n');
            }
            if (c()) {
                bufferedWriter.write(10);
                bufferedWriter.write(this.f44847e + '\n');
                f(bufferedWriter, this.f44848f);
                f(bufferedWriter, this.f44849g);
            }
            bufferedWriter.close();
        }

        public Entry(Uri uri, RawHeaders rawHeaders, AsyncHttpRequest asyncHttpRequest, RawHeaders rawHeaders2) {
            this.f44843a = uri.toString();
            this.f44844b = rawHeaders;
            this.f44845c = asyncHttpRequest.m();
            this.f44846d = rawHeaders2;
            this.f44847e = null;
            this.f44848f = null;
            this.f44849g = null;
        }
    }
}

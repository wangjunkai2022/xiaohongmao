package com.koushikdutta.async.http.server;

import android.text.TextUtils;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.mlkit.common.MlKitException;
import com.koushikdutta.async.AsyncServer;
import com.koushikdutta.async.AsyncSocket;
import com.koushikdutta.async.ByteBufferList;
import com.koushikdutta.async.DataSink;
import com.koushikdutta.async.Util;
import com.koushikdutta.async.callback.CompletedCallback;
import com.koushikdutta.async.callback.DataCallback;
import com.koushikdutta.async.callback.WritableCallback;
import com.koushikdutta.async.http.AsyncHttpHead;
import com.koushikdutta.async.http.AsyncHttpResponse;
import com.koushikdutta.async.http.Headers;
import com.koushikdutta.async.http.HttpUtil;
import com.koushikdutta.async.http.Protocol;
import com.koushikdutta.async.http.filter.ChunkedOutputFilter;
import com.koushikdutta.async.parser.AsyncParser;
import com.koushikdutta.async.util.StreamUtility;
import io.sentry.instrumentation.file.h;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class AsyncHttpServerResponseImpl implements AsyncHttpServerResponse {

    /* renamed from: c  reason: collision with root package name */
    AsyncSocket f44999c;

    /* renamed from: d  reason: collision with root package name */
    AsyncHttpServerRequestImpl f45000d;

    /* renamed from: f  reason: collision with root package name */
    DataSink f45002f;

    /* renamed from: g  reason: collision with root package name */
    WritableCallback f45003g;

    /* renamed from: h  reason: collision with root package name */
    boolean f45004h;

    /* renamed from: i  reason: collision with root package name */
    boolean f45005i;

    /* renamed from: l  reason: collision with root package name */
    CompletedCallback f45008l;

    /* renamed from: a  reason: collision with root package name */
    private Headers f44997a = new Headers();

    /* renamed from: b  reason: collision with root package name */
    private long f44998b = -1;

    /* renamed from: e  reason: collision with root package name */
    boolean f45001e = false;

    /* renamed from: j  reason: collision with root package name */
    int f45006j = 200;

    /* renamed from: k  reason: collision with root package name */
    String f45007k = "HTTP/1.1";

    /* JADX INFO: Access modifiers changed from: package-private */
    public AsyncHttpServerResponseImpl(AsyncSocket asyncSocket, AsyncHttpServerRequestImpl asyncHttpServerRequestImpl) {
        this.f44999c = asyncSocket;
        this.f45000d = asyncHttpServerRequestImpl;
        if (HttpUtil.d(Protocol.HTTP_1_1, asyncHttpServerRequestImpl.d())) {
            this.f44997a.n(com.google.common.net.b.f34639o, "Keep-Alive");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void B(boolean z9, Exception exc) {
        if (exc != null) {
            W(exc);
            return;
        }
        if (z9) {
            ChunkedOutputFilter chunkedOutputFilter = new ChunkedOutputFilter(this.f44999c);
            chunkedOutputFilter.B(0);
            this.f45002f = chunkedOutputFilter;
        } else {
            this.f45002f = this.f44999c;
        }
        this.f45002f.j0(this.f45008l);
        this.f45008l = null;
        this.f45002f.e0(this.f45003g);
        this.f45003g = null;
        if (this.f45004h) {
            j();
        } else {
            b().c0(new Runnable() { // from class: com.koushikdutta.async.http.server.f
                @Override // java.lang.Runnable
                public final void run() {
                    AsyncHttpServerResponseImpl.this.C();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void C() {
        WritableCallback v9 = v();
        if (v9 != null) {
            v9.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void F(Exception exc) {
        S();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void G(InputStream inputStream, Exception exc) {
        StreamUtility.a(inputStream);
        S();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void K(AsyncHttpResponse asyncHttpResponse, Exception exc) {
        asyncHttpResponse.X(new CompletedCallback.NullCompletedCallback());
        asyncHttpResponse.b0(new DataCallback.NullDataCallback());
        j();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void N(ByteBufferList byteBufferList, String str) {
        long P = byteBufferList.P();
        this.f44998b = P;
        this.f44997a.n(com.google.common.net.b.f34609b, Long.toString(P));
        if (str != null) {
            this.f44997a.n("Content-Type", str);
        }
        Util.m(this, byteBufferList, new CompletedCallback() { // from class: com.koushikdutta.async.http.server.b
            @Override // com.koushikdutta.async.callback.CompletedCallback
            public final void g(Exception exc) {
                AsyncHttpServerResponseImpl.this.F(exc);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void O(Exception exc) {
        j();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void P(final InputStream inputStream) {
        Util.h(inputStream, this.f44998b, this, new CompletedCallback() { // from class: com.koushikdutta.async.http.server.d
            @Override // com.koushikdutta.async.callback.CompletedCallback
            public final void g(Exception exc) {
                AsyncHttpServerResponseImpl.this.G(inputStream, exc);
            }
        });
    }

    @Override // com.koushikdutta.async.http.server.AsyncHttpServerResponse
    public void D(JSONArray jSONArray) {
        Q("application/json; charset=utf-8", jSONArray.toString());
    }

    @Override // com.koushikdutta.async.http.server.AsyncHttpServerResponse
    public void I(final AsyncHttpResponse asyncHttpResponse) {
        h(asyncHttpResponse.c());
        asyncHttpResponse.f().m(com.google.common.net.b.C0);
        asyncHttpResponse.f().m("Content-Encoding");
        asyncHttpResponse.f().m(com.google.common.net.b.f34639o);
        d().b(asyncHttpResponse.f());
        asyncHttpResponse.f().n(com.google.common.net.b.f34639o, "close");
        Util.f(asyncHttpResponse, this, new CompletedCallback() { // from class: com.koushikdutta.async.http.server.c
            @Override // com.koushikdutta.async.callback.CompletedCallback
            public final void g(Exception exc) {
                AsyncHttpServerResponseImpl.this.K(asyncHttpResponse, exc);
            }
        });
    }

    @Override // com.koushikdutta.async.http.server.AsyncHttpServerResponse
    public void L(final InputStream inputStream, long j4) {
        long j10;
        long j11 = j4 - 1;
        String g4 = this.f45000d.d().g(com.google.common.net.b.G);
        if (g4 != null) {
            String[] split = g4.split("=");
            if (split.length == 2 && "bytes".equals(split[0])) {
                String[] split2 = split[1].split("-");
                try {
                    if (split2.length <= 2) {
                        long parseLong = !TextUtils.isEmpty(split2[0]) ? Long.parseLong(split2[0]) : 0L;
                        if (split2.length == 2 && !TextUtils.isEmpty(split2[1])) {
                            j11 = Long.parseLong(split2[1]);
                        }
                        h(MlKitException.CODE_SCANNER_PIPELINE_INFERENCE_ERROR);
                        d().n(com.google.common.net.b.f34610b0, String.format(Locale.ENGLISH, "bytes %d-%d/%d", Long.valueOf(parseLong), Long.valueOf(j11), Long.valueOf(j4)));
                        j10 = parseLong;
                    } else {
                        throw new MalformedRangeException();
                    }
                } catch (Exception unused) {
                    h(TypedValues.Cycle.TYPE_PATH_ROTATE);
                    j();
                    return;
                }
            } else {
                h(TypedValues.Cycle.TYPE_PATH_ROTATE);
                j();
                return;
            }
        } else {
            j10 = 0;
        }
        try {
            if (j10 == inputStream.skip(j10)) {
                long j12 = (j11 - j10) + 1;
                this.f44998b = j12;
                this.f44997a.n(com.google.common.net.b.f34609b, String.valueOf(j12));
                this.f44997a.n(com.google.common.net.b.N, "bytes");
                if (this.f45000d.getMethod().equals(AsyncHttpHead.f44555o)) {
                    U();
                    S();
                    return;
                } else if (this.f44998b == 0) {
                    U();
                    StreamUtility.a(inputStream);
                    S();
                    return;
                } else {
                    b().c0(new Runnable() { // from class: com.koushikdutta.async.http.server.h
                        @Override // java.lang.Runnable
                        public final void run() {
                            AsyncHttpServerResponseImpl.this.P(inputStream);
                        }
                    });
                    return;
                }
            }
            throw new StreamSkipException("skip failed to skip requested amount");
        } catch (Exception unused2) {
            h(500);
            j();
        }
    }

    @Override // com.koushikdutta.async.http.server.AsyncHttpServerResponse
    public void Q(String str, String str2) {
        try {
            t(str, str2.getBytes("UTF-8"));
        } catch (UnsupportedEncodingException e4) {
            throw new AssertionError(e4);
        }
    }

    @Override // com.koushikdutta.async.http.server.AsyncHttpServerResponse
    public <T> void R(AsyncParser<T> asyncParser, T t9) {
        this.f44997a.n("Content-Type", asyncParser.b());
        asyncParser.c(this, t9, new CompletedCallback() { // from class: com.koushikdutta.async.http.server.a
            @Override // com.koushikdutta.async.callback.CompletedCallback
            public final void g(Exception exc) {
                AsyncHttpServerResponseImpl.this.O(exc);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void S() {
        this.f45005i = true;
    }

    @Override // com.koushikdutta.async.http.server.AsyncHttpServerResponse
    public void T(String str, ByteBuffer byteBuffer) {
        s0(str, new ByteBufferList(byteBuffer));
    }

    @Override // com.koushikdutta.async.http.server.AsyncHttpServerResponse
    public void U() {
        z();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void W(Exception exc) {
    }

    @Override // com.koushikdutta.async.http.server.AsyncHttpServerResponse
    public AsyncSocket a() {
        return this.f44999c;
    }

    @Override // com.koushikdutta.async.DataSink
    public void a0(ByteBufferList byteBufferList) {
        DataSink dataSink;
        if (!this.f45001e) {
            z();
        }
        if (byteBufferList.P() == 0 || (dataSink = this.f45002f) == null) {
            return;
        }
        dataSink.a0(byteBufferList);
    }

    @Override // com.koushikdutta.async.DataSink
    public AsyncServer b() {
        return this.f44999c.b();
    }

    @Override // com.koushikdutta.async.http.server.AsyncHttpServerResponse
    public int c() {
        return this.f45006j;
    }

    @Override // com.koushikdutta.async.http.server.AsyncHttpServerResponse
    public void c0(AsyncSocket asyncSocket) {
        this.f44999c = asyncSocket;
    }

    @Override // com.koushikdutta.async.http.server.AsyncHttpServerResponse
    public Headers d() {
        return this.f44997a;
    }

    @Override // com.koushikdutta.async.http.server.AsyncHttpServerResponse
    public AsyncHttpServerRequest e() {
        return this.f45000d;
    }

    @Override // com.koushikdutta.async.DataSink
    public void e0(WritableCallback writableCallback) {
        DataSink dataSink = this.f45002f;
        if (dataSink != null) {
            dataSink.e0(writableCallback);
        } else {
            this.f45003g = writableCallback;
        }
    }

    @Override // com.koushikdutta.async.DataSink
    public CompletedCallback f0() {
        DataSink dataSink = this.f45002f;
        if (dataSink != null) {
            return dataSink.f0();
        }
        return this.f45008l;
    }

    @Override // com.koushikdutta.async.http.server.AsyncHttpServerResponse, com.koushikdutta.async.callback.CompletedCallback
    public void g(Exception exc) {
        j();
    }

    @Override // com.koushikdutta.async.http.server.AsyncHttpServerResponse
    public AsyncHttpServerResponse h(int i4) {
        this.f45006j = i4;
        return this;
    }

    @Override // com.koushikdutta.async.DataSink
    public boolean isOpen() {
        DataSink dataSink = this.f45002f;
        if (dataSink != null) {
            return dataSink.isOpen();
        }
        return this.f44999c.isOpen();
    }

    @Override // com.koushikdutta.async.http.server.AsyncHttpServerResponse, com.koushikdutta.async.DataSink
    public void j() {
        if (this.f45004h) {
            return;
        }
        this.f45004h = true;
        boolean z9 = this.f45001e;
        if (z9 && this.f45002f == null) {
            return;
        }
        if (!z9) {
            this.f44997a.k(com.google.common.net.b.C0);
        }
        DataSink dataSink = this.f45002f;
        if (dataSink instanceof ChunkedOutputFilter) {
            dataSink.j();
        } else if (!this.f45001e) {
            if (!this.f45000d.getMethod().equalsIgnoreCase(AsyncHttpHead.f44555o)) {
                Q("text/html", "");
                return;
            }
            U();
            S();
        } else {
            S();
        }
    }

    @Override // com.koushikdutta.async.DataSink
    public void j0(CompletedCallback completedCallback) {
        DataSink dataSink = this.f45002f;
        if (dataSink != null) {
            dataSink.j0(completedCallback);
        } else {
            this.f45008l = completedCallback;
        }
    }

    @Override // com.koushikdutta.async.http.server.AsyncHttpServerResponse
    public String k0() {
        return this.f45007k;
    }

    @Override // com.koushikdutta.async.http.server.AsyncHttpServerResponse
    public void p(String str) {
        this.f44997a.n("Content-Type", str);
    }

    @Override // com.koushikdutta.async.http.server.AsyncHttpServerResponse
    public void r(JSONObject jSONObject) {
        Q("application/json; charset=utf-8", jSONObject.toString());
    }

    @Override // com.koushikdutta.async.http.server.AsyncHttpServerResponse
    public void s0(final String str, final ByteBufferList byteBufferList) {
        b().c0(new Runnable() { // from class: com.koushikdutta.async.http.server.g
            @Override // java.lang.Runnable
            public final void run() {
                AsyncHttpServerResponseImpl.this.N(byteBufferList, str);
            }
        });
    }

    @Override // com.koushikdutta.async.http.server.AsyncHttpServerResponse
    public void send(String str) {
        String g4 = this.f44997a.g("Content-Type");
        if (g4 == null) {
            g4 = "text/html; charset=utf-8";
        }
        Q(g4, str);
    }

    @Override // com.koushikdutta.async.http.server.AsyncHttpServerResponse
    public void t(String str, byte[] bArr) {
        s0(str, new ByteBufferList(bArr));
    }

    public String toString() {
        if (this.f44997a == null) {
            return super.toString();
        }
        return this.f44997a.o(String.format(Locale.ENGLISH, "%s %s %s", this.f45007k, Integer.valueOf(this.f45006j), AsyncHttpServer.E(this.f45006j)));
    }

    @Override // com.koushikdutta.async.http.server.AsyncHttpServerResponse
    public void u(String str) {
        this.f45007k = str;
    }

    @Override // com.koushikdutta.async.http.server.AsyncHttpServerResponse
    public void u0(String str) {
        h(302);
        this.f44997a.n(com.google.common.net.b.f34636m0, str);
        j();
    }

    @Override // com.koushikdutta.async.DataSink
    public WritableCallback v() {
        DataSink dataSink = this.f45002f;
        if (dataSink != null) {
            return dataSink.v();
        }
        return this.f45003g;
    }

    @Override // com.koushikdutta.async.http.server.AsyncHttpServerResponse
    public void x(File file) {
        try {
            if (this.f44997a.g("Content-Type") == null) {
                this.f44997a.n("Content-Type", AsyncHttpServerRouter.q(file.getAbsolutePath()));
            }
            L(new BufferedInputStream(h.b.a(new FileInputStream(file), file), 64000), file.length());
        } catch (FileNotFoundException unused) {
            h(404);
            j();
        }
    }

    void z() {
        final boolean z9;
        if (this.f45001e) {
            return;
        }
        this.f45001e = true;
        String g4 = this.f44997a.g(com.google.common.net.b.C0);
        if ("".equals(g4)) {
            this.f44997a.m(com.google.common.net.b.C0);
        }
        boolean z10 = ("Chunked".equalsIgnoreCase(g4) || g4 == null) && !"close".equalsIgnoreCase(this.f44997a.g(com.google.common.net.b.f34639o));
        if (this.f44998b < 0) {
            String g10 = this.f44997a.g(com.google.common.net.b.f34609b);
            if (!TextUtils.isEmpty(g10)) {
                this.f44998b = Long.valueOf(g10).longValue();
            }
        }
        if (this.f44998b >= 0 || !z10) {
            z9 = false;
        } else {
            this.f44997a.n(com.google.common.net.b.C0, "Chunked");
            z9 = true;
        }
        Util.n(this.f44999c, this.f44997a.o(String.format(Locale.ENGLISH, "%s %s %s", this.f45007k, Integer.valueOf(this.f45006j), AsyncHttpServer.E(this.f45006j))).getBytes(), new CompletedCallback() { // from class: com.koushikdutta.async.http.server.e
            @Override // com.koushikdutta.async.callback.CompletedCallback
            public final void g(Exception exc) {
                AsyncHttpServerResponseImpl.this.B(z9, exc);
            }
        });
    }
}

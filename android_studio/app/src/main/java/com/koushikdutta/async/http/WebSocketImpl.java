package com.koushikdutta.async.http;

import android.text.TextUtils;
import android.util.Base64;
import com.koushikdutta.async.AsyncServer;
import com.koushikdutta.async.AsyncSocket;
import com.koushikdutta.async.BufferedDataSink;
import com.koushikdutta.async.ByteBufferList;
import com.koushikdutta.async.Util;
import com.koushikdutta.async.callback.CompletedCallback;
import com.koushikdutta.async.callback.DataCallback;
import com.koushikdutta.async.callback.WritableCallback;
import com.koushikdutta.async.http.WebSocket;
import com.koushikdutta.async.http.server.AsyncHttpServerRequest;
import com.koushikdutta.async.http.server.AsyncHttpServerResponse;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.util.LinkedList;
import java.util.UUID;

/* loaded from: classes3.dex */
public class WebSocketImpl implements WebSocket {

    /* renamed from: k  reason: collision with root package name */
    static final String f44686k = "258EAFA5-E914-47DA-95CA-C5AB0DC85B11";

    /* renamed from: a  reason: collision with root package name */
    private LinkedList<ByteBufferList> f44687a;

    /* renamed from: b  reason: collision with root package name */
    private AsyncSocket f44688b;

    /* renamed from: c  reason: collision with root package name */
    BufferedDataSink f44689c;

    /* renamed from: d  reason: collision with root package name */
    String f44690d;

    /* renamed from: e  reason: collision with root package name */
    HybiParser f44691e;

    /* renamed from: f  reason: collision with root package name */
    CompletedCallback f44692f;

    /* renamed from: g  reason: collision with root package name */
    private WebSocket.StringCallback f44693g;

    /* renamed from: h  reason: collision with root package name */
    private DataCallback f44694h;

    /* renamed from: i  reason: collision with root package name */
    private WebSocket.PingCallback f44695i;

    /* renamed from: j  reason: collision with root package name */
    private WebSocket.PongCallback f44696j;

    public WebSocketImpl(AsyncHttpServerRequest asyncHttpServerRequest, AsyncHttpServerResponse asyncHttpServerResponse) {
        this(asyncHttpServerRequest.a());
        String g4 = asyncHttpServerRequest.d().g("Sec-WebSocket-Key");
        String K = K(g4 + "258EAFA5-E914-47DA-95CA-C5AB0DC85B11");
        asyncHttpServerRequest.d().g(com.google.common.net.b.E);
        asyncHttpServerResponse.h(101);
        asyncHttpServerResponse.d().n(com.google.common.net.b.L, "WebSocket");
        asyncHttpServerResponse.d().n(com.google.common.net.b.f34639o, com.google.common.net.b.L);
        asyncHttpServerResponse.d().n("Sec-WebSocket-Accept", K);
        String g10 = asyncHttpServerRequest.d().g("Sec-WebSocket-Protocol");
        if (!TextUtils.isEmpty(g10)) {
            asyncHttpServerResponse.d().n("Sec-WebSocket-Protocol", g10);
        }
        asyncHttpServerResponse.U();
        B0(false, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void A0(String str) {
        this.f44689c.a0(new ByteBufferList(this.f44691e.t(str)));
    }

    private void B0(boolean z9, boolean z10) {
        HybiParser hybiParser = new HybiParser(this.f44688b) { // from class: com.koushikdutta.async.http.WebSocketImpl.1
            @Override // com.koushikdutta.async.http.HybiParser
            protected void A(String str) {
                if (WebSocketImpl.this.f44693g != null) {
                    WebSocketImpl.this.f44693g.a(str);
                }
            }

            @Override // com.koushikdutta.async.http.HybiParser
            protected void B(byte[] bArr) {
                WebSocketImpl.this.p0(new ByteBufferList(bArr));
            }

            @Override // com.koushikdutta.async.http.HybiParser
            protected void C(String str) {
                if (WebSocketImpl.this.f44695i != null) {
                    WebSocketImpl.this.f44695i.a(str);
                }
            }

            @Override // com.koushikdutta.async.http.HybiParser
            protected void D(String str) {
                if (WebSocketImpl.this.f44696j != null) {
                    WebSocketImpl.this.f44696j.a(str);
                }
            }

            @Override // com.koushikdutta.async.http.HybiParser
            protected void K(Exception exc) {
                CompletedCallback completedCallback = WebSocketImpl.this.f44692f;
                if (completedCallback != null) {
                    completedCallback.g(exc);
                }
            }

            @Override // com.koushikdutta.async.http.HybiParser
            protected void M(byte[] bArr) {
                WebSocketImpl.this.f44689c.a0(new ByteBufferList(bArr));
            }

            @Override // com.koushikdutta.async.http.HybiParser
            protected void z(int i4, String str) {
                WebSocketImpl.this.f44688b.close();
            }
        };
        this.f44691e = hybiParser;
        hybiParser.O(z9);
        this.f44691e.N(z10);
        if (this.f44688b.i()) {
            this.f44688b.k();
        }
    }

    private static byte[] C0(UUID uuid) {
        byte[] bArr = new byte[16];
        ByteBuffer.wrap(bArr).asLongBuffer().put(new long[]{uuid.getMostSignificantBits(), uuid.getLeastSignificantBits()});
        return bArr;
    }

    private static String K(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
            messageDigest.update(str.getBytes("iso-8859-1"), 0, str.length());
            return Base64.encodeToString(messageDigest.digest(), 2);
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p0(ByteBufferList byteBufferList) {
        if (this.f44687a == null) {
            Util.a(this, byteBufferList);
            if (byteBufferList.P() > 0) {
                LinkedList<ByteBufferList> linkedList = new LinkedList<>();
                this.f44687a = linkedList;
                linkedList.add(byteBufferList);
                return;
            }
            return;
        }
        while (!i()) {
            ByteBufferList remove = this.f44687a.remove();
            Util.a(this, remove);
            if (remove.P() > 0) {
                this.f44687a.add(0, remove);
            }
        }
        if (this.f44687a.size() == 0) {
            this.f44687a = null;
        }
    }

    public static void t0(AsyncHttpRequest asyncHttpRequest, String... strArr) {
        Headers i4 = asyncHttpRequest.i();
        String encodeToString = Base64.encodeToString(C0(UUID.randomUUID()), 2);
        i4.n("Sec-WebSocket-Version", "13");
        i4.n("Sec-WebSocket-Key", encodeToString);
        i4.n("Sec-WebSocket-Extensions", "x-webkit-deflate-frame");
        i4.n(com.google.common.net.b.f34639o, com.google.common.net.b.L);
        i4.n(com.google.common.net.b.L, "websocket");
        if (strArr != null) {
            for (String str : strArr) {
                i4.a("Sec-WebSocket-Protocol", str);
            }
        }
        i4.n(com.google.common.net.b.f34618e, "no-cache");
        i4.n(com.google.common.net.b.f34606a, "no-cache");
        if (TextUtils.isEmpty(asyncHttpRequest.i().g(com.google.common.net.b.M))) {
            asyncHttpRequest.i().n(com.google.common.net.b.M, "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.15 Safari/537.36");
        }
    }

    public static WebSocket v0(Headers headers, AsyncHttpResponse asyncHttpResponse) {
        String g4;
        String g10;
        if (asyncHttpResponse == null || asyncHttpResponse.c() != 101 || !"websocket".equalsIgnoreCase(asyncHttpResponse.f().g(com.google.common.net.b.L)) || (g4 = asyncHttpResponse.f().g("Sec-WebSocket-Accept")) == null || (g10 = headers.g("Sec-WebSocket-Key")) == null) {
            return null;
        }
        if (g4.equalsIgnoreCase(K(g10 + "258EAFA5-E914-47DA-95CA-C5AB0DC85B11").trim())) {
            String g11 = headers.g("Sec-WebSocket-Extensions");
            boolean z9 = false;
            if (g11 != null && g11.equals("x-webkit-deflate-frame")) {
                z9 = true;
            }
            WebSocketImpl webSocketImpl = new WebSocketImpl(asyncHttpResponse.W());
            webSocketImpl.f44690d = asyncHttpResponse.f().g("Sec-WebSocket-Protocol");
            webSocketImpl.B0(true, z9);
            return webSocketImpl;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void w0(String str) {
        this.f44689c.a0(new ByteBufferList(ByteBuffer.wrap(this.f44691e.I(str))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void x0(String str) {
        this.f44689c.a0(new ByteBufferList(ByteBuffer.wrap(this.f44691e.J(str))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void y0(byte[] bArr) {
        this.f44689c.a0(new ByteBufferList(this.f44691e.u(bArr)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void z0(byte[] bArr, int i4, int i10) {
        this.f44689c.a0(new ByteBufferList(this.f44691e.v(bArr, i4, i10)));
    }

    @Override // com.koushikdutta.async.http.WebSocket
    public void A(final String str) {
        b().c0(new Runnable() { // from class: com.koushikdutta.async.http.l
            @Override // java.lang.Runnable
            public final void run() {
                WebSocketImpl.this.x0(str);
            }
        });
    }

    @Override // com.koushikdutta.async.DataEmitter
    public CompletedCallback B() {
        return this.f44692f;
    }

    @Override // com.koushikdutta.async.http.WebSocket
    public void H(WebSocket.StringCallback stringCallback) {
        this.f44693g = stringCallback;
    }

    @Override // com.koushikdutta.async.http.WebSocket
    public void J(final byte[] bArr) {
        b().c0(new Runnable() { // from class: com.koushikdutta.async.http.n
            @Override // java.lang.Runnable
            public final void run() {
                WebSocketImpl.this.y0(bArr);
            }
        });
    }

    @Override // com.koushikdutta.async.http.WebSocket
    public WebSocket.StringCallback M() {
        return this.f44693g;
    }

    @Override // com.koushikdutta.async.http.WebSocket
    public void V(WebSocket.PingCallback pingCallback) {
        this.f44695i = pingCallback;
    }

    @Override // com.koushikdutta.async.DataEmitter
    public void X(CompletedCallback completedCallback) {
        this.f44692f = completedCallback;
    }

    @Override // com.koushikdutta.async.http.WebSocket
    public String Y() {
        return this.f44690d;
    }

    @Override // com.koushikdutta.async.http.WebSocket
    public WebSocket.PongCallback Z() {
        return this.f44696j;
    }

    @Override // com.koushikdutta.async.http.WebSocket
    public AsyncSocket a() {
        return this.f44688b;
    }

    @Override // com.koushikdutta.async.DataSink
    public void a0(ByteBufferList byteBufferList) {
        J(byteBufferList.p());
    }

    @Override // com.koushikdutta.async.AsyncSocket, com.koushikdutta.async.DataEmitter, com.koushikdutta.async.DataSink
    public AsyncServer b() {
        return this.f44688b.b();
    }

    @Override // com.koushikdutta.async.DataEmitter
    public void b0(DataCallback dataCallback) {
        this.f44694h = dataCallback;
    }

    @Override // com.koushikdutta.async.DataEmitter
    public void close() {
        this.f44688b.close();
    }

    @Override // com.koushikdutta.async.DataSink
    public void e0(WritableCallback writableCallback) {
        this.f44689c.e0(writableCallback);
    }

    @Override // com.koushikdutta.async.DataSink
    public CompletedCallback f0() {
        return this.f44688b.f0();
    }

    @Override // com.koushikdutta.async.DataEmitter
    public boolean h0() {
        return false;
    }

    @Override // com.koushikdutta.async.DataEmitter
    public boolean i() {
        return this.f44688b.i();
    }

    @Override // com.koushikdutta.async.DataSink
    public boolean isOpen() {
        return this.f44688b.isOpen();
    }

    @Override // com.koushikdutta.async.DataSink
    public void j() {
        this.f44688b.j();
    }

    @Override // com.koushikdutta.async.DataSink
    public void j0(CompletedCallback completedCallback) {
        this.f44688b.j0(completedCallback);
    }

    @Override // com.koushikdutta.async.DataEmitter
    public void k() {
        this.f44688b.k();
    }

    @Override // com.koushikdutta.async.DataEmitter
    public String n() {
        return null;
    }

    @Override // com.koushikdutta.async.http.WebSocket
    public void n0(final byte[] bArr, final int i4, final int i10) {
        b().c0(new Runnable() { // from class: com.koushikdutta.async.http.o
            @Override // java.lang.Runnable
            public final void run() {
                WebSocketImpl.this.z0(bArr, i4, i10);
            }
        });
    }

    @Override // com.koushikdutta.async.DataEmitter
    public void pause() {
        this.f44688b.pause();
    }

    @Override // com.koushikdutta.async.http.WebSocket
    public void ping(final String str) {
        b().c0(new Runnable() { // from class: com.koushikdutta.async.http.m
            @Override // java.lang.Runnable
            public final void run() {
                WebSocketImpl.this.w0(str);
            }
        });
    }

    @Override // com.koushikdutta.async.http.WebSocket
    public boolean q0() {
        return this.f44689c.y() > 0;
    }

    @Override // com.koushikdutta.async.DataEmitter
    public DataCallback r0() {
        return this.f44694h;
    }

    @Override // com.koushikdutta.async.http.WebSocket
    public void send(final String str) {
        b().c0(new Runnable() { // from class: com.koushikdutta.async.http.k
            @Override // java.lang.Runnable
            public final void run() {
                WebSocketImpl.this.A0(str);
            }
        });
    }

    @Override // com.koushikdutta.async.DataSink
    public WritableCallback v() {
        return this.f44689c.v();
    }

    @Override // com.koushikdutta.async.http.WebSocket
    public void w(WebSocket.PongCallback pongCallback) {
        this.f44696j = pongCallback;
    }

    public WebSocketImpl(AsyncSocket asyncSocket) {
        this.f44688b = asyncSocket;
        this.f44689c = new BufferedDataSink(asyncSocket);
    }
}

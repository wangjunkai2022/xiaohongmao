package com.koushikdutta.async.http;

import android.net.Uri;
import com.koushikdutta.async.AsyncSocket;
import com.koushikdutta.async.ByteBufferList;
import com.koushikdutta.async.DataEmitter;
import com.koushikdutta.async.callback.CompletedCallback;
import com.koushikdutta.async.callback.ConnectCallback;
import com.koushikdutta.async.callback.DataCallback;
import com.koushikdutta.async.future.Cancellable;
import com.koushikdutta.async.future.FailCallback;
import com.koushikdutta.async.future.Future;
import com.koushikdutta.async.future.FutureCallback;
import com.koushikdutta.async.future.Futures;
import com.koushikdutta.async.future.SimpleCancellable;
import com.koushikdutta.async.future.SimpleFuture;
import com.koushikdutta.async.future.ThenFutureCallback;
import com.koushikdutta.async.http.AsyncHttpClientMiddleware;
import com.koushikdutta.async.util.ArrayDeque;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.util.Hashtable;
import java.util.Locale;

/* loaded from: classes3.dex */
public class AsyncSocketMiddleware extends SimpleMiddleware {

    /* renamed from: a  reason: collision with root package name */
    String f44603a;

    /* renamed from: b  reason: collision with root package name */
    int f44604b;

    /* renamed from: c  reason: collision with root package name */
    int f44605c;

    /* renamed from: d  reason: collision with root package name */
    protected AsyncHttpClient f44606d;

    /* renamed from: e  reason: collision with root package name */
    boolean f44607e;

    /* renamed from: f  reason: collision with root package name */
    String f44608f;

    /* renamed from: g  reason: collision with root package name */
    int f44609g;

    /* renamed from: h  reason: collision with root package name */
    InetSocketAddress f44610h;

    /* renamed from: i  reason: collision with root package name */
    Hashtable<String, ConnectionInfo> f44611i;

    /* renamed from: j  reason: collision with root package name */
    int f44612j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class ConnectionInfo {

        /* renamed from: a  reason: collision with root package name */
        int f44621a;

        /* renamed from: b  reason: collision with root package name */
        ArrayDeque<AsyncHttpClientMiddleware.GetSocketData> f44622b = new ArrayDeque<>();

        /* renamed from: c  reason: collision with root package name */
        ArrayDeque<IdleSocketHolder> f44623c = new ArrayDeque<>();

        ConnectionInfo() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class IdleSocketHolder {

        /* renamed from: a  reason: collision with root package name */
        AsyncSocket f44624a;

        /* renamed from: b  reason: collision with root package name */
        long f44625b = System.currentTimeMillis();

        public IdleSocketHolder(AsyncSocket asyncSocket) {
            this.f44624a = asyncSocket;
        }
    }

    public AsyncSocketMiddleware(AsyncHttpClient asyncHttpClient, String str, int i4) {
        this.f44605c = 300000;
        this.f44611i = new Hashtable<>();
        this.f44612j = Integer.MAX_VALUE;
        this.f44606d = asyncHttpClient;
        this.f44603a = str;
        this.f44604b = i4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A(String str) {
        ConnectionInfo connectionInfo = this.f44611i.get(str);
        if (connectionInfo == null) {
            return;
        }
        while (!connectionInfo.f44623c.isEmpty()) {
            IdleSocketHolder peekLast = connectionInfo.f44623c.peekLast();
            AsyncSocket asyncSocket = peekLast.f44624a;
            if (peekLast.f44625b + this.f44605c > System.currentTimeMillis()) {
                break;
            }
            connectionInfo.f44623c.pop();
            asyncSocket.j0(null);
            asyncSocket.close();
        }
        if (connectionInfo.f44621a == 0 && connectionInfo.f44622b.isEmpty() && connectionInfo.f44623c.isEmpty()) {
            this.f44611i.remove(str);
        }
    }

    private void B(AsyncHttpRequest asyncHttpRequest) {
        Uri t9 = asyncHttpRequest.t();
        String n9 = n(t9, t(t9), asyncHttpRequest.o(), asyncHttpRequest.p());
        synchronized (this) {
            ConnectionInfo connectionInfo = this.f44611i.get(n9);
            if (connectionInfo == null) {
                return;
            }
            connectionInfo.f44621a--;
            while (connectionInfo.f44621a < this.f44612j && connectionInfo.f44622b.size() > 0) {
                AsyncHttpClientMiddleware.GetSocketData remove = connectionInfo.f44622b.remove();
                SimpleCancellable simpleCancellable = (SimpleCancellable) remove.f44543d;
                if (!simpleCancellable.isCancelled()) {
                    simpleCancellable.b(e(remove));
                }
            }
            A(n9);
        }
    }

    private void C(AsyncSocket asyncSocket, AsyncHttpRequest asyncHttpRequest) {
        final ArrayDeque<IdleSocketHolder> arrayDeque;
        if (asyncSocket == null) {
            return;
        }
        Uri t9 = asyncHttpRequest.t();
        final String n9 = n(t9, t(t9), asyncHttpRequest.o(), asyncHttpRequest.p());
        final IdleSocketHolder idleSocketHolder = new IdleSocketHolder(asyncSocket);
        synchronized (this) {
            arrayDeque = s(n9).f44623c;
            arrayDeque.push(idleSocketHolder);
        }
        asyncSocket.j0(new CompletedCallback() { // from class: com.koushikdutta.async.http.AsyncSocketMiddleware.1
            @Override // com.koushikdutta.async.callback.CompletedCallback
            public void g(Exception exc) {
                synchronized (AsyncSocketMiddleware.this) {
                    arrayDeque.remove(idleSocketHolder);
                    AsyncSocketMiddleware.this.A(n9);
                }
            }
        });
    }

    private ConnectionInfo s(String str) {
        ConnectionInfo connectionInfo = this.f44611i.get(str);
        if (connectionInfo == null) {
            ConnectionInfo connectionInfo2 = new ConnectionInfo();
            this.f44611i.put(str, connectionInfo2);
            return connectionInfo2;
        }
        return connectionInfo;
    }

    private void u(final AsyncSocket asyncSocket) {
        asyncSocket.X(new CompletedCallback() { // from class: com.koushikdutta.async.http.AsyncSocketMiddleware.2
            @Override // com.koushikdutta.async.callback.CompletedCallback
            public void g(Exception exc) {
                asyncSocket.j0(null);
                asyncSocket.close();
            }
        });
        asyncSocket.e0(null);
        asyncSocket.b0(new DataCallback.NullDataCallback() { // from class: com.koushikdutta.async.http.AsyncSocketMiddleware.3
            @Override // com.koushikdutta.async.callback.DataCallback.NullDataCallback, com.koushikdutta.async.callback.DataCallback
            public void s(DataEmitter dataEmitter, ByteBufferList byteBufferList) {
                super.s(dataEmitter, byteBufferList);
                byteBufferList.O();
                asyncSocket.j0(null);
                asyncSocket.close();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Future w(final int i4, final AsyncHttpClientMiddleware.GetSocketData getSocketData, InetAddress[] inetAddressArr) throws Exception {
        return Futures.d(inetAddressArr, new ThenFutureCallback() { // from class: com.koushikdutta.async.http.i
            @Override // com.koushikdutta.async.future.ThenFutureCallback
            public final Future a(Object obj) {
                Future z9;
                z9 = AsyncSocketMiddleware.this.z(i4, getSocketData, (InetAddress) obj);
                return z9;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void x(AsyncHttpClientMiddleware.GetSocketData getSocketData, Uri uri, int i4, Exception exc) throws Exception {
        G(getSocketData, uri, i4, false, getSocketData.f44542c).a(exc, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void y(AsyncHttpClientMiddleware.GetSocketData getSocketData, Uri uri, int i4, Exception exc, AsyncSocket asyncSocket) {
        if (asyncSocket == null) {
            return;
        }
        if (exc == null) {
            G(getSocketData, uri, i4, false, getSocketData.f44542c).a(null, asyncSocket);
            return;
        }
        getSocketData.f44551b.v("Recycling extra socket leftover from cancelled operation");
        u(asyncSocket);
        C(asyncSocket, getSocketData.f44551b);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Future z(int i4, AsyncHttpClientMiddleware.GetSocketData getSocketData, InetAddress inetAddress) throws Exception {
        final SimpleFuture simpleFuture = new SimpleFuture();
        String format = String.format(Locale.ENGLISH, "%s:%s", inetAddress, Integer.valueOf(i4));
        AsyncHttpRequest asyncHttpRequest = getSocketData.f44551b;
        asyncHttpRequest.A("attempting connection to " + format);
        this.f44606d.D().v(new InetSocketAddress(inetAddress, i4), new ConnectCallback() { // from class: com.koushikdutta.async.http.f
            @Override // com.koushikdutta.async.callback.ConnectCallback
            public final void a(Exception exc, AsyncSocket asyncSocket) {
                SimpleFuture.this.c0(exc, asyncSocket);
            }
        });
        return simpleFuture;
    }

    public void D(boolean z9) {
        this.f44607e = z9;
    }

    public void E(int i4) {
        this.f44605c = i4;
    }

    public void F(int i4) {
        this.f44612j = i4;
    }

    protected ConnectCallback G(AsyncHttpClientMiddleware.GetSocketData getSocketData, Uri uri, int i4, boolean z9, ConnectCallback connectCallback) {
        return connectCallback;
    }

    @Override // com.koushikdutta.async.http.SimpleMiddleware, com.koushikdutta.async.http.AsyncHttpClientMiddleware
    public Cancellable e(final AsyncHttpClientMiddleware.GetSocketData getSocketData) {
        String host;
        int i4;
        String str;
        final Uri t9 = getSocketData.f44551b.t();
        final int t10 = t(getSocketData.f44551b.t());
        if (t10 == -1) {
            return null;
        }
        getSocketData.f44550a.c("socket-owner", this);
        ConnectionInfo s9 = s(n(t9, t10, getSocketData.f44551b.o(), getSocketData.f44551b.p()));
        synchronized (this) {
            int i10 = s9.f44621a;
            if (i10 >= this.f44612j) {
                SimpleCancellable simpleCancellable = new SimpleCancellable();
                s9.f44622b.add(getSocketData);
                return simpleCancellable;
            }
            boolean z9 = true;
            s9.f44621a = i10 + 1;
            while (!s9.f44623c.isEmpty()) {
                IdleSocketHolder pop = s9.f44623c.pop();
                AsyncSocket asyncSocket = pop.f44624a;
                if (pop.f44625b + this.f44605c < System.currentTimeMillis()) {
                    asyncSocket.j0(null);
                    asyncSocket.close();
                } else if (asyncSocket.isOpen()) {
                    getSocketData.f44551b.v("Reusing keep-alive socket");
                    getSocketData.f44542c.a(null, asyncSocket);
                    SimpleCancellable simpleCancellable2 = new SimpleCancellable();
                    simpleCancellable2.i();
                    return simpleCancellable2;
                }
            }
            if (this.f44607e && this.f44608f == null && getSocketData.f44551b.o() == null) {
                getSocketData.f44551b.A("Resolving domain and connecting to all available addresses");
                SimpleFuture simpleFuture = new SimpleFuture();
                simpleFuture.Z(this.f44606d.D().B(t9.getHost()).t(new ThenFutureCallback() { // from class: com.koushikdutta.async.http.j
                    @Override // com.koushikdutta.async.future.ThenFutureCallback
                    public final Future a(Object obj) {
                        Future w9;
                        w9 = AsyncSocketMiddleware.this.w(t10, getSocketData, (InetAddress[]) obj);
                        return w9;
                    }
                }).p(new FailCallback() { // from class: com.koushikdutta.async.http.g
                    @Override // com.koushikdutta.async.future.FailCallback
                    public final void a(Exception exc) {
                        AsyncSocketMiddleware.this.x(getSocketData, t9, t10, exc);
                    }
                })).B(new FutureCallback() { // from class: com.koushikdutta.async.http.h
                    @Override // com.koushikdutta.async.future.FutureCallback
                    public final void c(Exception exc, Object obj) {
                        AsyncSocketMiddleware.this.y(getSocketData, t9, t10, exc, (AsyncSocket) obj);
                    }
                });
                return simpleFuture;
            }
            getSocketData.f44551b.v("Connecting socket");
            if (getSocketData.f44551b.o() == null && (str = this.f44608f) != null) {
                getSocketData.f44551b.e(str, this.f44609g);
            }
            if (getSocketData.f44551b.o() != null) {
                host = getSocketData.f44551b.o();
                i4 = getSocketData.f44551b.p();
            } else {
                host = t9.getHost();
                i4 = t10;
                z9 = false;
            }
            if (z9) {
                AsyncHttpRequest asyncHttpRequest = getSocketData.f44551b;
                asyncHttpRequest.A("Using proxy: " + host + ":" + i4);
            }
            return this.f44606d.D().u(host, i4, G(getSocketData, t9, t10, z9, getSocketData.f44542c));
        }
    }

    @Override // com.koushikdutta.async.http.SimpleMiddleware, com.koushikdutta.async.http.AsyncHttpClientMiddleware
    public void h(AsyncHttpClientMiddleware.OnResponseCompleteData onResponseCompleteData) {
        if (onResponseCompleteData.f44550a.a("socket-owner") != this) {
            return;
        }
        try {
            u(onResponseCompleteData.f44546f);
            if (onResponseCompleteData.f44552k == null && onResponseCompleteData.f44546f.isOpen()) {
                if (!v(onResponseCompleteData)) {
                    onResponseCompleteData.f44551b.A("closing out socket (not keep alive)");
                    onResponseCompleteData.f44546f.j0(null);
                    onResponseCompleteData.f44546f.close();
                }
                onResponseCompleteData.f44551b.v("Recycling keep-alive socket");
                C(onResponseCompleteData.f44546f, onResponseCompleteData.f44551b);
                return;
            }
            onResponseCompleteData.f44551b.A("closing out socket (exception)");
            onResponseCompleteData.f44546f.j0(null);
            onResponseCompleteData.f44546f.close();
        } finally {
            B(onResponseCompleteData.f44551b);
        }
    }

    String n(Uri uri, int i4, String str, int i10) {
        String str2;
        if (str != null) {
            str2 = str + ":" + i10;
        } else {
            str2 = "";
        }
        if (str != null) {
            str2 = str + ":" + i10;
        }
        return uri.getScheme() + "//" + uri.getHost() + ":" + i4 + "?proxy=" + str2;
    }

    public void o() {
        this.f44609g = -1;
        this.f44608f = null;
        this.f44610h = null;
    }

    public void p(String str, int i4) {
        this.f44608f = str;
        this.f44609g = i4;
        this.f44610h = null;
    }

    public boolean q() {
        return this.f44607e;
    }

    public int r() {
        return this.f44612j;
    }

    public int t(Uri uri) {
        if (uri.getScheme() == null || !uri.getScheme().equals(this.f44603a)) {
            return -1;
        }
        if (uri.getPort() == -1) {
            return this.f44604b;
        }
        return uri.getPort();
    }

    protected boolean v(AsyncHttpClientMiddleware.OnResponseCompleteData onResponseCompleteData) {
        return HttpUtil.e(onResponseCompleteData.f44547g.protocol(), onResponseCompleteData.f44547g.f()) && HttpUtil.d(Protocol.HTTP_1_1, onResponseCompleteData.f44551b.i());
    }

    public AsyncSocketMiddleware(AsyncHttpClient asyncHttpClient) {
        this(asyncHttpClient, "http", 80);
    }
}

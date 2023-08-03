package com.qennnsad.aknkaksd.data.websocket.wsmanager;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.qennnsad.aknkaksd.data.websocket.wsmanager.b;
import com.qennnsad.aknkaksd.data.websocket.wsmanager.h;
import com.qennnsad.aknkaksd.util.o0;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.WebSocket;
import okhttp3.WebSocketListener;
import okio.ByteString;

/* compiled from: WsManager.java */
/* loaded from: classes3.dex */
public class b implements com.qennnsad.aknkaksd.data.websocket.wsmanager.a {

    /* renamed from: o  reason: collision with root package name */
    private static final String f47875o = "WsManager";

    /* renamed from: p  reason: collision with root package name */
    private static final int f47876p = 10000;

    /* renamed from: q  reason: collision with root package name */
    private static final long f47877q = 120000;

    /* renamed from: a  reason: collision with root package name */
    private Context f47878a;

    /* renamed from: b  reason: collision with root package name */
    private String f47879b;

    /* renamed from: c  reason: collision with root package name */
    private WebSocket f47880c;

    /* renamed from: d  reason: collision with root package name */
    private OkHttpClient f47881d;

    /* renamed from: e  reason: collision with root package name */
    private Request f47882e;

    /* renamed from: g  reason: collision with root package name */
    private boolean f47884g;

    /* renamed from: i  reason: collision with root package name */
    private d5.a f47886i;

    /* renamed from: f  reason: collision with root package name */
    private int f47883f = -1;

    /* renamed from: h  reason: collision with root package name */
    private boolean f47885h = false;

    /* renamed from: k  reason: collision with root package name */
    private Handler f47888k = new Handler(Looper.getMainLooper());

    /* renamed from: l  reason: collision with root package name */
    private int f47889l = 0;

    /* renamed from: m  reason: collision with root package name */
    private Runnable f47890m = new a();

    /* renamed from: n  reason: collision with root package name */
    private final WebSocketListener f47891n = new C0403b();

    /* renamed from: j  reason: collision with root package name */
    private Lock f47887j = new ReentrantLock();

    /* compiled from: WsManager.java */
    /* loaded from: classes3.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (b.this.f47886i != null) {
                b.this.f47886i.g();
            }
            b.this.o();
        }
    }

    /* compiled from: WsManager.java */
    /* loaded from: classes3.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        private Context f47897a;

        /* renamed from: b  reason: collision with root package name */
        private String f47898b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f47899c = true;

        /* renamed from: d  reason: collision with root package name */
        private OkHttpClient f47900d;

        public c(Context context) {
            this.f47897a = context;
        }

        public b e() {
            return new b(this);
        }

        public c f(OkHttpClient okHttpClient) {
            this.f47900d = okHttpClient;
            return this;
        }

        public c g(boolean z9) {
            this.f47899c = z9;
            return this;
        }

        public c h(String str) {
            this.f47898b = str;
            return this;
        }
    }

    public b(c cVar) {
        this.f47878a = cVar.f47897a;
        this.f47879b = cVar.f47898b;
        this.f47884g = cVar.f47899c;
        this.f47881d = cVar.f47900d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void o() {
        if (!s(this.f47878a)) {
            b(-1);
            return;
        }
        int e4 = e();
        if (e4 != 0 && e4 != 1) {
            b(0);
            r();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p() {
        this.f47888k.removeCallbacks(this.f47890m);
        this.f47889l = 0;
    }

    private void q() {
        d5.a aVar;
        if (this.f47883f == -1) {
            return;
        }
        o0.a(f47875o, "Disconnect!");
        p();
        OkHttpClient okHttpClient = this.f47881d;
        if (okHttpClient != null) {
            okHttpClient.dispatcher().cancelAll();
        }
        WebSocket webSocket = this.f47880c;
        if (webSocket != null && !webSocket.close(1000, h.b.f47921b) && (aVar = this.f47886i) != null) {
            aVar.a(1001, h.b.f47922c);
        }
        b(-1);
    }

    private void r() {
        if (this.f47881d == null) {
            this.f47881d = new OkHttpClient.Builder().retryOnConnectionFailure(true).build();
        }
        if (this.f47882e == null) {
            this.f47882e = new Request.Builder().url(this.f47879b).build();
        }
        this.f47881d.dispatcher().cancelAll();
        try {
            this.f47887j.lockInterruptibly();
            this.f47881d.newWebSocket(this.f47882e, this.f47891n);
            this.f47887j.unlock();
        } catch (InterruptedException unused) {
        }
    }

    private boolean s(Context context) {
        return true;
    }

    private boolean t(Object obj) {
        WebSocket webSocket = this.f47880c;
        boolean z9 = false;
        if (webSocket != null && this.f47883f == 1) {
            if (obj instanceof String) {
                z9 = webSocket.send((String) obj);
            } else if (obj instanceof ByteString) {
                z9 = webSocket.send((ByteString) obj);
            }
            if (!z9) {
                v();
            }
        }
        return z9;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v() {
        if ((!this.f47884g) || this.f47885h) {
            return;
        }
        if (!s(this.f47878a)) {
            b(-1);
            return;
        }
        b(2);
        this.f47889l++;
        o0.a(f47875o, "Reconnect: " + this.f47889l);
        long j4 = (long) (this.f47889l * 10000);
        Handler handler = this.f47888k;
        Runnable runnable = this.f47890m;
        if (j4 > f47877q) {
            j4 = 120000;
        }
        handler.postDelayed(runnable, j4);
    }

    @Override // com.qennnsad.aknkaksd.data.websocket.wsmanager.a
    public synchronized boolean a() {
        return this.f47883f == 1;
    }

    @Override // com.qennnsad.aknkaksd.data.websocket.wsmanager.a
    public synchronized void b(int i4) {
        this.f47883f = i4;
    }

    @Override // com.qennnsad.aknkaksd.data.websocket.wsmanager.a
    public void c() {
        this.f47885h = false;
        o();
    }

    @Override // com.qennnsad.aknkaksd.data.websocket.wsmanager.a
    public boolean d(ByteString byteString) {
        return t(byteString);
    }

    @Override // com.qennnsad.aknkaksd.data.websocket.wsmanager.a
    public synchronized int e() {
        return this.f47883f;
    }

    @Override // com.qennnsad.aknkaksd.data.websocket.wsmanager.a
    public void f() {
        this.f47885h = true;
        q();
    }

    @Override // com.qennnsad.aknkaksd.data.websocket.wsmanager.a
    public boolean g(String str) {
        return t(str);
    }

    @Override // com.qennnsad.aknkaksd.data.websocket.wsmanager.a
    public WebSocket h() {
        return this.f47880c;
    }

    public void u(d5.a aVar) {
        this.f47886i = aVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: WsManager.java */
    /* renamed from: com.qennnsad.aknkaksd.data.websocket.wsmanager.b$b  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public class C0403b extends WebSocketListener {

        /* compiled from: WsManager.java */
        /* renamed from: com.qennnsad.aknkaksd.data.websocket.wsmanager.b$b$a */
        /* loaded from: classes3.dex */
        class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f47894a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ String f47895b;

            a(int i4, String str) {
                this.f47894a = i4;
                this.f47895b = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                b.this.f47886i.b(this.f47894a, this.f47895b);
            }
        }

        C0403b() {
        }

        @Nullable
        private String f(byte[] bArr) {
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
            StringBuilder sb = new StringBuilder();
            try {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new org.brotli.dec.b(byteArrayInputStream)));
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine != null) {
                        sb.append(readLine);
                    } else {
                        return sb.toString();
                    }
                }
            } catch (IOException unused) {
                return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void g(int i4, String str) {
            b.this.f47886i.a(i4, str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void h(Throwable th, Response response) {
            b.this.f47886i.c(th, response);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void j(String str) {
            b.this.f47886i.d(str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void k(Response response) {
            b.this.f47886i.f(response);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: l */
        public void i(String str, ByteString byteString) {
            if (!TextUtils.isEmpty(str)) {
                b.this.f47886i.d(str);
            } else {
                b.this.f47886i.e(byteString);
            }
        }

        @Override // okhttp3.WebSocketListener
        public void onClosed(WebSocket webSocket, final int i4, final String str) {
            o0.a(b.f47875o, "On Closed: " + i4 + ", " + str);
            if (b.this.f47886i != null) {
                if (Looper.myLooper() != Looper.getMainLooper()) {
                    b.this.f47888k.post(new Runnable() { // from class: com.qennnsad.aknkaksd.data.websocket.wsmanager.c
                        @Override // java.lang.Runnable
                        public final void run() {
                            b.C0403b.this.g(i4, str);
                        }
                    });
                } else {
                    b.this.f47886i.a(i4, str);
                }
            }
        }

        @Override // okhttp3.WebSocketListener
        public void onClosing(WebSocket webSocket, int i4, String str) {
            o0.a(b.f47875o, "On Closing: " + i4 + ", " + str);
            if (b.this.f47886i != null) {
                if (Looper.myLooper() != Looper.getMainLooper()) {
                    b.this.f47888k.post(new a(i4, str));
                } else {
                    b.this.f47886i.b(i4, str);
                }
            }
        }

        @Override // okhttp3.WebSocketListener
        public void onFailure(@m8.g WebSocket webSocket, @m8.g final Throwable th, final Response response) {
            o0.a(b.f47875o, "On Failure: " + th + ", Response: " + response);
            b.this.v();
            if (b.this.f47886i != null) {
                if (Looper.myLooper() != Looper.getMainLooper()) {
                    b.this.f47888k.post(new Runnable() { // from class: com.qennnsad.aknkaksd.data.websocket.wsmanager.f
                        @Override // java.lang.Runnable
                        public final void run() {
                            b.C0403b.this.h(th, response);
                        }
                    });
                } else {
                    b.this.f47886i.c(th, response);
                }
            }
        }

        @Override // okhttp3.WebSocketListener
        public void onMessage(@NonNull WebSocket webSocket, @NonNull final ByteString byteString) {
            if (b.this.f47886i != null) {
                final String f10 = f(com.facebook.common.util.c.b(byteString.hex()));
                if (Looper.myLooper() != Looper.getMainLooper()) {
                    b.this.f47888k.post(new Runnable() { // from class: com.qennnsad.aknkaksd.data.websocket.wsmanager.e
                        @Override // java.lang.Runnable
                        public final void run() {
                            b.C0403b.this.i(f10, byteString);
                        }
                    });
                } else {
                    i(f10, byteString);
                }
            }
        }

        @Override // okhttp3.WebSocketListener
        public void onOpen(@NonNull WebSocket webSocket, @NonNull final Response response) {
            o0.a(b.f47875o, "On Open: " + response);
            b.this.f47880c = webSocket;
            b.this.b(1);
            b.this.p();
            if (b.this.f47886i != null) {
                if (Looper.myLooper() != Looper.getMainLooper()) {
                    b.this.f47888k.post(new Runnable() { // from class: com.qennnsad.aknkaksd.data.websocket.wsmanager.g
                        @Override // java.lang.Runnable
                        public final void run() {
                            b.C0403b.this.k(response);
                        }
                    });
                } else {
                    b.this.f47886i.f(response);
                }
            }
        }

        @Override // okhttp3.WebSocketListener
        public void onMessage(@NonNull WebSocket webSocket, @NonNull final String str) {
            if (b.this.f47886i != null) {
                if (Looper.myLooper() != Looper.getMainLooper()) {
                    b.this.f47888k.post(new Runnable() { // from class: com.qennnsad.aknkaksd.data.websocket.wsmanager.d
                        @Override // java.lang.Runnable
                        public final void run() {
                            b.C0403b.this.j(str);
                        }
                    });
                } else {
                    b.this.f47886i.d(str);
                }
            }
        }
    }
}

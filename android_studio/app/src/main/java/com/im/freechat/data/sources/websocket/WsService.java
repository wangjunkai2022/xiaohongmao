package com.im.freechat.data.sources.websocket;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.os.Binder;
import android.os.Build;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.gms.common.internal.x;
import com.im.freechat.data.openapigen.models.Login;
import com.im.freechat.data.openapigen.models.SocketMessage;
import com.im.freechat.domain.d;
import com.squareup.moshi.u;
import io.sentry.e3;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.TimeUnit;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.concurrent.TimersKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.i;
import kotlinx.coroutines.flow.j0;
import kotlinx.coroutines.flow.s;
import kotlinx.coroutines.flow.t;
import kotlinx.coroutines.flow.z;
import kotlinx.coroutines.i1;
import kotlinx.coroutines.l;
import kotlinx.coroutines.t0;
import m8.g;
import m8.h;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.WebSocket;
import okhttp3.WebSocketListener;
import org.koin.android.scope.c;
import timber.log.Timber;
import z8.b;

/* compiled from: WsService.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0085\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\b\b*\u0001A\u0018\u0000 F2\u00020\u0001:\u0002FGB\u0007¢\u0006\u0004\bD\u0010EJ\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\b\u0010\u0007\u001a\u00020\u0002H\u0002J\u0012\u0010\n\u001a\u00020\u00022\b\b\u0002\u0010\t\u001a\u00020\bH\u0002J\b\u0010\u000b\u001a\u00020\u0002H\u0002J\b\u0010\f\u001a\u00020\u0002H\u0002J\b\u0010\r\u001a\u00020\bH\u0003J\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eJ\u0016\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0004J\b\u0010\u0014\u001a\u00020\u0002H\u0016J\u001f\u0010\u0018\u001a\u00020\u0002\"\b\b\u0000\u0010\u0016*\u00020\u00152\u0006\u0010\u0017\u001a\u00028\u0000¢\u0006\u0004\b\u0018\u0010\u0019J\u0016\u0010\u001d\u001a\u00060\u001cR\u00020\u00002\b\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0016R\u001b\u0010#\u001a\u00020\u001e8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"R\u001b\u0010(\u001a\u00020$8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b%\u0010 \u001a\u0004\b&\u0010'R\u001b\u0010-\u001a\u00020)8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b*\u0010 \u001a\u0004\b+\u0010,R\u001a\u0010/\u001a\b\u0012\u0004\u0012\u00020\b0.8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b/\u00100R\u001a\u00102\u001a\b\u0012\u0004\u0012\u00020\u000f018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b2\u00103R\u0016\u0010\u0011\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u00104R\u0016\u0010\u0012\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u00104R\u0016\u00105\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b5\u00106R\u0018\u00108\u001a\u0004\u0018\u0001078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b8\u00109R\u0018\u0010;\u001a\u0004\u0018\u00010:8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b;\u0010<R\u0016\u0010>\u001a\u00020=8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b>\u0010?R\u0018\u0010@\u001a\u0004\u0018\u00010:8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b@\u0010<R\u0014\u0010B\u001a\u00020A8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bB\u0010C¨\u0006H"}, d2 = {"Lcom/im/freechat/data/sources/websocket/WsService;", "Lorg/koin/android/scope/c;", "", "onSocketConnected", "", "text", "onSocketMessage", "setAwaitingMessageTimer", "", "withInitialDelay", "reconnect", "connect", "stopSocket", "isNetworkAvailable", "Lkotlinx/coroutines/flow/i;", "Lcom/im/freechat/data/openapigen/models/SocketMessage;", "startSocketConnection", "imToken", "deviceToken", "onTokenUpdated", "onDestroy", "", ExifInterface.GPS_DIRECTION_TRUE, e3.b.f83149d, "sendWsRequest", "(Ljava/lang/Object;)V", "Landroid/content/Intent;", "intent", "Lcom/im/freechat/data/sources/websocket/WsService$WebSocketClientBinder;", "onBind", "Lokhttp3/OkHttpClient;", "okHttpClient$delegate", "Lkotlin/Lazy;", "getOkHttpClient", "()Lokhttp3/OkHttpClient;", "okHttpClient", "Lcom/squareup/moshi/u;", "moshi$delegate", "getMoshi", "()Lcom/squareup/moshi/u;", "moshi", "Lcom/im/freechat/domain/d;", "dnsRepository$delegate", "getDnsRepository", "()Lcom/im/freechat/domain/d;", "dnsRepository", "Lkotlinx/coroutines/flow/t;", "connectionState", "Lkotlinx/coroutines/flow/t;", "Lkotlinx/coroutines/flow/s;", "messageChannel", "Lkotlinx/coroutines/flow/s;", "Ljava/lang/String;", "timeoutEnabled", "Z", "Lokhttp3/WebSocket;", "wsInstance", "Lokhttp3/WebSocket;", "Ljava/util/Timer;", "reconnectTimer", "Ljava/util/Timer;", "", "reconnectAttempt", "I", "awaitingMessageTimer", "com/im/freechat/data/sources/websocket/WsService$listener$1", x.a.f29212a, "Lcom/im/freechat/data/sources/websocket/WsService$listener$1;", "<init>", "()V", "Companion", "WebSocketClientBinder", "data_release"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class WsService extends c {
    @g
    public static final Companion Companion = new Companion(null);
    @h
    private Timer awaitingMessageTimer;
    @g
    private final t<Boolean> connectionState;
    @g
    private String deviceToken;
    @g
    private final Lazy dnsRepository$delegate;
    @g
    private String imToken;
    @g
    private final WsService$listener$1 listener;
    @g
    private final s<SocketMessage> messageChannel;
    @g
    private final Lazy moshi$delegate;
    @g
    private final Lazy okHttpClient$delegate;
    private int reconnectAttempt;
    @h
    private Timer reconnectTimer;
    private boolean timeoutEnabled;
    @h
    private WebSocket wsInstance;

    /* compiled from: WsService.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, d2 = {"Lcom/im/freechat/data/sources/websocket/WsService$Companion;", "", "()V", "createIntent", "Landroid/content/Intent;", "context", "Landroid/content/Context;", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @g
        public final Intent createIntent(@g Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            return new Intent(context, WsService.class);
        }
    }

    /* compiled from: WsService.kt */
    @Metadata(bv = {}, d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0011\u0010\u0012J\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0016J&\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00030\f2\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\nH\u0016J\u0018\u0010\u000e\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007H\u0016J\u000e\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\n0\u000fH\u0016¨\u0006\u0013"}, d2 = {"Lcom/im/freechat/data/sources/websocket/WsService$WebSocketClientBinder;", "Landroid/os/Binder;", "Lcom/im/freechat/data/sources/websocket/WsBinder;", "Lcom/im/freechat/data/openapigen/models/SocketMessage;", "msg", "", "sendWebSocketMessage", "", "imToken", "deviceToken", "", "timeoutEnabled", "Lkotlinx/coroutines/flow/i;", "startSocket", "onTokenUpdate", "Lkotlinx/coroutines/flow/t;", "listenConnectionState", "<init>", "(Lcom/im/freechat/data/sources/websocket/WsService;)V", "data_release"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public final class WebSocketClientBinder extends Binder implements WsBinder {
        public WebSocketClientBinder() {
        }

        @Override // com.im.freechat.data.sources.websocket.WsBinder
        @g
        public t<Boolean> listenConnectionState() {
            return WsService.this.connectionState;
        }

        @Override // com.im.freechat.data.sources.websocket.WsBinder
        public void onTokenUpdate(@g String imToken, @g String deviceToken) {
            Intrinsics.checkNotNullParameter(imToken, "imToken");
            Intrinsics.checkNotNullParameter(deviceToken, "deviceToken");
            WsService.this.onTokenUpdated(imToken, deviceToken);
        }

        @Override // com.im.freechat.data.sources.websocket.WsBinder
        public void sendWebSocketMessage(@g SocketMessage msg) {
            Intrinsics.checkNotNullParameter(msg, "msg");
            WsService.this.sendWsRequest(msg);
        }

        @Override // com.im.freechat.data.sources.websocket.WsBinder
        @g
        public i<SocketMessage> startSocket(@g String imToken, @g String deviceToken, boolean z9) {
            Intrinsics.checkNotNullParameter(imToken, "imToken");
            Intrinsics.checkNotNullParameter(deviceToken, "deviceToken");
            WsService.this.onTokenUpdated(imToken, deviceToken);
            WsService.this.timeoutEnabled = z9;
            return WsService.this.startSocketConnection();
        }
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [com.im.freechat.data.sources.websocket.WsService$listener$1] */
    public WsService() {
        super(false, 1, null);
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        z8.c e4 = b.e("WsClient");
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        lazy = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, (Function0) new WsService$special$$inlined$inject$default$1(this, e4, null));
        this.okHttpClient$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, (Function0) new WsService$special$$inlined$inject$default$2(this, b.e("WsMoshi"), null));
        this.moshi$delegate = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, (Function0) new WsService$special$$inlined$inject$default$3(this, null, null));
        this.dnsRepository$delegate = lazy3;
        this.connectionState = j0.a(Boolean.FALSE);
        this.messageChannel = z.b(0, 0, null, 7, null);
        this.imToken = "";
        this.deviceToken = "";
        this.listener = new WebSocketListener() { // from class: com.im.freechat.data.sources.websocket.WsService$listener$1
            @Override // okhttp3.WebSocketListener
            public void onClosed(@g WebSocket webSocket, int i4, @g String reason) {
                Intrinsics.checkNotNullParameter(webSocket, "webSocket");
                Intrinsics.checkNotNullParameter(reason, "reason");
                Timber.b bVar = Timber.f93860a;
                bVar.a("Socket closed, code: " + i4 + ", reason: " + reason, new Object[0]);
                if (i4 != 1000) {
                    WsService.reconnect$default(WsService.this, false, 1, null);
                }
                WsService.this.connectionState.setValue(Boolean.FALSE);
            }

            @Override // okhttp3.WebSocketListener
            public void onClosing(@g WebSocket webSocket, int i4, @g String reason) {
                Intrinsics.checkNotNullParameter(webSocket, "webSocket");
                Intrinsics.checkNotNullParameter(reason, "reason");
                Timber.b bVar = Timber.f93860a;
                bVar.d("Socket closing, code: " + i4 + ", reason: " + reason, new Object[0]);
            }

            @Override // okhttp3.WebSocketListener
            public void onFailure(@g WebSocket webSocket, @g Throwable t9, @h Response response) {
                Intrinsics.checkNotNullParameter(webSocket, "webSocket");
                Intrinsics.checkNotNullParameter(t9, "t");
                Timber.b bVar = Timber.f93860a;
                bVar.f(t9, "Socket failed: " + webSocket + ", response: " + response, new Object[0]);
                WsService.reconnect$default(WsService.this, false, 1, null);
                WsService.this.connectionState.setValue(Boolean.FALSE);
            }

            @Override // okhttp3.WebSocketListener
            public void onMessage(@g WebSocket webSocket, @g String text) {
                Intrinsics.checkNotNullParameter(webSocket, "webSocket");
                Intrinsics.checkNotNullParameter(text, "text");
                WsService.this.onSocketMessage(text);
            }

            @Override // okhttp3.WebSocketListener
            public void onOpen(@g WebSocket webSocket, @g Response response) {
                Intrinsics.checkNotNullParameter(webSocket, "webSocket");
                Intrinsics.checkNotNullParameter(response, "response");
                WsService.this.onSocketConnected();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void connect() {
        if (this.wsInstance == null) {
            getOkHttpClient().dispatcher().cancelAll();
            this.wsInstance = getOkHttpClient().newWebSocket(new Request.Builder().url(getDnsRepository().c()).build(), this.listener);
        }
    }

    private final d getDnsRepository() {
        return (d) this.dnsRepository$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final u getMoshi() {
        return (u) this.moshi$delegate.getValue();
    }

    private final OkHttpClient getOkHttpClient() {
        return (OkHttpClient) this.okHttpClient$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"MissingPermission"})
    public final boolean isNetworkAvailable() {
        NetworkCapabilities networkCapabilities;
        Object systemService = getSystemService("connectivity");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
        ConnectivityManager connectivityManager = (ConnectivityManager) systemService;
        if (Build.VERSION.SDK_INT >= 23) {
            Network activeNetwork = connectivityManager.getActiveNetwork();
            if (activeNetwork == null || (networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork)) == null) {
                return false;
            }
            return networkCapabilities.hasTransport(1) || networkCapabilities.hasTransport(0) || networkCapabilities.hasTransport(4) || networkCapabilities.hasTransport(3);
        }
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        if (activeNetworkInfo != null) {
            return activeNetworkInfo.isConnected();
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onSocketConnected() {
        synchronized (this) {
            Timber.b bVar = Timber.f93860a;
            bVar.k("Socket connected", new Object[0]);
            boolean z9 = true;
            if (!(this.imToken.length() == 0)) {
                if (this.deviceToken.length() != 0) {
                    z9 = false;
                }
                if (!z9) {
                    Login.Type type = Login.Type.login;
                    String str = this.imToken;
                    String str2 = this.deviceToken;
                    sendWsRequest(new Login(type, str, str2, Build.MANUFACTURER + ' ' + Build.MODEL));
                    this.reconnectAttempt = 0;
                    Timer timer = this.reconnectTimer;
                    if (timer != null) {
                        timer.cancel();
                    }
                    this.reconnectTimer = null;
                    Timer timer2 = this.awaitingMessageTimer;
                    if (timer2 != null) {
                        timer2.cancel();
                    }
                    TimeUnit timeUnit = TimeUnit.SECONDS;
                    long millis = timeUnit.toMillis(5L);
                    long millis2 = timeUnit.toMillis(5L);
                    Timer timer3 = TimersKt.timer(null, false);
                    timer3.scheduleAtFixedRate(new TimerTask() { // from class: com.im.freechat.data.sources.websocket.WsService$onSocketConnected$lambda-1$$inlined$fixedRateTimer$default$1
                        @Override // java.util.TimerTask, java.lang.Runnable
                        public void run() {
                            Timber.f93860a.e(new IllegalStateException("Socket LoggedInSuccessfully message was not received from backend!"));
                            WsService.this.reconnect(false);
                        }
                    }, millis, millis2);
                    this.awaitingMessageTimer = timer3;
                    Unit unit = Unit.INSTANCE;
                    return;
                }
            }
            bVar.e(new IllegalStateException("Socket connected while tokens are not set!"));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onSocketMessage(String str) {
        Timber.b bVar = Timber.f93860a;
        bVar.k("Socket Message: " + str, new Object[0]);
        l.f(t0.a(i1.c()), null, null, new WsService$onSocketMessage$1(this, str, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void reconnect(boolean z9) {
        synchronized (this) {
            if (this.reconnectTimer == null && this.wsInstance != null) {
                Timber.f93860a.a("Socket reconnection scheduled", new Object[0]);
                WebSocket webSocket = this.wsInstance;
                if (webSocket != null) {
                    webSocket.cancel();
                }
                this.wsInstance = null;
                Timer timer = this.awaitingMessageTimer;
                if (timer != null) {
                    timer.cancel();
                }
                this.awaitingMessageTimer = null;
                long millis = TimeUnit.SECONDS.toMillis(10L);
                long j4 = z9 ? millis : 0L;
                Timer timer2 = TimersKt.timer(null, false);
                timer2.scheduleAtFixedRate(new TimerTask() { // from class: com.im.freechat.data.sources.websocket.WsService$reconnect$lambda-5$$inlined$fixedRateTimer$default$1
                    @Override // java.util.TimerTask, java.lang.Runnable
                    public void run() {
                        boolean isNetworkAvailable;
                        WebSocket webSocket2;
                        int i4;
                        int i10;
                        isNetworkAvailable = WsService.this.isNetworkAvailable();
                        if (isNetworkAvailable) {
                            webSocket2 = WsService.this.wsInstance;
                            if (webSocket2 != null) {
                                webSocket2.cancel();
                            }
                            WsService.this.wsInstance = null;
                            WsService wsService = WsService.this;
                            i4 = wsService.reconnectAttempt;
                            wsService.reconnectAttempt = i4 + 1;
                            Timber.b bVar = Timber.f93860a;
                            StringBuilder sb = new StringBuilder();
                            sb.append("Socket Reconnecting attempt #");
                            i10 = WsService.this.reconnectAttempt;
                            sb.append(i10);
                            bVar.a(sb.toString(), new Object[0]);
                            WsService.this.connect();
                            return;
                        }
                        Timber.f93860a.a("Socket missing network connection", new Object[0]);
                    }
                }, j4, millis);
                this.reconnectTimer = timer2;
            }
            Unit unit = Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void reconnect$default(WsService wsService, boolean z9, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            z9 = true;
        }
        wsService.reconnect(z9);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setAwaitingMessageTimer() {
        synchronized (this) {
            if (this.connectionState.getValue().booleanValue()) {
                Timer timer = this.awaitingMessageTimer;
                if (timer != null) {
                    timer.cancel();
                }
                if (this.timeoutEnabled) {
                    TimeUnit timeUnit = TimeUnit.SECONDS;
                    long millis = timeUnit.toMillis(55L);
                    long millis2 = timeUnit.toMillis(55L);
                    Timer timer2 = TimersKt.timer(null, false);
                    timer2.scheduleAtFixedRate(new TimerTask() { // from class: com.im.freechat.data.sources.websocket.WsService$setAwaitingMessageTimer$lambda-3$$inlined$fixedRateTimer$default$1
                        @Override // java.util.TimerTask, java.lang.Runnable
                        public void run() {
                            Timber.f93860a.e(new IllegalStateException("There was no message received in 55 seconds! Reconnecting..."));
                            WsService.this.reconnect(false);
                        }
                    }, millis, millis2);
                    this.awaitingMessageTimer = timer2;
                }
            }
            Unit unit = Unit.INSTANCE;
        }
    }

    private final void stopSocket() {
        try {
            Timber.f93860a.a("Socket stopping", new Object[0]);
            WebSocket webSocket = this.wsInstance;
            if (webSocket != null) {
                webSocket.close(1000, null);
            }
            this.wsInstance = null;
            getOkHttpClient().connectionPool().evictAll();
            getOkHttpClient().dispatcher().cancelAll();
            getOkHttpClient().dispatcher().executorService().shutdown();
            Timer timer = this.reconnectTimer;
            if (timer != null) {
                timer.cancel();
            }
            this.reconnectTimer = null;
            Timer timer2 = this.awaitingMessageTimer;
            if (timer2 != null) {
                timer2.cancel();
            }
            this.awaitingMessageTimer = null;
        } catch (Exception e4) {
            Timber.f93860a.d("Error while stopping socket", e4);
        }
    }

    @Override // org.koin.android.scope.c, android.app.Service
    public void onDestroy() {
        stopSocket();
        super.onDestroy();
    }

    public final void onTokenUpdated(@g String imToken, @g String deviceToken) {
        Intrinsics.checkNotNullParameter(imToken, "imToken");
        Intrinsics.checkNotNullParameter(deviceToken, "deviceToken");
        this.imToken = imToken;
        this.deviceToken = deviceToken;
    }

    public final <T> void sendWsRequest(@g T request) {
        Boolean bool;
        Intrinsics.checkNotNullParameter(request, "request");
        Timber.b bVar = Timber.f93860a;
        bVar.a("Socket Sending request: " + request, new Object[0]);
        WebSocket webSocket = this.wsInstance;
        if (webSocket != null) {
            String json = getMoshi().c(request.getClass()).toJson(request);
            Intrinsics.checkNotNullExpressionValue(json, "moshi.adapter(request.javaClass).toJson(request)");
            bool = Boolean.valueOf(webSocket.send(json));
        } else {
            bool = null;
        }
        if (Intrinsics.areEqual(bool, Boolean.TRUE)) {
            return;
        }
        if (this.wsInstance == null) {
            bVar.e(new IllegalStateException("Socket error: trying to send request while webSocket is null! Request: " + request));
            return;
        }
        bVar.d("Socket failed to send request: " + request, new Object[0]);
        reconnect$default(this, false, 1, null);
    }

    @g
    public final i<SocketMessage> startSocketConnection() {
        connect();
        return this.messageChannel;
    }

    @Override // android.app.Service
    @g
    public WebSocketClientBinder onBind(@h Intent intent) {
        return new WebSocketClientBinder();
    }
}

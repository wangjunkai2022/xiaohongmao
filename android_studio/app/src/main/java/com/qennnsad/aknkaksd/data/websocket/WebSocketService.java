package com.qennnsad.aknkaksd.data.websocket;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.gson.Gson;
import com.qennnsad.aknkaksd.BaseBeautyApplication;
import com.qennnsad.aknkaksd.data.bean.pk.JoinPkConfirmMsg;
import com.qennnsad.aknkaksd.data.bean.pk.JoinPkSuccessMsg;
import com.qennnsad.aknkaksd.data.bean.pk.PkBroadcastMsg;
import com.qennnsad.aknkaksd.data.bean.pk.PkEmptyMsg;
import com.qennnsad.aknkaksd.data.bean.room.eyecatching.PinnedMessageBalanceEvent;
import com.qennnsad.aknkaksd.data.bean.room.eyecatching.PinnedMessageListEvent;
import com.qennnsad.aknkaksd.data.bean.websocket.AnchorCoinBean;
import com.qennnsad.aknkaksd.data.bean.websocket.BlockMsg;
import com.qennnsad.aknkaksd.data.bean.websocket.ChargeTimeRoomMsg;
import com.qennnsad.aknkaksd.data.bean.websocket.ChatNotification;
import com.qennnsad.aknkaksd.data.bean.websocket.DeleteTimeRoomMsg;
import com.qennnsad.aknkaksd.data.bean.websocket.ErrorMsg;
import com.qennnsad.aknkaksd.data.bean.websocket.FanInfoEvent;
import com.qennnsad.aknkaksd.data.bean.websocket.LegendHallWinMsg;
import com.qennnsad.aknkaksd.data.bean.websocket.LegendProfitMsg;
import com.qennnsad.aknkaksd.data.bean.websocket.LegendWinMsg;
import com.qennnsad.aknkaksd.data.bean.websocket.LiveAudienceListMsg;
import com.qennnsad.aknkaksd.data.bean.websocket.LocalRoomMsg;
import com.qennnsad.aknkaksd.data.bean.websocket.NameCard;
import com.qennnsad.aknkaksd.data.bean.websocket.NameCardNews;
import com.qennnsad.aknkaksd.data.bean.websocket.NewFanEvent;
import com.qennnsad.aknkaksd.data.bean.websocket.PeerageJoinMsg;
import com.qennnsad.aknkaksd.data.bean.websocket.PeerageLogin;
import com.qennnsad.aknkaksd.data.bean.websocket.PeerageProfitMsg;
import com.qennnsad.aknkaksd.data.bean.websocket.PopupWindowMsg;
import com.qennnsad.aknkaksd.data.bean.websocket.PrivateRoomMsg;
import com.qennnsad.aknkaksd.data.bean.websocket.PrivateTiMsg;
import com.qennnsad.aknkaksd.data.bean.websocket.PrivateTimeMsg;
import com.qennnsad.aknkaksd.data.bean.websocket.RemoveAdminerBean;
import com.qennnsad.aknkaksd.data.bean.websocket.SendGiftMsg;
import com.qennnsad.aknkaksd.data.bean.websocket.SendGiftNewsMsg;
import com.qennnsad.aknkaksd.data.bean.websocket.SystemMsg;
import com.qennnsad.aknkaksd.data.bean.websocket.SystemWelcome;
import com.qennnsad.aknkaksd.data.bean.websocket.UpdateRoleBean;
import com.qennnsad.aknkaksd.data.bean.websocket.UserPublicMsg;
import com.qennnsad.aknkaksd.data.bean.websocket.WsBleDeviceMsg;
import com.qennnsad.aknkaksd.data.bean.websocket.WsExitMsg;
import com.qennnsad.aknkaksd.data.bean.websocket.WsGameWinMsg;
import com.qennnsad.aknkaksd.data.bean.websocket.WsLoginOutMsg;
import com.qennnsad.aknkaksd.data.bean.websocket.WsLoginRequest;
import com.qennnsad.aknkaksd.data.bean.websocket.WsLogoutRequest;
import com.qennnsad.aknkaksd.data.bean.websocket.WsRequest;
import com.qennnsad.aknkaksd.data.bean.webview.RechargeSucceed;
import com.qennnsad.aknkaksd.data.websocket.wsmanager.b;
import com.qennnsad.aknkaksd.util.o0;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.security.GeneralSecurityException;
import java.security.KeyStore;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSession;
import kotlin.text.Typography;
import n7.o;
import okhttp3.HttpUrl;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.brotli.BrotliInterceptor;
import okio.ByteString;
import org.json.JSONException;
import org.json.JSONObject;

@dagger.hilt.android.b
/* loaded from: classes3.dex */
public class WebSocketService extends com.qennnsad.aknkaksd.data.websocket.a {

    /* renamed from: l  reason: collision with root package name */
    private static final String f47778l = "WebSocketService";

    /* renamed from: m  reason: collision with root package name */
    private static final String f47779m = "WebSocketService_OK";

    /* renamed from: n  reason: collision with root package name */
    private static final int f47780n = 60;

    /* renamed from: o  reason: collision with root package name */
    private static final int f47781o = 60;

    /* renamed from: p  reason: collision with root package name */
    private static final int f47782p = 60;
    @SuppressLint({"StaticFieldLeak"})

    /* renamed from: q  reason: collision with root package name */
    private static com.qennnsad.aknkaksd.data.websocket.wsmanager.b f47783q = null;

    /* renamed from: r  reason: collision with root package name */
    private static boolean f47784r = false;

    /* renamed from: s  reason: collision with root package name */
    private static boolean f47785s = false;
    @u7.a

    /* renamed from: d  reason: collision with root package name */
    g5.a f47786d;
    @u7.a

    /* renamed from: e  reason: collision with root package name */
    j f47787e;

    /* renamed from: h  reason: collision with root package name */
    private WsLoginRequest f47790h;

    /* renamed from: k  reason: collision with root package name */
    private String f47793k;

    /* renamed from: f  reason: collision with root package name */
    private final d5.a f47788f = new a();

    /* renamed from: g  reason: collision with root package name */
    private final HashMap<String, WeakReference<b>> f47789g = new HashMap<>();

    /* renamed from: i  reason: collision with root package name */
    private final HashMap<String, i<?>> f47791i = new HashMap<>();

    /* renamed from: j  reason: collision with root package name */
    private Gson f47792j = new Gson();

    /* loaded from: classes3.dex */
    class a extends d5.a {
        a() {
        }

        @Override // d5.a
        public void a(int i4, String str) {
            super.a(i4, str);
            o0.a(WebSocketService.f47779m, "onClosed:" + str);
            synchronized (WebSocketService.class) {
                boolean unused = WebSocketService.f47784r = false;
                boolean unused2 = WebSocketService.f47785s = false;
            }
            WebSocketService.this.J("你已经掉线.");
        }

        @Override // d5.a
        public void b(int i4, String str) {
            super.b(i4, str);
            o0.a(WebSocketService.f47779m, "onClosing:" + str);
        }

        @Override // d5.a
        public void c(Throwable th, Response response) {
            super.c(th, response);
            WebSocketService.this.B();
            o0.a(WebSocketService.f47779m, "onFailure: " + th.toString());
            synchronized (WebSocketService.class) {
                boolean unused = WebSocketService.f47785s = false;
            }
        }

        @Override // d5.a
        public void d(String str) {
            super.d(str);
            o0.g(WebSocketService.f47779m, "--onTextMessage-收到的原始数据:" + str);
            WebSocketService.this.s(str);
        }

        @Override // d5.a
        public void e(ByteString byteString) {
            super.e(byteString);
        }

        @Override // d5.a
        public void f(Response response) {
            super.f(response);
            synchronized (WebSocketService.class) {
                if (WebSocketService.f47784r) {
                    if (WebSocketService.f47783q != null) {
                        WebSocketService.f47783q.f();
                    }
                    WebSocketService.this.J("连接无效.");
                    return;
                }
                boolean unused = WebSocketService.f47784r = true;
                boolean unused2 = WebSocketService.f47785s = false;
                o0.a(WebSocketService.f47779m, "Open");
                WebSocketService.this.M();
            }
        }

        @Override // d5.a
        public void g() {
            super.g();
            synchronized (WebSocketService.class) {
                boolean unused = WebSocketService.f47784r = false;
            }
            o0.a(WebSocketService.f47779m, "重连 / Reconnection...");
            WebSocketService.this.I();
        }
    }

    /* loaded from: classes3.dex */
    public interface b {
        void h();

        void q();
    }

    /* loaded from: classes3.dex */
    public class c extends Binder {
        public c() {
        }

        public WebSocketService a() {
            return WebSocketService.this;
        }
    }

    private KeyStore A(char[] cArr) throws GeneralSecurityException {
        try {
            KeyStore keyStore = KeyStore.getInstance(KeyStore.getDefaultType());
            keyStore.load(null, cArr);
            return keyStore;
        } catch (IOException e4) {
            throw new AssertionError(e4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void B() {
        for (Map.Entry<String, WeakReference<b>> entry : this.f47789g.entrySet()) {
            b bVar = entry.getValue().get();
            if (bVar != null) {
                bVar.q();
            }
        }
    }

    private <T> void C(String str, final String str2, final Class<T> cls) {
        io.reactivex.j.v3(str).K3(new o() { // from class: com.qennnsad.aknkaksd.data.websocket.e
            @Override // n7.o
            public final Object apply(Object obj) {
                Object x9;
                x9 = WebSocketService.this.x(cls, (String) obj);
                return x9;
            }
        }).l6(io.reactivex.schedulers.b.a()).l4(io.reactivex.android.schedulers.a.c()).f6(new n7.g() { // from class: com.qennnsad.aknkaksd.data.websocket.d
            @Override // n7.g
            public final void accept(Object obj) {
                WebSocketService.this.y(str2, obj);
            }
        });
    }

    private void D() {
        for (Map.Entry<String, WeakReference<b>> entry : this.f47789g.entrySet()) {
            b bVar = entry.getValue().get();
            if (bVar != null) {
                bVar.h();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void I() {
        J("您已经掉线，正在尝试重新连接...");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void J(String str) {
        C("{\"type\":socket_off,\"content\":\"" + str + "\"}", com.qennnsad.aknkaksd.data.websocket.b.R, SystemMsg.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void M() {
        H(this.f47787e.f());
        WsLoginRequest wsLoginRequest = this.f47790h;
        if (wsLoginRequest != null) {
            o0.h(f47778l, "Performing auto re-login, wsRequest=%s", wsLoginRequest);
            H(this.f47790h);
        }
    }

    public static Intent q(Context context) {
        return new Intent(context, WebSocketService.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public void s(String str) {
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        String str8;
        char c10;
        String str9;
        WebSocketService webSocketService;
        String str10;
        Object obj;
        D();
        try {
            JSONObject jSONObject = new JSONObject(str);
            o0.g(f47778l, "dispatchMessage:" + jSONObject.toString());
            str2 = jSONObject.optString("type");
        } catch (JSONException unused) {
            o0.c(f47778l, "Message is not well-formed data!");
            str2 = null;
        }
        if (TextUtils.isEmpty(str2)) {
            o0.c(f47778l, "Cannot parse type from msg!");
            return;
        }
        o0.m(false, f47778l, "Dispatching msg type : %s", str2);
        try {
            try {
                switch (str2.hashCode()) {
                    case -1948300078:
                        str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                        str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                        str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                        str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                        str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                        if (str2.equals(com.qennnsad.aknkaksd.data.websocket.b.f47838t0)) {
                            c10 = '5';
                            break;
                        }
                        c10 = 65535;
                        break;
                    case -1901981428:
                        str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                        str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                        str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                        str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                        if (str2.equals(com.qennnsad.aknkaksd.data.websocket.b.f47803c)) {
                            c10 = 3;
                            str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                            break;
                        }
                        str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                        c10 = 65535;
                        break;
                    case -1777722395:
                        str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                        str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                        str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                        str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                        if (str2.equals(str4)) {
                            c10 = '*';
                            str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                            break;
                        }
                        str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                        c10 = 65535;
                        break;
                    case -1657279449:
                        str9 = com.qennnsad.aknkaksd.data.websocket.b.M;
                        str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                        str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                        if (str2.equals(str7)) {
                            c10 = '\'';
                            str8 = str9;
                            str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                            str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                            break;
                        }
                        str8 = str9;
                        str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                        str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                        c10 = 65535;
                        break;
                    case -1645586746:
                        str9 = com.qennnsad.aknkaksd.data.websocket.b.M;
                        if (!str2.equals(str9)) {
                            str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                            str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                            str8 = str9;
                            str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                            str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                            c10 = 65535;
                            break;
                        } else {
                            c10 = 26;
                            str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                            str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                            str8 = str9;
                            str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                            str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                            break;
                        }
                    case -1606866914:
                        if (str2.equals(com.qennnsad.aknkaksd.data.websocket.b.f47837t)) {
                            str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                            c10 = 6;
                            str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                            str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                            str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                            str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                            break;
                        }
                        str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                        str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                        str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                        str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                        str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                        c10 = 65535;
                        break;
                    case -1581187402:
                        if (str2.equals(com.qennnsad.aknkaksd.data.websocket.b.W)) {
                            str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                            c10 = '%';
                            str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                            str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                            str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                            str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                            break;
                        }
                        str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                        str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                        str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                        str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                        str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                        c10 = 65535;
                        break;
                    case -1499501098:
                        if (str2.equals(com.qennnsad.aknkaksd.data.websocket.b.f47820k0)) {
                            str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                            c10 = '0';
                            str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                            str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                            str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                            str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                            break;
                        }
                        str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                        str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                        str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                        str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                        str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                        c10 = 65535;
                        break;
                    case -1480256434:
                        if (str2.equals(com.qennnsad.aknkaksd.data.websocket.b.f47834r0)) {
                            str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                            c10 = '2';
                            str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                            str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                            str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                            str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                            break;
                        }
                        str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                        str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                        str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                        str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                        str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                        c10 = 65535;
                        break;
                    case -1440510317:
                        if (str2.equals(com.qennnsad.aknkaksd.data.websocket.b.f47833r)) {
                            str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                            c10 = 25;
                            str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                            str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                            str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                            str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                            break;
                        }
                        str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                        str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                        str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                        str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                        str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                        c10 = 65535;
                        break;
                    case -1361632588:
                        if (str2.equals(com.qennnsad.aknkaksd.data.websocket.b.K)) {
                            str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                            c10 = 1;
                            str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                            str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                            str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                            str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                            break;
                        }
                        str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                        str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                        str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                        str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                        str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                        c10 = 65535;
                        break;
                    case -1110942320:
                        if (str2.equals(com.qennnsad.aknkaksd.data.websocket.b.f47832q0)) {
                            str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                            c10 = '3';
                            str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                            str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                            str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                            str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                            break;
                        }
                        str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                        str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                        str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                        str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                        str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                        c10 = 65535;
                        break;
                    case -1097335254:
                        if (str2.equals(com.qennnsad.aknkaksd.data.websocket.b.f47817j)) {
                            str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                            c10 = 11;
                            str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                            str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                            str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                            str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                            break;
                        }
                        str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                        str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                        str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                        str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                        str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                        c10 = 65535;
                        break;
                    case -1097329270:
                        if (str2.equals(com.qennnsad.aknkaksd.data.websocket.b.f47821l)) {
                            str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                            c10 = '\f';
                            str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                            str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                            str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                            str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                            break;
                        }
                        str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                        str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                        str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                        str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                        str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                        c10 = 65535;
                        break;
                    case -1058526720:
                        if (str2.equals(com.qennnsad.aknkaksd.data.websocket.b.f47824m0)) {
                            str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                            c10 = ',';
                            str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                            str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                            str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                            str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                            break;
                        }
                        str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                        str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                        str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                        str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                        str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                        c10 = 65535;
                        break;
                    case -1048869549:
                        if (str2.equals(com.qennnsad.aknkaksd.data.websocket.b.f47804c0)) {
                            str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                            c10 = '6';
                            str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                            str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                            str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                            str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                            break;
                        }
                        str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                        str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                        str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                        str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                        str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                        c10 = 65535;
                        break;
                    case -960844772:
                        if (str2.equals(com.qennnsad.aknkaksd.data.websocket.b.H)) {
                            str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                            c10 = 21;
                            str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                            str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                            str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                            str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                            break;
                        }
                        str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                        str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                        str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                        str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                        str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                        c10 = 65535;
                        break;
                    case -887334508:
                        if (str2.equals(com.qennnsad.aknkaksd.data.websocket.b.f47813h)) {
                            str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                            c10 = 7;
                            str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                            str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                            str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                            str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                            break;
                        }
                        str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                        str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                        str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                        str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                        str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                        c10 = 65535;
                        break;
                    case -830093231:
                        if (str2.equals(com.qennnsad.aknkaksd.data.websocket.b.B)) {
                            str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                            c10 = 17;
                            str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                            str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                            str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                            str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                            break;
                        }
                        str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                        str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                        str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                        str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                        str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                        c10 = 65535;
                        break;
                    case -827327199:
                        if (str2.equals(com.qennnsad.aknkaksd.data.websocket.b.C)) {
                            str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                            c10 = 18;
                            str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                            str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                            str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                            str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                            break;
                        }
                        str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                        str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                        str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                        str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                        str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                        c10 = 65535;
                        break;
                    case -635448372:
                        if (str2.equals(com.qennnsad.aknkaksd.data.websocket.b.Y)) {
                            str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                            c10 = 29;
                            str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                            str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                            str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                            str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                            break;
                        }
                        str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                        str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                        str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                        str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                        str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                        c10 = 65535;
                        break;
                    case -600916110:
                        if (str2.equals(com.qennnsad.aknkaksd.data.websocket.b.T)) {
                            str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                            c10 = '\"';
                            str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                            str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                            str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                            str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                            break;
                        }
                        str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                        str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                        str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                        str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                        str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                        c10 = 65535;
                        break;
                    case -573986458:
                        if (str2.equals(com.qennnsad.aknkaksd.data.websocket.b.f47800a0)) {
                            str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                            c10 = 31;
                            str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                            str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                            str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                            str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                            break;
                        }
                        str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                        str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                        str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                        str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                        str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                        c10 = 65535;
                        break;
                    case -573499860:
                        if (str2.equals(com.qennnsad.aknkaksd.data.websocket.b.Q)) {
                            str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                            c10 = '\b';
                            str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                            str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                            str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                            str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                            break;
                        }
                        str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                        str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                        str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                        str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                        str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                        c10 = 65535;
                        break;
                    case -501222525:
                        if (str2.equals(com.qennnsad.aknkaksd.data.websocket.b.A)) {
                            str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                            c10 = 16;
                            str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                            str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                            str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                            str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                            break;
                        }
                        str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                        str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                        str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                        str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                        str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                        c10 = 65535;
                        break;
                    case -295755159:
                        if (str2.equals(com.qennnsad.aknkaksd.data.websocket.b.f47831q)) {
                            str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                            c10 = 24;
                            str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                            str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                            str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                            str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                            break;
                        }
                        str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                        str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                        str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                        str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                        str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                        c10 = 65535;
                        break;
                    case -187436429:
                        if (str2.equals(com.qennnsad.aknkaksd.data.websocket.b.J)) {
                            str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                            c10 = 23;
                            str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                            str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                            str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                            str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                            break;
                        }
                        str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                        str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                        str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                        str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                        str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                        c10 = 65535;
                        break;
                    case -103993174:
                        if (str2.equals(com.qennnsad.aknkaksd.data.websocket.b.U)) {
                            str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                            c10 = '#';
                            str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                            str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                            str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                            str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                            break;
                        }
                        str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                        str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                        str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                        str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                        str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                        c10 = 65535;
                        break;
                    case -103264126:
                        if (str2.equals(com.qennnsad.aknkaksd.data.websocket.b.G)) {
                            str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                            c10 = 20;
                            str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                            str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                            str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                            str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                            break;
                        }
                        str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                        str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                        str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                        str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                        str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                        c10 = 65535;
                        break;
                    case 115038:
                        if (str2.equals(com.qennnsad.aknkaksd.data.websocket.b.f47807e)) {
                            str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                            c10 = 0;
                            str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                            str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                            str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                            str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                            break;
                        }
                        str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                        str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                        str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                        str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                        str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                        c10 = 65535;
                        break;
                    case 3127582:
                        if (str2.equals(com.qennnsad.aknkaksd.data.websocket.b.f47843w)) {
                            str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                            c10 = 14;
                            str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                            str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                            str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                            str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                            break;
                        }
                        str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                        str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                        str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                        str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                        str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                        c10 = 65535;
                        break;
                    case 3441010:
                        if (str2.equals(com.qennnsad.aknkaksd.data.websocket.b.f47841v)) {
                            str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                            c10 = '\r';
                            str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                            str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                            str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                            str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                            break;
                        }
                        str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                        str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                        str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                        str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                        str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                        c10 = 65535;
                        break;
                    case 103149417:
                        if (str2.equals(com.qennnsad.aknkaksd.data.websocket.b.f47819k)) {
                            str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                            c10 = 2;
                            str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                            str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                            str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                            str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                            break;
                        }
                        str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                        str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                        str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                        str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                        str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                        c10 = 65535;
                        break;
                    case 106852524:
                        if (str2.equals(com.qennnsad.aknkaksd.data.websocket.b.f47802b0)) {
                            str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                            c10 = Typography.amp;
                            str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                            str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                            str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                            str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                            break;
                        }
                        str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                        str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                        str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                        str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                        str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                        c10 = 65535;
                        break;
                    case 206083451:
                        if (str2.equals(com.qennnsad.aknkaksd.data.websocket.b.f47808e0)) {
                            str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                            c10 = '9';
                            str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                            str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                            str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                            str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                            break;
                        }
                        str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                        str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                        str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                        str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                        str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                        c10 = 65535;
                        break;
                    case 597118955:
                        if (str2.equals(com.qennnsad.aknkaksd.data.websocket.b.f47836s0)) {
                            str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                            c10 = '4';
                            str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                            str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                            str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                            str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                            break;
                        }
                        str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                        str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                        str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                        str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                        str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                        c10 = 65535;
                        break;
                    case 644694812:
                        if (str2.equals(com.qennnsad.aknkaksd.data.websocket.b.f47822l0)) {
                            str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                            c10 = com.fasterxml.jackson.core.e.f13819f;
                            str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                            str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                            str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                            str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                            break;
                        }
                        str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                        str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                        str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                        str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                        str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                        c10 = 65535;
                        break;
                    case 646723372:
                        if (str2.equals(com.qennnsad.aknkaksd.data.websocket.b.f47814h0)) {
                            str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                            c10 = '+';
                            str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                            str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                            str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                            str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                            break;
                        }
                        str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                        str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                        str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                        str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                        str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                        c10 = 65535;
                        break;
                    case 731932041:
                        if (str2.equals(com.qennnsad.aknkaksd.data.websocket.b.f47844x)) {
                            str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                            c10 = 15;
                            str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                            str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                            str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                            str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                            break;
                        }
                        str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                        str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                        str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                        str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                        str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                        c10 = 65535;
                        break;
                    case 1050383790:
                        if (str2.equals(com.qennnsad.aknkaksd.data.websocket.b.N)) {
                            str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                            c10 = 27;
                            str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                            str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                            str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                            str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                            break;
                        }
                        str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                        str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                        str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                        str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                        str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                        c10 = 65535;
                        break;
                    case 1161007844:
                        if (str2.equals(com.qennnsad.aknkaksd.data.websocket.b.f47812g0)) {
                            str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                            c10 = ')';
                            str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                            str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                            str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                            str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                            break;
                        }
                        str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                        str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                        str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                        str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                        str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                        c10 = 65535;
                        break;
                    case 1239336803:
                        if (str2.equals(com.qennnsad.aknkaksd.data.websocket.b.D)) {
                            str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                            c10 = 19;
                            str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                            str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                            str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                            str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                            break;
                        }
                        str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                        str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                        str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                        str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                        str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                        c10 = 65535;
                        break;
                    case 1247062232:
                        if (str2.equals(com.qennnsad.aknkaksd.data.websocket.b.f47823m)) {
                            str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                            c10 = 4;
                            str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                            str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                            str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                            str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                            break;
                        }
                        str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                        str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                        str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                        str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                        str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                        c10 = 65535;
                        break;
                    case 1271495627:
                        if (str2.equals(com.qennnsad.aknkaksd.data.websocket.b.f47805d)) {
                            str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                            c10 = 5;
                            str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                            str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                            str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                            str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                            break;
                        }
                        str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                        str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                        str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                        str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                        str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                        c10 = 65535;
                        break;
                    case 1286305118:
                        if (str2.equals(com.qennnsad.aknkaksd.data.websocket.b.S)) {
                            str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                            c10 = '!';
                            str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                            str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                            str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                            str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                            break;
                        }
                        str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                        str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                        str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                        str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                        str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                        c10 = 65535;
                        break;
                    case 1377106404:
                        if (str2.equals(com.qennnsad.aknkaksd.data.websocket.b.f47815i)) {
                            str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                            c10 = '\n';
                            str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                            str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                            str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                            str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                            break;
                        }
                        str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                        str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                        str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                        str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                        str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                        c10 = 65535;
                        break;
                    case 1544840296:
                        if (str2.equals(com.qennnsad.aknkaksd.data.websocket.b.f47818j0)) {
                            str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                            c10 = '1';
                            str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                            str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                            str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                            str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                            break;
                        }
                        str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                        str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                        str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                        str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                        str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                        c10 = 65535;
                        break;
                    case 1544852384:
                        if (str2.equals(com.qennnsad.aknkaksd.data.websocket.b.f47828o0)) {
                            str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                            c10 = '.';
                            str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                            str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                            str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                            str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                            break;
                        }
                        str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                        str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                        str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                        str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                        str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                        c10 = 65535;
                        break;
                    case 1545088369:
                        if (str2.equals(com.qennnsad.aknkaksd.data.websocket.b.f47826n0)) {
                            str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                            c10 = shaded.org.apache.commons.codec.language.l.f93713d;
                            str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                            str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                            str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                            str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                            break;
                        }
                        str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                        str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                        str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                        str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                        str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                        c10 = 65535;
                        break;
                    case 1545287140:
                        if (str2.equals(com.qennnsad.aknkaksd.data.websocket.b.f47810f0)) {
                            str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                            c10 = '(';
                            str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                            str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                            str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                            str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                            break;
                        }
                        str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                        str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                        str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                        str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                        str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                        c10 = 65535;
                        break;
                    case 1582453899:
                        if (str2.equals(com.qennnsad.aknkaksd.data.websocket.b.Z)) {
                            str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                            c10 = 30;
                            str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                            str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                            str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                            str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                            break;
                        }
                        str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                        str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                        str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                        str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                        str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                        c10 = 65535;
                        break;
                    case 1610510467:
                        if (str2.equals(com.qennnsad.aknkaksd.data.websocket.b.f47840u0)) {
                            str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                            c10 = '8';
                            str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                            str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                            str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                            str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                            break;
                        }
                        str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                        str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                        str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                        str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                        str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                        c10 = 65535;
                        break;
                    case 1716010328:
                        if (str2.equals(com.qennnsad.aknkaksd.data.websocket.b.f47806d0)) {
                            str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                            c10 = '7';
                            str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                            str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                            str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                            str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                            break;
                        }
                        str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                        str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                        str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                        str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                        str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                        c10 = 65535;
                        break;
                    case 1777782023:
                        if (str2.equals(com.qennnsad.aknkaksd.data.websocket.b.X)) {
                            str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                            c10 = ' ';
                            str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                            str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                            str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                            str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                            break;
                        }
                        str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                        str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                        str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                        str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                        str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                        c10 = 65535;
                        break;
                    case 1840065595:
                        if (str2.equals(com.qennnsad.aknkaksd.data.websocket.b.O)) {
                            str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                            c10 = 28;
                            str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                            str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                            str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                            str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                            break;
                        }
                        str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                        str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                        str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                        str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                        str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                        c10 = 65535;
                        break;
                    case 1851417288:
                        if (str2.equals(com.qennnsad.aknkaksd.data.websocket.b.V)) {
                            str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                            c10 = Typography.dollar;
                            str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                            str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                            str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                            str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                            break;
                        }
                        str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                        str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                        str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                        str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                        str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                        c10 = 65535;
                        break;
                    case 2022760050:
                        if (str2.equals(com.qennnsad.aknkaksd.data.websocket.b.P)) {
                            str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                            c10 = '\t';
                            str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                            str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                            str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                            str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                            break;
                        }
                        str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                        str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                        str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                        str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                        str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                        c10 = 65535;
                        break;
                    case 2098239907:
                        if (str2.equals(com.qennnsad.aknkaksd.data.websocket.b.I)) {
                            str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                            c10 = 22;
                            str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                            str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                            str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                            str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                            break;
                        }
                        str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                        str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                        str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                        str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                        str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                        c10 = 65535;
                        break;
                    default:
                        str4 = com.qennnsad.aknkaksd.data.websocket.b.f47830p0;
                        str5 = com.qennnsad.aknkaksd.data.websocket.b.K;
                        str6 = com.qennnsad.aknkaksd.data.websocket.b.f47837t;
                        str7 = com.qennnsad.aknkaksd.data.websocket.b.f47816i0;
                        str8 = com.qennnsad.aknkaksd.data.websocket.b.M;
                        c10 = 65535;
                        break;
                }
            } catch (Exception e4) {
                e = e4;
            }
            try {
                switch (c10) {
                    case 0:
                        C(str, com.qennnsad.aknkaksd.data.websocket.b.f47807e, WsBleDeviceMsg.class);
                        return;
                    case 1:
                        C(str, str5, DeleteTimeRoomMsg.class);
                        return;
                    case 2:
                        C(str, com.qennnsad.aknkaksd.data.websocket.b.f47819k, SystemWelcome.class);
                        return;
                    case 3:
                        C(str, com.qennnsad.aknkaksd.data.websocket.b.f47803c, UserPublicMsg.class);
                        return;
                    case 4:
                        C(str, com.qennnsad.aknkaksd.data.websocket.b.f47823m, SendGiftMsg.class);
                        return;
                    case 5:
                        C(str, com.qennnsad.aknkaksd.data.websocket.b.f47805d, SendGiftNewsMsg.class);
                        return;
                    case 6:
                        C(str, str6, LiveAudienceListMsg.class);
                        return;
                    case 7:
                        C(str, com.qennnsad.aknkaksd.data.websocket.b.f47813h, SystemMsg.class);
                        return;
                    case '\b':
                        C(str, com.qennnsad.aknkaksd.data.websocket.b.Q, UpdateRoleBean.class);
                        return;
                    case '\t':
                        C(str, com.qennnsad.aknkaksd.data.websocket.b.P, LocalRoomMsg.class);
                        return;
                    case '\n':
                        C(str, com.qennnsad.aknkaksd.data.websocket.b.f47815i, SystemMsg.class);
                        return;
                    case 11:
                        return;
                    case '\f':
                        C(str, com.qennnsad.aknkaksd.data.websocket.b.f47821l, WsLoginOutMsg.class);
                        return;
                    case '\r':
                        H(this.f47787e.h());
                        return;
                    case 14:
                        C(str, com.qennnsad.aknkaksd.data.websocket.b.f47843w, WsExitMsg.class);
                        return;
                    case 15:
                        C(str, com.qennnsad.aknkaksd.data.websocket.b.f47844x, WsGameWinMsg.class);
                        return;
                    case 16:
                        C(str, com.qennnsad.aknkaksd.data.websocket.b.A, PrivateTimeMsg.class);
                        return;
                    case 17:
                        C(str, com.qennnsad.aknkaksd.data.websocket.b.B, PrivateRoomMsg.class);
                        return;
                    case 18:
                        C(str, com.qennnsad.aknkaksd.data.websocket.b.C, PrivateRoomMsg.class);
                        return;
                    case 19:
                        C(str, com.qennnsad.aknkaksd.data.websocket.b.D, PrivateTiMsg.class);
                        return;
                    case 20:
                        C(str, com.qennnsad.aknkaksd.data.websocket.b.G, PrivateTiMsg.class);
                        return;
                    case 21:
                        webSocketService = this;
                        str10 = str;
                        obj = DeleteTimeRoomMsg.class;
                        webSocketService.C(str10, com.qennnsad.aknkaksd.data.websocket.b.H, ChargeTimeRoomMsg.class);
                        break;
                    case 22:
                        webSocketService = this;
                        str10 = str;
                        obj = DeleteTimeRoomMsg.class;
                        break;
                    case 23:
                        C(str, com.qennnsad.aknkaksd.data.websocket.b.J, DeleteTimeRoomMsg.class);
                        return;
                    case 24:
                        C(str, com.qennnsad.aknkaksd.data.websocket.b.f47831q, ErrorMsg.class);
                        return;
                    case 25:
                        C(str, com.qennnsad.aknkaksd.data.websocket.b.f47833r, ErrorMsg.class);
                        return;
                    case 26:
                        C(str, str8, RemoveAdminerBean.class);
                        return;
                    case 27:
                        C(str, com.qennnsad.aknkaksd.data.websocket.b.N, NameCardNews.class);
                        return;
                    case 28:
                        C(str, com.qennnsad.aknkaksd.data.websocket.b.O, NameCard.class);
                        return;
                    case 29:
                        C(str, com.qennnsad.aknkaksd.data.websocket.b.Y, PeerageJoinMsg.class);
                        return;
                    case 30:
                        C(str, com.qennnsad.aknkaksd.data.websocket.b.Z, PeerageProfitMsg.class);
                        return;
                    case 31:
                        C(str, com.qennnsad.aknkaksd.data.websocket.b.f47800a0, AnchorCoinBean.class);
                        return;
                    case ' ':
                        C(str, com.qennnsad.aknkaksd.data.websocket.b.X, PeerageLogin.class);
                        return;
                    case '!':
                        C(str, com.qennnsad.aknkaksd.data.websocket.b.S, BlockMsg.class);
                        return;
                    case '\"':
                        C(str, com.qennnsad.aknkaksd.data.websocket.b.T, BlockMsg.class);
                        return;
                    case '#':
                        C(str, com.qennnsad.aknkaksd.data.websocket.b.U, LegendWinMsg.class);
                        return;
                    case '$':
                        C(str, com.qennnsad.aknkaksd.data.websocket.b.V, LegendHallWinMsg.class);
                        return;
                    case '%':
                        C(str, com.qennnsad.aknkaksd.data.websocket.b.W, LegendProfitMsg.class);
                        return;
                    case '&':
                        C(str, com.qennnsad.aknkaksd.data.websocket.b.f47802b0, PopupWindowMsg.class);
                        return;
                    case '\'':
                        C(str, str7, JoinPkSuccessMsg.class);
                        return;
                    case '(':
                        C(str, com.qennnsad.aknkaksd.data.websocket.b.f47810f0, PkEmptyMsg.class);
                        return;
                    case ')':
                        C(str, com.qennnsad.aknkaksd.data.websocket.b.f47812g0, JoinPkConfirmMsg.class);
                        return;
                    case '*':
                        C(str, str4, PkBroadcastMsg.class);
                        return;
                    case '+':
                    case ',':
                    case '-':
                    case '.':
                    case '/':
                    case '0':
                    case '1':
                    case '2':
                    case '3':
                        C(str, str2, PkEmptyMsg.class);
                        return;
                    case '4':
                        C(str, str2, PinnedMessageListEvent.class);
                        return;
                    case '5':
                        C(str, str2, PinnedMessageBalanceEvent.class);
                        return;
                    case '6':
                        C(str, str2, NewFanEvent.class);
                        return;
                    case '7':
                        C(str, str2, FanInfoEvent.class);
                        return;
                    case '8':
                        C(str, str2, ChatNotification.class);
                        return;
                    case '9':
                        C(str, com.qennnsad.aknkaksd.data.websocket.b.f47808e0, RechargeSucceed.class);
                        return;
                    default:
                        if (str2.startsWith(com.qennnsad.aknkaksd.data.websocket.b.f47825n)) {
                            C(str, com.qennnsad.aknkaksd.data.websocket.b.f47825n, ErrorMsg.class);
                            return;
                        }
                        Object[] objArr = {str2};
                        str3 = f47778l;
                        try {
                            o0.e(str3, "Unsupported msg type:%s", objArr);
                            return;
                        } catch (Exception e10) {
                            e = e10;
                            o0.d(str3, "Unexpected exception while dispatching msg.", e);
                        }
                }
                webSocketService.C(str10, com.qennnsad.aknkaksd.data.websocket.b.I, obj);
            } catch (Exception e11) {
                e = e11;
                str3 = f47778l;
                o0.d(str3, "Unexpected exception while dispatching msg.", e);
            }
        } catch (Exception e12) {
            e = e12;
            str3 = f47778l;
        }
    }

    private OkHttpClient t() {
        com.qennnsad.aknkaksd.data.websocket.c cVar = com.qennnsad.aknkaksd.data.websocket.c.f47847a;
        OkHttpClient.Builder newBuilder = new OkHttpClient().newBuilder();
        OkHttpClient.Builder addInterceptor = newBuilder.addInterceptor(f.f47852a);
        TimeUnit timeUnit = TimeUnit.SECONDS;
        addInterceptor.connectTimeout(60L, timeUnit).writeTimeout(60L, timeUnit).readTimeout(60L, timeUnit).hostnameVerifier(cVar).retryOnConnectionFailure(true);
        o0.g(f47778l, "Brotli WSS ENABLED");
        newBuilder.addInterceptor(BrotliInterceptor.INSTANCE);
        return newBuilder.build();
    }

    private void u() {
        synchronized (WebSocketService.class) {
            com.qennnsad.aknkaksd.data.websocket.wsmanager.b bVar = f47783q;
            if (bVar != null && (f47784r || f47785s)) {
                bVar.u(this.f47788f);
                M();
                return;
            }
            com.qennnsad.aknkaksd.data.websocket.wsmanager.b e4 = new b.c(BaseBeautyApplication.getContextInstance()).h(this.f47793k).g(true).f(t()).e();
            f47783q = e4;
            e4.c();
            f47785s = true;
            f47783q.u(this.f47788f);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean v(String str, SSLSession sSLSession) {
        Boolean valueOf = Boolean.valueOf(HttpsURLConnection.getDefaultHostnameVerifier().verify(str, sSLSession));
        o0.g(f47779m, "verify:" + str + "--sslsession:" + sSLSession.getPeerHost() + "--result:" + valueOf);
        return valueOf.booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Response w(Interceptor.Chain chain) throws IOException {
        Request request = chain.request();
        HttpUrl.Builder newBuilder = request.url().newBuilder();
        Request.Builder newBuilder2 = request.newBuilder();
        newBuilder2.url(newBuilder.build()).addHeader("knockknock", "synergy");
        newBuilder2.addHeader("Sec-WebSocket-Accept-Encoding", "brotli");
        return chain.proceed(newBuilder2.build());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object x(Class cls, String str) throws Exception {
        return this.f47792j.fromJson(str, (Class<Object>) cls);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void y(String str, Object obj) throws Exception {
        i<?> iVar = this.f47791i.get(str);
        if (iVar == null) {
            o0.o(f47778l, "No listener handle type %s, discard this.", str);
        } else {
            iVar.a(obj);
        }
    }

    public void E() {
        o0.g(f47778l, "----- prepareShutdown -----");
        if (this.f47790h != null) {
            this.f47790h = null;
        }
        if (this.f47791i.size() > 0) {
            o0.o(f47778l, "Force clear active listeners, count=%d", Integer.valueOf(this.f47791i.size()));
            this.f47791i.clear();
        }
    }

    public void F(@NonNull String str, @NonNull i iVar) {
        this.f47791i.put(str, iVar);
    }

    public void G() {
        o0.h(f47778l, "Removing all listeners, count=%d. ", Integer.valueOf(this.f47791i.size()));
        i<?> iVar = this.f47791i.get(com.qennnsad.aknkaksd.data.websocket.b.f47802b0);
        i<?> iVar2 = this.f47791i.get(com.qennnsad.aknkaksd.data.websocket.b.f47808e0);
        this.f47791i.clear();
        if (iVar != null) {
            o0.b(f47778l, "Preserving Popup Window listener", iVar);
            this.f47791i.put(com.qennnsad.aknkaksd.data.websocket.b.f47802b0, iVar);
        }
        if (iVar2 != null) {
            o0.b(f47778l, "Preserving Recharge Succeed listener", iVar2);
            this.f47791i.put(com.qennnsad.aknkaksd.data.websocket.b.f47808e0, iVar2);
        }
    }

    public void H(WsRequest wsRequest) {
        if (wsRequest == null) {
            return;
        }
        if (wsRequest instanceof WsLoginRequest) {
            this.f47790h = (WsLoginRequest) wsRequest;
        } else if (wsRequest instanceof WsLogoutRequest) {
            this.f47790h = null;
        }
        K(new Gson().toJson(wsRequest));
    }

    public void K(String str) {
        o0.j(f47778l, "sending msg:" + str);
        if (f47783q == null || TextUtils.isEmpty(str) || f47783q.g(str)) {
            return;
        }
        synchronized (WebSocketService.class) {
            f47784r = f47783q.a();
        }
    }

    public void L(b bVar) {
        this.f47789g.put(bVar.getClass().getName(), new WeakReference<>(bVar));
    }

    public void N() {
        M();
    }

    @Override // android.app.Service
    @Nullable
    public IBinder onBind(Intent intent) {
        o0.j(f47778l, "----- onBind -----");
        return new c();
    }

    @Override // com.qennnsad.aknkaksd.data.websocket.a, android.app.Service
    public void onCreate() {
        super.onCreate();
        o0.g(f47778l, "----- onCreate -----");
        String o9 = this.f47786d.o();
        if (o9 == null || o9.equals("")) {
            return;
        }
        String hostWithPort = this.f47786d.g().getHostWithPort();
        this.f47793k = "wss://" + hostWithPort + "/ws?jwt_token=" + o9 + "&ver=" + com.qennnsad.aknkaksd.e.f48514f;
        u();
    }

    @Override // android.app.Service
    public void onDestroy() {
        o0.g(f47778l, "----- onDestroy -----");
        super.onDestroy();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i4, int i10) {
        return 1;
    }

    public void r(String str) {
        s(str);
    }
}

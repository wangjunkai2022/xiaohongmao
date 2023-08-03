package com.qennnsad.aknkaksd.presentation.module.main.webview;

import android.webkit.JavascriptInterface;
import com.facebook.common.callercontext.ContextChain;
import com.google.gson.Gson;
import com.qennnsad.aknkaksd.data.bean.user.UserBean;
import com.qennnsad.aknkaksd.data.bean.websocket.PeerageLogin;
import com.qennnsad.aknkaksd.data.bean.webview.WebAppInfo;
import com.qennnsad.aknkaksd.data.bean.webview.WebUserInfo;
import com.qennnsad.aknkaksd.util.o0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringNumberConversionsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import org.json.JSONException;
import org.json.JSONObject;
import timber.log.Timber;

/* compiled from: WebViewJavascriptInterface.kt */
@Metadata(bv = {}, d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u00002\u00020\u0001Bù\u0001\u0012\b\u0010\u001b\u001a\u0004\u0018\u00010\u0017\u0012!\u0010$\u001a\u001d\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u001d\u0012\b\b\u001e\u0012\u0004\b\b(\u001f\u0012\u0004\u0012\u00020\u00050\u001c\u0012!\u0010)\u001a\u001d\u0012\u0013\u0012\u00110%¢\u0006\f\b\u001d\u0012\b\b\u001e\u0012\u0004\b\b(&\u0012\u0004\u0012\u00020\u00050\u001c\u0012!\u0010-\u001a\u001d\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u001d\u0012\b\b\u001e\u0012\u0004\b\b(*\u0012\u0004\u0012\u00020\u00050\u001c\u0012!\u00102\u001a\u001d\u0012\u0013\u0012\u00110.¢\u0006\f\b\u001d\u0012\b\b\u001e\u0012\u0004\b\b(/\u0012\u0004\u0012\u00020\u00050\u001c\u0012!\u00106\u001a\u001d\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u001d\u0012\b\b\u001e\u0012\u0004\b\b(3\u0012\u0004\u0012\u00020\u00050\u001c\u0012%\b\u0002\u0010;\u001a\u001f\u0012\u0013\u0012\u001107¢\u0006\f\b\u001d\u0012\b\b\u001e\u0012\u0004\b\b(8\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u001c\u0012\u0010\b\u0002\u0010A\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010<¢\u0006\u0004\bE\u0010FJ\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0006\u001a\u00020\u0005H\u0007J\b\u0010\u0007\u001a\u00020\u0005H\u0007J\u0010\u0010\b\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u0002H\u0007J\u0010\u0010\t\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u0002H\u0007J\b\u0010\n\u001a\u00020\u0005H\u0007J\u0010\u0010\f\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u0002H\u0007J\u0012\u0010\u000e\u001a\u00020\u00052\b\u0010\r\u001a\u0004\u0018\u00010\u0002H\u0007J\u0012\u0010\u000f\u001a\u00020\u00052\b\u0010\r\u001a\u0004\u0018\u00010\u0002H\u0007J\u0012\u0010\u0011\u001a\u00020\u00052\b\u0010\u0010\u001a\u0004\u0018\u00010\u0002H\u0007J\b\u0010\u0012\u001a\u00020\u0002H\u0007J\b\u0010\u0013\u001a\u00020\u0002H\u0007J\u0012\u0010\u0014\u001a\u00020\u00052\b\u0010\r\u001a\u0004\u0018\u00010\u0002H\u0007J\u0010\u0010\u0015\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0002H\u0007J\u0010\u0010\u0016\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0002H\u0007R\u0019\u0010\u001b\u001a\u0004\u0018\u00010\u00178\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR2\u0010$\u001a\u001d\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u001d\u0012\b\b\u001e\u0012\u0004\b\b(\u001f\u0012\u0004\u0012\u00020\u00050\u001c8\u0006¢\u0006\f\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#R2\u0010)\u001a\u001d\u0012\u0013\u0012\u00110%¢\u0006\f\b\u001d\u0012\b\b\u001e\u0012\u0004\b\b(&\u0012\u0004\u0012\u00020\u00050\u001c8\u0006¢\u0006\f\n\u0004\b'\u0010!\u001a\u0004\b(\u0010#R2\u0010-\u001a\u001d\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u001d\u0012\b\b\u001e\u0012\u0004\b\b(*\u0012\u0004\u0012\u00020\u00050\u001c8\u0006¢\u0006\f\n\u0004\b+\u0010!\u001a\u0004\b,\u0010#R2\u00102\u001a\u001d\u0012\u0013\u0012\u00110.¢\u0006\f\b\u001d\u0012\b\b\u001e\u0012\u0004\b\b(/\u0012\u0004\u0012\u00020\u00050\u001c8\u0006¢\u0006\f\n\u0004\b0\u0010!\u001a\u0004\b1\u0010#R2\u00106\u001a\u001d\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u001d\u0012\b\b\u001e\u0012\u0004\b\b(3\u0012\u0004\u0012\u00020\u00050\u001c8\u0006¢\u0006\f\n\u0004\b4\u0010!\u001a\u0004\b5\u0010#R4\u0010;\u001a\u001f\u0012\u0013\u0012\u001107¢\u0006\f\b\u001d\u0012\b\b\u001e\u0012\u0004\b\b(8\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u001c8\u0006¢\u0006\f\n\u0004\b9\u0010!\u001a\u0004\b:\u0010#R\u001f\u0010A\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010<8\u0006¢\u0006\f\n\u0004\b=\u0010>\u001a\u0004\b?\u0010@R\u0014\u0010D\u001a\u00020\u00028\u0002X\u0082D¢\u0006\u0006\n\u0004\bB\u0010C¨\u0006G"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/main/webview/v;", "", "", "value", "a", "", "openSystemCustomer", "enterFullScreen", "copyFn", "jsCopy", "popPage", "str", "Close", "json", "wxPayLx", "aliPayBy", "user_id", "createConversation", "userInfo", "appInfo", "openUrl", "preview_mount", "financePageEntered", "Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;", "Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;", "getUser", "()Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;", "user", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "s", "b", "Lkotlin/jvm/functions/Function1;", "getCopyToClipBoard", "()Lkotlin/jvm/functions/Function1;", "copyToClipBoard", "", "close", "c", "getGoBack", "goBack", "orderInfo", "d", "getAliPay", "aliPay", "", "userId", "e", "getStartChat", "startChat", "url", "f", "getOpenExternalUrl", "openExternalUrl", "Lcom/qennnsad/aknkaksd/data/bean/websocket/PeerageLogin;", "peerage", "g", "getPeerageLogin", "peerageLogin", "Lkotlin/Function0;", "h", "Lkotlin/jvm/functions/Function0;", "getGuestWarning", "()Lkotlin/jvm/functions/Function0;", "guestWarning", ContextChain.TAG_INFRA, "Ljava/lang/String;", "TAG", "<init>", "(Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class v {
    @m8.h

    /* renamed from: a  reason: collision with root package name */
    private final UserBean f52166a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final Function1<String, Unit> f52167b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final Function1<Boolean, Unit> f52168c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private final Function1<String, Unit> f52169d;
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final Function1<Integer, Unit> f52170e;
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    private final Function1<String, Unit> f52171f;
    @m8.h

    /* renamed from: g  reason: collision with root package name */
    private final Function1<PeerageLogin, Unit> f52172g;
    @m8.h

    /* renamed from: h  reason: collision with root package name */
    private final Function0<Unit> f52173h;
    @m8.g

    /* renamed from: i  reason: collision with root package name */
    private final String f52174i;

    /* JADX WARN: Multi-variable type inference failed */
    public v(@m8.h UserBean userBean, @m8.g Function1<? super String, Unit> copyToClipBoard, @m8.g Function1<? super Boolean, Unit> goBack, @m8.g Function1<? super String, Unit> aliPay, @m8.g Function1<? super Integer, Unit> startChat, @m8.g Function1<? super String, Unit> openExternalUrl, @m8.h Function1<? super PeerageLogin, Unit> function1, @m8.h Function0<Unit> function0) {
        Intrinsics.checkNotNullParameter(copyToClipBoard, "copyToClipBoard");
        Intrinsics.checkNotNullParameter(goBack, "goBack");
        Intrinsics.checkNotNullParameter(aliPay, "aliPay");
        Intrinsics.checkNotNullParameter(startChat, "startChat");
        Intrinsics.checkNotNullParameter(openExternalUrl, "openExternalUrl");
        this.f52166a = userBean;
        this.f52167b = copyToClipBoard;
        this.f52168c = goBack;
        this.f52169d = aliPay;
        this.f52170e = startChat;
        this.f52171f = openExternalUrl;
        this.f52172g = function1;
        this.f52173h = function0;
        this.f52174i = "WebViewJavascriptInterface";
    }

    private final String a(String str) {
        boolean startsWith$default;
        boolean endsWith$default;
        if (str.length() > 2) {
            startsWith$default = StringsKt__StringsJVMKt.startsWith$default(str, "\"", false, 2, null);
            if (startsWith$default) {
                endsWith$default = StringsKt__StringsJVMKt.endsWith$default(str, "\"", false, 2, null);
                if (endsWith$default) {
                    String substring = str.substring(1, str.length() - 1);
                    Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
                    return substring;
                }
                return str;
            }
            return str;
        }
        return str;
    }

    @JavascriptInterface
    public final void Close(@m8.g String str) {
        Intrinsics.checkNotNullParameter(str, "str");
        String str2 = this.f52174i;
        o0.g(str2, "Close('" + str + "')");
        this.f52168c.invoke(Boolean.TRUE);
    }

    @JavascriptInterface
    public final void aliPayBy(@m8.h String str) {
        String str2 = this.f52174i;
        o0.g(str2, "aliPayBy(): " + str);
        try {
            if (str == null) {
                str = "";
            }
            String orderInfo = new JSONObject(str).getString("orderString");
            Function1<String, Unit> function1 = this.f52169d;
            Intrinsics.checkNotNullExpressionValue(orderInfo, "orderInfo");
            function1.invoke(orderInfo);
        } catch (JSONException e4) {
            com.qennnsad.aknkaksd.util.toast.a.n("数据异常", false, 2, null);
            Timber.f93860a.y(e4);
        }
    }

    @JavascriptInterface
    @m8.g
    public final String appInfo() {
        UserBean userBean = this.f52166a;
        if (userBean == null) {
            return "";
        }
        String info = new Gson().toJson(new WebAppInfo(null, null, null, userBean.getLob_no(), 0, 23, null));
        String str = this.f52174i;
        o0.g(str, "appInfo(): " + info);
        Intrinsics.checkNotNullExpressionValue(info, "info");
        return info;
    }

    @JavascriptInterface
    public final void copyFn(@m8.g String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.f52167b.invoke(a(value));
    }

    @JavascriptInterface
    public final void createConversation(@m8.h String str) {
        Integer intOrNull;
        String str2 = this.f52174i;
        o0.g(str2, "createConversation:" + str);
        try {
            if (str == null) {
                return;
            }
            String string = new JSONObject(str).getString("user_id");
            Intrinsics.checkNotNullExpressionValue(string, "jsonObject.getString(\"user_id\")");
            intOrNull = StringsKt__StringNumberConversionsKt.toIntOrNull(string);
            if (intOrNull != null) {
                this.f52170e.invoke(Integer.valueOf(intOrNull.intValue()));
            }
        } catch (JSONException e4) {
            Timber.b bVar = Timber.f93860a;
            bVar.k("webviewmethod-JSONException:" + str, new Object[0]);
            bVar.y(e4);
        }
    }

    @JavascriptInterface
    public final void enterFullScreen() {
        Timber.f93860a.a("Enter Full Screen", new Object[0]);
    }

    @JavascriptInterface
    public final void financePageEntered(@m8.g String json) {
        Intrinsics.checkNotNullParameter(json, "json");
        String str = this.f52174i;
        o0.g(str, "FinancePageEntered: " + json);
        Function0<Unit> function0 = this.f52173h;
        if (function0 != null) {
            function0.invoke();
        }
    }

    @m8.g
    public final Function1<String, Unit> getAliPay() {
        return this.f52169d;
    }

    @m8.g
    public final Function1<String, Unit> getCopyToClipBoard() {
        return this.f52167b;
    }

    @m8.g
    public final Function1<Boolean, Unit> getGoBack() {
        return this.f52168c;
    }

    @m8.h
    public final Function0<Unit> getGuestWarning() {
        return this.f52173h;
    }

    @m8.g
    public final Function1<String, Unit> getOpenExternalUrl() {
        return this.f52171f;
    }

    @m8.h
    public final Function1<PeerageLogin, Unit> getPeerageLogin() {
        return this.f52172g;
    }

    @m8.g
    public final Function1<Integer, Unit> getStartChat() {
        return this.f52170e;
    }

    @m8.h
    public final UserBean getUser() {
        return this.f52166a;
    }

    @JavascriptInterface
    public final void jsCopy(@m8.g String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.f52167b.invoke(a(value));
    }

    @JavascriptInterface
    public final void openSystemCustomer() {
        Timber.f93860a.a("openSystemCustomer", new Object[0]);
    }

    @JavascriptInterface
    public final void openUrl(@m8.h String str) {
        String str2 = this.f52174i;
        o0.g(str2, "openUrl:" + str);
        try {
            if (str == null) {
                return;
            }
            String url = new JSONObject(str).getString("url");
            Function1<String, Unit> function1 = this.f52171f;
            Intrinsics.checkNotNullExpressionValue(url, "url");
            function1.invoke(url);
        } catch (Exception e4) {
            Timber.f93860a.y(e4);
        }
    }

    @JavascriptInterface
    public final void popPage() {
        this.f52168c.invoke(Boolean.FALSE);
    }

    @JavascriptInterface
    public final void preview_mount(@m8.g String json) {
        Intrinsics.checkNotNullParameter(json, "json");
        String str = this.f52174i;
        o0.g(str, "preview_mount(): " + json);
        if (this.f52166a == null) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(json);
            String string = jSONObject.getString("mount_name");
            String string2 = jSONObject.getString("mount_url");
            int i4 = jSONObject.getInt("peerage_id");
            String string3 = jSONObject.getString("peerage_name");
            PeerageLogin peerageLogin = new PeerageLogin();
            peerageLogin.setMount_name(string);
            peerageLogin.setMount_url(string2);
            peerageLogin.setPeerage_id(i4);
            peerageLogin.setPeerage_name(string3);
            peerageLogin.setAvatar(this.f52166a.getAvatar());
            peerageLogin.setNick_name(this.f52166a.getNickname());
            Function1<PeerageLogin, Unit> function1 = this.f52172g;
            if (function1 != null) {
                function1.invoke(peerageLogin);
            }
        } catch (JSONException unused) {
            Timber.b bVar = Timber.f93860a;
            bVar.x("webviewmethod-JSONException" + json, new Object[0]);
        }
    }

    @JavascriptInterface
    @m8.g
    public final String userInfo() {
        Integer intOrNull;
        UserBean userBean = this.f52166a;
        if (userBean == null) {
            return "";
        }
        int is_im = userBean.is_im();
        intOrNull = StringsKt__StringNumberConversionsKt.toIntOrNull(this.f52166a.getId());
        String info = new Gson().toJson(new WebUserInfo(is_im, intOrNull != null ? intOrNull.intValue() : 0));
        String str = this.f52174i;
        o0.g(str, "userInfo(): " + info);
        Intrinsics.checkNotNullExpressionValue(info, "info");
        return info;
    }

    @JavascriptInterface
    public final void wxPayLx(@m8.h String str) {
        String str2 = this.f52174i;
        o0.g(str2, "close(): " + str);
    }

    public /* synthetic */ v(UserBean userBean, Function1 function1, Function1 function12, Function1 function13, Function1 function14, Function1 function15, Function1 function16, Function0 function0, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(userBean, function1, function12, function13, function14, function15, (i4 & 64) != 0 ? null : function16, (i4 & 128) != 0 ? null : function0);
    }
}

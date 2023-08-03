package com.qennnsad.aknkaksd.presentation.module.main.webview;

import android.content.Context;
import android.net.http.SslError;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import androidx.exifinterface.media.ExifInterface;
import com.facebook.common.callercontext.ContextChain;
import com.ksy.statlibrary.db.DBConstant;
import com.qennnsad.aknkaksd.data.bean.ConfigBean;
import com.qennnsad.aknkaksd.data.bean.HostBean;
import com.qennnsad.aknkaksd.data.interceptor.WebViewInterceptedError;
import com.qennnsad.aknkaksd.presentation.common.BaseMvvmActivity;
import com.qennnsad.aknkaksd.presentation.ui.main.LogoutCaller;
import com.qennnsad.aknkaksd.util.o0;
import com.qennnsad.aknkaksd.util.t0;
import io.sentry.e3;
import io.sentry.protocol.y;
import java.lang.ref.WeakReference;
import java.util.concurrent.TimeUnit;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import kotlinx.coroutines.u0;
import okhttp3.OkHttpClient;

/* compiled from: InterceptorWebViewClient.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0011\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\b&\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010A\u001a\u00020@\u0012\u0006\u0010F\u001a\u00020E\u0012\u0006\u0010(\u001a\u00020#\u0012\u0006\u0010J\u001a\u00020\t¢\u0006\u0004\bK\u0010LJ\u0014\u0010\u0005\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0003H\u0002J\u0014\u0010\b\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0018\u0010\u000e\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000bH\u0002J \u0010\u0011\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002J\u0010\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J$\u0010\u0019\u001a\u00020\r2\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u00122\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0018H\u0002J\f\u0010\u001a\u001a\u00020\u0012*\u00020\u0012H\u0002J\u0010\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u0012H\u0004J\u0018\u0010\u001d\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000bH\u0016J&\u0010\"\u001a\u00020\r2\b\u0010\n\u001a\u0004\u0018\u00010\t2\b\u0010\u001f\u001a\u0004\u0018\u00010\u001e2\b\u0010!\u001a\u0004\u0018\u00010 H\u0016R\u0017\u0010(\u001a\u00020#8\u0006¢\u0006\f\n\u0004\b$\u0010%\u001a\u0004\b&\u0010'R\u0014\u0010+\u001a\u00020\u00128\u0002X\u0082D¢\u0006\u0006\n\u0004\b)\u0010*R\u001a\u0010/\u001a\b\u0012\u0004\u0012\u00020\u00120,8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b-\u0010.R\u001c\u00103\u001a\u00020\u00128B@\u0002X\u0082\u000e¢\u0006\f\n\u0004\b0\u0010*\u001a\u0004\b1\u00102R\u001b\u00107\u001a\u00020\u00158BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001d\u00104\u001a\u0004\b5\u00106R\u001b\u0010<\u001a\u0002088BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b9\u00104\u001a\u0004\b:\u0010;R\u001b\u0010?\u001a\u0002088BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b=\u00104\u001a\u0004\b>\u0010;R\u0017\u0010A\u001a\u00020@8\u0006¢\u0006\f\n\u0004\bA\u0010B\u001a\u0004\bC\u0010DR\u0017\u0010F\u001a\u00020E8\u0006¢\u0006\f\n\u0004\bF\u0010G\u001a\u0004\bH\u0010I¨\u0006M"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/main/webview/e;", "Lcom/konstantinschubert/writeinterceptingwebview/e;", "Lokhttp3/OkHttpClient$Builder;", "", "sec", "H", "", u0.f86831d, "t", "Landroid/webkit/WebView;", "view", "Lcom/konstantinschubert/writeinterceptingwebview/c;", e3.b.f83149d, "", "r", "Lcom/qennnsad/aknkaksd/data/interceptor/WebViewInterceptedError;", "e", "B", "", "msg", ExifInterface.LONGITUDE_EAST, "Ljava/lang/StringBuffer;", DBConstant.TABLE_NAME_LOG, "url", "Ljava/lang/Exception;", "F", "J", "failedUrl", "I", "j", "Landroid/webkit/SslErrorHandler;", "handler", "Landroid/net/http/SslError;", com.qennnsad.aknkaksd.data.websocket.b.f47825n, "onReceivedSslError", "Lcom/qennnsad/aknkaksd/util/t0;", "f", "Lcom/qennnsad/aknkaksd/util/t0;", y.b.f83919g, "()Lcom/qennnsad/aknkaksd/util/t0;", "networkUtility", "g", "Ljava/lang/String;", "TAG", "", "h", "[Ljava/lang/String;", "HTTP_ERRORS_IGNORED", ContextChain.TAG_INFRA, "z", "()Ljava/lang/String;", "webHost", "Lkotlin/Lazy;", y.b.f83920h, "()Ljava/lang/StringBuffer;", "reportInfo", "Lokhttp3/OkHttpClient;", "k", "v", "()Lokhttp3/OkHttpClient;", "httpClient", "l", "u", "brotliClient", "Lg5/a;", "localDataManager", "Lg5/a;", "w", "()Lg5/a;", "Lc5/g;", "webViewAuthInterceptor", "Lc5/g;", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "()Lc5/g;", "webView", "<init>", "(Lg5/a;Lc5/g;Lcom/qennnsad/aknkaksd/util/t0;Landroid/webkit/WebView;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public abstract class e extends com.konstantinschubert.writeinterceptingwebview.e {
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private final g5.a f52126d;
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final c5.g f52127e;
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    private final t0 f52128f;
    @m8.g

    /* renamed from: g  reason: collision with root package name */
    private final String f52129g;
    @m8.g

    /* renamed from: h  reason: collision with root package name */
    private final String[] f52130h;
    @m8.g

    /* renamed from: i  reason: collision with root package name */
    private String f52131i;
    @m8.g

    /* renamed from: j  reason: collision with root package name */
    private final Lazy f52132j;
    @m8.g

    /* renamed from: k  reason: collision with root package name */
    private final Lazy f52133k;
    @m8.g

    /* renamed from: l  reason: collision with root package name */
    private final Lazy f52134l;

    /* compiled from: InterceptorWebViewClient.kt */
    @Metadata(bv = {}, d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lokhttp3/OkHttpClient;", "a", "()Lokhttp3/OkHttpClient;"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    static final class a extends Lambda implements Function0<OkHttpClient> {
        a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        @m8.g
        /* renamed from: a */
        public final OkHttpClient invoke() {
            e eVar = e.this;
            return eVar.t(eVar.H(new OkHttpClient().newBuilder().addInterceptor(c5.i.f4019a), 60L), false).build();
        }
    }

    /* compiled from: InterceptorWebViewClient.kt */
    @Metadata(bv = {}, d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lokhttp3/OkHttpClient;", "a", "()Lokhttp3/OkHttpClient;"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    static final class b extends Lambda implements Function0<OkHttpClient> {
        b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        @m8.g
        /* renamed from: a */
        public final OkHttpClient invoke() {
            e eVar = e.this;
            return eVar.t(eVar.H(new OkHttpClient().newBuilder().addInterceptor(e.this.A()).addInterceptor(c5.i.f4019a), 60L), false).build();
        }
    }

    /* compiled from: InterceptorWebViewClient.kt */
    @Metadata(bv = {}, d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Ljava/lang/StringBuffer;", "a", "()Ljava/lang/StringBuffer;"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    static final class c extends Lambda implements Function0<StringBuffer> {

        /* renamed from: a  reason: collision with root package name */
        public static final c f52137a = new c();

        c() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        @m8.g
        /* renamed from: a */
        public final StringBuffer invoke() {
            return new StringBuffer();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(@m8.g g5.a localDataManager, @m8.g c5.g webViewAuthInterceptor, @m8.g t0 networkUtility, @m8.g WebView webView) {
        super(new WeakReference(webView));
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Intrinsics.checkNotNullParameter(localDataManager, "localDataManager");
        Intrinsics.checkNotNullParameter(webViewAuthInterceptor, "webViewAuthInterceptor");
        Intrinsics.checkNotNullParameter(networkUtility, "networkUtility");
        Intrinsics.checkNotNullParameter(webView, "webView");
        this.f52126d = localDataManager;
        this.f52127e = webViewAuthInterceptor;
        this.f52128f = networkUtility;
        this.f52129g = "InterceptorWebViewClient";
        this.f52130h = new String[]{"/favicon.ico"};
        this.f52131i = "";
        lazy = LazyKt__LazyJVMKt.lazy(c.f52137a);
        this.f52132j = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new b());
        this.f52133k = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new a());
        this.f52134l = lazy3;
    }

    private final void B(final WebView webView, com.konstantinschubert.writeinterceptingwebview.c cVar, final WebViewInterceptedError webViewInterceptedError) {
        int code = webViewInterceptedError.getCode();
        if (code == 404 || code == 410) {
            return;
        }
        switch (code) {
            case 301:
            case 302:
            case 303:
                String redirectLocation = webViewInterceptedError.getRedirectLocation();
                if (redirectLocation == null || redirectLocation.length() == 0) {
                    return;
                }
                String str = this.f52129g;
                o0.a(str, "Redirect to " + webViewInterceptedError.getRedirectLocation());
                webView.post(new Runnable() { // from class: com.qennnsad.aknkaksd.presentation.module.main.webview.b
                    @Override // java.lang.Runnable
                    public final void run() {
                        e.C(webView, webViewInterceptedError);
                    }
                });
                return;
            case 304:
                return;
            default:
                webView.post(new Runnable() { // from class: com.qennnsad.aknkaksd.presentation.module.main.webview.c
                    @Override // java.lang.Runnable
                    public final void run() {
                        e.D(webView, webViewInterceptedError, this);
                    }
                });
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C(WebView view, WebViewInterceptedError e4) {
        Intrinsics.checkNotNullParameter(view, "$view");
        Intrinsics.checkNotNullParameter(e4, "$e");
        view.loadUrl(e4.getRedirectLocation());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D(WebView this_run, WebViewInterceptedError e4, e this$0) {
        Intrinsics.checkNotNullParameter(this_run, "$this_run");
        Intrinsics.checkNotNullParameter(e4, "$e");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this_run.stopLoading();
        Context context = this_run.getContext();
        BaseMvvmActivity baseMvvmActivity = context instanceof BaseMvvmActivity ? (BaseMvvmActivity) context : null;
        if (baseMvvmActivity != null) {
            if (e4.getCode() != 401 && e4.getCode() != 403) {
                if (e4.getCode() == 429) {
                    baseMvvmActivity.e0();
                } else {
                    com.qennnsad.aknkaksd.util.toast.a.f(e4.getMessage(), false, 2, null);
                }
            } else if (this$0.f52128f.n()) {
            } else {
                com.qennnsad.aknkaksd.util.l.M(baseMvvmActivity, LogoutCaller.WebViewAuth);
            }
        }
    }

    private final void E(String str) {
        StringBuffer y9 = y();
        y9.append(str);
        y9.append(" | ");
        o0.a(this.f52129g, str);
    }

    private final void F(StringBuffer stringBuffer, String str, Exception exc) {
        boolean contains$default;
        contains$default = StringsKt__StringsKt.contains$default((CharSequence) str, (CharSequence) "/home/payment/", false, 2, (Object) null);
        if (contains$default) {
            com.qennnsad.aknkaksd.analytics.error.b.f47679a.a().b(new Exception(((Object) stringBuffer) + " ---> " + str, exc));
        }
    }

    static /* synthetic */ void G(e eVar, StringBuffer stringBuffer, String str, Exception exc, int i4, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: reportCrashlytics");
        }
        if ((i4 & 4) != 0) {
            exc = new Exception("Intercept failure");
        }
        eVar.F(stringBuffer, str, exc);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final OkHttpClient.Builder H(OkHttpClient.Builder builder, long j4) {
        TimeUnit timeUnit = TimeUnit.SECONDS;
        builder.connectTimeout(j4, timeUnit);
        builder.readTimeout(j4, timeUnit);
        builder.writeTimeout(j4, timeUnit);
        return builder;
    }

    private final String J(String str) {
        int indexOf$default;
        CharSequence trim;
        indexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) str, ';', 0, false, 6, (Object) null);
        if (indexOf$default >= 0) {
            String substring = str.substring(0, indexOf$default);
            Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
            trim = StringsKt__StringsKt.trim((CharSequence) substring);
            return trim.toString();
        }
        return str;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0069 A[Catch: Exception -> 0x019b, TryCatch #0 {Exception -> 0x019b, blocks: (B:3:0x001e, B:5:0x002e, B:7:0x0037, B:9:0x004a, B:19:0x0060, B:21:0x0069, B:24:0x0083, B:26:0x0089, B:29:0x00a3, B:31:0x00d4, B:32:0x00ee, B:34:0x00f4, B:36:0x0116, B:37:0x0151, B:39:0x0163, B:41:0x0169, B:45:0x017d, B:47:0x0183, B:49:0x0189, B:30:0x00bc), top: B:60:0x001e }] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0081  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final void r(final android.webkit.WebView r11, com.konstantinschubert.writeinterceptingwebview.c r12) {
        /*
            Method dump skipped, instructions count: 473
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qennnsad.aknkaksd.presentation.module.main.webview.e.r(android.webkit.WebView, com.konstantinschubert.writeinterceptingwebview.c):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s(WebView view, Exception e4) {
        Intrinsics.checkNotNullParameter(view, "$view");
        Intrinsics.checkNotNullParameter(e4, "$e");
        view.stopLoading();
        com.qennnsad.aknkaksd.util.toast.a.f(e4.getMessage(), false, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final OkHttpClient.Builder t(OkHttpClient.Builder builder, boolean z9) {
        builder.followRedirects(z9);
        builder.followSslRedirects(z9);
        return builder;
    }

    private final OkHttpClient u() {
        return (OkHttpClient) this.f52134l.getValue();
    }

    private final OkHttpClient v() {
        return (OkHttpClient) this.f52133k.getValue();
    }

    private final StringBuffer y() {
        return (StringBuffer) this.f52132j.getValue();
    }

    private final String z() {
        HostBean host;
        if (this.f52131i.length() == 0) {
            ConfigBean e4 = this.f52126d.e();
            this.f52131i = (e4 == null || (host = e4.getHost()) == null || (r0 = host.getWeb()) == null) ? "" : "";
        }
        return this.f52131i;
    }

    @m8.g
    public final c5.g A() {
        return this.f52127e;
    }

    protected final boolean I(@m8.g String failedUrl) {
        String str;
        boolean endsWith$default;
        Intrinsics.checkNotNullParameter(failedUrl, "failedUrl");
        String[] strArr = this.f52130h;
        int length = strArr.length;
        int i4 = 0;
        while (true) {
            str = null;
            if (i4 >= length) {
                break;
            }
            String str2 = strArr[i4];
            endsWith$default = StringsKt__StringsJVMKt.endsWith$default(failedUrl, str2, false, 2, null);
            if (endsWith$default) {
                str = str2;
                break;
            }
            i4++;
        }
        return str != null;
    }

    @Override // com.konstantinschubert.writeinterceptingwebview.e
    public void j(@m8.g WebView view, @m8.g com.konstantinschubert.writeinterceptingwebview.c request) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(request, "request");
        r(view, request);
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedSslError(@m8.h WebView webView, @m8.h SslErrorHandler sslErrorHandler, @m8.h SslError sslError) {
        String str;
        if (sslErrorHandler != null) {
            sslErrorHandler.cancel();
        }
        Integer valueOf = sslError != null ? Integer.valueOf(sslError.getPrimaryError()) : null;
        if (valueOf != null && valueOf.intValue() == 3) {
            str = "The certificate authority is not trusted.";
        } else if (valueOf != null && valueOf.intValue() == 1) {
            str = "The certificate has expired.";
        } else if (valueOf != null && valueOf.intValue() == 2) {
            str = "The certificate Hostname mismatch.";
        } else {
            str = (valueOf != null && valueOf.intValue() == 0) ? "The certificate is not yet valid." : "SSL Certificate error.";
        }
        com.qennnsad.aknkaksd.util.toast.a.n(str, false, 2, null);
    }

    @m8.g
    public final g5.a w() {
        return this.f52126d;
    }

    @m8.g
    public final t0 x() {
        return this.f52128f;
    }
}

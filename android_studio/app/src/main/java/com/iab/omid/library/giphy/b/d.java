package com.iab.omid.library.giphy.b;

import a.u0;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.webkit.WebView;
import com.iab.omid.library.giphy.adsession.ErrorType;
import io.sentry.Session;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private static d f39384a = new d();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ WebView f39385a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f39386b;

        a(WebView webView, String str) {
            this.f39385a = webView;
            this.f39386b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f39385a.loadUrl(this.f39386b);
        }
    }

    private d() {
    }

    public static d a() {
        return f39384a;
    }

    public void b(WebView webView) {
        g(webView, "finishSession", new Object[0]);
    }

    public void c(WebView webView, float f10) {
        g(webView, "setDeviceVolume", Float.valueOf(f10));
    }

    public void d(WebView webView, ErrorType errorType, String str) {
        g(webView, com.qennnsad.aknkaksd.data.websocket.b.f47825n, errorType.toString(), str);
    }

    public void e(WebView webView, String str, JSONObject jSONObject) {
        if (jSONObject != null) {
            g(webView, "publishVideoEvent", str, jSONObject);
        } else {
            g(webView, "publishVideoEvent", str);
        }
    }

    public void f(WebView webView, String str, JSONObject jSONObject, JSONObject jSONObject2) {
        g(webView, "startSession", str, jSONObject, jSONObject2);
    }

    @u0
    void g(WebView webView, String str, Object... objArr) {
        if (webView == null) {
            com.iab.omid.library.giphy.d.c.a("The WebView is null for " + str);
            return;
        }
        StringBuilder sb = new StringBuilder(128);
        sb.append("javascript: if(window.omidBridge!==undefined){omidBridge.");
        sb.append(str);
        sb.append("(");
        j(sb, objArr);
        sb.append(")}");
        h(webView, sb);
    }

    @u0
    void h(WebView webView, StringBuilder sb) {
        String sb2 = sb.toString();
        Handler handler = webView.getHandler();
        if (handler == null || Looper.myLooper() == handler.getLooper()) {
            webView.loadUrl(sb2);
        } else {
            handler.post(new a(webView, sb2));
        }
    }

    public void i(WebView webView, JSONObject jSONObject) {
        g(webView, Session.b.f81842c, jSONObject);
    }

    @u0
    void j(StringBuilder sb, Object[] objArr) {
        if (objArr == null || objArr.length <= 0) {
            return;
        }
        for (Object obj : objArr) {
            if (obj == null) {
                sb.append('\"');
            } else {
                if (obj instanceof String) {
                    String obj2 = obj.toString();
                    if (obj2.startsWith("{")) {
                        sb.append(obj2);
                    } else {
                        sb.append('\"');
                        sb.append(obj2);
                    }
                } else {
                    sb.append(obj);
                }
                sb.append(",");
            }
            sb.append('\"');
            sb.append(",");
        }
        sb.setLength(sb.length() - 1);
    }

    public boolean k(WebView webView, String str) {
        if (webView == null || TextUtils.isEmpty(str)) {
            return false;
        }
        webView.loadUrl("javascript: " + str);
        return true;
    }

    public void l(WebView webView) {
        g(webView, "publishImpressionEvent", new Object[0]);
    }

    public void m(WebView webView, String str) {
        if (str != null) {
            k(webView, "var script=document.createElement('script');script.setAttribute(\"type\",\"text/javascript\");script.setAttribute(\"src\",\"%SCRIPT_SRC%\");document.body.appendChild(script);".replace("%SCRIPT_SRC%", str));
        }
    }

    public void n(WebView webView, String str) {
        g(webView, "setNativeViewHierarchy", str);
    }

    public void o(WebView webView, String str) {
        g(webView, "setState", str);
    }
}

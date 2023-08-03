package com.hcaptcha.sdk;

import android.os.Handler;
import android.util.Log;
import android.webkit.JavascriptInterface;
import androidx.annotation.Nullable;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import java.io.Serializable;
import lombok.NonNull;

/* loaded from: classes2.dex */
class j implements Serializable {

    /* renamed from: d  reason: collision with root package name */
    public static final String f38391d = "JSInterface";
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final Handler f38392a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final String f38393b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private final p f38394c;

    /* loaded from: classes2.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ String f38395a;

        public a(String str) {
            this.f38395a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            j.this.f38394c.onSuccess(this.f38395a);
        }
    }

    /* loaded from: classes2.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ HCaptchaError f38397a;

        public b(HCaptchaError hCaptchaError) {
            this.f38397a = hCaptchaError;
        }

        @Override // java.lang.Runnable
        public void run() {
            j.this.f38394c.J(new HCaptchaException(this.f38397a));
        }
    }

    /* loaded from: classes2.dex */
    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            j.this.f38394c.N();
        }
    }

    /* loaded from: classes2.dex */
    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            j.this.f38394c.e();
        }
    }

    public j(Handler handler, HCaptchaConfig hCaptchaConfig, p pVar) {
        String str;
        this.f38392a = handler;
        this.f38394c = pVar;
        try {
            str = new ObjectMapper().writeValueAsString(hCaptchaConfig);
        } catch (JsonProcessingException unused) {
            Log.w(f38391d, "Cannot prepare config for passing to WebView. A fallback config will be used");
            str = null;
        }
        this.f38393b = str;
    }

    @JavascriptInterface
    public String getConfig() {
        return this.f38393b;
    }

    @JavascriptInterface
    public void onError(int i4) {
        k.b("JSInterface.onError %d", Integer.valueOf(i4));
        this.f38392a.post(new b(HCaptchaError.fromId(i4)));
    }

    @JavascriptInterface
    public void onLoaded() {
        k.a("JSInterface.onLoaded");
        this.f38392a.post(new c());
    }

    @JavascriptInterface
    public void onOpen() {
        k.a("JSInterface.onOpen");
        this.f38392a.post(new d());
    }

    @JavascriptInterface
    public void onPass(String str) {
        k.a("JSInterface.onPass");
        this.f38392a.post(new a(str));
    }
}

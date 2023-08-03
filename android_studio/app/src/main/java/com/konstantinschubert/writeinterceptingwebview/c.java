package com.konstantinschubert.writeinterceptingwebview;

import android.net.Uri;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import java.util.Map;

/* compiled from: WriteHandlingWebResourceRequest.java */
/* loaded from: classes3.dex */
public class c implements WebResourceRequest {

    /* renamed from: a  reason: collision with root package name */
    private final Uri f44079a;

    /* renamed from: b  reason: collision with root package name */
    private final WebResourceRequest f44080b;

    /* renamed from: c  reason: collision with root package name */
    private final String f44081c;

    /* renamed from: d  reason: collision with root package name */
    private WebResourceResponse f44082d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f44083e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(WebResourceRequest webResourceRequest, String str, Uri uri) {
        this.f44080b = webResourceRequest;
        this.f44081c = str;
        if (uri != null) {
            this.f44079a = uri;
        } else {
            this.f44079a = webResourceRequest.getUrl();
        }
    }

    public String a() {
        return this.f44081c;
    }

    public WebResourceResponse b() {
        return this.f44082d;
    }

    public boolean c() {
        return this.f44081c != null;
    }

    public boolean d() {
        return this.f44083e;
    }

    public void e(boolean z9) {
        this.f44083e = z9;
    }

    public void f(WebResourceResponse webResourceResponse) {
        this.f44082d = webResourceResponse;
    }

    @Override // android.webkit.WebResourceRequest
    public String getMethod() {
        return this.f44080b.getMethod();
    }

    @Override // android.webkit.WebResourceRequest
    public Map<String, String> getRequestHeaders() {
        return this.f44080b.getRequestHeaders();
    }

    @Override // android.webkit.WebResourceRequest
    public Uri getUrl() {
        return this.f44079a;
    }

    @Override // android.webkit.WebResourceRequest
    public boolean hasGesture() {
        return this.f44080b.hasGesture();
    }

    @Override // android.webkit.WebResourceRequest
    public boolean isForMainFrame() {
        return this.f44080b.isForMainFrame();
    }

    @Override // android.webkit.WebResourceRequest
    public boolean isRedirect() {
        throw new UnsupportedOperationException();
    }
}

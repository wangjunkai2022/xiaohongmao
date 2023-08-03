package com.konstantinschubert.writeinterceptingwebview;

import android.content.Context;
import android.net.Uri;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* compiled from: WriteHandlingWebViewClient.java */
/* loaded from: classes3.dex */
public abstract class e extends WebViewClient {

    /* renamed from: b  reason: collision with root package name */
    public static final List<String> f44085b = Arrays.asList("png", "jpeg", "jpg", "mp3", "mp4", "ico", "plist", "wav");

    /* renamed from: c  reason: collision with root package name */
    private static final String f44086c = "AJAXINTERCEPT";

    /* renamed from: a  reason: collision with root package name */
    private final Map<String, String> f44087a = new HashMap();

    public e(WeakReference<WebView> weakReference) {
        weakReference.get().addJavascriptInterface(new a(this), "interception");
    }

    private String b(String str) {
        String str2 = this.f44087a.get(str);
        this.f44087a.remove(str);
        return str2;
    }

    private String c(WebResourceRequest webResourceRequest) {
        return g(webResourceRequest, f44086c)[1];
    }

    private WebResourceResponse d(String str) {
        return new WebResourceResponse("text/html", "utf-8", new ByteArrayInputStream(str.getBytes()));
    }

    private Uri e(WebResourceRequest webResourceRequest, String str) {
        return Uri.parse(g(webResourceRequest, str)[0]);
    }

    private String f(WebResourceRequest webResourceRequest) {
        return b(c(webResourceRequest));
    }

    private String[] g(WebResourceRequest webResourceRequest, String str) {
        return webResourceRequest.getUrl().toString().split(str);
    }

    private WebResourceResponse h(WebResourceResponse webResourceResponse, Context context) {
        String encoding = webResourceResponse.getEncoding();
        String mimeType = webResourceResponse.getMimeType();
        return new WebResourceResponse(mimeType, encoding, i(context, webResourceResponse.getData(), mimeType, encoding));
    }

    private InputStream i(Context context, InputStream inputStream, String str, String str2) {
        try {
            if (inputStream == null) {
                return new ByteArrayInputStream(new byte[0]);
            }
            byte[] a10 = b.a(inputStream);
            if (str.contains("text/html")) {
                str = "text/html";
            }
            if (str.equals("text/html") && str2 != null) {
                a10 = a.a(context, a10).getBytes(str2);
            }
            return new ByteArrayInputStream(a10);
        } catch (Exception e4) {
            e4.printStackTrace();
            throw new RuntimeException(e4.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str, String str2) {
        this.f44087a.put(str, str2);
    }

    public abstract void j(WebView webView, c cVar);

    protected boolean k(WebResourceRequest webResourceRequest) {
        return webResourceRequest.getUrl().toString().contains(f44086c);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean l(String str) {
        for (String str2 : f44085b) {
            if (str.endsWith(str2)) {
                return true;
            }
            if (str.contains(str2 + f44086c)) {
                return true;
            }
        }
        return false;
    }

    @Override // android.webkit.WebViewClient
    public WebResourceResponse shouldInterceptRequest(final WebView webView, WebResourceRequest webResourceRequest) {
        Uri uri;
        String str;
        Uri url = webResourceRequest.getUrl();
        boolean k10 = k(webResourceRequest);
        if (k10) {
            str = f(webResourceRequest);
            uri = e(webResourceRequest, f44086c);
        } else {
            uri = url;
            str = null;
        }
        c cVar = new c(webResourceRequest, str, uri);
        j(webView, cVar);
        WebResourceResponse b10 = cVar.b();
        if (b10 == null || cVar.d()) {
            if (k10) {
                Objects.requireNonNull(webView);
                webView.post(new Runnable() { // from class: com.konstantinschubert.writeinterceptingwebview.d
                    @Override // java.lang.Runnable
                    public final void run() {
                        webView.stopLoading();
                    }
                });
                return d("Error");
            }
            return b10;
        }
        return h(b10, webView.getContext());
    }
}

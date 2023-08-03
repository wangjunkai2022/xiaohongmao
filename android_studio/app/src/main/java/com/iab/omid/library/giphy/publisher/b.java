package com.iab.omid.library.giphy.publisher;

import android.annotation.SuppressLint;
import android.webkit.WebView;

/* loaded from: classes2.dex */
public class b extends a {
    @SuppressLint({"SetJavaScriptEnabled"})
    public b(WebView webView) {
        if (webView != null && !webView.getSettings().getJavaScriptEnabled()) {
            webView.getSettings().setJavaScriptEnabled(true);
        }
        c(webView);
    }
}

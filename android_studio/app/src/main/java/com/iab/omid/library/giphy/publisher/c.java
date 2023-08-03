package com.iab.omid.library.giphy.publisher;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.webkit.WebView;
import com.google.android.exoplayer2.k2;
import com.iab.omid.library.giphy.adsession.f;
import com.iab.omid.library.giphy.b.d;
import java.util.List;

/* loaded from: classes2.dex */
public class c extends com.iab.omid.library.giphy.publisher.a {

    /* renamed from: f  reason: collision with root package name */
    private WebView f39419f;

    /* renamed from: g  reason: collision with root package name */
    private List<f> f39420g;

    /* renamed from: h  reason: collision with root package name */
    private final String f39421h;

    /* loaded from: classes2.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private WebView f39422a;

        a() {
            this.f39422a = c.this.f39419f;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f39422a.destroy();
        }
    }

    public c(List<f> list, String str) {
        this.f39420g = list;
        this.f39421h = str;
    }

    @Override // com.iab.omid.library.giphy.publisher.a
    public void a() {
        super.a();
        w();
    }

    @Override // com.iab.omid.library.giphy.publisher.a
    public void m() {
        super.m();
        new Handler().postDelayed(new a(), k2.f23783i1);
        this.f39419f = null;
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    void w() {
        WebView webView = new WebView(com.iab.omid.library.giphy.b.c.a().c());
        this.f39419f = webView;
        webView.getSettings().setJavaScriptEnabled(true);
        c(this.f39419f);
        d.a().k(this.f39419f, this.f39421h);
        for (f fVar : this.f39420g) {
            d.a().m(this.f39419f, fVar.d().toExternalForm());
        }
    }
}

package com.konstantinschubert.writeinterceptingwebview;

import android.content.Context;
import android.webkit.JavascriptInterface;
import java.io.IOException;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AjaxInterceptJavascriptInterface.java */
/* loaded from: classes3.dex */
public class a {

    /* renamed from: b  reason: collision with root package name */
    private static String f44077b;

    /* renamed from: a  reason: collision with root package name */
    private e f44078a;

    public a(e eVar) {
        this.f44078a = eVar;
    }

    public static String a(Context context, byte[] bArr) throws IOException {
        if (f44077b == null) {
            f44077b = new String(b.a(context.getAssets().open("interceptheader.html")));
        }
        Document p9 = org.jsoup.a.p(new String(bArr));
        p9.K2().m(true);
        Elements j12 = p9.j1(com.google.android.exoplayer2.text.ttml.d.f25724o);
        if (j12.size() > 0) {
            j12.get(0).O1(f44077b);
        }
        return p9.toString();
    }

    @JavascriptInterface
    public void customAjax(String str, String str2) {
        this.f44078a.a(str, str2);
    }
}

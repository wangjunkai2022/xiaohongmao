package com.iab.omid.library.giphy.adsession;

import android.view.View;

/* loaded from: classes2.dex */
public abstract class b {
    public static b b(c cVar, d dVar) {
        com.iab.omid.library.giphy.d.e.a();
        com.iab.omid.library.giphy.d.e.d(cVar, "AdSessionConfiguration is null");
        com.iab.omid.library.giphy.d.e.d(dVar, "AdSessionContext is null");
        return new g(cVar, dVar);
    }

    public abstract void a(View view);

    public abstract void c(ErrorType errorType, String str);

    public abstract void d();

    public abstract String e();

    public abstract com.iab.omid.library.giphy.publisher.a f();

    public abstract void g(View view);

    public abstract void h();

    public abstract void i(View view);

    public abstract void j();
}

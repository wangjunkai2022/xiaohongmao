package com.iab.omid.library.giphy;

import android.content.Context;
import com.iab.omid.library.giphy.d.e;

/* loaded from: classes2.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private boolean f39394a;

    private void e(Context context) {
        e.d(context, "Application Context cannot be null");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String a() {
        return "1.2.13-Giphy";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(Context context) {
        e(context);
        if (f()) {
            return;
        }
        c(true);
        com.iab.omid.library.giphy.b.e.a().b(context);
        com.iab.omid.library.giphy.b.b.a().b(context);
        com.iab.omid.library.giphy.d.b.c(context);
        com.iab.omid.library.giphy.b.c.a().b(context);
    }

    void c(boolean z9) {
        this.f39394a = z9;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean d(String str) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean f() {
        return this.f39394a;
    }
}

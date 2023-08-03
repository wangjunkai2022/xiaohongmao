package com.iab.omid.library.giphy.d;

import android.text.TextUtils;
import com.iab.omid.library.giphy.adsession.Owner;
import com.iab.omid.library.giphy.adsession.g;

/* loaded from: classes2.dex */
public class e {
    public static void a() {
        if (!com.iab.omid.library.giphy.a.c()) {
            throw new IllegalStateException("Method called before OM SDK activation");
        }
    }

    public static void b(Owner owner) {
        if (owner.equals(Owner.NONE)) {
            throw new IllegalArgumentException("Impression owner is none");
        }
    }

    public static void c(g gVar) {
        if (gVar.s()) {
            throw new IllegalStateException("AdSession is started");
        }
    }

    public static void d(Object obj, String str) {
        if (obj == null) {
            throw new IllegalArgumentException(str);
        }
    }

    public static void e(String str, int i4, String str2) {
        if (str.length() > i4) {
            throw new IllegalArgumentException(str2);
        }
    }

    public static void f(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException(str2);
        }
    }

    public static void g(g gVar) {
        if (gVar.t()) {
            throw new IllegalStateException("AdSession is finished");
        }
    }

    public static void h(g gVar) {
        m(gVar);
        g(gVar);
    }

    public static void i(g gVar) {
        if (gVar.f().o() != null) {
            throw new IllegalStateException("AdEvents already exists for AdSession");
        }
    }

    public static void j(g gVar) {
        if (gVar.f().p() != null) {
            throw new IllegalStateException("VideoEvents already exists for AdSession");
        }
    }

    public static void k(g gVar) {
        if (!gVar.u()) {
            throw new IllegalStateException("Impression event is not expected from the Native AdSession");
        }
    }

    public static void l(g gVar) {
        if (!gVar.v()) {
            throw new IllegalStateException("Cannot create VideoEvents for JavaScript AdSession");
        }
    }

    private static void m(g gVar) {
        if (!gVar.s()) {
            throw new IllegalStateException("AdSession is not started");
        }
    }
}

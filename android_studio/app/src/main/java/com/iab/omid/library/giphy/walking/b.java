package com.iab.omid.library.giphy.walking;

import android.view.View;
import android.view.ViewParent;
import com.iab.omid.library.giphy.adsession.g;
import com.iab.omid.library.giphy.d.f;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;

/* loaded from: classes2.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private final HashMap<View, String> f39445a = new HashMap<>();

    /* renamed from: b  reason: collision with root package name */
    private final HashMap<View, ArrayList<String>> f39446b = new HashMap<>();

    /* renamed from: c  reason: collision with root package name */
    private final HashSet<View> f39447c = new HashSet<>();

    /* renamed from: d  reason: collision with root package name */
    private final HashSet<String> f39448d = new HashSet<>();

    /* renamed from: e  reason: collision with root package name */
    private final HashSet<String> f39449e = new HashSet<>();

    /* renamed from: f  reason: collision with root package name */
    private boolean f39450f;

    private void c(View view, g gVar) {
        ArrayList<String> arrayList = this.f39446b.get(view);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            this.f39446b.put(view, arrayList);
        }
        arrayList.add(gVar.e());
    }

    private void d(g gVar) {
        for (a4.a aVar : gVar.l()) {
            View view = aVar.get();
            if (view != null) {
                c(view, gVar);
            }
        }
    }

    private boolean j(View view) {
        if (view.hasWindowFocus()) {
            HashSet hashSet = new HashSet();
            while (view != null) {
                if (!f.d(view)) {
                    return false;
                }
                hashSet.add(view);
                ViewParent parent = view.getParent();
                view = parent instanceof View ? (View) parent : null;
            }
            this.f39447c.addAll(hashSet);
            return true;
        }
        return false;
    }

    public String a(View view) {
        if (this.f39445a.size() == 0) {
            return null;
        }
        String str = this.f39445a.get(view);
        if (str != null) {
            this.f39445a.remove(view);
        }
        return str;
    }

    public HashSet<String> b() {
        return this.f39448d;
    }

    public ArrayList<String> e(View view) {
        if (this.f39446b.size() == 0) {
            return null;
        }
        ArrayList<String> arrayList = this.f39446b.get(view);
        if (arrayList != null) {
            this.f39446b.remove(view);
            Collections.sort(arrayList);
        }
        return arrayList;
    }

    public HashSet<String> f() {
        return this.f39449e;
    }

    public c g(View view) {
        return this.f39447c.contains(view) ? c.PARENT_VIEW : this.f39450f ? c.OBSTRUCTION_VIEW : c.UNDERLYING_VIEW;
    }

    public void h() {
        com.iab.omid.library.giphy.b.a a10 = com.iab.omid.library.giphy.b.a.a();
        if (a10 != null) {
            for (g gVar : a10.e()) {
                View o9 = gVar.o();
                if (gVar.r()) {
                    if (o9 == null || !j(o9)) {
                        this.f39449e.add(gVar.e());
                    } else {
                        this.f39448d.add(gVar.e());
                        this.f39445a.put(o9, gVar.e());
                        d(gVar);
                    }
                }
            }
        }
    }

    public void i() {
        this.f39445a.clear();
        this.f39446b.clear();
        this.f39447c.clear();
        this.f39448d.clear();
        this.f39449e.clear();
        this.f39450f = false;
    }

    public void k() {
        this.f39450f = true;
    }
}

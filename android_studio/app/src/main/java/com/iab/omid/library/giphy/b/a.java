package com.iab.omid.library.giphy.b;

import com.iab.omid.library.giphy.adsession.g;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;

/* loaded from: classes2.dex */
public class a {

    /* renamed from: c  reason: collision with root package name */
    private static a f39372c = new a();

    /* renamed from: a  reason: collision with root package name */
    private final ArrayList<g> f39373a = new ArrayList<>();

    /* renamed from: b  reason: collision with root package name */
    private final ArrayList<g> f39374b = new ArrayList<>();

    private a() {
    }

    public static a a() {
        return f39372c;
    }

    public void b(g gVar) {
        this.f39373a.add(gVar);
    }

    public Collection<g> c() {
        return Collections.unmodifiableCollection(this.f39373a);
    }

    public void d(g gVar) {
        boolean g4 = g();
        this.f39374b.add(gVar);
        if (g4) {
            return;
        }
        e.a().c();
    }

    public Collection<g> e() {
        return Collections.unmodifiableCollection(this.f39374b);
    }

    public void f(g gVar) {
        boolean g4 = g();
        this.f39373a.remove(gVar);
        this.f39374b.remove(gVar);
        if (!g4 || g()) {
            return;
        }
        e.a().d();
    }

    public boolean g() {
        return this.f39374b.size() > 0;
    }
}

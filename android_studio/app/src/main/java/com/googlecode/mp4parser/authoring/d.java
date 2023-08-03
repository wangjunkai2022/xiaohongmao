package com.googlecode.mp4parser.authoring;

import com.googlecode.mp4parser.util.l;
import java.util.LinkedList;
import java.util.List;

/* compiled from: Movie.java */
/* loaded from: classes2.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    l f36034a;

    /* renamed from: b  reason: collision with root package name */
    List<h> f36035b;

    public d() {
        this.f36034a = l.f36990j;
        this.f36035b = new LinkedList();
    }

    public static long b(long j4, long j10) {
        return j10 == 0 ? j4 : b(j10, j4 % j10);
    }

    public void a(h hVar) {
        if (f(hVar.a0().i()) != null) {
            hVar.a0().t(d());
        }
        this.f36035b.add(hVar);
    }

    public l c() {
        return this.f36034a;
    }

    public long d() {
        long j4 = 0;
        for (h hVar : this.f36035b) {
            if (j4 < hVar.a0().i()) {
                j4 = hVar.a0().i();
            }
        }
        return j4 + 1;
    }

    public long e() {
        long h4 = g().iterator().next().a0().h();
        for (h hVar : g()) {
            h4 = b(hVar.a0().h(), h4);
        }
        return h4;
    }

    public h f(long j4) {
        for (h hVar : this.f36035b) {
            if (hVar.a0().i() == j4) {
                return hVar;
            }
        }
        return null;
    }

    public List<h> g() {
        return this.f36035b;
    }

    public void h(l lVar) {
        this.f36034a = lVar;
    }

    public void i(List<h> list) {
        this.f36035b = list;
    }

    public String toString() {
        String str = "Movie{ ";
        for (h hVar : this.f36035b) {
            str = String.valueOf(str) + "track_" + hVar.a0().i() + " (" + hVar.getHandler() + ") ";
        }
        return String.valueOf(str) + '}';
    }

    public d(List<h> list) {
        this.f36034a = l.f36990j;
        new LinkedList();
        this.f36035b = list;
    }
}

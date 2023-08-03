package com.iab.omid.library.giphy.walking;

import a.u0;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import com.iab.omid.library.giphy.c.a;
import com.iab.omid.library.giphy.d.f;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class a implements a.InterfaceC0297a {

    /* renamed from: g  reason: collision with root package name */
    private static a f39424g = new a();

    /* renamed from: h  reason: collision with root package name */
    private static Handler f39425h = new Handler(Looper.getMainLooper());

    /* renamed from: i  reason: collision with root package name */
    private static Handler f39426i = null;

    /* renamed from: j  reason: collision with root package name */
    private static final Runnable f39427j = new b();

    /* renamed from: k  reason: collision with root package name */
    private static final Runnable f39428k = new c();

    /* renamed from: b  reason: collision with root package name */
    private int f39430b;

    /* renamed from: f  reason: collision with root package name */
    private double f39434f;

    /* renamed from: a  reason: collision with root package name */
    private List<d> f39429a = new ArrayList();

    /* renamed from: d  reason: collision with root package name */
    private com.iab.omid.library.giphy.walking.b f39432d = new com.iab.omid.library.giphy.walking.b();

    /* renamed from: c  reason: collision with root package name */
    private com.iab.omid.library.giphy.c.b f39431c = new com.iab.omid.library.giphy.c.b();

    /* renamed from: e  reason: collision with root package name */
    private com.iab.omid.library.giphy.walking.d f39433e = new com.iab.omid.library.giphy.walking.d(new com.iab.omid.library.giphy.walking.a.c());

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.iab.omid.library.giphy.walking.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public class RunnableC0299a implements Runnable {
        RunnableC0299a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a.this.f39433e.c();
        }
    }

    /* loaded from: classes2.dex */
    static class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a.p().q();
        }
    }

    /* loaded from: classes2.dex */
    static class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (a.f39426i != null) {
                a.f39426i.post(a.f39427j);
                a.f39426i.postDelayed(a.f39428k, 200L);
            }
        }
    }

    /* loaded from: classes2.dex */
    public interface d {
        void a(int i4, long j4);
    }

    a() {
    }

    private void d(long j4) {
        if (this.f39429a.size() > 0) {
            for (d dVar : this.f39429a) {
                dVar.a(this.f39430b, j4);
            }
        }
    }

    private void e(View view, com.iab.omid.library.giphy.c.a aVar, JSONObject jSONObject, com.iab.omid.library.giphy.walking.c cVar) {
        aVar.b(view, jSONObject, this, cVar == com.iab.omid.library.giphy.walking.c.PARENT_VIEW);
    }

    private boolean f(View view, JSONObject jSONObject) {
        String a10 = this.f39432d.a(view);
        if (a10 != null) {
            com.iab.omid.library.giphy.d.b.e(jSONObject, a10);
            this.f39432d.k();
            return true;
        }
        return false;
    }

    private void i(View view, JSONObject jSONObject) {
        ArrayList<String> e4 = this.f39432d.e(view);
        if (e4 != null) {
            com.iab.omid.library.giphy.d.b.g(jSONObject, e4);
        }
    }

    public static a p() {
        return f39424g;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q() {
        r();
        l();
        s();
    }

    private void r() {
        this.f39430b = 0;
        this.f39434f = com.iab.omid.library.giphy.d.d.a();
    }

    private void s() {
        d((long) (com.iab.omid.library.giphy.d.d.a() - this.f39434f));
    }

    private void t() {
        if (f39426i == null) {
            Handler handler = new Handler(Looper.getMainLooper());
            f39426i = handler;
            handler.post(f39427j);
            f39426i.postDelayed(f39428k, 200L);
        }
    }

    private void u() {
        Handler handler = f39426i;
        if (handler != null) {
            handler.removeCallbacks(f39428k);
            f39426i = null;
        }
    }

    @Override // com.iab.omid.library.giphy.c.a.InterfaceC0297a
    public void a(View view, com.iab.omid.library.giphy.c.a aVar, JSONObject jSONObject) {
        com.iab.omid.library.giphy.walking.c g4;
        if (f.d(view) && (g4 = this.f39432d.g(view)) != com.iab.omid.library.giphy.walking.c.UNDERLYING_VIEW) {
            JSONObject a10 = aVar.a(view);
            com.iab.omid.library.giphy.d.b.h(jSONObject, a10);
            if (!f(view, a10)) {
                i(view, a10);
                e(view, aVar, a10, g4);
            }
            this.f39430b++;
        }
    }

    public void c() {
        t();
    }

    public void g(d dVar) {
        if (this.f39429a.contains(dVar)) {
            return;
        }
        this.f39429a.add(dVar);
    }

    public void h() {
        k();
        this.f39429a.clear();
        f39425h.post(new RunnableC0299a());
    }

    public void k() {
        u();
    }

    @u0
    void l() {
        this.f39432d.h();
        double a10 = com.iab.omid.library.giphy.d.d.a();
        com.iab.omid.library.giphy.c.a a11 = this.f39431c.a();
        if (this.f39432d.f().size() > 0) {
            this.f39433e.e(a11.a(null), this.f39432d.f(), a10);
        }
        if (this.f39432d.b().size() > 0) {
            JSONObject a12 = a11.a(null);
            e(null, a11, a12, com.iab.omid.library.giphy.walking.c.PARENT_VIEW);
            com.iab.omid.library.giphy.d.b.d(a12);
            this.f39433e.d(a12, this.f39432d.b(), a10);
        } else {
            this.f39433e.c();
        }
        this.f39432d.i();
    }

    public void v(d dVar) {
        if (this.f39429a.contains(dVar)) {
            this.f39429a.remove(dVar);
        }
    }
}

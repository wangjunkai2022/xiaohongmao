package com.qennnsad.aknkaksd.util.danmu;

import android.content.Context;
import android.graphics.Color;
import android.text.Spanned;
import androidx.vectordrawable.graphics.drawable.PathInterpolatorCompat;
import com.qennnsad.aknkaksd.data.bean.Danmu;
import com.qennnsad.aknkaksd.util.a1;
import java.util.HashMap;
import java.util.List;
import master.flame.danmaku.controller.c;
import master.flame.danmaku.controller.f;
import master.flame.danmaku.danmaku.model.android.DanmakuContext;
import master.flame.danmaku.danmaku.model.android.b;
import master.flame.danmaku.danmaku.model.android.e;

/* compiled from: LevelDanmuControl.java */
/* loaded from: classes3.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private Context f54648a;

    /* renamed from: b  reason: collision with root package name */
    private DanmakuContext f54649b;

    /* renamed from: c  reason: collision with root package name */
    private f f54650c;

    /* renamed from: d  reason: collision with root package name */
    private float f54651d = 11.0f;

    /* renamed from: e  reason: collision with root package name */
    private b.a f54652e = new a();

    /* compiled from: LevelDanmuControl.java */
    /* loaded from: classes3.dex */
    class a extends b.a {
        a() {
        }

        @Override // master.flame.danmaku.danmaku.model.android.b.a
        public void a(master.flame.danmaku.danmaku.model.d dVar, boolean z9) {
        }

        @Override // master.flame.danmaku.danmaku.model.android.b.a
        public void b(master.flame.danmaku.danmaku.model.d dVar) {
            if (dVar.f87280c instanceof Spanned) {
                dVar.f87280c = "";
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LevelDanmuControl.java */
    /* loaded from: classes3.dex */
    public class b implements c.d {
        b() {
        }

        @Override // master.flame.danmaku.controller.c.d
        public void o() {
        }

        @Override // master.flame.danmaku.controller.c.d
        public void q(master.flame.danmaku.danmaku.model.f fVar) {
        }

        @Override // master.flame.danmaku.controller.c.d
        public void v() {
            c.this.f54650c.start();
        }

        @Override // master.flame.danmaku.controller.c.d
        public void w(master.flame.danmaku.danmaku.model.d dVar) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LevelDanmuControl.java */
    /* renamed from: com.qennnsad.aknkaksd.util.danmu.c$c  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public class C0459c extends master.flame.danmaku.danmaku.parser.a {
        C0459c() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // master.flame.danmaku.danmaku.parser.a
        /* renamed from: m */
        public e f() {
            return new e();
        }
    }

    /* compiled from: LevelDanmuControl.java */
    /* loaded from: classes3.dex */
    class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f54656a;

        d(List list) {
            this.f54656a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            for (int i4 = 0; i4 < this.f54656a.size(); i4++) {
                c.this.b((Danmu) this.f54656a.get(i4), i4);
            }
        }
    }

    public c(Context context) {
        this.f54648a = context;
        g();
    }

    private void g() {
        HashMap hashMap = new HashMap();
        hashMap.put(1, 5);
        HashMap hashMap2 = new HashMap();
        Boolean bool = Boolean.TRUE;
        hashMap2.put(1, bool);
        hashMap2.put(5, bool);
        DanmakuContext e4 = DanmakuContext.e();
        this.f54649b = e4;
        e4.G(0, new float[0]).K(false).W(1.0f).V(1.2f).B(new n5.a(this.f54648a), this.f54652e).R(hashMap).u(hashMap2);
    }

    private void h() {
        f fVar = this.f54650c;
        if (fVar != null) {
            fVar.setCallback(new b());
            this.f54650c.l(new C0459c(), this.f54649b);
            this.f54650c.x(true);
        }
    }

    public void b(Danmu danmu, int i4) {
        master.flame.danmaku.danmaku.model.d b10;
        if (danmu == null || danmu.content == null || (b10 = this.f54649b.A.b(1)) == null) {
            return;
        }
        b10.f87280c = danmu.content;
        b10.B = danmu.effectid;
        b10.f87292o = (byte) 0;
        b10.f87303z = true;
        b10.G(this.f54650c.getCurrentTime() + (i4 * PathInterpolatorCompat.MAX_NUM_POINTS));
        b10.f87289l = a1.d(this.f54648a, this.f54651d);
        b10.f87284g = Color.rgb(253, 170, 42);
        b10.f87287j = 0;
        this.f54650c.b(b10);
    }

    public void c(List<Danmu> list) {
        new Thread(new d(list)).start();
    }

    public void d() {
        f fVar = this.f54650c;
        if (fVar == null || !fVar.r()) {
            return;
        }
        this.f54650c.t();
    }

    public void e() {
        f fVar = this.f54650c;
        if (fVar != null) {
            fVar.release();
            this.f54650c = null;
        }
    }

    public void f() {
        f fVar = this.f54650c;
        if (fVar != null) {
            fVar.hide();
        }
    }

    public void i() {
        f fVar = this.f54650c;
        if (fVar == null || !fVar.r()) {
            return;
        }
        this.f54650c.pause();
    }

    public void j() {
        f fVar = this.f54650c;
        if (fVar != null) {
            fVar.d(true);
        }
    }

    public void k() {
        f fVar = this.f54650c;
        if (fVar != null && fVar.r() && this.f54650c.i()) {
            this.f54650c.k();
        }
    }

    public void l(f fVar) {
        this.f54650c = fVar;
        h();
    }

    public void m() {
        f fVar = this.f54650c;
        if (fVar != null) {
            fVar.show();
        }
    }
}

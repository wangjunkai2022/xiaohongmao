package master.flame.danmaku.danmaku.model.android;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.TextPaint;
import master.flame.danmaku.danmaku.model.android.a;
import master.flame.danmaku.danmaku.model.o;

/* compiled from: BaseCacheStuffer.java */
/* loaded from: classes4.dex */
public abstract class b {

    /* renamed from: a  reason: collision with root package name */
    protected a f87209a;

    /* compiled from: BaseCacheStuffer.java */
    /* loaded from: classes4.dex */
    public static abstract class a {
        public abstract void a(master.flame.danmaku.danmaku.model.d dVar, boolean z9);

        public abstract void b(master.flame.danmaku.danmaku.model.d dVar);
    }

    public void a(master.flame.danmaku.danmaku.model.d dVar) {
    }

    public abstract void b();

    public boolean c(master.flame.danmaku.danmaku.model.d dVar, Canvas canvas, float f10, float f11, Paint paint, TextPaint textPaint) {
        g gVar;
        o<?> e4 = dVar.e();
        if (e4 == null || (gVar = (g) e4.get()) == null) {
            return false;
        }
        return gVar.b(canvas, f10, f11, paint);
    }

    public abstract void d(master.flame.danmaku.danmaku.model.d dVar, Canvas canvas, float f10, float f11, boolean z9, a.C0783a c0783a);

    public abstract void e(master.flame.danmaku.danmaku.model.d dVar, TextPaint textPaint, boolean z9);

    public void f(master.flame.danmaku.danmaku.model.d dVar, boolean z9) {
        a aVar = this.f87209a;
        if (aVar != null) {
            aVar.a(dVar, z9);
        }
    }

    public void g(master.flame.danmaku.danmaku.model.d dVar) {
        a aVar = this.f87209a;
        if (aVar != null) {
            aVar.b(dVar);
        }
    }

    public void h(a aVar) {
        this.f87209a = aVar;
    }
}

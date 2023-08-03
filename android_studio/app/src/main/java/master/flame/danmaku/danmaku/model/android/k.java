package master.flame.danmaku.danmaku.model.android;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.TextPaint;
import android.util.SparseArray;
import android.view.View;
import java.util.ArrayList;
import java.util.List;
import master.flame.danmaku.danmaku.model.android.a;
import master.flame.danmaku.danmaku.model.android.k.a;

/* compiled from: ViewCacheStuffer.java */
/* loaded from: classes4.dex */
public abstract class k<VH extends a> extends b {

    /* renamed from: e  reason: collision with root package name */
    public static final int f87268e = -1;

    /* renamed from: f  reason: collision with root package name */
    public static final int f87269f = -2;

    /* renamed from: g  reason: collision with root package name */
    public static final int f87270g = -3;

    /* renamed from: h  reason: collision with root package name */
    public static final int f87271h = -3;

    /* renamed from: d  reason: collision with root package name */
    private SparseArray<List<VH>> f87274d = new SparseArray<>();

    /* renamed from: b  reason: collision with root package name */
    private final int f87272b = -1;

    /* renamed from: c  reason: collision with root package name */
    private final int f87273c = -1;

    /* compiled from: ViewCacheStuffer.java */
    /* loaded from: classes4.dex */
    public static abstract class a {

        /* renamed from: a  reason: collision with root package name */
        protected final View f87275a;

        public a(View view) {
            if (view != null) {
                this.f87275a = view;
                return;
            }
            throw new IllegalArgumentException("itemView may not be null");
        }

        public void a(Canvas canvas, a.C0783a c0783a) {
            this.f87275a.draw(canvas);
        }

        public int b() {
            return this.f87275a.getMeasuredHeight();
        }

        public int c() {
            return this.f87275a.getMeasuredWidth();
        }

        public void d(int i4, int i10, int i11, int i12) {
            this.f87275a.layout(i4, i10, i11, i12);
        }

        public void e(int i4, int i10) {
            this.f87275a.measure(i4, i10);
        }
    }

    @Override // master.flame.danmaku.danmaku.model.android.b
    public void b() {
    }

    @Override // master.flame.danmaku.danmaku.model.android.b
    public void d(master.flame.danmaku.danmaku.model.d dVar, Canvas canvas, float f10, float f11, boolean z9, a.C0783a c0783a) {
        VH vh;
        int i4 = i(dVar.f87296s, dVar);
        List<VH> list = this.f87274d.get(i4);
        boolean z10 = true;
        if (list != null) {
            vh = list.get(z9 ? 1 : 2);
        } else {
            vh = null;
        }
        if (vh == null) {
            return;
        }
        c0783a.j(z9);
        TextPaint l10 = c0783a.l(dVar, z9);
        c0783a.g(dVar, l10, false);
        j(i4, vh, dVar, c0783a, l10);
        vh.e(View.MeasureSpec.makeMeasureSpec(Math.round(dVar.f87293p), 1073741824), View.MeasureSpec.makeMeasureSpec(Math.round(dVar.f87294q), 1073741824));
        if (z9) {
            z10 = false;
        } else {
            canvas.save();
            canvas.translate(f10, f11);
        }
        if (dVar.f87288k != 0) {
            Paint n9 = c0783a.n(dVar);
            float f12 = (dVar.f87294q + f11) - c0783a.f87190h;
            canvas.drawLine(f10, f12, f10 + dVar.f87293p, f12, n9);
        }
        if (dVar.f87290m != 0) {
            canvas.drawRect(f10, f11, f10 + dVar.f87293p, f11 + dVar.f87294q, c0783a.k(dVar));
        }
        vh.d(0, 0, (int) dVar.f87293p, (int) dVar.f87294q);
        vh.a(canvas, c0783a);
        if (z10) {
            canvas.restore();
        }
    }

    @Override // master.flame.danmaku.danmaku.model.android.b
    public void e(master.flame.danmaku.danmaku.model.d dVar, TextPaint textPaint, boolean z9) {
        int i4 = i(dVar.f87296s, dVar);
        List<VH> list = this.f87274d.get(i4);
        if (list == null) {
            list = new ArrayList<>();
            list.add(k(i4));
            list.add(k(i4));
            list.add(k(i4));
            this.f87274d.put(i4, list);
        }
        VH vh = list.get(0);
        j(i4, vh, dVar, null, textPaint);
        vh.e(View.MeasureSpec.makeMeasureSpec(this.f87272b, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(this.f87273c, Integer.MIN_VALUE));
        vh.d(0, 0, vh.c(), vh.b());
        dVar.f87293p = vh.c();
        dVar.f87294q = vh.b();
    }

    @Override // master.flame.danmaku.danmaku.model.android.b
    public void g(master.flame.danmaku.danmaku.model.d dVar) {
        super.g(dVar);
        dVar.f87283f = null;
    }

    public int i(int i4, master.flame.danmaku.danmaku.model.d dVar) {
        return 0;
    }

    public abstract void j(int i4, VH vh, master.flame.danmaku.danmaku.model.d dVar, a.C0783a c0783a, TextPaint textPaint);

    public abstract VH k(int i4);
}

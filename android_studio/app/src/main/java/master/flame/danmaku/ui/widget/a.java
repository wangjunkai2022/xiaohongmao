package master.flame.danmaku.ui.widget;

import android.graphics.RectF;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import master.flame.danmaku.controller.f;
import master.flame.danmaku.danmaku.model.android.e;
import master.flame.danmaku.danmaku.model.d;
import master.flame.danmaku.danmaku.model.m;

/* compiled from: DanmakuTouchHelper.java */
/* loaded from: classes4.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private final GestureDetector f87502a;

    /* renamed from: b  reason: collision with root package name */
    private f f87503b;

    /* renamed from: c  reason: collision with root package name */
    private RectF f87504c;

    /* renamed from: d  reason: collision with root package name */
    private float f87505d;

    /* renamed from: e  reason: collision with root package name */
    private float f87506e;

    /* renamed from: f  reason: collision with root package name */
    private final GestureDetector.OnGestureListener f87507f;

    /* compiled from: DanmakuTouchHelper.java */
    /* renamed from: master.flame.danmaku.ui.widget.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    class C0787a extends GestureDetector.SimpleOnGestureListener {
        C0787a() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onDown(MotionEvent motionEvent) {
            if (a.this.f87503b == null || a.this.f87503b.getOnDanmakuClickListener() == null) {
                return false;
            }
            a aVar = a.this;
            aVar.f87505d = aVar.f87503b.getXOff();
            a aVar2 = a.this;
            aVar2.f87506e = aVar2.f87503b.getYOff();
            return true;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public void onLongPress(MotionEvent motionEvent) {
            if (a.this.f87503b.getOnDanmakuClickListener() == null) {
                return;
            }
            a aVar = a.this;
            aVar.f87505d = aVar.f87503b.getXOff();
            a aVar2 = a.this;
            aVar2.f87506e = aVar2.f87503b.getYOff();
            m n9 = a.this.n(motionEvent.getX(), motionEvent.getY());
            if (n9 == null || n9.isEmpty()) {
                return;
            }
            a.this.l(n9, true);
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
            m n9 = a.this.n(motionEvent.getX(), motionEvent.getY());
            boolean z9 = false;
            if (n9 != null && !n9.isEmpty()) {
                z9 = a.this.l(n9, false);
            }
            return !z9 ? a.this.m() : z9;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DanmakuTouchHelper.java */
    /* loaded from: classes4.dex */
    public class b extends m.c<d> {

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ float f87509e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ float f87510f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ m f87511g;

        b(float f10, float f11, m mVar) {
            this.f87509e = f10;
            this.f87510f = f11;
            this.f87511g = mVar;
        }

        @Override // master.flame.danmaku.danmaku.model.m.b
        /* renamed from: e */
        public int a(d dVar) {
            if (dVar != null) {
                a.this.f87504c.set(dVar.g(), dVar.m(), dVar.i(), dVar.d());
                if (a.this.f87504c.intersect(this.f87509e - a.this.f87505d, this.f87510f - a.this.f87506e, this.f87509e + a.this.f87505d, this.f87510f + a.this.f87506e)) {
                    this.f87511g.i(dVar);
                    return 0;
                }
                return 0;
            }
            return 0;
        }
    }

    private a(f fVar) {
        C0787a c0787a = new C0787a();
        this.f87507f = c0787a;
        this.f87503b = fVar;
        this.f87504c = new RectF();
        this.f87502a = new GestureDetector(((View) fVar).getContext(), c0787a);
    }

    public static synchronized a j(f fVar) {
        a aVar;
        synchronized (a.class) {
            aVar = new a(fVar);
        }
        return aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean l(m mVar, boolean z9) {
        f.a onDanmakuClickListener = this.f87503b.getOnDanmakuClickListener();
        if (onDanmakuClickListener != null) {
            if (z9) {
                return onDanmakuClickListener.c(mVar);
            }
            return onDanmakuClickListener.a(mVar);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean m() {
        f.a onDanmakuClickListener = this.f87503b.getOnDanmakuClickListener();
        if (onDanmakuClickListener != null) {
            return onDanmakuClickListener.b(this.f87503b);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public m n(float f10, float f11) {
        e eVar = new e();
        this.f87504c.setEmpty();
        m currentVisibleDanmakus = this.f87503b.getCurrentVisibleDanmakus();
        if (currentVisibleDanmakus != null && !currentVisibleDanmakus.isEmpty()) {
            currentVisibleDanmakus.a(new b(f10, f11, eVar));
        }
        return eVar;
    }

    public boolean k(MotionEvent motionEvent) {
        return this.f87502a.onTouchEvent(motionEvent);
    }
}

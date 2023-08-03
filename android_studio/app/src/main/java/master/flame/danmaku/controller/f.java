package master.flame.danmaku.controller;

import android.view.View;
import master.flame.danmaku.controller.c;
import master.flame.danmaku.danmaku.model.android.DanmakuContext;
import master.flame.danmaku.danmaku.model.m;

/* compiled from: IDanmakuView.java */
/* loaded from: classes4.dex */
public interface f {

    /* renamed from: t2  reason: collision with root package name */
    public static final int f87131t2 = 0;

    /* renamed from: u2  reason: collision with root package name */
    public static final int f87132u2 = 1;

    /* renamed from: v2  reason: collision with root package name */
    public static final int f87133v2 = 2;

    /* renamed from: w2  reason: collision with root package name */
    public static final int f87134w2 = 3;

    /* compiled from: IDanmakuView.java */
    /* loaded from: classes4.dex */
    public interface a {
        boolean a(m mVar);

        boolean b(f fVar);

        boolean c(m mVar);
    }

    void b(master.flame.danmaku.danmaku.model.d dVar);

    void c(master.flame.danmaku.danmaku.model.d dVar, boolean z9);

    void d(boolean z9);

    void e();

    boolean f();

    void g(boolean z9);

    DanmakuContext getConfig();

    long getCurrentTime();

    m getCurrentVisibleDanmakus();

    int getHeight();

    a getOnDanmakuClickListener();

    View getView();

    int getWidth();

    float getXOff();

    float getYOff();

    void h(long j4);

    void hide();

    boolean i();

    boolean isHardwareAccelerated();

    boolean isShown();

    void j(Long l10);

    void k();

    void l(master.flame.danmaku.danmaku.parser.a aVar, DanmakuContext danmakuContext);

    long m();

    void n(a aVar, float f10, float f11);

    void p(Long l10);

    void pause();

    boolean r();

    void release();

    void s();

    void setCallback(c.d dVar);

    void setDrawingThreadType(int i4);

    void setOnDanmakuClickListener(a aVar);

    void setVisibility(int i4);

    void show();

    void start();

    void stop();

    void t();

    void toggle();

    void x(boolean z9);
}

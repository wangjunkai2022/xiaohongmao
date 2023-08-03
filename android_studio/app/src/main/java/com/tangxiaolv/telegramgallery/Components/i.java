package com.tangxiaolv.telegramgallery.Components;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.view.View;
import android.view.WindowManager;
import android.widget.FrameLayout;

/* compiled from: SizeNotifierFrameLayoutPhoto.java */
/* loaded from: classes3.dex */
public class i extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    private Rect f56224a;

    /* renamed from: b  reason: collision with root package name */
    private int f56225b;

    /* renamed from: c  reason: collision with root package name */
    private b f56226c;

    /* renamed from: d  reason: collision with root package name */
    private WindowManager f56227d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SizeNotifierFrameLayoutPhoto.java */
    /* loaded from: classes3.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f56228a;

        a(boolean z9) {
            this.f56228a = z9;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (i.this.f56226c != null) {
                i.this.f56226c.a(i.this.f56225b, this.f56228a);
            }
        }
    }

    /* compiled from: SizeNotifierFrameLayoutPhoto.java */
    /* loaded from: classes3.dex */
    public interface b {
        void a(int i4, boolean z9);
    }

    public i(Context context) {
        super(context);
        this.f56224a = new Rect();
    }

    public void c() {
        if (this.f56226c != null) {
            this.f56225b = getKeyboardHeight();
            Point point = com.tangxiaolv.telegramgallery.Utils.a.f56375d;
            post(new a(point.x > point.y));
        }
    }

    public int getKeyboardHeight() {
        View rootView = getRootView();
        int height = rootView.getHeight() - com.tangxiaolv.telegramgallery.Utils.a.s(rootView);
        getWindowVisibleDisplayFrame(this.f56224a);
        int i4 = (com.tangxiaolv.telegramgallery.Utils.a.f56375d.y - this.f56224a.top) - height;
        if (i4 <= com.tangxiaolv.telegramgallery.Utils.a.g(10.0f)) {
            return 0;
        }
        return i4;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z9, int i4, int i10, int i11, int i12) {
        super.onLayout(z9, i4, i10, i11, i12);
        c();
    }

    public void setDelegate(b bVar) {
        this.f56226c = bVar;
    }
}

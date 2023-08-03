package com.bumptech.glide.integration.webp.decoder;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.view.Gravity;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;
import com.bumptech.glide.integration.webp.decoder.o;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

/* compiled from: WebpDrawable.java */
/* loaded from: classes.dex */
public class k extends Drawable implements o.b, Animatable, Animatable2Compat {

    /* renamed from: l  reason: collision with root package name */
    public static final int f8429l = -1;

    /* renamed from: m  reason: collision with root package name */
    public static final int f8430m = 0;

    /* renamed from: n  reason: collision with root package name */
    private static final int f8431n = 119;

    /* renamed from: a  reason: collision with root package name */
    private final a f8432a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f8433b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f8434c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f8435d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f8436e;

    /* renamed from: f  reason: collision with root package name */
    private int f8437f;

    /* renamed from: g  reason: collision with root package name */
    private int f8438g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f8439h;

    /* renamed from: i  reason: collision with root package name */
    private Paint f8440i;

    /* renamed from: j  reason: collision with root package name */
    private Rect f8441j;

    /* renamed from: k  reason: collision with root package name */
    private List<Animatable2Compat.AnimationCallback> f8442k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: WebpDrawable.java */
    /* loaded from: classes.dex */
    public static class a extends Drawable.ConstantState {

        /* renamed from: a  reason: collision with root package name */
        final com.bumptech.glide.load.engine.bitmap_recycle.e f8443a;

        /* renamed from: b  reason: collision with root package name */
        final o f8444b;

        public a(com.bumptech.glide.load.engine.bitmap_recycle.e eVar, o oVar) {
            this.f8443a = eVar;
            this.f8444b = oVar;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return newDrawable();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return new k(this);
        }
    }

    public k(Context context, i iVar, com.bumptech.glide.load.engine.bitmap_recycle.e eVar, com.bumptech.glide.load.i<Bitmap> iVar2, int i4, int i10, Bitmap bitmap) {
        this(new a(eVar, new o(com.bumptech.glide.c.e(context), iVar, i4, i10, iVar2, bitmap)));
    }

    private Drawable.Callback b() {
        Drawable.Callback callback = getCallback();
        while (callback instanceof Drawable) {
            callback = ((Drawable) callback).getCallback();
        }
        return callback;
    }

    private Rect d() {
        if (this.f8441j == null) {
            this.f8441j = new Rect();
        }
        return this.f8441j;
    }

    private Paint k() {
        if (this.f8440i == null) {
            this.f8440i = new Paint(2);
        }
        return this.f8440i;
    }

    private void n() {
        List<Animatable2Compat.AnimationCallback> list = this.f8442k;
        if (list != null) {
            int size = list.size();
            for (int i4 = 0; i4 < size; i4++) {
                this.f8442k.get(i4).onAnimationEnd(this);
            }
        }
    }

    private void p() {
        this.f8437f = 0;
    }

    private void u() {
        com.bumptech.glide.util.m.a(!this.f8435d, "You cannot start a recycled Drawable. Ensure thatyou clear any references to the Drawable when clearing the corresponding request.");
        if (this.f8432a.f8444b.f() == 1) {
            invalidateSelf();
        } else if (this.f8433b) {
        } else {
            this.f8433b = true;
            this.f8432a.f8444b.v(this);
            invalidateSelf();
        }
    }

    private void v() {
        this.f8433b = false;
        this.f8432a.f8444b.w(this);
    }

    @Override // com.bumptech.glide.integration.webp.decoder.o.b
    public void a() {
        if (b() == null) {
            stop();
            invalidateSelf();
            return;
        }
        invalidateSelf();
        if (g() == f() - 1) {
            this.f8437f++;
        }
        int i4 = this.f8438g;
        if (i4 == -1 || this.f8437f < i4) {
            return;
        }
        stop();
        n();
    }

    public ByteBuffer c() {
        return this.f8432a.f8444b.b();
    }

    @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat
    public void clearAnimationCallbacks() {
        List<Animatable2Compat.AnimationCallback> list = this.f8442k;
        if (list != null) {
            list.clear();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (m()) {
            return;
        }
        if (this.f8439h) {
            Gravity.apply(119, getIntrinsicWidth(), getIntrinsicHeight(), getBounds(), d());
            this.f8439h = false;
        }
        canvas.drawBitmap(this.f8432a.f8444b.c(), (Rect) null, d(), k());
    }

    public Bitmap e() {
        return this.f8432a.f8444b.e();
    }

    public int f() {
        return this.f8432a.f8444b.f();
    }

    public int g() {
        return this.f8432a.f8444b.d();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        return this.f8432a;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f8432a.f8444b.i();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f8432a.f8444b.m();
    }

    @Override // android.graphics.drawable.Drawable
    @Deprecated
    public int getOpacity() {
        return -2;
    }

    public com.bumptech.glide.load.i<Bitmap> h() {
        return this.f8432a.f8444b.h();
    }

    public int i() {
        return this.f8432a.f8444b.j();
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.f8433b;
    }

    public int j() {
        return this.f8438g;
    }

    public int l() {
        return this.f8432a.f8444b.l();
    }

    boolean m() {
        return this.f8435d;
    }

    public void o() {
        this.f8435d = true;
        this.f8432a.f8444b.a();
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.f8439h = true;
    }

    public void q(com.bumptech.glide.load.i<Bitmap> iVar, Bitmap bitmap) {
        this.f8432a.f8444b.q(iVar, bitmap);
    }

    void r(boolean z9) {
    }

    @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat
    public void registerAnimationCallback(@NonNull Animatable2Compat.AnimationCallback animationCallback) {
        if (animationCallback == null) {
            return;
        }
        if (this.f8442k == null) {
            this.f8442k = new ArrayList();
        }
        this.f8442k.add(animationCallback);
    }

    public void s(int i4) {
        if (i4 <= 0 && i4 != -1 && i4 != 0) {
            throw new IllegalArgumentException("Loop count must be greater than 0, or equal to LOOP_FOREVER, or equal to LOOP_INTRINSIC");
        }
        if (i4 == 0) {
            int j4 = this.f8432a.f8444b.j();
            this.f8438g = j4 != 0 ? j4 : -1;
            return;
        }
        this.f8438g = i4;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i4) {
        k().setAlpha(i4);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        k().setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z9, boolean z10) {
        com.bumptech.glide.util.m.a(!this.f8435d, "Cannot change the visibility of a recycled resource. Ensure that you unset the Drawable from your View before changing the View's visibility.");
        this.f8436e = z9;
        if (!z9) {
            v();
        } else if (this.f8434c) {
            u();
        }
        return super.setVisible(z9, z10);
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        this.f8434c = true;
        p();
        if (this.f8436e) {
            u();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        this.f8434c = false;
        v();
    }

    public void t() {
        com.bumptech.glide.util.m.a(!this.f8433b, "You cannot restart a currently running animation.");
        this.f8432a.f8444b.r();
        start();
    }

    @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat
    public boolean unregisterAnimationCallback(@NonNull Animatable2Compat.AnimationCallback animationCallback) {
        List<Animatable2Compat.AnimationCallback> list = this.f8442k;
        if (list == null || animationCallback == null) {
            return false;
        }
        return list.remove(animationCallback);
    }

    k(a aVar) {
        this.f8436e = true;
        this.f8438g = -1;
        this.f8432a = (a) com.bumptech.glide.util.m.d(aVar);
    }

    @VisibleForTesting
    k(o oVar, com.bumptech.glide.load.engine.bitmap_recycle.e eVar, Paint paint) {
        this(new a(eVar, oVar));
        this.f8440i = paint;
    }
}

package com.bumptech.glide.load.resource.gif;

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
import com.bumptech.glide.load.resource.gif.g;
import com.bumptech.glide.util.m;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

/* compiled from: GifDrawable.java */
/* loaded from: classes.dex */
public class c extends Drawable implements g.b, Animatable, Animatable2Compat {

    /* renamed from: l  reason: collision with root package name */
    public static final int f9363l = -1;

    /* renamed from: m  reason: collision with root package name */
    public static final int f9364m = 0;

    /* renamed from: n  reason: collision with root package name */
    private static final int f9365n = 119;

    /* renamed from: a  reason: collision with root package name */
    private final a f9366a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f9367b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f9368c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f9369d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f9370e;

    /* renamed from: f  reason: collision with root package name */
    private int f9371f;

    /* renamed from: g  reason: collision with root package name */
    private int f9372g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f9373h;

    /* renamed from: i  reason: collision with root package name */
    private Paint f9374i;

    /* renamed from: j  reason: collision with root package name */
    private Rect f9375j;

    /* renamed from: k  reason: collision with root package name */
    private List<Animatable2Compat.AnimationCallback> f9376k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GifDrawable.java */
    /* loaded from: classes.dex */
    public static final class a extends Drawable.ConstantState {
        @VisibleForTesting

        /* renamed from: a  reason: collision with root package name */
        final g f9377a;

        a(g gVar) {
            this.f9377a = gVar;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @NonNull
        public Drawable newDrawable(Resources resources) {
            return newDrawable();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @NonNull
        public Drawable newDrawable() {
            return new c(this);
        }
    }

    @Deprecated
    public c(Context context, com.bumptech.glide.gifdecoder.a aVar, com.bumptech.glide.load.engine.bitmap_recycle.e eVar, com.bumptech.glide.load.i<Bitmap> iVar, int i4, int i10, Bitmap bitmap) {
        this(context, aVar, iVar, i4, i10, bitmap);
    }

    private Drawable.Callback b() {
        Drawable.Callback callback = getCallback();
        while (callback instanceof Drawable) {
            callback = ((Drawable) callback).getCallback();
        }
        return callback;
    }

    private Rect d() {
        if (this.f9375j == null) {
            this.f9375j = new Rect();
        }
        return this.f9375j;
    }

    private Paint i() {
        if (this.f9374i == null) {
            this.f9374i = new Paint(2);
        }
        return this.f9374i;
    }

    private void l() {
        List<Animatable2Compat.AnimationCallback> list = this.f9376k;
        if (list != null) {
            int size = list.size();
            for (int i4 = 0; i4 < size; i4++) {
                this.f9376k.get(i4).onAnimationEnd(this);
            }
        }
    }

    private void n() {
        this.f9371f = 0;
    }

    private void s() {
        m.a(!this.f9369d, "You cannot start a recycled Drawable. Ensure thatyou clear any references to the Drawable when clearing the corresponding request.");
        if (this.f9366a.f9377a.f() == 1) {
            invalidateSelf();
        } else if (this.f9367b) {
        } else {
            this.f9367b = true;
            this.f9366a.f9377a.v(this);
            invalidateSelf();
        }
    }

    private void t() {
        this.f9367b = false;
        this.f9366a.f9377a.w(this);
    }

    @Override // com.bumptech.glide.load.resource.gif.g.b
    public void a() {
        if (b() == null) {
            stop();
            invalidateSelf();
            return;
        }
        invalidateSelf();
        if (g() == f() - 1) {
            this.f9371f++;
        }
        int i4 = this.f9372g;
        if (i4 == -1 || this.f9371f < i4) {
            return;
        }
        l();
        stop();
    }

    public ByteBuffer c() {
        return this.f9366a.f9377a.b();
    }

    @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat
    public void clearAnimationCallbacks() {
        List<Animatable2Compat.AnimationCallback> list = this.f9376k;
        if (list != null) {
            list.clear();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        if (this.f9369d) {
            return;
        }
        if (this.f9373h) {
            Gravity.apply(119, getIntrinsicWidth(), getIntrinsicHeight(), getBounds(), d());
            this.f9373h = false;
        }
        canvas.drawBitmap(this.f9366a.f9377a.c(), (Rect) null, d(), i());
    }

    public Bitmap e() {
        return this.f9366a.f9377a.e();
    }

    public int f() {
        return this.f9366a.f9377a.f();
    }

    public int g() {
        return this.f9366a.f9377a.d();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        return this.f9366a;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f9366a.f9377a.i();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f9366a.f9377a.m();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -2;
    }

    public com.bumptech.glide.load.i<Bitmap> h() {
        return this.f9366a.f9377a.h();
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.f9367b;
    }

    public int j() {
        return this.f9366a.f9377a.l();
    }

    boolean k() {
        return this.f9369d;
    }

    public void m() {
        this.f9369d = true;
        this.f9366a.f9377a.a();
    }

    public void o(com.bumptech.glide.load.i<Bitmap> iVar, Bitmap bitmap) {
        this.f9366a.f9377a.q(iVar, bitmap);
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.f9373h = true;
    }

    void p(boolean z9) {
        this.f9367b = z9;
    }

    public void q(int i4) {
        if (i4 <= 0 && i4 != -1 && i4 != 0) {
            throw new IllegalArgumentException("Loop count must be greater than 0, or equal to GlideDrawable.LOOP_FOREVER, or equal to GlideDrawable.LOOP_INTRINSIC");
        }
        if (i4 == 0) {
            int j4 = this.f9366a.f9377a.j();
            this.f9372g = j4 != 0 ? j4 : -1;
            return;
        }
        this.f9372g = i4;
    }

    public void r() {
        m.a(!this.f9367b, "You cannot restart a currently running animation.");
        this.f9366a.f9377a.r();
        start();
    }

    @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat
    public void registerAnimationCallback(@NonNull Animatable2Compat.AnimationCallback animationCallback) {
        if (animationCallback == null) {
            return;
        }
        if (this.f9376k == null) {
            this.f9376k = new ArrayList();
        }
        this.f9376k.add(animationCallback);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i4) {
        i().setAlpha(i4);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        i().setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z9, boolean z10) {
        m.a(!this.f9369d, "Cannot change the visibility of a recycled resource. Ensure that you unset the Drawable from your View before changing the View's visibility.");
        this.f9370e = z9;
        if (!z9) {
            t();
        } else if (this.f9368c) {
            s();
        }
        return super.setVisible(z9, z10);
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        this.f9368c = true;
        n();
        if (this.f9370e) {
            s();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        this.f9368c = false;
        t();
    }

    @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat
    public boolean unregisterAnimationCallback(@NonNull Animatable2Compat.AnimationCallback animationCallback) {
        List<Animatable2Compat.AnimationCallback> list = this.f9376k;
        if (list == null || animationCallback == null) {
            return false;
        }
        return list.remove(animationCallback);
    }

    public c(Context context, com.bumptech.glide.gifdecoder.a aVar, com.bumptech.glide.load.i<Bitmap> iVar, int i4, int i10, Bitmap bitmap) {
        this(new a(new g(com.bumptech.glide.c.e(context), aVar, i4, i10, iVar, bitmap)));
    }

    c(a aVar) {
        this.f9370e = true;
        this.f9372g = -1;
        this.f9366a = (a) m.d(aVar);
    }

    @VisibleForTesting
    c(g gVar, Paint paint) {
        this(new a(gVar));
        this.f9374i = paint;
    }
}

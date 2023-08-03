package com.google.android.gms.internal.base;

import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.ItemTouchHelper;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public final class i extends Drawable implements Drawable.Callback {

    /* renamed from: a  reason: collision with root package name */
    private int f29362a;

    /* renamed from: b  reason: collision with root package name */
    private long f29363b;

    /* renamed from: c  reason: collision with root package name */
    private int f29364c;

    /* renamed from: d  reason: collision with root package name */
    private int f29365d;

    /* renamed from: e  reason: collision with root package name */
    private int f29366e;

    /* renamed from: f  reason: collision with root package name */
    private int f29367f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f29368g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f29369h;

    /* renamed from: i  reason: collision with root package name */
    private h f29370i;

    /* renamed from: j  reason: collision with root package name */
    private Drawable f29371j;

    /* renamed from: k  reason: collision with root package name */
    private Drawable f29372k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f29373l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f29374m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f29375n;

    /* renamed from: o  reason: collision with root package name */
    private int f29376o;

    public i(@Nullable Drawable drawable, @Nullable Drawable drawable2) {
        this(null);
        drawable = drawable == null ? g.f29358a : drawable;
        this.f29371j = drawable;
        drawable.setCallback(this);
        h hVar = this.f29370i;
        hVar.f29361b = drawable.getChangingConfigurations() | hVar.f29361b;
        drawable2 = drawable2 == null ? g.f29358a : drawable2;
        this.f29372k = drawable2;
        drawable2.setCallback(this);
        h hVar2 = this.f29370i;
        hVar2.f29361b = drawable2.getChangingConfigurations() | hVar2.f29361b;
    }

    public final Drawable a() {
        return this.f29372k;
    }

    public final void b(int i4) {
        this.f29364c = this.f29365d;
        this.f29367f = 0;
        this.f29366e = ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION;
        this.f29362a = 1;
        invalidateSelf();
    }

    public final boolean c() {
        if (!this.f29373l) {
            boolean z9 = false;
            if (this.f29371j.getConstantState() != null && this.f29372k.getConstantState() != null) {
                z9 = true;
            }
            this.f29374m = z9;
            this.f29373l = true;
        }
        return this.f29374m;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x004e, code lost:
        if (r0 == 0) goto L22;
     */
    @Override // android.graphics.drawable.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void draw(android.graphics.Canvas r8) {
        /*
            r7 = this;
            int r0 = r7.f29362a
            r1 = 2
            r2 = 0
            r3 = 1
            if (r0 == r3) goto L39
            if (r0 == r1) goto La
            goto L42
        La:
            long r0 = r7.f29363b
            r4 = 0
            int r6 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
            if (r6 < 0) goto L42
            long r0 = android.os.SystemClock.uptimeMillis()
            long r4 = r7.f29363b
            long r0 = r0 - r4
            float r0 = (float) r0
            int r1 = r7.f29366e
            float r1 = (float) r1
            float r0 = r0 / r1
            r1 = 1065353216(0x3f800000, float:1.0)
            int r4 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r4 < 0) goto L25
            goto L26
        L25:
            r3 = 0
        L26:
            if (r3 == 0) goto L2a
            r7.f29362a = r2
        L2a:
            float r0 = java.lang.Math.min(r0, r1)
            int r1 = r7.f29364c
            float r1 = (float) r1
            float r1 = r1 * r0
            r0 = 0
            float r1 = r1 + r0
            int r0 = (int) r1
            r7.f29367f = r0
            goto L42
        L39:
            long r3 = android.os.SystemClock.uptimeMillis()
            r7.f29363b = r3
            r7.f29362a = r1
            r3 = 0
        L42:
            int r0 = r7.f29367f
            boolean r1 = r7.f29368g
            android.graphics.drawable.Drawable r4 = r7.f29371j
            android.graphics.drawable.Drawable r5 = r7.f29372k
            if (r3 == 0) goto L61
            if (r1 == 0) goto L51
            if (r0 != 0) goto L56
            goto L52
        L51:
            r2 = r0
        L52:
            r4.draw(r8)
            r0 = r2
        L56:
            int r1 = r7.f29365d
            if (r0 != r1) goto L60
            r5.setAlpha(r1)
            r5.draw(r8)
        L60:
            return
        L61:
            if (r1 == 0) goto L69
            int r2 = r7.f29365d
            int r2 = r2 - r0
            r4.setAlpha(r2)
        L69:
            r4.draw(r8)
            if (r1 == 0) goto L73
            int r1 = r7.f29365d
            r4.setAlpha(r1)
        L73:
            if (r0 <= 0) goto L80
            r5.setAlpha(r0)
            r5.draw(r8)
            int r8 = r7.f29365d
            r5.setAlpha(r8)
        L80:
            r7.invalidateSelf()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.base.i.draw(android.graphics.Canvas):void");
    }

    @Override // android.graphics.drawable.Drawable
    public final int getChangingConfigurations() {
        int changingConfigurations = super.getChangingConfigurations();
        h hVar = this.f29370i;
        return changingConfigurations | hVar.f29360a | hVar.f29361b;
    }

    @Override // android.graphics.drawable.Drawable
    @Nullable
    public final Drawable.ConstantState getConstantState() {
        if (c()) {
            this.f29370i.f29360a = getChangingConfigurations();
            return this.f29370i;
        }
        return null;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return Math.max(this.f29371j.getIntrinsicHeight(), this.f29372k.getIntrinsicHeight());
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return Math.max(this.f29371j.getIntrinsicWidth(), this.f29372k.getIntrinsicWidth());
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        if (!this.f29375n) {
            this.f29376o = Drawable.resolveOpacity(this.f29371j.getOpacity(), this.f29372k.getOpacity());
            this.f29375n = true;
        }
        return this.f29376o;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void invalidateDrawable(Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable mutate() {
        if (!this.f29369h && super.mutate() == this) {
            if (c()) {
                this.f29371j.mutate();
                this.f29372k.mutate();
                this.f29369h = true;
            } else {
                throw new IllegalStateException("One or more children of this LayerDrawable does not have constant state; this drawable cannot be mutated.");
            }
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    protected final void onBoundsChange(Rect rect) {
        this.f29371j.setBounds(rect);
        this.f29372k.setBounds(rect);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void scheduleDrawable(Drawable drawable, Runnable runnable, long j4) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.scheduleDrawable(this, runnable, j4);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i4) {
        if (this.f29367f == this.f29365d) {
            this.f29367f = i4;
        }
        this.f29365d = i4;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(@Nullable ColorFilter colorFilter) {
        this.f29371j.setColorFilter(colorFilter);
        this.f29372k.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.unscheduleDrawable(this, runnable);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(@Nullable h hVar) {
        this.f29362a = 0;
        this.f29365d = 255;
        this.f29367f = 0;
        this.f29368g = true;
        this.f29370i = new h(hVar);
    }
}

package com.giphy.sdk.ui.drawables;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.content.ContextCompat;
import com.giphy.sdk.ui.p;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import timber.log.Timber;

/* compiled from: GPHBrandingDrawer.kt */
@Metadata(bv = {}, d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u001c\u001a\u00020\u0018¢\u0006\u0004\b\u001d\u0010\u001eJ\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u001e\u0010\u000e\u001a\n \f*\u0004\u0018\u00010\u000b0\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0006\u0010\rR\u0014\u0010\u0012\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0013\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0011R\u0016\u0010\u0017\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0017\u0010\u001c\u001a\u00020\u00188\u0006¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u0010\u0010\u001b¨\u0006\u001f"}, d2 = {"Lcom/giphy/sdk/ui/drawables/a;", "", "", "d", "Landroid/graphics/Canvas;", "canvas", "b", "Landroid/graphics/drawable/Drawable;", "a", "Landroid/graphics/drawable/Drawable;", "drawable", "Landroid/animation/ValueAnimator;", "kotlin.jvm.PlatformType", "Landroid/animation/ValueAnimator;", "alphaAnimator", "", "c", "I", TypedValues.Cycle.S_WAVE_OFFSET, "brandingHeight", "Landroid/graphics/Rect;", "e", "Landroid/graphics/Rect;", "bounds", "Landroid/content/Context;", "f", "Landroid/content/Context;", "()Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private final Drawable f17037a;

    /* renamed from: b  reason: collision with root package name */
    private ValueAnimator f17038b;

    /* renamed from: c  reason: collision with root package name */
    private final int f17039c;

    /* renamed from: d  reason: collision with root package name */
    private final int f17040d;

    /* renamed from: e  reason: collision with root package name */
    private Rect f17041e;
    @g

    /* renamed from: f  reason: collision with root package name */
    private final Context f17042f;

    /* compiled from: GPHBrandingDrawer.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "it", "Landroid/animation/ValueAnimator;", "kotlin.jvm.PlatformType", "onAnimationUpdate"}, k = 3, mv = {1, 4, 1})
    /* renamed from: com.giphy.sdk.ui.drawables.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    static final class C0137a implements ValueAnimator.AnimatorUpdateListener {
        C0137a() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public final void onAnimationUpdate(ValueAnimator it) {
            Drawable drawable = a.this.f17037a;
            Intrinsics.checkNotNullExpressionValue(it, "it");
            Object animatedValue = it.getAnimatedValue();
            Objects.requireNonNull(animatedValue, "null cannot be cast to non-null type kotlin.Int");
            drawable.setAlpha(((Integer) animatedValue).intValue());
        }
    }

    public a(@g Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.f17042f = context;
        this.f17038b = ValueAnimator.ofInt(255, 0);
        this.f17039c = com.giphy.sdk.ui.utils.g.b(10);
        this.f17040d = com.giphy.sdk.ui.utils.g.b(12);
        this.f17041e = new Rect();
        Drawable drawable = ContextCompat.getDrawable(context, p.h.f17784p2);
        Intrinsics.checkNotNull(drawable);
        Drawable mutate = drawable.mutate();
        Intrinsics.checkNotNullExpressionValue(mutate, "ContextCompat.getDrawabl…_gif_branding)!!.mutate()");
        this.f17037a = mutate;
        mutate.setAlpha(0);
        ValueAnimator alphaAnimator = this.f17038b;
        Intrinsics.checkNotNullExpressionValue(alphaAnimator, "alphaAnimator");
        alphaAnimator.setDuration(800L);
        ValueAnimator alphaAnimator2 = this.f17038b;
        Intrinsics.checkNotNullExpressionValue(alphaAnimator2, "alphaAnimator");
        alphaAnimator2.setStartDelay(1000L);
    }

    public final void b(@g Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        this.f17041e.left = (canvas.getClipBounds().right - this.f17039c) - ((this.f17037a.getIntrinsicWidth() / this.f17037a.getIntrinsicHeight()) * this.f17040d);
        this.f17041e.top = (canvas.getClipBounds().bottom - this.f17040d) - this.f17039c;
        this.f17041e.right = canvas.getClipBounds().right - this.f17039c;
        this.f17041e.bottom = canvas.getClipBounds().bottom - this.f17039c;
        this.f17037a.setBounds(this.f17041e);
        this.f17037a.draw(canvas);
    }

    @g
    public final Context c() {
        return this.f17042f;
    }

    public final void d() {
        Timber.e("startAnimation", new Object[0]);
        this.f17037a.setAlpha(255);
        ValueAnimator valueAnimator = this.f17038b;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        this.f17038b.addUpdateListener(new C0137a());
        this.f17038b.start();
    }
}

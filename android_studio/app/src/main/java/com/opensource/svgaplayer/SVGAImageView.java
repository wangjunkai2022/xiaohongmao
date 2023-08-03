package com.opensource.svgaplayer;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.exifinterface.media.ExifInterface;
import com.facebook.common.callercontext.ContextChain;
import com.opensource.svgaplayer.c;
import com.opensource.svgaplayer.i;
import io.sentry.Session;
import io.sentry.protocol.v;
import io.sentry.protocol.y;
import java.lang.ref.WeakReference;
import java.lang.reflect.Method;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;

/* compiled from: SVGAImageView.kt */
@Metadata(bv = {}, d1 = {"\u0000¢\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u001e\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0016\u0018\u00002\u00020\u0001:\u00038<|B'\b\u0007\u0012\u0006\u0010x\u001a\u00020w\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010y\u001a\u00020+¢\u0006\u0004\bz\u0010{J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0016\u0010\f\u001a\u00020\u000b2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00000\tH\u0002J\u0010\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u001a\u0010\u0014\u001a\u00020\u00042\b\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\b\u0010\u0015\u001a\u00020\u0004H\u0002J\n\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0002J\b\u0010\u0019\u001a\u00020\u0018H\u0002J\u0012\u0010\u001c\u001a\u00020\u00042\b\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0002J\u0012\u0010\u001f\u001a\u00020\u00042\b\u0010\u001e\u001a\u0004\u0018\u00010\u001dH\u0002J\u0006\u0010 \u001a\u00020\u0004J\u001a\u0010!\u001a\u00020\u00042\b\u0010\u0011\u001a\u0004\u0018\u00010\u00102\b\b\u0002\u0010\u0013\u001a\u00020\u0012J\u0006\u0010\"\u001a\u00020\u0004J\u0006\u0010#\u001a\u00020\u0004J\u0006\u0010$\u001a\u00020\u0004J\u000e\u0010&\u001a\u00020\u00042\u0006\u0010%\u001a\u00020\u0012J\u0010\u0010'\u001a\u00020\u00042\b\u0010\u000e\u001a\u0004\u0018\u00010\rJ\u001a\u0010*\u001a\u00020\u00042\b\u0010\u000e\u001a\u0004\u0018\u00010\r2\b\u0010)\u001a\u0004\u0018\u00010(J\u0016\u0010.\u001a\u00020\u00042\u0006\u0010,\u001a\u00020+2\u0006\u0010-\u001a\u00020\u0012J\u0016\u00100\u001a\u00020\u00042\u0006\u0010/\u001a\u00020\u00182\u0006\u0010-\u001a\u00020\u0012J\u000e\u00103\u001a\u00020\u00042\u0006\u00102\u001a\u000201J\u0012\u00106\u001a\u00020\u00122\b\u00105\u001a\u0004\u0018\u000104H\u0017J\b\u00107\u001a\u00020\u0004H\u0014R\u0014\u0010:\u001a\u00020\u00068\u0002X\u0082D¢\u0006\u0006\n\u0004\b8\u00109R$\u0010@\u001a\u00020\u00122\u0006\u0010;\u001a\u00020\u00128\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b<\u0010=\u001a\u0004\b>\u0010?R\"\u0010G\u001a\u00020+8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bA\u0010B\u001a\u0004\bC\u0010D\"\u0004\bE\u0010FR(\u0010N\u001a\u00020\u00128\u0006@\u0006X\u0087\u000e¢\u0006\u0018\n\u0004\bH\u0010=\u0012\u0004\bL\u0010M\u001a\u0004\bI\u0010?\"\u0004\bJ\u0010KR\"\u0010R\u001a\u00020\u00128\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bO\u0010=\u001a\u0004\bP\u0010?\"\u0004\bQ\u0010KR\"\u0010Z\u001a\u00020S8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bT\u0010U\u001a\u0004\bV\u0010W\"\u0004\bX\u0010YR$\u0010b\u001a\u0004\u0018\u00010[8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\\\u0010]\u001a\u0004\b^\u0010_\"\u0004\b`\u0010aR\u0018\u0010e\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bc\u0010dR\u0018\u0010h\u001a\u0004\u0018\u0001018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bf\u0010gR\u0016\u0010j\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bi\u0010=R\u0016\u0010l\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bk\u0010=R\u0014\u0010p\u001a\u00020m8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bn\u0010oR\u0014\u0010s\u001a\u00020q8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010rR\u0016\u0010u\u001a\u00020+8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bt\u0010BR\u0016\u0010v\u001a\u00020+8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010B¨\u0006}"}, d2 = {"Lcom/opensource/svgaplayer/SVGAImageView;", "Landroid/widget/ImageView;", "Landroid/util/AttributeSet;", Session.b.f81849j, "", "r", "", v.b.f83881a, "u", "Ljava/lang/ref/WeakReference;", "ref", "Lcom/opensource/svgaplayer/i$d;", "o", "Lcom/opensource/svgaplayer/l;", "videoItem", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "Lu4/c;", "range", "", "reverse", "w", y.b.f83920h, "Lcom/opensource/svgaplayer/f;", "getSVGADrawable", "", "p", "Landroid/animation/ValueAnimator;", "animator", "t", "Landroid/animation/Animator;", "animation", "s", "z", "B", "m", "v", "F", "clear", "G", "setVideoItem", "Lcom/opensource/svgaplayer/g;", "dynamicItem", y.b.f83919g, "", TypedValues.Attributes.S_FRAME, "andPlay", "D", "percentage", ExifInterface.LONGITUDE_EAST, "Lcom/opensource/svgaplayer/e;", "clickListener", "setOnAnimKeyClickListener", "Landroid/view/MotionEvent;", "event", "onTouchEvent", "onDetachedFromWindow", "a", "Ljava/lang/String;", "TAG", "<set-?>", "b", "Z", "q", "()Z", "isAnimating", "c", "I", "getLoops", "()I", "setLoops", "(I)V", "loops", "d", "getClearsAfterStop", "setClearsAfterStop", "(Z)V", "clearsAfterStop$annotations", "()V", "clearsAfterStop", "e", "getClearsAfterDetached", "setClearsAfterDetached", "clearsAfterDetached", "Lcom/opensource/svgaplayer/SVGAImageView$FillMode;", "f", "Lcom/opensource/svgaplayer/SVGAImageView$FillMode;", "getFillMode", "()Lcom/opensource/svgaplayer/SVGAImageView$FillMode;", "setFillMode", "(Lcom/opensource/svgaplayer/SVGAImageView$FillMode;)V", "fillMode", "Lcom/opensource/svgaplayer/d;", "g", "Lcom/opensource/svgaplayer/d;", "getCallback", "()Lcom/opensource/svgaplayer/d;", "setCallback", "(Lcom/opensource/svgaplayer/d;)V", com.alipay.sdk.authjs.a.f6838i, "h", "Landroid/animation/ValueAnimator;", "mAnimator", ContextChain.TAG_INFRA, "Lcom/opensource/svgaplayer/e;", "mItemClickAreaListener", "j", "mAntiAlias", "k", "mAutoPlay", "Lcom/opensource/svgaplayer/SVGAImageView$a;", "l", "Lcom/opensource/svgaplayer/SVGAImageView$a;", "mAnimatorListener", "Lcom/opensource/svgaplayer/SVGAImageView$b;", "Lcom/opensource/svgaplayer/SVGAImageView$b;", "mAnimatorUpdateListener", "n", "mStartFrame", "mEndFrame", "Landroid/content/Context;", "context", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "FillMode", com.opensource.svgaplayer.a.f47177b}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public class SVGAImageView extends ImageView {

    /* renamed from: a  reason: collision with root package name */
    private final String f47153a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f47154b;

    /* renamed from: c  reason: collision with root package name */
    private int f47155c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f47156d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f47157e;
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    private FillMode f47158f;
    @m8.h

    /* renamed from: g  reason: collision with root package name */
    private com.opensource.svgaplayer.d f47159g;

    /* renamed from: h  reason: collision with root package name */
    private ValueAnimator f47160h;

    /* renamed from: i  reason: collision with root package name */
    private e f47161i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f47162j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f47163k;

    /* renamed from: l  reason: collision with root package name */
    private final a f47164l;

    /* renamed from: m  reason: collision with root package name */
    private final b f47165m;

    /* renamed from: n  reason: collision with root package name */
    private int f47166n;

    /* renamed from: o  reason: collision with root package name */
    private int f47167o;

    /* renamed from: p  reason: collision with root package name */
    private HashMap f47168p;

    /* compiled from: SVGAImageView.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/opensource/svgaplayer/SVGAImageView$FillMode;", "", "(Ljava/lang/String;I)V", "Backward", "Forward", "Clear", com.opensource.svgaplayer.a.f47177b}, k = 1, mv = {1, 1, 15})
    /* loaded from: classes3.dex */
    public enum FillMode {
        Backward,
        Forward,
        Clear
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SVGAImageView.kt */
    @Metadata(bv = {}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u000e\u001a\u00020\n¢\u0006\u0004\b\u000f\u0010\u0010J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\u0006\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\u0007\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\b\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016R\u001a\u0010\r\u001a\b\u0012\u0004\u0012\u00020\n0\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\u0011"}, d2 = {"Lcom/opensource/svgaplayer/SVGAImageView$a;", "Landroid/animation/Animator$AnimatorListener;", "Landroid/animation/Animator;", "animation", "", "onAnimationRepeat", "onAnimationEnd", "onAnimationCancel", "onAnimationStart", "Ljava/lang/ref/WeakReference;", "Lcom/opensource/svgaplayer/SVGAImageView;", "a", "Ljava/lang/ref/WeakReference;", "weakReference", "view", "<init>", "(Lcom/opensource/svgaplayer/SVGAImageView;)V", com.opensource.svgaplayer.a.f47177b}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3.dex */
    public static final class a implements Animator.AnimatorListener {

        /* renamed from: a  reason: collision with root package name */
        private final WeakReference<SVGAImageView> f47170a;

        public a(@m8.g SVGAImageView sVGAImageView) {
            this.f47170a = new WeakReference<>(sVGAImageView);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(@m8.h Animator animator) {
            SVGAImageView sVGAImageView = this.f47170a.get();
            if (sVGAImageView != null) {
                sVGAImageView.f47154b = false;
            }
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(@m8.h Animator animator) {
            SVGAImageView sVGAImageView = this.f47170a.get();
            if (sVGAImageView != null) {
                sVGAImageView.s(animator);
            }
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(@m8.h Animator animator) {
            com.opensource.svgaplayer.d callback;
            SVGAImageView sVGAImageView = this.f47170a.get();
            if (sVGAImageView == null || (callback = sVGAImageView.getCallback()) == null) {
                return;
            }
            callback.b();
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(@m8.h Animator animator) {
            SVGAImageView sVGAImageView = this.f47170a.get();
            if (sVGAImageView != null) {
                sVGAImageView.f47154b = true;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SVGAImageView.kt */
    @Metadata(bv = {}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u000b\u001a\u00020\u0007¢\u0006\u0004\b\f\u0010\rJ\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016R\u001a\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00070\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\t¨\u0006\u000e"}, d2 = {"Lcom/opensource/svgaplayer/SVGAImageView$b;", "Landroid/animation/ValueAnimator$AnimatorUpdateListener;", "Landroid/animation/ValueAnimator;", "animation", "", "onAnimationUpdate", "Ljava/lang/ref/WeakReference;", "Lcom/opensource/svgaplayer/SVGAImageView;", "a", "Ljava/lang/ref/WeakReference;", "weakReference", "view", "<init>", "(Lcom/opensource/svgaplayer/SVGAImageView;)V", com.opensource.svgaplayer.a.f47177b}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3.dex */
    public static final class b implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a  reason: collision with root package name */
        private final WeakReference<SVGAImageView> f47171a;

        public b(@m8.g SVGAImageView sVGAImageView) {
            this.f47171a = new WeakReference<>(sVGAImageView);
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(@m8.h ValueAnimator valueAnimator) {
            SVGAImageView sVGAImageView = this.f47171a.get();
            if (sVGAImageView != null) {
                sVGAImageView.t(valueAnimator);
            }
        }
    }

    /* compiled from: SVGAImageView.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0006\u001a\u00020\u0004H\u0016¨\u0006\u0007"}, d2 = {"com/opensource/svgaplayer/SVGAImageView$c", "Lcom/opensource/svgaplayer/i$d;", "Lcom/opensource/svgaplayer/l;", "videoItem", "", "b", "a", com.opensource.svgaplayer.a.f47177b}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3.dex */
    public static final class c implements i.d {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ WeakReference f47172a;

        c(WeakReference weakReference) {
            this.f47172a = weakReference;
        }

        @Override // com.opensource.svgaplayer.i.d
        public void a() {
        }

        @Override // com.opensource.svgaplayer.i.d
        public void b(@m8.g l lVar) {
            SVGAImageView sVGAImageView = (SVGAImageView) this.f47172a.get();
            if (sVGAImageView != null) {
                sVGAImageView.A(lVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SVGAImageView.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "run"}, k = 3, mv = {1, 1, 15})
    /* loaded from: classes3.dex */
    public static final class d implements Runnable {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ l f47174b;

        d(l lVar) {
            this.f47174b = lVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.f47174b.z(SVGAImageView.this.f47162j);
            SVGAImageView.this.setVideoItem(this.f47174b);
            f sVGADrawable = SVGAImageView.this.getSVGADrawable();
            if (sVGADrawable != null) {
                ImageView.ScaleType scaleType = SVGAImageView.this.getScaleType();
                Intrinsics.checkExpressionValueIsNotNull(scaleType, "scaleType");
                sVGADrawable.k(scaleType);
            }
            if (SVGAImageView.this.f47163k) {
                SVGAImageView.this.z();
            }
        }
    }

    @JvmOverloads
    public SVGAImageView(@m8.g Context context) {
        this(context, null, 0, 6, null);
    }

    @JvmOverloads
    public SVGAImageView(@m8.g Context context, @m8.h AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
    }

    public /* synthetic */ SVGAImageView(Context context, AttributeSet attributeSet, int i4, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i10 & 2) != 0 ? null : attributeSet, (i10 & 4) != 0 ? 0 : i4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void A(l lVar) {
        post(new d(lVar));
    }

    public static /* synthetic */ void C(SVGAImageView sVGAImageView, u4.c cVar, boolean z9, int i4, Object obj) {
        if (obj == null) {
            if ((i4 & 2) != 0) {
                z9 = false;
            }
            sVGAImageView.B(cVar, z9);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: startAnimation");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final f getSVGADrawable() {
        Drawable drawable = getDrawable();
        if (!(drawable instanceof f)) {
            drawable = null;
        }
        return (f) drawable;
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "It is recommended to use clearAfterDetached, or manually call to SVGAVideoEntity#clear.If you just consider cleaning up the canvas after playing, you can use FillMode#Clear.")
    public static /* synthetic */ void n() {
    }

    private final i.d o(WeakReference<SVGAImageView> weakReference) {
        return new c(weakReference);
    }

    private final double p() {
        double d4 = 1.0d;
        try {
            Class<?> cls = Class.forName("android.animation.ValueAnimator");
            Method declaredMethod = cls.getDeclaredMethod("getDurationScale", new Class[0]);
            if (declaredMethod != null) {
                Object invoke = declaredMethod.invoke(cls, new Object[0]);
                if (invoke != null) {
                    double floatValue = ((Float) invoke).floatValue();
                    if (floatValue == 0.0d) {
                        try {
                            Method declaredMethod2 = cls.getDeclaredMethod("setDurationScale", Float.TYPE);
                            if (declaredMethod2 != null) {
                                declaredMethod2.setAccessible(true);
                                declaredMethod2.invoke(cls, Float.valueOf(1.0f));
                                v4.c.f94196b.h(this.f47153a, "The animation duration scale has been reset to 1.0x, because you closed it on developer options.");
                                return 1.0d;
                            }
                            return floatValue;
                        } catch (Exception e4) {
                            e = e4;
                            d4 = floatValue;
                            e.printStackTrace();
                            return d4;
                        }
                    }
                    return floatValue;
                }
                throw new TypeCastException("null cannot be cast to non-null type kotlin.Float");
            }
            return 1.0d;
        } catch (Exception e10) {
            e = e10;
        }
    }

    private final void r(AttributeSet attributeSet) {
        Context context = getContext();
        Intrinsics.checkExpressionValueIsNotNull(context, "context");
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, c.d.f47192a, 0, 0);
        this.f47155c = obtainStyledAttributes.getInt(c.d.f47198g, 0);
        this.f47156d = obtainStyledAttributes.getBoolean(c.d.f47196e, false);
        this.f47157e = obtainStyledAttributes.getBoolean(c.d.f47195d, false);
        this.f47162j = obtainStyledAttributes.getBoolean(c.d.f47193b, true);
        this.f47163k = obtainStyledAttributes.getBoolean(c.d.f47194c, true);
        String string = obtainStyledAttributes.getString(c.d.f47197f);
        if (string != null) {
            switch (string.hashCode()) {
                case 48:
                    if (string.equals("0")) {
                        this.f47158f = FillMode.Backward;
                        break;
                    }
                    break;
                case 49:
                    if (string.equals("1")) {
                        this.f47158f = FillMode.Forward;
                        break;
                    }
                    break;
                case 50:
                    if (string.equals("2")) {
                        this.f47158f = FillMode.Clear;
                        break;
                    }
                    break;
            }
        }
        String string2 = obtainStyledAttributes.getString(c.d.f47199h);
        if (string2 != null) {
            u(string2);
        }
        obtainStyledAttributes.recycle();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void s(Animator animator) {
        this.f47154b = false;
        F();
        f sVGADrawable = getSVGADrawable();
        if (sVGADrawable != null) {
            int i4 = h.$EnumSwitchMapping$0[this.f47158f.ordinal()];
            if (i4 == 1) {
                sVGADrawable.j(this.f47166n);
            } else if (i4 == 2) {
                sVGADrawable.j(this.f47167o);
            } else if (i4 == 3) {
                sVGADrawable.i(true);
            }
        }
        com.opensource.svgaplayer.d dVar = this.f47159g;
        if (dVar != null) {
            dVar.onFinished();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void t(ValueAnimator valueAnimator) {
        f sVGADrawable = getSVGADrawable();
        if (sVGADrawable != null) {
            Object animatedValue = valueAnimator != null ? valueAnimator.getAnimatedValue() : null;
            if (animatedValue != null) {
                sVGADrawable.j(((Integer) animatedValue).intValue());
                double c10 = (sVGADrawable.c() + 1) / sVGADrawable.f().o();
                com.opensource.svgaplayer.d dVar = this.f47159g;
                if (dVar != null) {
                    dVar.a(sVGADrawable.c(), c10);
                    return;
                }
                return;
            }
            throw new TypeCastException("null cannot be cast to non-null type kotlin.Int");
        }
    }

    private final void u(String str) {
        boolean startsWith$default;
        boolean startsWith$default2;
        WeakReference<SVGAImageView> weakReference = new WeakReference<>(this);
        i iVar = new i(getContext());
        startsWith$default = StringsKt__StringsJVMKt.startsWith$default(str, c5.j.f4021a, false, 2, null);
        if (!startsWith$default) {
            startsWith$default2 = StringsKt__StringsJVMKt.startsWith$default(str, c5.j.f4022b, false, 2, null);
            if (!startsWith$default2) {
                i.t(iVar, str, o(weakReference), null, 4, null);
                return;
            }
        }
        i.A(iVar, new URL(str), o(weakReference), null, 4, null);
    }

    private final void w(u4.c cVar, boolean z9) {
        v4.c.f94196b.h(this.f47153a, "================ start animation ================");
        f sVGADrawable = getSVGADrawable();
        if (sVGADrawable != null) {
            y();
            this.f47166n = Math.max(0, cVar != null ? cVar.b() : 0);
            l f10 = sVGADrawable.f();
            int min = Math.min(f10.o() - 1, ((cVar != null ? cVar.b() : 0) + (cVar != null ? cVar.a() : Integer.MAX_VALUE)) - 1);
            this.f47167o = min;
            ValueAnimator animator = ValueAnimator.ofInt(this.f47166n, min);
            Intrinsics.checkExpressionValueIsNotNull(animator, "animator");
            animator.setInterpolator(new LinearInterpolator());
            animator.setDuration((long) ((((this.f47167o - this.f47166n) + 1) * (1000 / f10.n())) / p()));
            int i4 = this.f47155c;
            animator.setRepeatCount(i4 <= 0 ? 99999 : i4 - 1);
            animator.addUpdateListener(this.f47165m);
            animator.addListener(this.f47164l);
            if (z9) {
                animator.reverse();
            } else {
                animator.start();
            }
            this.f47160h = animator;
        }
    }

    private final void y() {
        f sVGADrawable = getSVGADrawable();
        if (sVGADrawable != null) {
            sVGADrawable.i(false);
            ImageView.ScaleType scaleType = getScaleType();
            Intrinsics.checkExpressionValueIsNotNull(scaleType, "scaleType");
            sVGADrawable.k(scaleType);
        }
    }

    public final void B(@m8.h u4.c cVar, boolean z9) {
        G(false);
        w(cVar, z9);
    }

    public final void D(int i4, boolean z9) {
        v();
        f sVGADrawable = getSVGADrawable();
        if (sVGADrawable != null) {
            sVGADrawable.j(i4);
            if (z9) {
                z();
                ValueAnimator valueAnimator = this.f47160h;
                if (valueAnimator != null) {
                    valueAnimator.setCurrentPlayTime(Math.max(0.0f, Math.min(1.0f, i4 / sVGADrawable.f().o())) * ((float) valueAnimator.getDuration()));
                }
            }
        }
    }

    public final void E(double d4, boolean z9) {
        Drawable drawable = getDrawable();
        if (!(drawable instanceof f)) {
            drawable = null;
        }
        f fVar = (f) drawable;
        if (fVar != null) {
            int o9 = (int) (fVar.f().o() * d4);
            if (o9 >= fVar.f().o() && o9 > 0) {
                o9 = fVar.f().o() - 1;
            }
            D(o9, z9);
        }
    }

    public final void F() {
        G(this.f47156d);
    }

    public final void G(boolean z9) {
        ValueAnimator valueAnimator = this.f47160h;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimator2 = this.f47160h;
        if (valueAnimator2 != null) {
            valueAnimator2.removeAllListeners();
        }
        ValueAnimator valueAnimator3 = this.f47160h;
        if (valueAnimator3 != null) {
            valueAnimator3.removeAllUpdateListeners();
        }
        f sVGADrawable = getSVGADrawable();
        if (sVGADrawable != null) {
            sVGADrawable.l();
        }
        f sVGADrawable2 = getSVGADrawable();
        if (sVGADrawable2 != null) {
            sVGADrawable2.i(z9);
        }
    }

    public void a() {
        HashMap hashMap = this.f47168p;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    public View b(int i4) {
        if (this.f47168p == null) {
            this.f47168p = new HashMap();
        }
        View view = (View) this.f47168p.get(Integer.valueOf(i4));
        if (view == null) {
            View findViewById = findViewById(i4);
            this.f47168p.put(Integer.valueOf(i4), findViewById);
            return findViewById;
        }
        return view;
    }

    @m8.h
    public final com.opensource.svgaplayer.d getCallback() {
        return this.f47159g;
    }

    public final boolean getClearsAfterDetached() {
        return this.f47157e;
    }

    public final boolean getClearsAfterStop() {
        return this.f47156d;
    }

    @m8.g
    public final FillMode getFillMode() {
        return this.f47158f;
    }

    public final int getLoops() {
        return this.f47155c;
    }

    public final void m() {
        f sVGADrawable = getSVGADrawable();
        if (sVGADrawable != null) {
            sVGADrawable.i(true);
        }
        f sVGADrawable2 = getSVGADrawable();
        if (sVGADrawable2 != null) {
            sVGADrawable2.a();
        }
        setImageDrawable(null);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        G(this.f47157e);
        if (this.f47157e) {
            m();
        }
    }

    @Override // android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(@m8.h MotionEvent motionEvent) {
        e eVar;
        if (motionEvent != null && motionEvent.getAction() == 0) {
            f sVGADrawable = getSVGADrawable();
            if (sVGADrawable != null) {
                for (Map.Entry<String, int[]> entry : sVGADrawable.d().k().entrySet()) {
                    String key = entry.getKey();
                    int[] value = entry.getValue();
                    if (motionEvent.getX() >= value[0] && motionEvent.getX() <= value[2] && motionEvent.getY() >= value[1] && motionEvent.getY() <= value[3] && (eVar = this.f47161i) != null) {
                        eVar.a(key);
                        return true;
                    }
                }
                return super.onTouchEvent(motionEvent);
            }
            return super.onTouchEvent(motionEvent);
        }
        return super.onTouchEvent(motionEvent);
    }

    public final boolean q() {
        return this.f47154b;
    }

    public final void setCallback(@m8.h com.opensource.svgaplayer.d dVar) {
        this.f47159g = dVar;
    }

    public final void setClearsAfterDetached(boolean z9) {
        this.f47157e = z9;
    }

    public final void setClearsAfterStop(boolean z9) {
        this.f47156d = z9;
    }

    public final void setFillMode(@m8.g FillMode fillMode) {
        this.f47158f = fillMode;
    }

    public final void setLoops(int i4) {
        this.f47155c = i4;
    }

    public final void setOnAnimKeyClickListener(@m8.g e eVar) {
        this.f47161i = eVar;
    }

    public final void setVideoItem(@m8.h l lVar) {
        x(lVar, new g());
    }

    public final void v() {
        G(false);
        com.opensource.svgaplayer.d dVar = this.f47159g;
        if (dVar != null) {
            dVar.onPause();
        }
    }

    public final void x(@m8.h l lVar, @m8.h g gVar) {
        if (lVar == null) {
            setImageDrawable(null);
            return;
        }
        if (gVar == null) {
            gVar = new g();
        }
        f fVar = new f(lVar, gVar);
        fVar.i(true);
        setImageDrawable(fVar);
    }

    public final void z() {
        B(null, false);
    }

    @JvmOverloads
    public SVGAImageView(@m8.g Context context, @m8.h AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.f47153a = "SVGAImageView";
        this.f47158f = FillMode.Forward;
        this.f47162j = true;
        this.f47163k = true;
        this.f47164l = new a(this);
        this.f47165m = new b(this);
        if (attributeSet != null) {
            r(attributeSet);
        }
    }
}

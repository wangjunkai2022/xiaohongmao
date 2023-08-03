package com.giphy.sdk.ui.views;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewPropertyAnimatorCompat;
import androidx.exifinterface.media.ExifInterface;
import com.airbnb.lottie.LottieAnimationView;
import com.facebook.common.callercontext.ContextChain;
import com.giphy.sdk.core.models.Media;
import com.giphy.sdk.ui.p;
import com.giphy.sdk.ui.views.m;
import com.google.android.exoplayer2.extractor.ts.h0;
import com.google.android.exoplayer2.ui.DefaultTimeBar;
import com.google.android.gms.common.internal.x;
import io.sentry.Session;
import io.sentry.protocol.y;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.a2;
import kotlinx.coroutines.b1;
import kotlinx.coroutines.i1;
import kotlinx.coroutines.j2;
import kotlinx.coroutines.s0;
import timber.log.Timber;

/* compiled from: GPHVideoControls.kt */
@Metadata(bv = {}, d1 = {"\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 M2\u00020\u0001:\u0001&B'\b\u0007\u0012\u0006\u0010F\u001a\u00020E\u0012\n\b\u0002\u0010H\u001a\u0004\u0018\u00010G\u0012\b\b\u0002\u0010J\u001a\u00020I¢\u0006\u0004\bK\u0010LJ\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0003J\u0010\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\bH\u0002J\b\u0010\u000b\u001a\u00020\u0002H\u0002J\b\u0010\f\u001a\u00020\u0002H\u0002J\b\u0010\r\u001a\u00020\u0002H\u0002J\u0010\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\b\u0010\u0011\u001a\u00020\u0002H\u0002J0\u0010\u0016\u001a\u00020\u00022\b\b\u0002\u0010\u0012\u001a\u00020\u00052\b\b\u0002\u0010\u0013\u001a\u00020\u00052\b\b\u0002\u0010\u0014\u001a\u00020\u00052\b\b\u0002\u0010\u0015\u001a\u00020\u0005H\u0002J\u0012\u0010\u0018\u001a\u00020\u00022\b\b\u0002\u0010\u0017\u001a\u00020\u000eH\u0002J\b\u0010\u0019\u001a\u00020\u0002H\u0002J\u001e\u0010 \u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020\u001eJ\u0006\u0010!\u001a\u00020\u0002J\u0006\u0010\"\u001a\u00020\u0002J\u000e\u0010$\u001a\u00020\u00022\u0006\u0010#\u001a\u00020\u000eJ\b\u0010%\u001a\u00020\u0002H\u0014R\u0016\u0010(\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010'R\u0016\u0010\u001d\u001a\u00020\u001c8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b)\u0010*R\u0016\u0010\u001b\u001a\u00020\u001a8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b+\u0010,R\u0018\u00100\u001a\u0004\u0018\u00010-8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b.\u0010/R\u0018\u00102\u001a\u0004\u0018\u00010-8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u0010/R\u0016\u00105\u001a\u0002038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b4\u0010\fR\u0016\u00107\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b6\u0010'R\u0018\u0010;\u001a\u0004\u0018\u0001088\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b9\u0010:R\u0016\u0010\u0006\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b<\u0010'R\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b=\u0010>R$\u0010D\u001a\u0012\u0012\u0004\u0012\u00020@\u0012\u0004\u0012\u00020\u00020?j\u0002`A8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bB\u0010C¨\u0006N"}, d2 = {"Lcom/giphy/sdk/ui/views/GPHVideoControls;", "Landroid/widget/FrameLayout;", "", ExifInterface.LONGITUDE_EAST, "I", "", "pause", "M", "", "event", "H", "C", "F", y.b.f83919g, "", "position", "G", "J", "progress", "sound", "rewind", "forward", "K", "delay", y.b.f83920h, "O", "Lcom/giphy/sdk/core/models/Media;", "media", "Lcom/giphy/sdk/ui/views/k;", com.ksyun.media.player.d.d.an, "Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;", "playerView", "D", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "B", "milliseconds", "N", "onAttachedToWindow", "a", "Z", "firstStart", "b", "Lcom/giphy/sdk/ui/views/k;", "c", "Lcom/giphy/sdk/core/models/Media;", "Landroidx/core/view/ViewPropertyAnimatorCompat;", "d", "Landroidx/core/view/ViewPropertyAnimatorCompat;", "hideControlsAnimation", "e", "hideSeekOverlayAnimation", "", "f", "lastTouchX", "g", "isDoubleClickPossible", "Lkotlinx/coroutines/j2;", "h", "Lkotlinx/coroutines/j2;", "clickJob", ContextChain.TAG_INFRA, "j", "Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;", "Lkotlin/Function1;", "Lcom/giphy/sdk/ui/views/m;", "Lcom/giphy/sdk/ui/views/GPHPlayerStateListener;", "l", "Lkotlin/jvm/functions/Function1;", x.a.f29212a, "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", Session.b.f81849j, "", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "r", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class GPHVideoControls extends FrameLayout {

    /* renamed from: m  reason: collision with root package name */
    private static final int f18969m = 5000;

    /* renamed from: n  reason: collision with root package name */
    private static final long f18970n = 250;

    /* renamed from: o  reason: collision with root package name */
    private static final long f18971o = 2000;

    /* renamed from: p  reason: collision with root package name */
    private static final long f18972p = 3000;

    /* renamed from: q  reason: collision with root package name */
    private static final long f18973q = 400;
    @m8.g

    /* renamed from: r  reason: collision with root package name */
    public static final a f18974r = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private boolean f18975a;

    /* renamed from: b  reason: collision with root package name */
    private k f18976b;

    /* renamed from: c  reason: collision with root package name */
    private Media f18977c;

    /* renamed from: d  reason: collision with root package name */
    private ViewPropertyAnimatorCompat f18978d;

    /* renamed from: e  reason: collision with root package name */
    private ViewPropertyAnimatorCompat f18979e;

    /* renamed from: f  reason: collision with root package name */
    private float f18980f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f18981g;

    /* renamed from: h  reason: collision with root package name */
    private j2 f18982h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f18983i;

    /* renamed from: j  reason: collision with root package name */
    private GPHVideoPlayerView f18984j;

    /* renamed from: k  reason: collision with root package name */
    private final h2.r f18985k;

    /* renamed from: l  reason: collision with root package name */
    private final Function1<m, Unit> f18986l;

    /* compiled from: GPHVideoControls.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u000b\u0010\fR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\b\u0010\u0004R\u0014\u0010\t\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\t\u0010\u0004R\u0014\u0010\n\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\n\u0010\u0004¨\u0006\r"}, d2 = {"Lcom/giphy/sdk/ui/views/GPHVideoControls$a;", "", "", "DOUBLE_TOUCH_INTERVAL", "J", "", "FOWARD_REWIND_INTERVAL", "I", "HIDE_CONTROLS_DELAY", "HIDE_CONTROLS_DURATION", "HIDE_CONTROLS_INITIAL_DELAY", "<init>", "()V", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GPHVideoControls.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "run"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            ConstraintLayout constraintLayout = GPHVideoControls.this.f18985k.f69046b;
            Intrinsics.checkNotNullExpressionValue(constraintLayout, "viewBinding.controls");
            constraintLayout.setVisibility(8);
        }
    }

    /* compiled from: GPHVideoControls.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lcom/giphy/sdk/ui/views/m;", "playerState", "", "a", "(Lcom/giphy/sdk/ui/views/m;)V"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    static final class c extends Lambda implements Function1<m, Unit> {
        c() {
            super(1);
        }

        public final void a(@m8.g m playerState) {
            Intrinsics.checkNotNullParameter(playerState, "playerState");
            DefaultTimeBar defaultTimeBar = GPHVideoControls.this.f18985k.f69048d;
            Intrinsics.checkNotNullExpressionValue(defaultTimeBar, "viewBinding.progressBar");
            defaultTimeBar.setVisibility(4);
            if (Intrinsics.areEqual(playerState, m.g.f19209a)) {
                GPHVideoControls.this.f18983i = false;
                DefaultTimeBar defaultTimeBar2 = GPHVideoControls.this.f18985k.f69048d;
                Intrinsics.checkNotNullExpressionValue(defaultTimeBar2, "viewBinding.progressBar");
                defaultTimeBar2.setVisibility(0);
                if (GPHVideoControls.this.f18975a) {
                    GPHVideoControls.this.f18975a = false;
                    GPHVideoControls.this.y(GPHVideoControls.f18972p);
                    return;
                }
                GPHVideoControls.z(GPHVideoControls.this, 0L, 1, null);
            } else if (playerState instanceof m.j) {
                m.j jVar = (m.j) playerState;
                if (jVar.d() > 0) {
                    GPHVideoControls.this.f18985k.f69048d.setDuration(jVar.d());
                }
            } else if (playerState instanceof m.f) {
                GPHVideoControls.this.O();
            }
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(m mVar) {
            a(mVar);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GPHVideoControls.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "it", "Landroid/view/View;", "kotlin.jvm.PlatformType", "onClick"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class d implements View.OnClickListener {

        /* compiled from: GPHVideoControls.kt */
        @Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u0010\u0004\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/s0;", "", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 4, 1})
        @DebugMetadata(c = "com.giphy.sdk.ui.views.GPHVideoControls$setupTouchListeners$1$1", f = "GPHVideoControls.kt", i = {}, l = {h0.G}, m = "invokeSuspend", n = {}, s = {})
        /* loaded from: classes2.dex */
        static final class a extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

            /* renamed from: a  reason: collision with root package name */
            int f18990a;

            a(Continuation continuation) {
                super(2, continuation);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.g
            public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> completion) {
                Intrinsics.checkNotNullParameter(completion, "completion");
                return new a(completion);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(s0 s0Var, Continuation<? super Unit> continuation) {
                return ((a) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@m8.g Object obj) {
                Object coroutine_suspended;
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i4 = this.f18990a;
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.f18990a = 1;
                    if (b1.b(GPHVideoControls.f18970n, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else if (i4 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    ResultKt.throwOnFailure(obj);
                }
                GPHVideoControls.this.C();
                return Unit.INSTANCE;
            }
        }

        d() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int width;
            j2 f10;
            if (!Intrinsics.areEqual(GPHVideoControls.g(GPHVideoControls.this).K().getId(), GPHVideoControls.e(GPHVideoControls.this).getId())) {
                GPHVideoPlayerView gPHVideoPlayerView = GPHVideoControls.this.f18984j;
                if (gPHVideoPlayerView != null) {
                    gPHVideoPlayerView.m();
                }
                GPHVideoControls.this.f18983i = false;
                k.V(GPHVideoControls.g(GPHVideoControls.this), GPHVideoControls.e(GPHVideoControls.this), false, GPHVideoControls.this.f18984j, Boolean.valueOf(GPHVideoControls.g(GPHVideoControls.this).O()), 2, null);
            } else if (GPHVideoControls.this.f18983i) {
                GPHVideoControls.this.E();
            } else {
                float width2 = GPHVideoControls.this.getWidth() / 3;
                if (GPHVideoControls.this.f18980f >= width2 && GPHVideoControls.this.f18980f <= GPHVideoControls.this.getWidth() - width) {
                    j2 j2Var = GPHVideoControls.this.f18982h;
                    if (j2Var != null) {
                        j2.a.b(j2Var, null, 1, null);
                    }
                    GPHVideoControls.this.f18982h = null;
                    GPHVideoControls.this.f18981g = false;
                    GPHVideoControls.this.C();
                    return;
                }
                if (GPHVideoControls.this.f18981g) {
                    if (GPHVideoControls.this.f18980f < width2) {
                        GPHVideoControls.this.F();
                    } else {
                        GPHVideoControls.this.x();
                    }
                    j2 j2Var2 = GPHVideoControls.this.f18982h;
                    if (j2Var2 != null) {
                        j2.a.b(j2Var2, null, 1, null);
                    }
                    GPHVideoControls.this.f18982h = null;
                } else {
                    GPHVideoControls gPHVideoControls = GPHVideoControls.this;
                    f10 = kotlinx.coroutines.l.f(a2.f84781a, i1.e(), null, new a(null), 2, null);
                    gPHVideoControls.f18982h = f10;
                }
                GPHVideoControls gPHVideoControls2 = GPHVideoControls.this;
                gPHVideoControls2.f18981g = true ^ gPHVideoControls2.f18981g;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: GPHVideoControls.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "run"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            View view = GPHVideoControls.this.f18985k.f69050f;
            Intrinsics.checkNotNullExpressionValue(view, "viewBinding.seekOverlay");
            view.setVisibility(8);
        }
    }

    @JvmOverloads
    public GPHVideoControls(@m8.g Context context) {
        this(context, null, 0, 6, null);
    }

    @JvmOverloads
    public GPHVideoControls(@m8.g Context context, @m8.h AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
    }

    public /* synthetic */ GPHVideoControls(Context context, AttributeSet attributeSet, int i4, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i10 & 2) != 0 ? null : attributeSet, (i10 & 4) != 0 ? 0 : i4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void C() {
        this.f18981g = false;
        k kVar = this.f18976b;
        if (kVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException(com.ksyun.media.player.d.d.an);
        }
        k kVar2 = this.f18976b;
        if (kVar2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException(com.ksyun.media.player.d.d.an);
        }
        kVar.p0(kVar2.P() > ((float) 0) ? 0.0f : 1.0f);
        L(this, true, true, false, false, 12, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void E() {
        this.f18983i = false;
        M(false);
        j2 j2Var = this.f18982h;
        if (j2Var != null) {
            j2.a.b(j2Var, null, 1, null);
        }
        this.f18982h = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void F() {
        this.f18985k.f69049e.u();
        k kVar = this.f18976b;
        if (kVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException(com.ksyun.media.player.d.d.an);
        }
        G(Math.max(0L, kVar.I() - 5000));
        L(this, true, false, true, false, 10, null);
    }

    private final void G(long j4) {
        k kVar = this.f18976b;
        if (kVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException(com.ksyun.media.player.d.d.an);
        }
        kVar.g0(j4);
        DefaultTimeBar defaultTimeBar = this.f18985k.f69048d;
        k kVar2 = this.f18976b;
        if (kVar2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException(com.ksyun.media.player.d.d.an);
        }
        defaultTimeBar.setPosition(kVar2.I());
        J();
    }

    private final void H(String str) {
    }

    @SuppressLint({"ClickableViewAccessibility"})
    private final void I() {
        setOnClickListener(new d());
    }

    private final void J() {
        ViewPropertyAnimatorCompat viewPropertyAnimatorCompat = this.f18979e;
        if (viewPropertyAnimatorCompat != null) {
            viewPropertyAnimatorCompat.cancel();
        }
        View view = this.f18985k.f69050f;
        Intrinsics.checkNotNullExpressionValue(view, "viewBinding.seekOverlay");
        view.setVisibility(0);
        View view2 = this.f18985k.f69050f;
        Intrinsics.checkNotNullExpressionValue(view2, "viewBinding.seekOverlay");
        view2.setAlpha(1.0f);
        ViewPropertyAnimatorCompat startDelay = ViewCompat.animate(this.f18985k.f69050f).alpha(0.0f).withEndAction(new e()).setDuration(f18970n).setStartDelay(1000L);
        this.f18979e = startDelay;
        if (startDelay != null) {
            startDelay.start();
        }
    }

    private final void K(boolean z9, boolean z10, boolean z11, boolean z12) {
        Timber.e("showControls", new Object[0]);
        ViewPropertyAnimatorCompat viewPropertyAnimatorCompat = this.f18978d;
        if (viewPropertyAnimatorCompat != null) {
            viewPropertyAnimatorCompat.cancel();
        }
        this.f18978d = null;
        ConstraintLayout constraintLayout = this.f18985k.f69046b;
        Intrinsics.checkNotNullExpressionValue(constraintLayout, "viewBinding.controls");
        constraintLayout.setAlpha(1.0f);
        ConstraintLayout constraintLayout2 = this.f18985k.f69046b;
        Intrinsics.checkNotNullExpressionValue(constraintLayout2, "viewBinding.controls");
        constraintLayout2.setVisibility(0);
        ImageButton imageButton = this.f18985k.f69051g;
        Intrinsics.checkNotNullExpressionValue(imageButton, "viewBinding.soundButton");
        imageButton.setVisibility(z10 ? 0 : 8);
        DefaultTimeBar defaultTimeBar = this.f18985k.f69048d;
        Intrinsics.checkNotNullExpressionValue(defaultTimeBar, "viewBinding.progressBar");
        defaultTimeBar.setVisibility(z9 ? 0 : 8);
        LottieAnimationView lottieAnimationView = this.f18985k.f69049e;
        Intrinsics.checkNotNullExpressionValue(lottieAnimationView, "viewBinding.rewindIcon");
        lottieAnimationView.setVisibility(z11 ? 0 : 8);
        LottieAnimationView lottieAnimationView2 = this.f18985k.f69047c;
        Intrinsics.checkNotNullExpressionValue(lottieAnimationView2, "viewBinding.forwardIcon");
        lottieAnimationView2.setVisibility(z12 ? 0 : 8);
        k kVar = this.f18976b;
        if (kVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException(com.ksyun.media.player.d.d.an);
        }
        if (kVar.S()) {
            z(this, 0L, 1, null);
        }
    }

    static /* synthetic */ void L(GPHVideoControls gPHVideoControls, boolean z9, boolean z10, boolean z11, boolean z12, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            z9 = false;
        }
        if ((i4 & 2) != 0) {
            z10 = false;
        }
        if ((i4 & 4) != 0) {
            z11 = false;
        }
        if ((i4 & 8) != 0) {
            z12 = false;
        }
        gPHVideoControls.K(z9, z10, z11, z12);
    }

    private final void M(boolean z9) {
        k kVar = this.f18976b;
        if (kVar == null) {
            return;
        }
        if (z9) {
            if (kVar == null) {
                Intrinsics.throwUninitializedPropertyAccessException(com.ksyun.media.player.d.d.an);
            }
            kVar.Y();
            return;
        }
        if (kVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException(com.ksyun.media.player.d.d.an);
        }
        kVar.Z();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void O() {
        k kVar = this.f18976b;
        if (kVar != null) {
            ImageButton imageButton = this.f18985k.f69051g;
            if (kVar == null) {
                Intrinsics.throwUninitializedPropertyAccessException(com.ksyun.media.player.d.d.an);
            }
            imageButton.setImageResource(kVar.P() > ((float) 0) ? p.h.O2 : p.h.J2);
        }
    }

    public static final /* synthetic */ Media e(GPHVideoControls gPHVideoControls) {
        Media media = gPHVideoControls.f18977c;
        if (media == null) {
            Intrinsics.throwUninitializedPropertyAccessException("media");
        }
        return media;
    }

    public static final /* synthetic */ k g(GPHVideoControls gPHVideoControls) {
        k kVar = gPHVideoControls.f18976b;
        if (kVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException(com.ksyun.media.player.d.d.an);
        }
        return kVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void x() {
        this.f18985k.f69047c.u();
        k kVar = this.f18976b;
        if (kVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException(com.ksyun.media.player.d.d.an);
        }
        long J = kVar.J();
        k kVar2 = this.f18976b;
        if (kVar2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException(com.ksyun.media.player.d.d.an);
        }
        G(Math.min(J, kVar2.I() + 5000));
        L(this, true, false, false, true, 6, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void y(long j4) {
        Timber.e("hideControls", new Object[0]);
        ViewPropertyAnimatorCompat viewPropertyAnimatorCompat = this.f18978d;
        if (viewPropertyAnimatorCompat != null) {
            viewPropertyAnimatorCompat.cancel();
        }
        this.f18978d = null;
        ViewPropertyAnimatorCompat startDelay = ViewCompat.animate(this.f18985k.f69046b).alpha(0.0f).withEndAction(new b()).setDuration(f18973q).setStartDelay(j4);
        this.f18978d = startDelay;
        if (startDelay != null) {
            startDelay.start();
        }
    }

    static /* synthetic */ void z(GPHVideoControls gPHVideoControls, long j4, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            j4 = 2000;
        }
        gPHVideoControls.y(j4);
    }

    public final void A() {
        this.f18983i = true;
    }

    public final void B() {
        this.f18983i = false;
    }

    public final void D(@m8.g Media media, @m8.g k player, @m8.g GPHVideoPlayerView playerView) {
        Intrinsics.checkNotNullParameter(media, "media");
        Intrinsics.checkNotNullParameter(player, "player");
        Intrinsics.checkNotNullParameter(playerView, "playerView");
        this.f18977c = media;
        this.f18976b = player;
        this.f18975a = true;
        this.f18984j = playerView;
        O();
        player.F(this.f18986l);
    }

    public final void N(long j4) {
        this.f18985k.f69048d.setPosition(j4);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        O();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public GPHVideoControls(@m8.g Context context, @m8.h AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f18983i = true;
        h2.r a10 = h2.r.a(ViewGroup.inflate(context, p.m.f18134u0, this));
        Intrinsics.checkNotNullExpressionValue(a10, "GphVideoControlsViewBind…deo_controls_view, this))");
        this.f18985k = a10;
        this.f18986l = new c();
        I();
    }
}

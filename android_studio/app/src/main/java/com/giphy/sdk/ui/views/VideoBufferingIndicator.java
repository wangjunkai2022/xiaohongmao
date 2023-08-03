package com.giphy.sdk.ui.views;

import android.animation.ArgbEvaluator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Color;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import io.sentry.Session;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.a2;
import kotlinx.coroutines.b1;
import kotlinx.coroutines.i1;
import kotlinx.coroutines.s0;

/* compiled from: VideoBufferingIndicator.kt */
@Metadata(bv = {}, d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B'\b\u0007\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0016\u0012\b\b\u0002\u0010\u0018\u001a\u00020\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u0017\u0010\u000b\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\nR\"\u0010\u0013\u001a\u00020\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012¨\u0006\u001b"}, d2 = {"Lcom/giphy/sdk/ui/views/VideoBufferingIndicator;", "Landroid/widget/FrameLayout;", "", "visibility", "", "setVisibility", "Landroid/animation/ValueAnimator;", "a", "Landroid/animation/ValueAnimator;", "getColorAnimation", "()Landroid/animation/ValueAnimator;", "colorAnimation", "", "b", "Z", "getVisible", "()Z", "setVisible", "(Z)V", "visible", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", Session.b.f81849j, "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class VideoBufferingIndicator extends FrameLayout {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final ValueAnimator f19148a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f19149b;

    /* compiled from: VideoBufferingIndicator.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "animator", "Landroid/animation/ValueAnimator;", "kotlin.jvm.PlatformType", "onAnimationUpdate"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    static final class a implements ValueAnimator.AnimatorUpdateListener {
        a() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public final void onAnimationUpdate(ValueAnimator animator) {
            VideoBufferingIndicator videoBufferingIndicator = VideoBufferingIndicator.this;
            Intrinsics.checkNotNullExpressionValue(animator, "animator");
            Object animatedValue = animator.getAnimatedValue();
            Objects.requireNonNull(animatedValue, "null cannot be cast to non-null type kotlin.Int");
            videoBufferingIndicator.setBackgroundColor(((Integer) animatedValue).intValue());
        }
    }

    /* compiled from: VideoBufferingIndicator.kt */
    @Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u0010\u0004\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/s0;", "", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 4, 1})
    @DebugMetadata(c = "com.giphy.sdk.ui.views.VideoBufferingIndicator$setVisibility$1", f = "VideoBufferingIndicator.kt", i = {}, l = {39}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes2.dex */
    static final class b extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f19151a;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f19153c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(int i4, Continuation continuation) {
            super(2, continuation);
            this.f19153c = i4;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> completion) {
            Intrinsics.checkNotNullParameter(completion, "completion");
            return new b(this.f19153c, completion);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(s0 s0Var, Continuation<? super Unit> continuation) {
            return ((b) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f19151a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                this.f19151a = 1;
                if (b1.b(500L, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
            }
            if (VideoBufferingIndicator.this.getVisible()) {
                VideoBufferingIndicator.super.setVisibility(this.f19153c);
                VideoBufferingIndicator.this.getColorAnimation().start();
            }
            return Unit.INSTANCE;
        }
    }

    @JvmOverloads
    public VideoBufferingIndicator(@m8.g Context context) {
        this(context, null, 0, 6, null);
    }

    @JvmOverloads
    public VideoBufferingIndicator(@m8.g Context context, @m8.h AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
    }

    public /* synthetic */ VideoBufferingIndicator(Context context, AttributeSet attributeSet, int i4, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i10 & 2) != 0 ? null : attributeSet, (i10 & 4) != 0 ? 0 : i4);
    }

    @m8.g
    public final ValueAnimator getColorAnimation() {
        return this.f19148a;
    }

    public final boolean getVisible() {
        return this.f19149b;
    }

    @Override // android.view.View
    public void setVisibility(int i4) {
        if (i4 == 0) {
            this.f19149b = true;
            kotlinx.coroutines.l.f(a2.f84781a, i1.e(), null, new b(i4, null), 2, null);
            return;
        }
        this.f19149b = false;
        super.setVisibility(i4);
        this.f19148a.cancel();
    }

    public final void setVisible(boolean z9) {
        this.f19149b = z9;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public VideoBufferingIndicator(@m8.g Context context, @m8.h AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        Intrinsics.checkNotNullParameter(context, "context");
        ValueAnimator ofObject = ValueAnimator.ofObject(new ArgbEvaluator(), Integer.valueOf(Color.argb(0, 0, 0, 0)), Integer.valueOf(Color.argb(64, 0, 0, 0)));
        Intrinsics.checkNotNullExpressionValue(ofObject, "ValueAnimator.ofObject(A…or(), colorFrom, colorTo)");
        this.f19148a = ofObject;
        ofObject.setRepeatCount(-1);
        ofObject.setRepeatMode(2);
        ofObject.setDuration(1000L);
        ofObject.addUpdateListener(new a());
    }
}

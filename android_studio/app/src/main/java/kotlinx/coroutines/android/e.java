package kotlinx.coroutines.android;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.Choreographer;
import androidx.annotation.VisibleForTesting;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.util.Objects;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.i1;
import kotlinx.coroutines.q;
import kotlinx.coroutines.r;
import m8.g;
import m8.h;

/* compiled from: HandlerDispatcher.kt */
@Metadata(bv = {}, d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\u001a\u001f\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0001H\u0007¢\u0006\u0004\b\u0004\u0010\u0005\u001a\u0014\u0010\t\u001a\u00020\u0000*\u00020\u00062\u0006\u0010\b\u001a\u00020\u0007H\u0001\u001a\u0013\u0010\u000b\u001a\u00020\nH\u0086@ø\u0001\u0000¢\u0006\u0004\b\u000b\u0010\f\u001a\u0016\u0010\u0010\u001a\u00020\u000f2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\n0\rH\u0002\u001a\u001e\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u00112\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\n0\rH\u0002\"\u0014\u0010\u0016\u001a\u00020\n8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015\"\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u00038\u0000X\u0081\u0004¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u0012\u0004\b\u0019\u0010\u001a\"\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010\u001c\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001d"}, d2 = {"Landroid/os/Handler;", "", "name", "Lkotlinx/coroutines/android/c;", "g", "(Landroid/os/Handler;Ljava/lang/String;)Lkotlinx/coroutines/android/c;", "Landroid/os/Looper;", "", "async", "d", "", "e", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlinx/coroutines/q;", "cont", "", "l", "Landroid/view/Choreographer;", "choreographer", "j", "a", "J", "MAX_DELAY", "b", "Lkotlinx/coroutines/android/c;", "getMain$annotations", "()V", "Main", "Landroid/view/Choreographer;", "kotlinx-coroutines-android"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    private static final long f84793a = 4611686018427387903L;
    @h
    @JvmField

    /* renamed from: b  reason: collision with root package name */
    public static final c f84794b;
    @h
    private static volatile Choreographer choreographer;

    /* compiled from: Runnable.kt */
    @Metadata(bv = {}, d1 = {"\u0000\b\n\u0002\u0010\u0002\n\u0002\b\u0004\u0010\u0004\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002¨\u0006\u0003"}, d2 = {"", "run", "()V", "kotlinx/coroutines/f3$a", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    public static final class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ q f84795a;

        public a(q qVar) {
            this.f84795a = qVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            e.l(this.f84795a);
        }
    }

    static {
        Object m70constructorimpl;
        try {
            Result.Companion companion = Result.Companion;
            m70constructorimpl = Result.m70constructorimpl(new b(d(Looper.getMainLooper(), true), null, 2, null));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            m70constructorimpl = Result.m70constructorimpl(ResultKt.createFailure(th));
        }
        f84794b = Result.m76isFailureimpl(m70constructorimpl) ? null : m70constructorimpl;
    }

    @g
    @VisibleForTesting
    public static final Handler d(@g Looper looper, boolean z9) {
        if (z9) {
            if (Build.VERSION.SDK_INT >= 28) {
                Object invoke = Handler.class.getDeclaredMethod("createAsync", Looper.class).invoke(null, looper);
                Objects.requireNonNull(invoke, "null cannot be cast to non-null type android.os.Handler");
                return (Handler) invoke;
            }
            try {
                return (Handler) Handler.class.getDeclaredConstructor(Looper.class, Handler.Callback.class, Boolean.TYPE).newInstance(looper, null, Boolean.TRUE);
            } catch (NoSuchMethodException unused) {
                return new Handler(looper);
            }
        }
        return new Handler(looper);
    }

    @h
    public static final Object e(@g Continuation<? super Long> continuation) {
        Continuation intercepted;
        Object coroutine_suspended;
        Continuation intercepted2;
        Object coroutine_suspended2;
        Choreographer choreographer2 = choreographer;
        if (choreographer2 != null) {
            intercepted2 = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
            r rVar = new r(intercepted2, 1);
            rVar.C();
            j(choreographer2, rVar);
            Object A = rVar.A();
            coroutine_suspended2 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (A == coroutine_suspended2) {
                DebugProbesKt.probeCoroutineSuspended(continuation);
            }
            return A;
        }
        intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
        r rVar2 = new r(intercepted, 1);
        rVar2.C();
        i1.e().dispatch(EmptyCoroutineContext.INSTANCE, new a(rVar2));
        Object A2 = rVar2.A();
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (A2 == coroutine_suspended) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return A2;
    }

    @JvmOverloads
    @g
    @JvmName(name = TypedValues.Transition.S_FROM)
    public static final c f(@g Handler handler) {
        return h(handler, null, 1, null);
    }

    @JvmOverloads
    @g
    @JvmName(name = TypedValues.Transition.S_FROM)
    public static final c g(@g Handler handler, @h String str) {
        return new b(handler, str);
    }

    public static /* synthetic */ c h(Handler handler, String str, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            str = null;
        }
        return g(handler, str);
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Use Dispatchers.Main instead")
    public static /* synthetic */ void i() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(Choreographer choreographer2, final q<? super Long> qVar) {
        choreographer2.postFrameCallback(new Choreographer.FrameCallback() { // from class: kotlinx.coroutines.android.d
            @Override // android.view.Choreographer.FrameCallback
            public final void doFrame(long j4) {
                e.k(q.this, j4);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(q qVar, long j4) {
        qVar.B(i1.e(), Long.valueOf(j4));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(q<? super Long> qVar) {
        Choreographer choreographer2 = choreographer;
        if (choreographer2 == null) {
            choreographer2 = Choreographer.getInstance();
            Intrinsics.checkNotNull(choreographer2);
            choreographer = choreographer2;
        }
        j(choreographer2, qVar);
    }
}

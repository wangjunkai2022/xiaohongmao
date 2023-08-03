package kotlinx.coroutines.rx2;

import io.reactivex.h0;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendFunction;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.b1;
import kotlinx.coroutines.l1;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.s0;
import kotlinx.coroutines.t0;

/* compiled from: RxScheduler.kt */
@Metadata(bv = {}, d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\n\u0010\u0002\u001a\u00020\u0001*\u00020\u0000\u001a\u0013\u0010\u0004\u001a\u00020\u0003*\u00020\u0000H\u0007¢\u0006\u0004\b\u0004\u0010\u0005\u001a\n\u0010\u0006\u001a\u00020\u0000*\u00020\u0001\u001aQ\u0010\u0013\u001a\u00020\u0012*\u00020\u00072\n\u0010\n\u001a\u00060\bj\u0002`\t2\u0006\u0010\f\u001a\u00020\u000b2,\u0010\u0011\u001a(\u0012\u001a\u0012\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000f0\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u00100\r\u0012\b\u0012\u00060\bj\u0002`\t0\rH\u0002ø\u0001\u0000*8\b\u0002\u0010\u0014\"\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000f0\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u00100\r2\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000f0\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u00100\r\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0015"}, d2 = {"Lio/reactivex/h0;", "Lkotlinx/coroutines/n0;", "d", "Lkotlinx/coroutines/rx2/z;", "e", "(Lio/reactivex/h0;)Lkotlinx/coroutines/rx2/z;", "f", "Lkotlinx/coroutines/s0;", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "block", "", "delayMillis", "Lkotlin/Function1;", "Lkotlin/coroutines/Continuation;", "", "", "adaptForScheduling", "Lio/reactivex/disposables/c;", "g", "Task", "kotlinx-coroutines-rx2"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class t {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RxScheduler.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.rx2.RxSchedulerKt", f = "RxScheduler.kt", i = {0}, l = {126}, m = "scheduleTask$task", n = {"ctx"}, s = {"L$0"})
    /* loaded from: classes4.dex */
    public static final class a extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f86607a;

        /* renamed from: b  reason: collision with root package name */
        /* synthetic */ Object f86608b;

        /* renamed from: c  reason: collision with root package name */
        int f86609c;

        a(Continuation<? super a> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f86608b = obj;
            this.f86609c |= Integer.MIN_VALUE;
            return t.i(null, null, null, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RxScheduler.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class b extends Lambda implements Function0<Unit> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Runnable f86610a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(Runnable runnable) {
            super(0);
            this.f86610a = runnable;
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            this.f86610a.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RxScheduler.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public /* synthetic */ class c extends FunctionReferenceImpl implements Function1<Unit>, SuspendFunction {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ io.reactivex.disposables.c f86611a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ CoroutineContext f86612b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Runnable f86613c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(io.reactivex.disposables.c cVar, CoroutineContext coroutineContext, Runnable runnable) {
            super(1, Intrinsics.Kotlin.class, "task", "scheduleTask$task(Lio/reactivex/disposables/Disposable;Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", 0);
            this.f86611a = cVar;
            this.f86612b = coroutineContext;
            this.f86613c = runnable;
        }

        @Override // kotlin.jvm.functions.Function1
        @m8.h
        public final Object invoke(@m8.g Continuation<? super Unit> continuation) {
            return t.i(this.f86611a, this.f86612b, this.f86613c, continuation);
        }
    }

    @m8.g
    public static final n0 d(@m8.g h0 h0Var) {
        if (h0Var instanceof kotlinx.coroutines.rx2.a) {
            return ((kotlinx.coroutines.rx2.a) h0Var).f86494c;
        }
        return new z(h0Var);
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Since 1.4.2, binary compatibility with earlier versions")
    @JvmName(name = "asCoroutineDispatcher")
    public static final /* synthetic */ z e(h0 h0Var) {
        return new z(h0Var);
    }

    @m8.g
    public static final h0 f(@m8.g n0 n0Var) {
        if (n0Var instanceof z) {
            return ((z) n0Var).r0();
        }
        return new kotlinx.coroutines.rx2.a(n0Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r5v4, types: [kotlinx.coroutines.l1, T] */
    public static final io.reactivex.disposables.c g(s0 s0Var, Runnable runnable, long j4, Function1<? super Function1<? super Continuation<? super Unit>, ? extends Object>, ? extends Runnable> function1) {
        CoroutineContext coroutineContext = s0Var.getCoroutineContext();
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        io.reactivex.disposables.c f10 = io.reactivex.disposables.d.f(new Runnable() { // from class: kotlinx.coroutines.rx2.s
            @Override // java.lang.Runnable
            public final void run() {
                t.h(Ref.ObjectRef.this);
            }
        });
        Runnable invoke = function1.invoke(new c(f10, coroutineContext, io.reactivex.plugins.a.b0(runnable)));
        if (t0.k(s0Var)) {
            if (j4 <= 0) {
                invoke.run();
            } else {
                objectRef.element = b1.d(coroutineContext).I(j4, invoke, coroutineContext);
            }
            return f10;
        }
        return io.reactivex.disposables.d.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(Ref.ObjectRef objectRef) {
        l1 l1Var = (l1) objectRef.element;
        if (l1Var == null) {
            return;
        }
        l1Var.dispose();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't wrap try/catch for region: R(9:1|(2:3|(7:5|6|7|(1:(2:10|11)(2:17|18))(2:19|(2:21|22)(2:23|(1:25)))|12|13|14))|28|6|7|(0)(0)|12|13|14) */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0053, code lost:
        r4 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0054, code lost:
        kotlinx.coroutines.rx2.e.a(r4, r5);
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0036  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object i(io.reactivex.disposables.c r4, kotlin.coroutines.CoroutineContext r5, java.lang.Runnable r6, kotlin.coroutines.Continuation<? super kotlin.Unit> r7) {
        /*
            boolean r0 = r7 instanceof kotlinx.coroutines.rx2.t.a
            if (r0 == 0) goto L13
            r0 = r7
            kotlinx.coroutines.rx2.t$a r0 = (kotlinx.coroutines.rx2.t.a) r0
            int r1 = r0.f86609c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f86609c = r1
            goto L18
        L13:
            kotlinx.coroutines.rx2.t$a r0 = new kotlinx.coroutines.rx2.t$a
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.f86608b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f86609c
            r3 = 1
            if (r2 == 0) goto L36
            if (r2 != r3) goto L2e
            java.lang.Object r4 = r0.f86607a
            r5 = r4
            kotlin.coroutines.CoroutineContext r5 = (kotlin.coroutines.CoroutineContext) r5
            kotlin.ResultKt.throwOnFailure(r7)     // Catch: java.lang.Throwable -> L53
            goto L57
        L2e:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L36:
            kotlin.ResultKt.throwOnFailure(r7)
            boolean r4 = r4.isDisposed()
            if (r4 == 0) goto L42
            kotlin.Unit r4 = kotlin.Unit.INSTANCE
            return r4
        L42:
            kotlinx.coroutines.rx2.t$b r4 = new kotlinx.coroutines.rx2.t$b     // Catch: java.lang.Throwable -> L53
            r4.<init>(r6)     // Catch: java.lang.Throwable -> L53
            r0.f86607a = r5     // Catch: java.lang.Throwable -> L53
            r0.f86609c = r3     // Catch: java.lang.Throwable -> L53
            r6 = 0
            java.lang.Object r4 = kotlinx.coroutines.f2.c(r6, r4, r0, r3, r6)     // Catch: java.lang.Throwable -> L53
            if (r4 != r1) goto L57
            return r1
        L53:
            r4 = move-exception
            kotlinx.coroutines.rx2.e.a(r4, r5)
        L57:
            kotlin.Unit r4 = kotlin.Unit.INSTANCE
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.rx2.t.i(io.reactivex.disposables.c, kotlin.coroutines.CoroutineContext, java.lang.Runnable, kotlin.coroutines.Continuation):java.lang.Object");
    }
}

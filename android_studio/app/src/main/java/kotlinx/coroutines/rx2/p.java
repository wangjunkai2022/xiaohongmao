package kotlinx.coroutines.rx2;

import androidx.exifinterface.media.ExifInterface;
import io.reactivex.b0;
import io.reactivex.exceptions.UndeliverableException;
import io.sentry.protocol.f;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.channels.d0;
import kotlinx.coroutines.channels.j0;
import kotlinx.coroutines.s0;
import kotlinx.coroutines.sync.c;

/*  JADX ERROR: JadxRuntimeException in pass: ClassModifier
    jadx.core.utils.exceptions.JadxRuntimeException: Not class type: T
    	at jadx.core.dex.info.ClassInfo.checkClassType(ClassInfo.java:53)
    	at jadx.core.dex.info.ClassInfo.fromType(ClassInfo.java:31)
    	at jadx.core.dex.visitors.ClassModifier.removeSyntheticFields(ClassModifier.java:83)
    	at jadx.core.dex.visitors.ClassModifier.visit(ClassModifier.java:61)
    	at jadx.core.dex.visitors.ClassModifier.visit(ClassModifier.java:55)
    */
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RxObservable.kt */
@Metadata(bv = {}, d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0001\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00020\u00040\u00032\b\u0012\u0004\u0012\u00028\u00000\u00052\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00070\u0006B\u001d\u0012\u0006\u0010?\u001a\u00020>\u0012\f\u00101\u001a\b\u0012\u0004\u0012\u00028\u00000.¢\u0006\u0004\b@\u0010AJ\u0019\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\b\u001a\u00028\u0000H\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\f\u0010\rJ!\u0010\u0011\u001a\u00020\u00042\b\u0010\u000e\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J!\u0010\u0013\u001a\u00020\u00042\b\u0010\u000e\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0013\u0010\u0012J\u0019\u0010\u0014\u001a\u00020\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\u0014\u0010\u0015J%\u0010\u0019\u001a\u00020\u00182\u0014\u0010\u0017\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\t\u0012\u0004\u0012\u00020\u00040\u0016H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ&\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00040\u001c2\u0006\u0010\u001b\u001a\u00028\u0000H\u0016ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u001b\u0010 \u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0004\b \u0010!JX\u0010(\u001a\u00020\u0004\"\u0004\b\u0001\u0010\"2\f\u0010$\u001a\b\u0012\u0004\u0012\u00028\u00010#2\u0006\u0010\u001b\u001a\u00028\u00002(\u0010'\u001a$\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010&\u0012\u0006\u0012\u0004\u0018\u00010\u00010%H\u0016ø\u0001\u0000¢\u0006\u0004\b(\u0010)J\u0017\u0010+\u001a\u00020\u00042\u0006\u0010*\u001a\u00020\u0004H\u0014¢\u0006\u0004\b+\u0010,J\u001f\u0010-\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u000fH\u0014¢\u0006\u0004\b-\u0010\u0012R\u001a\u00101\u001a\b\u0012\u0004\u0012\u00028\u00000.8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b/\u00100R\u0014\u00105\u001a\u0002028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b3\u00104R\u001a\u00108\u001a\b\u0012\u0004\u0012\u00028\u00000\u00078VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b6\u00107R\u0014\u00109\u001a\u00020\u000f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b9\u0010:R&\u0010=\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00070\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b;\u0010<\u0082\u0002\u000f\n\u0002\b\u0019\n\u0002\b!\n\u0005\b¡\u001e0\u0001¨\u0006B"}, d2 = {"Lkotlinx/coroutines/rx2/p;", "", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/a;", "", "Lkotlinx/coroutines/channels/d0;", "Lkotlinx/coroutines/selects/e;", "Lkotlinx/coroutines/channels/j0;", "elem", "", "r1", "(Ljava/lang/Object;)Ljava/lang/Throwable;", "w1", "()V", "cause", "", f.b.f83682d, "s1", "(Ljava/lang/Throwable;Z)V", "v1", "close", "(Ljava/lang/Throwable;)Z", "Lkotlin/Function1;", "handler", "", "t1", "(Lkotlin/jvm/functions/Function1;)Ljava/lang/Void;", "element", "Lkotlinx/coroutines/channels/q;", "trySend-JP2dKIU", "(Ljava/lang/Object;)Ljava/lang/Object;", "trySend", "send", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "R", "Lkotlinx/coroutines/selects/f;", "select", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "block", "n", "(Lkotlinx/coroutines/selects/f;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V", "value", "u1", "(Lkotlin/Unit;)V", "m1", "Lio/reactivex/b0;", "c", "Lio/reactivex/b0;", "subscriber", "Lkotlinx/coroutines/sync/c;", "d", "Lkotlinx/coroutines/sync/c;", "mutex", "getChannel", "()Lkotlinx/coroutines/channels/j0;", "channel", "isClosedForSend", "()Z", "getOnSend", "()Lkotlinx/coroutines/selects/e;", "onSend", "Lkotlin/coroutines/CoroutineContext;", "parentContext", "<init>", "(Lkotlin/coroutines/CoroutineContext;Lio/reactivex/b0;)V", "kotlinx-coroutines-rx2"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class p<T> extends kotlinx.coroutines.a<Unit> implements d0<T>, kotlinx.coroutines.selects.e<T, j0<? super T>> {

    /* renamed from: e  reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f86584e = AtomicIntegerFieldUpdater.newUpdater(p.class, "_signal");
    @m8.g
    private volatile /* synthetic */ int _signal;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final b0<T> f86585c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private final kotlinx.coroutines.sync.c f86586d;

    /* compiled from: RxObservable.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0005\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0000\"\b\b\u0001\u0010\u0002*\u00020\u0001*\u00020\u0003H\u008a@"}, d2 = {"R", "", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    @DebugMetadata(c = "kotlinx.coroutines.rx2.RxObservableCoroutine$registerSelectClause2$1", f = "RxObservable.kt", i = {}, l = {106}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes4.dex */
    static final class a extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f86587a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ p<T> f86588b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ kotlinx.coroutines.selects.f<R> f86589c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ Function1<Continuation<? super R>, Object> f86590d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        a(p<T> pVar, kotlinx.coroutines.selects.f<? super R> fVar, Function1<? super Continuation<? super R>, ? extends Object> function1, Continuation<? super a> continuation) {
            super(2, continuation);
            this.f86588b = pVar;
            this.f86589c = fVar;
            this.f86590d = function1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new a(this.f86588b, this.f86589c, this.f86590d, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((a) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f86587a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                kotlinx.coroutines.sync.c cVar = ((p) this.f86588b).f86586d;
                this.f86587a = 1;
                if (c.a.b(cVar, null, this, 1, null) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
            }
            if (!this.f86589c.t()) {
                c.a.d(((p) this.f86588b).f86586d, null, 1, null);
                return Unit.INSTANCE;
            }
            z7.a.d(this.f86590d, this.f86589c.u());
            return Unit.INSTANCE;
        }
    }

    /* compiled from: RxObservable.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\u0010\u0003\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000\"\b\b\u0001\u0010\u0002*\u00020\u0001H\u008a@"}, d2 = {"R", "", ExifInterface.GPS_DIRECTION_TRUE, "<anonymous>"}, k = 3, mv = {1, 6, 0})
    @DebugMetadata(c = "kotlinx.coroutines.rx2.RxObservableCoroutine$registerSelectClause2$clause$1", f = "RxObservable.kt", i = {}, l = {101}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes4.dex */
    static final class b extends SuspendLambda implements Function1<Continuation<? super R>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f86591a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ p<T> f86592b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ T f86593c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ Function2<j0<? super T>, Continuation<? super R>, Object> f86594d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        b(p<T> pVar, T t9, Function2<? super j0<? super T>, ? super Continuation<? super R>, ? extends Object> function2, Continuation<? super b> continuation) {
            super(1, continuation);
            this.f86592b = pVar;
            this.f86593c = t9;
            this.f86594d = function2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.g Continuation<?> continuation) {
            return new b(this.f86592b, this.f86593c, this.f86594d, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            return invoke((Continuation) obj);
        }

        @m8.h
        public final Object invoke(@m8.h Continuation<? super R> continuation) {
            return ((b) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f86591a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                Throwable r12 = this.f86592b.r1(this.f86593c);
                if (r12 == null) {
                    Function2<j0<? super T>, Continuation<? super R>, Object> function2 = this.f86594d;
                    j0<? super T> j0Var = this.f86592b;
                    this.f86591a = 1;
                    obj = function2.invoke(j0Var, this);
                    if (obj == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    throw r12;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
            }
            return obj;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RxObservable.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.rx2.RxObservableCoroutine", f = "RxObservable.kt", i = {0, 0}, l = {85}, m = "send", n = {"this", "element"}, s = {"L$0", "L$1"})
    /* loaded from: classes4.dex */
    public static final class c extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f86595a;

        /* renamed from: b  reason: collision with root package name */
        Object f86596b;

        /* renamed from: c  reason: collision with root package name */
        /* synthetic */ Object f86597c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ p<T> f86598d;

        /* renamed from: e  reason: collision with root package name */
        int f86599e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(p<T> pVar, Continuation<? super c> continuation) {
            super(continuation);
            this.f86598d = pVar;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f86597c = obj;
            this.f86599e |= Integer.MIN_VALUE;
            return this.f86598d.send(null, this);
        }
    }

    static {
    }

    public p(@m8.g CoroutineContext coroutineContext, @m8.g b0<T> b0Var) {
        super(coroutineContext, false, true);
        this.f86585c = b0Var;
        this.f86586d = kotlinx.coroutines.sync.e.b(false, 1, null);
        this._signal = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Throwable r1(T t9) {
        if (!a()) {
            s1(q0(), r0());
            return A();
        }
        try {
            this.f86585c.onNext(t9);
            w1();
            return null;
        } catch (Throwable th) {
            UndeliverableException undeliverableException = new UndeliverableException(th);
            boolean close = close(undeliverableException);
            w1();
            if (close) {
                return undeliverableException;
            }
            e.a(undeliverableException, getContext());
            return A();
        }
    }

    private final void s1(Throwable th, boolean z9) {
        if (this._signal == -2) {
            return;
        }
        this._signal = -2;
        Throwable th2 = th == null ? null : th;
        if (th2 == null) {
            try {
                this.f86585c.onComplete();
            } catch (Exception e4) {
                e.a(e4, getContext());
            }
            return;
        }
        if ((th2 instanceof UndeliverableException) && !z9) {
            e.a(th, getContext());
        } else if (th2 != A() || !this.f86585c.isDisposed()) {
            try {
                this.f86585c.onError(th);
            } catch (Exception e10) {
                ExceptionsKt__ExceptionsKt.addSuppressed(th, e10);
                e.a(th, getContext());
            }
        }
        return;
        c.a.d(this.f86586d, null, 1, null);
    }

    private final void v1(Throwable th, boolean z9) {
        if (f86584e.compareAndSet(this, 0, -1) && c.a.c(this.f86586d, null, 1, null)) {
            s1(th, z9);
        }
    }

    private final void w1() {
        c.a.d(this.f86586d, null, 1, null);
        if (a() || !c.a.c(this.f86586d, null, 1, null)) {
            return;
        }
        s1(q0(), r0());
    }

    @Override // kotlinx.coroutines.channels.j0
    public boolean close(@m8.h Throwable th) {
        return Y(th);
    }

    @Override // kotlinx.coroutines.channels.d0
    @m8.g
    public j0<T> getChannel() {
        return this;
    }

    @Override // kotlinx.coroutines.channels.j0
    @m8.g
    public kotlinx.coroutines.selects.e<T, j0<T>> getOnSend() {
        return this;
    }

    @Override // kotlinx.coroutines.channels.j0
    public /* bridge */ /* synthetic */ void invokeOnClose(Function1 function1) {
        t1(function1);
    }

    @Override // kotlinx.coroutines.channels.j0
    public boolean isClosedForSend() {
        return !a();
    }

    @Override // kotlinx.coroutines.a
    protected void m1(@m8.g Throwable th, boolean z9) {
        v1(th, z9);
    }

    @Override // kotlinx.coroutines.selects.e
    public <R> void n(@m8.g kotlinx.coroutines.selects.f<? super R> fVar, @m8.g T t9, @m8.g Function2<? super j0<? super T>, ? super Continuation<? super R>, ? extends Object> function2) {
        kotlinx.coroutines.l.f(this, null, CoroutineStart.UNDISPATCHED, new a(this, fVar, new b(this, t9, function2, null), null), 1, null);
    }

    @Override // kotlinx.coroutines.a
    public /* bridge */ /* synthetic */ void n1(Unit unit) {
        u1(unit);
    }

    @Override // kotlinx.coroutines.channels.j0
    @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated in the favour of 'trySend' method", replaceWith = @ReplaceWith(expression = "trySend(element).isSuccess", imports = {}))
    public boolean offer(@m8.g T t9) {
        return d0.a.a(this, t9);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0054  */
    @Override // kotlinx.coroutines.channels.j0
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object send(@m8.g T r5, @m8.g kotlin.coroutines.Continuation<? super kotlin.Unit> r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof kotlinx.coroutines.rx2.p.c
            if (r0 == 0) goto L13
            r0 = r6
            kotlinx.coroutines.rx2.p$c r0 = (kotlinx.coroutines.rx2.p.c) r0
            int r1 = r0.f86599e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f86599e = r1
            goto L18
        L13:
            kotlinx.coroutines.rx2.p$c r0 = new kotlinx.coroutines.rx2.p$c
            r0.<init>(r4, r6)
        L18:
            java.lang.Object r6 = r0.f86597c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f86599e
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            java.lang.Object r5 = r0.f86596b
            java.lang.Object r0 = r0.f86595a
            kotlinx.coroutines.rx2.p r0 = (kotlinx.coroutines.rx2.p) r0
            kotlin.ResultKt.throwOnFailure(r6)
            goto L4b
        L2f:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L37:
            kotlin.ResultKt.throwOnFailure(r6)
            kotlinx.coroutines.sync.c r6 = r4.f86586d
            r0.f86595a = r4
            r0.f86596b = r5
            r0.f86599e = r3
            r2 = 0
            java.lang.Object r6 = kotlinx.coroutines.sync.c.a.b(r6, r2, r0, r3, r2)
            if (r6 != r1) goto L4a
            return r1
        L4a:
            r0 = r4
        L4b:
            java.lang.Throwable r5 = r0.r1(r5)
            if (r5 != 0) goto L54
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        L54:
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.rx2.p.send(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @m8.g
    public Void t1(@m8.g Function1<? super Throwable, Unit> function1) {
        throw new UnsupportedOperationException("RxObservableCoroutine doesn't support invokeOnClose");
    }

    @Override // kotlinx.coroutines.channels.j0
    @m8.g
    /* renamed from: trySend-JP2dKIU */
    public Object mo51trySendJP2dKIU(@m8.g T t9) {
        if (!c.a.c(this.f86586d, null, 1, null)) {
            return kotlinx.coroutines.channels.q.f84909b.b();
        }
        Throwable r12 = r1(t9);
        if (r12 == null) {
            return kotlinx.coroutines.channels.q.f84909b.c(Unit.INSTANCE);
        }
        return kotlinx.coroutines.channels.q.f84909b.a(r12);
    }

    protected void u1(@m8.g Unit unit) {
        v1(null, false);
    }
}

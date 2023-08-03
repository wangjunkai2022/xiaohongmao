package kotlinx.coroutines.reactive;

import androidx.exifinterface.media.ExifInterface;
import io.sentry.e3;
import io.sentry.protocol.f;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
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
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.channels.d0;
import kotlinx.coroutines.channels.j0;
import kotlinx.coroutines.channels.q;
import kotlinx.coroutines.e2;
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
/* compiled from: Publish.kt */
@Metadata(bv = {}, d1 = {"\u0000|\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0001\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0011\b\u0007\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00002\b\u0012\u0004\u0012\u00020\u00030\u00022\b\u0012\u0004\u0012\u00028\u00000\u00042\u00020\u00052\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00070\u0006B7\u0012\u0006\u0010I\u001a\u000207\u0012\f\u00106\u001a\b\u0012\u0004\u0012\u00028\u000003\u0012\u0018\u0010:\u001a\u0014\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u000207\u0012\u0004\u0012\u00020\u00030%¢\u0006\u0004\bJ\u0010KJ\u0019\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\b\u001a\u00028\u0000H\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\f\u0010\rJ!\u0010\u0011\u001a\u00020\u00032\b\u0010\u000e\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J!\u0010\u0013\u001a\u00020\u00032\b\u0010\u000e\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0013\u0010\u0012J\u0019\u0010\u0014\u001a\u00020\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\u0014\u0010\u0015J%\u0010\u0019\u001a\u00020\u00182\u0014\u0010\u0017\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\t\u0012\u0004\u0012\u00020\u00030\u0016H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ&\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00030\u001c2\u0006\u0010\u001b\u001a\u00028\u0000H\u0016ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u001b\u0010 \u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0004\b \u0010!JX\u0010)\u001a\u00020\u0003\"\u0004\b\u0001\u0010\"2\f\u0010$\u001a\b\u0012\u0004\u0012\u00028\u00010#2\u0006\u0010\u001b\u001a\u00028\u00002(\u0010(\u001a$\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0007\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010&\u0012\u0006\u0012\u0004\u0018\u00010'0%H\u0016ø\u0001\u0000¢\u0006\u0004\b)\u0010*J\u0017\u0010,\u001a\u00020\u00032\u0006\u0010)\u001a\u00020+H\u0016¢\u0006\u0004\b,\u0010-J\u0017\u0010/\u001a\u00020\u00032\u0006\u0010.\u001a\u00020\u0003H\u0014¢\u0006\u0004\b/\u00100J\u001f\u00101\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u000fH\u0014¢\u0006\u0004\b1\u0010\u0012J\u000f\u00102\u001a\u00020\u0003H\u0016¢\u0006\u0004\b2\u0010\rR\u001a\u00106\u001a\b\u0012\u0004\u0012\u00028\u0000038\bX\u0088\u0004¢\u0006\u0006\n\u0004\b4\u00105R&\u0010:\u001a\u0014\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u000207\u0012\u0004\u0012\u00020\u00030%8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b8\u00109R\u0014\u0010>\u001a\u00020;8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b<\u0010=R\u0016\u0010?\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b?\u0010@R\u001a\u0010C\u001a\b\u0012\u0004\u0012\u00028\u00000\u00078VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bA\u0010BR\u0014\u0010D\u001a\u00020\u000f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bD\u0010ER&\u0010H\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00070\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bF\u0010G\u0082\u0002\u000f\n\u0002\b\u0019\n\u0002\b!\n\u0005\b¡\u001e0\u0001¨\u0006L"}, d2 = {"Lkotlinx/coroutines/reactive/m;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/a;", "", "Lkotlinx/coroutines/channels/d0;", "Lorg/reactivestreams/e;", "Lkotlinx/coroutines/selects/e;", "Lkotlinx/coroutines/channels/j0;", "elem", "", "r1", "(Ljava/lang/Object;)Ljava/lang/Throwable;", "w1", "()V", "cause", "", f.b.f83682d, "s1", "(Ljava/lang/Throwable;Z)V", "v1", "close", "(Ljava/lang/Throwable;)Z", "Lkotlin/Function1;", "handler", "", "t1", "(Lkotlin/jvm/functions/Function1;)Ljava/lang/Void;", "element", "Lkotlinx/coroutines/channels/q;", "trySend-JP2dKIU", "(Ljava/lang/Object;)Ljava/lang/Object;", "trySend", "send", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "R", "Lkotlinx/coroutines/selects/f;", "select", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "", "block", "n", "(Lkotlinx/coroutines/selects/f;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V", "", e3.b.f83149d, "(J)V", "value", "u1", "(Lkotlin/Unit;)V", "m1", "cancel", "Lorg/reactivestreams/d;", "c", "Lorg/reactivestreams/d;", "subscriber", "Lkotlin/coroutines/CoroutineContext;", "d", "Lkotlin/jvm/functions/Function2;", "exceptionOnCancelHandler", "Lkotlinx/coroutines/sync/c;", "e", "Lkotlinx/coroutines/sync/c;", "mutex", "cancelled", "Z", "getChannel", "()Lkotlinx/coroutines/channels/j0;", "channel", "isClosedForSend", "()Z", "getOnSend", "()Lkotlinx/coroutines/selects/e;", "onSend", "parentContext", "<init>", "(Lkotlin/coroutines/CoroutineContext;Lorg/reactivestreams/d;Lkotlin/jvm/functions/Function2;)V", "kotlinx-coroutines-reactive"}, k = 1, mv = {1, 6, 0})
@e2
/* loaded from: classes4.dex */
public final class m<T> extends kotlinx.coroutines.a<Unit> implements d0<T>, org.reactivestreams.e, kotlinx.coroutines.selects.e<T, j0<? super T>> {

    /* renamed from: f  reason: collision with root package name */
    private static final /* synthetic */ AtomicLongFieldUpdater f86466f = AtomicLongFieldUpdater.newUpdater(m.class, "_nRequested");
    @m8.g
    private volatile /* synthetic */ long _nRequested;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final org.reactivestreams.d<T> f86467c;
    private volatile boolean cancelled;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private final Function2<Throwable, CoroutineContext, Unit> f86468d;
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final kotlinx.coroutines.sync.c f86469e;

    /* compiled from: Publish.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0000\"\u0006\b\u0001\u0010\u0001 \u0000*\u00020\u0002H\u008a@"}, d2 = {"R", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    @DebugMetadata(c = "kotlinx.coroutines.reactive.PublisherCoroutine$registerSelectClause2$1", f = "Publish.kt", i = {}, l = {114}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes4.dex */
    static final class a extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f86470a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ m<T> f86471b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ kotlinx.coroutines.selects.f<R> f86472c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ Function1<Continuation<? super R>, Object> f86473d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        a(m<? super T> mVar, kotlinx.coroutines.selects.f<? super R> fVar, Function1<? super Continuation<? super R>, ? extends Object> function1, Continuation<? super a> continuation) {
            super(2, continuation);
            this.f86471b = mVar;
            this.f86472c = fVar;
            this.f86473d = function1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new a(this.f86471b, this.f86472c, this.f86473d, continuation);
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
            int i4 = this.f86470a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                kotlinx.coroutines.sync.c cVar = ((m) this.f86471b).f86469e;
                this.f86470a = 1;
                if (c.a.b(cVar, null, this, 1, null) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
            }
            if (!this.f86472c.t()) {
                c.a.d(((m) this.f86471b).f86469e, null, 1, null);
                return Unit.INSTANCE;
            }
            z7.a.d(this.f86473d, this.f86472c.u());
            return Unit.INSTANCE;
        }
    }

    /* compiled from: Publish.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0004\n\u0002\b\u0003\u0010\u0002\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000\"\u0006\b\u0001\u0010\u0001 \u0000H\u008a@"}, d2 = {"R", ExifInterface.GPS_DIRECTION_TRUE, "<anonymous>"}, k = 3, mv = {1, 6, 0})
    @DebugMetadata(c = "kotlinx.coroutines.reactive.PublisherCoroutine$registerSelectClause2$clause$1", f = "Publish.kt", i = {}, l = {110}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes4.dex */
    static final class b extends SuspendLambda implements Function1<Continuation<? super R>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f86474a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ m<T> f86475b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ T f86476c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ Function2<j0<? super T>, Continuation<? super R>, Object> f86477d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        b(m<? super T> mVar, T t9, Function2<? super j0<? super T>, ? super Continuation<? super R>, ? extends Object> function2, Continuation<? super b> continuation) {
            super(1, continuation);
            this.f86475b = mVar;
            this.f86476c = t9;
            this.f86477d = function2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.g Continuation<?> continuation) {
            return new b(this.f86475b, this.f86476c, this.f86477d, continuation);
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
            int i4 = this.f86474a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                Throwable r12 = this.f86475b.r1(this.f86476c);
                if (r12 == null) {
                    Function2<j0<? super T>, Continuation<? super R>, Object> function2 = this.f86477d;
                    j0<? super T> j0Var = this.f86475b;
                    this.f86474a = 1;
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
    /* compiled from: Publish.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.reactive.PublisherCoroutine", f = "Publish.kt", i = {0, 0}, l = {98}, m = "send", n = {"this", "element"}, s = {"L$0", "L$1"})
    /* loaded from: classes4.dex */
    public static final class c extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f86478a;

        /* renamed from: b  reason: collision with root package name */
        Object f86479b;

        /* renamed from: c  reason: collision with root package name */
        /* synthetic */ Object f86480c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ m<T> f86481d;

        /* renamed from: e  reason: collision with root package name */
        int f86482e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        c(m<? super T> mVar, Continuation<? super c> continuation) {
            super(continuation);
            this.f86481d = mVar;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f86480c = obj;
            this.f86482e |= Integer.MIN_VALUE;
            return this.f86481d.send(null, this);
        }
    }

    static {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public m(@m8.g CoroutineContext coroutineContext, @m8.g org.reactivestreams.d<T> dVar, @m8.g Function2<? super Throwable, ? super CoroutineContext, Unit> function2) {
        super(coroutineContext, false, true);
        this.f86467c = dVar;
        this.f86468d = function2;
        this.f86469e = kotlinx.coroutines.sync.e.a(true);
        this._nRequested = 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Throwable r1(T t9) {
        if (t9 != null) {
            if (!a()) {
                w1();
                return A();
            }
            try {
                this.f86467c.onNext(t9);
                while (true) {
                    long j4 = this._nRequested;
                    if (j4 < 0 || j4 == Long.MAX_VALUE) {
                        break;
                    }
                    long j10 = j4 - 1;
                    if (f86466f.compareAndSet(this, j4, j10)) {
                        if (j10 == 0) {
                            return null;
                        }
                    }
                }
                w1();
                return null;
            } catch (Throwable th) {
                this.cancelled = true;
                boolean close = close(th);
                w1();
                if (close) {
                    return th;
                }
                this.f86468d.invoke(th, getContext());
                return A();
            }
        }
        w1();
        throw new NullPointerException("Attempted to emit `null` inside a reactive publisher");
    }

    private final void s1(Throwable th, boolean z9) {
        try {
            if (this._nRequested != -2) {
                this._nRequested = -2L;
                if (!this.cancelled) {
                    if (th == null) {
                        this.f86467c.onComplete();
                    } else {
                        this.f86467c.onError(th);
                    }
                } else if (th != null && !z9) {
                    this.f86468d.invoke(th, getContext());
                }
            }
        } finally {
            c.a.d(this.f86469e, null, 1, null);
        }
    }

    private final void v1(Throwable th, boolean z9) {
        long j4;
        int i4;
        do {
            j4 = this._nRequested;
            if (j4 == -2) {
                return;
            }
            i4 = (j4 > 0L ? 1 : (j4 == 0L ? 0 : -1));
            if (!(i4 >= 0)) {
                throw new IllegalStateException("Check failed.".toString());
            }
        } while (!f86466f.compareAndSet(this, j4, -1L));
        if (i4 == 0) {
            s1(th, z9);
        } else if (c.a.c(this.f86469e, null, 1, null)) {
            s1(th, z9);
        }
    }

    private final void w1() {
        c.a.d(this.f86469e, null, 1, null);
        if (i() && c.a.c(this.f86469e, null, 1, null)) {
            s1(q0(), r0());
        }
    }

    @Override // kotlinx.coroutines.q2, kotlinx.coroutines.j2, kotlinx.coroutines.channels.f0
    public void cancel() {
        this.cancelled = true;
        super.d(null);
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
    public <R> void n(@m8.g kotlinx.coroutines.selects.f<? super R> fVar, T t9, @m8.g Function2<? super j0<? super T>, ? super Continuation<? super R>, ? extends Object> function2) {
        kotlinx.coroutines.l.f(this, null, CoroutineStart.UNDISPATCHED, new a(this, fVar, new b(this, t9, function2, null), null), 1, null);
    }

    @Override // kotlinx.coroutines.a
    public /* bridge */ /* synthetic */ void n1(Unit unit) {
        u1(unit);
    }

    @Override // kotlinx.coroutines.channels.j0
    @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated in the favour of 'trySend' method", replaceWith = @ReplaceWith(expression = "trySend(element).isSuccess", imports = {}))
    public boolean offer(T t9) {
        return d0.a.a(this, t9);
    }

    @Override // org.reactivestreams.e
    public void request(long j4) {
        long j10;
        int i4;
        long j11;
        if (j4 <= 0) {
            Y(new IllegalArgumentException(Intrinsics.stringPlus("non-positive subscription request ", Long.valueOf(j4))));
            return;
        }
        do {
            j10 = this._nRequested;
            i4 = (j10 > 0L ? 1 : (j10 == 0L ? 0 : -1));
            if (i4 < 0) {
                return;
            }
            long j12 = j10 + j4;
            j11 = Long.MAX_VALUE;
            if (j12 >= 0 && j4 != Long.MAX_VALUE) {
                j11 = j12;
            }
            if (j10 == j11) {
                return;
            }
        } while (!f86466f.compareAndSet(this, j10, j11));
        if (i4 == 0) {
            w1();
        }
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
    public java.lang.Object send(T r5, @m8.g kotlin.coroutines.Continuation<? super kotlin.Unit> r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof kotlinx.coroutines.reactive.m.c
            if (r0 == 0) goto L13
            r0 = r6
            kotlinx.coroutines.reactive.m$c r0 = (kotlinx.coroutines.reactive.m.c) r0
            int r1 = r0.f86482e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f86482e = r1
            goto L18
        L13:
            kotlinx.coroutines.reactive.m$c r0 = new kotlinx.coroutines.reactive.m$c
            r0.<init>(r4, r6)
        L18:
            java.lang.Object r6 = r0.f86480c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f86482e
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            java.lang.Object r5 = r0.f86479b
            java.lang.Object r0 = r0.f86478a
            kotlinx.coroutines.reactive.m r0 = (kotlinx.coroutines.reactive.m) r0
            kotlin.ResultKt.throwOnFailure(r6)
            goto L4b
        L2f:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L37:
            kotlin.ResultKt.throwOnFailure(r6)
            kotlinx.coroutines.sync.c r6 = r4.f86469e
            r0.f86478a = r4
            r0.f86479b = r5
            r0.f86482e = r3
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
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.reactive.m.send(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @m8.g
    public Void t1(@m8.g Function1<? super Throwable, Unit> function1) {
        throw new UnsupportedOperationException("PublisherCoroutine doesn't support invokeOnClose");
    }

    @Override // kotlinx.coroutines.channels.j0
    @m8.g
    /* renamed from: trySend-JP2dKIU */
    public Object mo51trySendJP2dKIU(T t9) {
        if (!c.a.c(this.f86469e, null, 1, null)) {
            return q.f84909b.b();
        }
        Throwable r12 = r1(t9);
        if (r12 == null) {
            return q.f84909b.c(Unit.INSTANCE);
        }
        return q.f84909b.a(r12);
    }

    protected void u1(@m8.g Unit unit) {
        v1(null, false);
    }
}

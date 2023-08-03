package kotlinx.coroutines.reactive;

import androidx.exifinterface.media.ExifInterface;
import io.sentry.e3;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.coroutines.jvm.internal.SuspendFunction;
import kotlin.jvm.JvmField;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlinx.coroutines.e2;
import kotlinx.coroutines.m2;
import kotlinx.coroutines.r;

/* compiled from: ReactiveFlow.kt */
@Metadata(bv = {}, d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u00022\b\u0012\u0004\u0012\u00020\u00040\u0003B-\u0012\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00028\u00000\u0011\u0012\u000e\u0010\u0018\u001a\n\u0012\u0006\b\u0000\u0012\u00028\u00000\u0015\u0012\u0006\u0010\u001d\u001a\u00020\u001c¢\u0006\u0004\b\u001e\u0010\u001fJ\u0015\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00040\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u0013\u0010\b\u001a\u00020\u0004H\u0082@ø\u0001\u0000¢\u0006\u0004\b\b\u0010\tJ\u0013\u0010\n\u001a\u00020\u0004H\u0082@ø\u0001\u0000¢\u0006\u0004\b\n\u0010\tJ\u000f\u0010\u000b\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0014\u001a\b\u0012\u0004\u0012\u00028\u00000\u00118\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u001c\u0010\u0018\u001a\n\u0012\u0006\b\u0000\u0012\u00028\u00000\u00158\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0016\u0010\u001a\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u001b\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006 "}, d2 = {"Lkotlinx/coroutines/reactive/h;", ExifInterface.GPS_DIRECTION_TRUE, "Lorg/reactivestreams/e;", "Lkotlinx/coroutines/a;", "", "Lkotlin/coroutines/Continuation;", "s1", "()Lkotlin/coroutines/Continuation;", "t1", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "r1", "cancel", "()V", "", "n", e3.b.f83149d, "(J)V", "Lkotlinx/coroutines/flow/i;", "c", "Lkotlinx/coroutines/flow/i;", "flow", "Lorg/reactivestreams/d;", "d", "Lorg/reactivestreams/d;", "subscriber", "", "cancellationRequested", "Z", "Lkotlin/coroutines/CoroutineContext;", "context", "<init>", "(Lkotlinx/coroutines/flow/i;Lorg/reactivestreams/d;Lkotlin/coroutines/CoroutineContext;)V", "kotlinx-coroutines-reactive"}, k = 1, mv = {1, 6, 0})
@e2
/* loaded from: classes4.dex */
public final class h<T> extends kotlinx.coroutines.a<Unit> implements org.reactivestreams.e {

    /* renamed from: e  reason: collision with root package name */
    static final /* synthetic */ AtomicLongFieldUpdater f86428e = AtomicLongFieldUpdater.newUpdater(h.class, "requested");

    /* renamed from: f  reason: collision with root package name */
    static final /* synthetic */ AtomicReferenceFieldUpdater f86429f = AtomicReferenceFieldUpdater.newUpdater(h.class, Object.class, "producer");
    @JvmField
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    public final kotlinx.coroutines.flow.i<T> f86430c;
    private volatile boolean cancellationRequested;
    @JvmField
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    public final org.reactivestreams.d<? super T> f86431d;
    @m8.g
    volatile /* synthetic */ Object producer;
    @m8.g
    volatile /* synthetic */ long requested;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ReactiveFlow.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u0002H\u0002H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "value", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"}, k = 3, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class a<T> implements kotlinx.coroutines.flow.j, SuspendFunction {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ h<T> f86432a;

        a(h<T> hVar) {
            this.f86432a = hVar;
        }

        @Override // kotlinx.coroutines.flow.j
        @m8.h
        public final Object emit(T t9, @m8.g Continuation<? super Unit> continuation) {
            Continuation intercepted;
            Object coroutine_suspended;
            Object coroutine_suspended2;
            this.f86432a.f86431d.onNext(t9);
            if (h.f86428e.decrementAndGet(this.f86432a) <= 0) {
                h<T> hVar = this.f86432a;
                intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
                r rVar = new r(intercepted, 1);
                rVar.C();
                hVar.producer = rVar;
                Object A = rVar.A();
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (A == coroutine_suspended) {
                    DebugProbesKt.probeCoroutineSuspended(continuation);
                }
                coroutine_suspended2 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                return A == coroutine_suspended2 ? A : Unit.INSTANCE;
            }
            m2.z(this.f86432a.getCoroutineContext());
            return Unit.INSTANCE;
        }
    }

    /* compiled from: Continuation.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J \u0010\u0005\u001a\u00020\u00042\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0016ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006R\u0014\u0010\n\u001a\u00020\u00078VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\t\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000b¸\u0006\u0000"}, d2 = {"kotlin/coroutines/ContinuationKt$Continuation$1", "Lkotlin/coroutines/Continuation;", "Lkotlin/Result;", "result", "", "resumeWith", "(Ljava/lang/Object;)V", "Lkotlin/coroutines/CoroutineContext;", "getContext", "()Lkotlin/coroutines/CoroutineContext;", "context", "kotlin-stdlib"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    public static final class b implements Continuation<Unit> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CoroutineContext f86433a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ h f86434b;

        public b(CoroutineContext coroutineContext, h hVar) {
            this.f86433a = coroutineContext;
            this.f86434b = hVar;
        }

        @Override // kotlin.coroutines.Continuation
        @m8.g
        public CoroutineContext getContext() {
            return this.f86433a;
        }

        @Override // kotlin.coroutines.Continuation
        public void resumeWith(@m8.g Object obj) {
            z7.a.d(new c(this.f86434b), this.f86434b);
        }
    }

    /* compiled from: ReactiveFlow.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes4.dex */
    /* synthetic */ class c extends FunctionReferenceImpl implements Function1<Unit>, SuspendFunction {
        c(Object obj) {
            super(1, obj, h.class, "flowProcessing", "flowProcessing(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", 0);
        }

        @Override // kotlin.jvm.functions.Function1
        @m8.h
        public final Object invoke(@m8.g Continuation<? super Unit> continuation) {
            return ((h) this.receiver).t1(continuation);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ReactiveFlow.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.reactive.FlowSubscription", f = "ReactiveFlow.kt", i = {0}, l = {209}, m = "flowProcessing", n = {"this"}, s = {"L$0"})
    /* loaded from: classes4.dex */
    public static final class d extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f86435a;

        /* renamed from: b  reason: collision with root package name */
        /* synthetic */ Object f86436b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ h<T> f86437c;

        /* renamed from: d  reason: collision with root package name */
        int f86438d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(h<T> hVar, Continuation<? super d> continuation) {
            super(continuation);
            this.f86437c = hVar;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f86436b = obj;
            this.f86438d |= Integer.MIN_VALUE;
            return this.f86437c.t1(this);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public h(@m8.g kotlinx.coroutines.flow.i<? extends T> iVar, @m8.g org.reactivestreams.d<? super T> dVar, @m8.g CoroutineContext coroutineContext) {
        super(coroutineContext, false, true);
        this.f86430c = iVar;
        this.f86431d = dVar;
        this.requested = 0L;
        this.producer = s1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object r1(Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        Object collect = this.f86430c.collect(new a(this), continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return collect == coroutine_suspended ? collect : Unit.INSTANCE;
    }

    private final Continuation<Unit> s1() {
        return new b(getCoroutineContext(), this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't wrap try/catch for region: R(10:1|(2:3|(7:5|6|(1:(3:9|10|11)(2:35|36))(4:37|38|39|(1:41)(1:42))|12|13|14|15))|46|6|(0)(0)|12|13|14|15|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x004c, code lost:
        r5 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x004d, code lost:
        kotlinx.coroutines.p0.b(r0.getCoroutineContext(), r5);
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0037  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object t1(kotlin.coroutines.Continuation<? super kotlin.Unit> r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof kotlinx.coroutines.reactive.h.d
            if (r0 == 0) goto L13
            r0 = r5
            kotlinx.coroutines.reactive.h$d r0 = (kotlinx.coroutines.reactive.h.d) r0
            int r1 = r0.f86438d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f86438d = r1
            goto L18
        L13:
            kotlinx.coroutines.reactive.h$d r0 = new kotlinx.coroutines.reactive.h$d
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.f86436b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f86438d
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            java.lang.Object r0 = r0.f86435a
            kotlinx.coroutines.reactive.h r0 = (kotlinx.coroutines.reactive.h) r0
            kotlin.ResultKt.throwOnFailure(r5)     // Catch: java.lang.Throwable -> L2d
            goto L46
        L2d:
            r5 = move-exception
            goto L59
        L2f:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L37:
            kotlin.ResultKt.throwOnFailure(r5)
            r0.f86435a = r4     // Catch: java.lang.Throwable -> L57
            r0.f86438d = r3     // Catch: java.lang.Throwable -> L57
            java.lang.Object r5 = r4.r1(r0)     // Catch: java.lang.Throwable -> L57
            if (r5 != r1) goto L45
            return r1
        L45:
            r0 = r4
        L46:
            org.reactivestreams.d<? super T> r5 = r0.f86431d     // Catch: java.lang.Throwable -> L4c
            r5.onComplete()     // Catch: java.lang.Throwable -> L4c
            goto L54
        L4c:
            r5 = move-exception
            kotlin.coroutines.CoroutineContext r0 = r0.getCoroutineContext()
            kotlinx.coroutines.p0.b(r0, r5)
        L54:
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        L57:
            r5 = move-exception
            r0 = r4
        L59:
            boolean r1 = r0.cancellationRequested
            if (r1 == 0) goto L69
            boolean r1 = r0.a()
            if (r1 != 0) goto L69
            java.util.concurrent.CancellationException r1 = r0.A()
            if (r5 == r1) goto L7a
        L69:
            org.reactivestreams.d<? super T> r1 = r0.f86431d     // Catch: java.lang.Throwable -> L6f
            r1.onError(r5)     // Catch: java.lang.Throwable -> L6f
            goto L7a
        L6f:
            r1 = move-exception
            kotlin.ExceptionsKt.addSuppressed(r5, r1)
            kotlin.coroutines.CoroutineContext r0 = r0.getCoroutineContext()
            kotlinx.coroutines.p0.b(r0, r5)
        L7a:
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.reactive.h.t1(kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // kotlinx.coroutines.q2, kotlinx.coroutines.j2, kotlinx.coroutines.channels.f0
    public void cancel() {
        this.cancellationRequested = true;
        d(null);
    }

    @Override // org.reactivestreams.e
    public void request(long j4) {
        long j10;
        long j11;
        Continuation continuation;
        if (j4 <= 0) {
            return;
        }
        do {
            j10 = this.requested;
            j11 = j10 + j4;
            if (j11 <= 0) {
                j11 = Long.MAX_VALUE;
            }
        } while (!f86428e.compareAndSet(this, j10, j11));
        if (j10 <= 0) {
            do {
                continuation = (Continuation) f86429f.getAndSet(this, null);
            } while (continuation == null);
            Result.Companion companion = Result.Companion;
            continuation.resumeWith(Result.m70constructorimpl(Unit.INSTANCE));
        }
    }
}

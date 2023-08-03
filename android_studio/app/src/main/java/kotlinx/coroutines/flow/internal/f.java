package kotlinx.coroutines.flow.internal;

import androidx.exifinterface.media.ExifInterface;
import com.facebook.common.callercontext.ContextChain;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendFunction;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.channels.b0;
import kotlinx.coroutines.channels.d0;
import kotlinx.coroutines.channels.f0;
import kotlinx.coroutines.j2;
import kotlinx.coroutines.s0;

/* compiled from: Merge.kt */
@Metadata(bv = {}, d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002BA\u0012\u0012\u0010\u0017\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00140\u0014\u0012\u0006\u0010\u001a\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\u001b\u0010\u001cJ&\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\u00022\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0014J\u0016\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00000\f2\u0006\u0010\u000b\u001a\u00020\nH\u0016J!\u0010\u0010\u001a\u00020\u000f2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\u000eH\u0094@ø\u0001\u0000¢\u0006\u0004\b\u0010\u0010\u0011J\b\u0010\u0013\u001a\u00020\u0012H\u0014R \u0010\u0017\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00140\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0014\u0010\u001a\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001d"}, d2 = {"Lkotlinx/coroutines/flow/internal/f;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/flow/internal/d;", "Lkotlin/coroutines/CoroutineContext;", "context", "", "capacity", "Lkotlinx/coroutines/channels/BufferOverflow;", "onBufferOverflow", ContextChain.TAG_INFRA, "Lkotlinx/coroutines/s0;", "scope", "Lkotlinx/coroutines/channels/f0;", "m", "Lkotlinx/coroutines/channels/d0;", "", "h", "(Lkotlinx/coroutines/channels/d0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "f", "Lkotlinx/coroutines/flow/i;", "d", "Lkotlinx/coroutines/flow/i;", "flow", "e", "I", "concurrency", "<init>", "(Lkotlinx/coroutines/flow/i;ILkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class f<T> extends d<T> {
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private final kotlinx.coroutines.flow.i<kotlinx.coroutines.flow.i<T>> f85920d;

    /* renamed from: e  reason: collision with root package name */
    private final int f85921e;

    /* compiled from: Merge.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0004\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u00002\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/flow/i;", "inner", "", "a", "(Lkotlinx/coroutines/flow/i;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"}, k = 3, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    static final class a<T> implements kotlinx.coroutines.flow.j, SuspendFunction {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ j2 f85922a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ kotlinx.coroutines.sync.f f85923b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ d0<T> f85924c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ u<T> f85925d;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: Merge.kt */
        @Metadata(bv = {}, d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 6, 0})
        @DebugMetadata(c = "kotlinx.coroutines.flow.internal.ChannelFlowMerge$collectTo$2$1", f = "Merge.kt", i = {}, l = {69}, m = "invokeSuspend", n = {}, s = {})
        /* renamed from: kotlinx.coroutines.flow.internal.f$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        public static final class C0738a extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

            /* renamed from: a  reason: collision with root package name */
            int f85926a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ kotlinx.coroutines.flow.i<T> f85927b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ u<T> f85928c;

            /* renamed from: d  reason: collision with root package name */
            final /* synthetic */ kotlinx.coroutines.sync.f f85929d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            C0738a(kotlinx.coroutines.flow.i<? extends T> iVar, u<T> uVar, kotlinx.coroutines.sync.f fVar, Continuation<? super C0738a> continuation) {
                super(2, continuation);
                this.f85927b = iVar;
                this.f85928c = uVar;
                this.f85929d = fVar;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.g
            public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                return new C0738a(this.f85927b, this.f85928c, this.f85929d, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            @m8.h
            public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
                return ((C0738a) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@m8.g Object obj) {
                Object coroutine_suspended;
                coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i4 = this.f85926a;
                try {
                    if (i4 == 0) {
                        ResultKt.throwOnFailure(obj);
                        kotlinx.coroutines.flow.i<T> iVar = this.f85927b;
                        u<T> uVar = this.f85928c;
                        this.f85926a = 1;
                        if (iVar.collect(uVar, this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    } else if (i4 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    } else {
                        ResultKt.throwOnFailure(obj);
                    }
                    this.f85929d.release();
                    return Unit.INSTANCE;
                } catch (Throwable th) {
                    this.f85929d.release();
                    throw th;
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: Merge.kt */
        @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
        @DebugMetadata(c = "kotlinx.coroutines.flow.internal.ChannelFlowMerge$collectTo$2", f = "Merge.kt", i = {0, 0}, l = {66}, m = "emit", n = {"this", "inner"}, s = {"L$0", "L$1"})
        /* loaded from: classes4.dex */
        public static final class b extends ContinuationImpl {

            /* renamed from: a  reason: collision with root package name */
            Object f85930a;

            /* renamed from: b  reason: collision with root package name */
            Object f85931b;

            /* renamed from: c  reason: collision with root package name */
            /* synthetic */ Object f85932c;

            /* renamed from: d  reason: collision with root package name */
            final /* synthetic */ a<T> f85933d;

            /* renamed from: e  reason: collision with root package name */
            int f85934e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            b(a<? super T> aVar, Continuation<? super b> continuation) {
                super(continuation);
                this.f85933d = aVar;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            public final Object invokeSuspend(@m8.g Object obj) {
                this.f85932c = obj;
                this.f85934e |= Integer.MIN_VALUE;
                return this.f85933d.emit(null, this);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        a(j2 j2Var, kotlinx.coroutines.sync.f fVar, d0<? super T> d0Var, u<T> uVar) {
            this.f85922a = j2Var;
            this.f85923b = fVar;
            this.f85924c = d0Var;
            this.f85925d = uVar;
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
        /* JADX WARN: Removed duplicated region for block: B:14:0x0039  */
        @Override // kotlinx.coroutines.flow.j
        @m8.h
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object emit(@m8.g kotlinx.coroutines.flow.i<? extends T> r8, @m8.g kotlin.coroutines.Continuation<? super kotlin.Unit> r9) {
            /*
                r7 = this;
                boolean r0 = r9 instanceof kotlinx.coroutines.flow.internal.f.a.b
                if (r0 == 0) goto L13
                r0 = r9
                kotlinx.coroutines.flow.internal.f$a$b r0 = (kotlinx.coroutines.flow.internal.f.a.b) r0
                int r1 = r0.f85934e
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.f85934e = r1
                goto L18
            L13:
                kotlinx.coroutines.flow.internal.f$a$b r0 = new kotlinx.coroutines.flow.internal.f$a$b
                r0.<init>(r7, r9)
            L18:
                java.lang.Object r9 = r0.f85932c
                java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r2 = r0.f85934e
                r3 = 1
                if (r2 == 0) goto L39
                if (r2 != r3) goto L31
                java.lang.Object r8 = r0.f85931b
                kotlinx.coroutines.flow.i r8 = (kotlinx.coroutines.flow.i) r8
                java.lang.Object r0 = r0.f85930a
                kotlinx.coroutines.flow.internal.f$a r0 = (kotlinx.coroutines.flow.internal.f.a) r0
                kotlin.ResultKt.throwOnFailure(r9)
                goto L54
            L31:
                java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
                java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
                r8.<init>(r9)
                throw r8
            L39:
                kotlin.ResultKt.throwOnFailure(r9)
                kotlinx.coroutines.j2 r9 = r7.f85922a
                if (r9 != 0) goto L41
                goto L44
            L41:
                kotlinx.coroutines.m2.A(r9)
            L44:
                kotlinx.coroutines.sync.f r9 = r7.f85923b
                r0.f85930a = r7
                r0.f85931b = r8
                r0.f85934e = r3
                java.lang.Object r9 = r9.c(r0)
                if (r9 != r1) goto L53
                return r1
            L53:
                r0 = r7
            L54:
                kotlinx.coroutines.channels.d0<T> r1 = r0.f85924c
                r2 = 0
                r3 = 0
                kotlinx.coroutines.flow.internal.f$a$a r4 = new kotlinx.coroutines.flow.internal.f$a$a
                kotlinx.coroutines.flow.internal.u<T> r9 = r0.f85925d
                kotlinx.coroutines.sync.f r0 = r0.f85923b
                r5 = 0
                r4.<init>(r8, r9, r0, r5)
                r5 = 3
                r6 = 0
                kotlinx.coroutines.j.e(r1, r2, r3, r4, r5, r6)
                kotlin.Unit r8 = kotlin.Unit.INSTANCE
                return r8
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.internal.f.a.emit(kotlinx.coroutines.flow.i, kotlin.coroutines.Continuation):java.lang.Object");
        }
    }

    public /* synthetic */ f(kotlinx.coroutines.flow.i iVar, int i4, CoroutineContext coroutineContext, int i10, BufferOverflow bufferOverflow, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(iVar, i4, (i11 & 4) != 0 ? EmptyCoroutineContext.INSTANCE : coroutineContext, (i11 & 8) != 0 ? -2 : i10, (i11 & 16) != 0 ? BufferOverflow.SUSPEND : bufferOverflow);
    }

    @Override // kotlinx.coroutines.flow.internal.d
    @m8.g
    protected String f() {
        return Intrinsics.stringPlus("concurrency=", Integer.valueOf(this.f85921e));
    }

    @Override // kotlinx.coroutines.flow.internal.d
    @m8.h
    protected Object h(@m8.g d0<? super T> d0Var, @m8.g Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        Object collect = this.f85920d.collect(new a((j2) continuation.getContext().get(j2.f86331k2), kotlinx.coroutines.sync.h.b(this.f85921e, 0, 2, null), d0Var, new u(d0Var)), continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return collect == coroutine_suspended ? collect : Unit.INSTANCE;
    }

    @Override // kotlinx.coroutines.flow.internal.d
    @m8.g
    protected d<T> i(@m8.g CoroutineContext coroutineContext, int i4, @m8.g BufferOverflow bufferOverflow) {
        return new f(this.f85920d, this.f85921e, coroutineContext, i4, bufferOverflow);
    }

    @Override // kotlinx.coroutines.flow.internal.d
    @m8.g
    public f0<T> m(@m8.g s0 s0Var) {
        return b0.c(s0Var, this.f85910a, this.f85911b, k());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public f(@m8.g kotlinx.coroutines.flow.i<? extends kotlinx.coroutines.flow.i<? extends T>> iVar, int i4, @m8.g CoroutineContext coroutineContext, int i10, @m8.g BufferOverflow bufferOverflow) {
        super(coroutineContext, i10, bufferOverflow);
        this.f85920d = iVar;
        this.f85921e = i4;
    }
}

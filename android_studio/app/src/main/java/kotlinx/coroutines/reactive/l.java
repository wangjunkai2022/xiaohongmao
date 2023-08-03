package kotlinx.coroutines.reactive;

import androidx.exifinterface.media.ExifInterface;
import com.facebook.common.callercontext.ContextChain;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.channels.d0;
import kotlinx.coroutines.channels.f0;
import kotlinx.coroutines.flow.internal.u;
import kotlinx.coroutines.s0;
import kotlinx.coroutines.t0;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ReactiveFlow.kt */
@Metadata(bv = {}, d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\b\b\u0002\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00000\u0003B3\u0012\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0018\u0012\b\b\u0002\u0010\r\u001a\u00020\t\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u000e\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b\"\u0010#J!\u0010\u0007\u001a\u00020\u00062\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004H\u0082@ø\u0001\u0000¢\u0006\u0004\b\u0007\u0010\bJ)\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t2\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004H\u0082@ø\u0001\u0000¢\u0006\u0004\b\u000b\u0010\fJ&\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00000\u00032\u0006\u0010\r\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0010H\u0014J!\u0010\u0013\u001a\u00020\u00062\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0013\u0010\bJ!\u0010\u0016\u001a\u00020\u00062\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00028\u00000\u0014H\u0094@ø\u0001\u0000¢\u0006\u0004\b\u0016\u0010\u0017R\u001a\u0010\u001b\u001a\b\u0012\u0004\u0012\u00028\u00000\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u001a\u0010!\u001a\u00020\u001c8BX\u0082\u0004¢\u0006\f\u0012\u0004\b\u001f\u0010 \u001a\u0004\b\u001d\u0010\u001e\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006$"}, d2 = {"Lkotlinx/coroutines/reactive/l;", "", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/flow/internal/d;", "Lkotlinx/coroutines/flow/j;", "collector", "", "q", "(Lkotlinx/coroutines/flow/j;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlin/coroutines/CoroutineContext;", "injectContext", "p", "(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/flow/j;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "context", "", "capacity", "Lkotlinx/coroutines/channels/BufferOverflow;", "onBufferOverflow", ContextChain.TAG_INFRA, "collect", "Lkotlinx/coroutines/channels/d0;", "scope", "h", "(Lkotlinx/coroutines/channels/d0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lorg/reactivestreams/c;", "d", "Lorg/reactivestreams/c;", "publisher", "", "r", "()J", "getRequestSize$annotations", "()V", "requestSize", "<init>", "(Lorg/reactivestreams/c;Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;)V", "kotlinx-coroutines-reactive"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class l<T> extends kotlinx.coroutines.flow.internal.d<T> {
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private final org.reactivestreams.c<T> f86454d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ReactiveFlow.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.reactive.PublisherAsFlow", f = "ReactiveFlow.kt", i = {0, 0, 0, 0, 1, 1, 1, 1}, l = {98, 100}, m = "collectImpl", n = {"this", "collector", "subscriber", "consumed", "this", "collector", "subscriber", "consumed"}, s = {"L$0", "L$1", "L$2", "J$0", "L$0", "L$1", "L$2", "J$0"})
    /* loaded from: classes4.dex */
    public static final class a extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f86455a;

        /* renamed from: b  reason: collision with root package name */
        Object f86456b;

        /* renamed from: c  reason: collision with root package name */
        Object f86457c;

        /* renamed from: d  reason: collision with root package name */
        long f86458d;

        /* renamed from: e  reason: collision with root package name */
        /* synthetic */ Object f86459e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ l<T> f86460f;

        /* renamed from: g  reason: collision with root package name */
        int f86461g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(l<T> lVar, Continuation<? super a> continuation) {
            super(continuation);
            this.f86460f = lVar;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f86459e = obj;
            this.f86461g |= Integer.MIN_VALUE;
            return this.f86460f.p(null, null, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ReactiveFlow.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u0003\"\b\b\u0000\u0010\u0001*\u00020\u0000*\u00020\u0002H\u008a@"}, d2 = {"", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    @DebugMetadata(c = "kotlinx.coroutines.reactive.PublisherAsFlow$collectSlowPath$2", f = "ReactiveFlow.kt", i = {}, l = {87}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes4.dex */
    public static final class b extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f86462a;

        /* renamed from: b  reason: collision with root package name */
        private /* synthetic */ Object f86463b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ kotlinx.coroutines.flow.j<T> f86464c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ l<T> f86465d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        b(kotlinx.coroutines.flow.j<? super T> jVar, l<T> lVar, Continuation<? super b> continuation) {
            super(2, continuation);
            this.f86464c = jVar;
            this.f86465d = lVar;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            b bVar = new b(this.f86464c, this.f86465d, continuation);
            bVar.f86463b = obj;
            return bVar;
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((b) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f86462a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                kotlinx.coroutines.flow.j<T> jVar = this.f86464c;
                l<T> lVar = this.f86465d;
                f0<T> m9 = lVar.m(t0.m((s0) this.f86463b, lVar.f85910a));
                this.f86462a = 1;
                if (kotlinx.coroutines.flow.k.l0(jVar, m9, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    public /* synthetic */ l(org.reactivestreams.c cVar, CoroutineContext coroutineContext, int i4, BufferOverflow bufferOverflow, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(cVar, (i10 & 2) != 0 ? EmptyCoroutineContext.INSTANCE : coroutineContext, (i10 & 4) != 0 ? -2 : i4, (i10 & 8) != 0 ? BufferOverflow.SUSPEND : bufferOverflow);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x002a  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x008f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x009d A[Catch: all -> 0x005c, TRY_ENTER, TryCatch #0 {all -> 0x005c, blocks: (B:13:0x003c, B:33:0x00b5, B:35:0x00c1, B:23:0x007f, B:30:0x009d, B:18:0x0058), top: B:40:0x0028 }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00c1 A[Catch: all -> 0x005c, TRY_LEAVE, TryCatch #0 {all -> 0x005c, blocks: (B:13:0x003c, B:33:0x00b5, B:35:0x00c1, B:23:0x007f, B:30:0x009d, B:18:0x0058), top: B:40:0x0028 }] */
    /* JADX WARN: Type inference failed for: r4v0, types: [int] */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v14 */
    /* JADX WARN: Type inference failed for: r4v8, types: [kotlinx.coroutines.reactive.o] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00b2 -> B:14:0x003f). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object p(kotlin.coroutines.CoroutineContext r18, kotlinx.coroutines.flow.j<? super T> r19, kotlin.coroutines.Continuation<? super kotlin.Unit> r20) {
        /*
            Method dump skipped, instructions count: 203
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.reactive.l.p(kotlin.coroutines.CoroutineContext, kotlinx.coroutines.flow.j, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object q(kotlinx.coroutines.flow.j<? super T> jVar, Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        Object g4 = t0.g(new b(jVar, this, null), continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return g4 == coroutine_suspended ? g4 : Unit.INSTANCE;
    }

    private final long r() {
        if (this.f85912c == BufferOverflow.SUSPEND) {
            int i4 = this.f85911b;
            if (i4 == -2) {
                return kotlinx.coroutines.channels.m.f84876l2.a();
            }
            if (i4 == 0) {
                return 1L;
            }
            if (i4 != Integer.MAX_VALUE) {
                long j4 = i4;
                if (j4 >= 1) {
                    return j4;
                }
                throw new IllegalStateException("Check failed.".toString());
            }
        }
        return Long.MAX_VALUE;
    }

    private static /* synthetic */ void s() {
    }

    @Override // kotlinx.coroutines.flow.internal.d, kotlinx.coroutines.flow.i
    @m8.h
    public Object collect(@m8.g kotlinx.coroutines.flow.j<? super T> jVar, @m8.g Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        Object coroutine_suspended2;
        CoroutineContext context = continuation.getContext();
        CoroutineContext coroutineContext = this.f85910a;
        ContinuationInterceptor.Key key = ContinuationInterceptor.Key;
        ContinuationInterceptor continuationInterceptor = (ContinuationInterceptor) coroutineContext.get(key);
        if (continuationInterceptor != null && !Intrinsics.areEqual(continuationInterceptor, context.get(key))) {
            Object q9 = q(jVar, continuation);
            coroutine_suspended2 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            return q9 == coroutine_suspended2 ? q9 : Unit.INSTANCE;
        }
        Object p9 = p(context.plus(this.f85910a), jVar, continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return p9 == coroutine_suspended ? p9 : Unit.INSTANCE;
    }

    @Override // kotlinx.coroutines.flow.internal.d
    @m8.h
    protected Object h(@m8.g d0<? super T> d0Var, @m8.g Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        Object p9 = p(d0Var.getCoroutineContext(), new u(d0Var.getChannel()), continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return p9 == coroutine_suspended ? p9 : Unit.INSTANCE;
    }

    @Override // kotlinx.coroutines.flow.internal.d
    @m8.g
    protected kotlinx.coroutines.flow.internal.d<T> i(@m8.g CoroutineContext coroutineContext, int i4, @m8.g BufferOverflow bufferOverflow) {
        return new l(this.f86454d, coroutineContext, i4, bufferOverflow);
    }

    public l(@m8.g org.reactivestreams.c<T> cVar, @m8.g CoroutineContext coroutineContext, int i4, @m8.g BufferOverflow bufferOverflow) {
        super(coroutineContext, i4, bufferOverflow);
        this.f86454d = cVar;
    }
}

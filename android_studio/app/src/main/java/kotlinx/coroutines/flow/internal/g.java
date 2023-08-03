package kotlinx.coroutines.flow.internal;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.JvmField;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.channels.d0;

/* compiled from: ChannelFlow.kt */
@Metadata(bv = {}, d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b \u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\b\u0012\u0004\u0012\u00028\u00010\u0003B-\u0012\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028\u00000\u0014\u0012\u0006\u0010\u0018\u001a\u00020\u0006\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0006\u0010\u001c\u001a\u00020\u001b¢\u0006\u0004\b\u001d\u0010\u001eJ)\u0010\t\u001a\u00020\b2\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00010\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0082@ø\u0001\u0000¢\u0006\u0004\b\t\u0010\nJ!\u0010\u000b\u001a\u00020\b2\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00010\u0004H¤@ø\u0001\u0000¢\u0006\u0004\b\u000b\u0010\fJ!\u0010\u000f\u001a\u00020\b2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00010\rH\u0094@ø\u0001\u0000¢\u0006\u0004\b\u000f\u0010\u0010J!\u0010\u0011\u001a\u00020\b2\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00010\u0004H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0011\u0010\fJ\b\u0010\u0013\u001a\u00020\u0012H\u0016R\u001a\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028\u00000\u00148\u0004X\u0085\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001f"}, d2 = {"Lkotlinx/coroutines/flow/internal/g;", ExifInterface.LATITUDE_SOUTH, ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/flow/internal/d;", "Lkotlinx/coroutines/flow/j;", "collector", "Lkotlin/coroutines/CoroutineContext;", "newContext", "", "q", "(Lkotlinx/coroutines/flow/j;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "r", "(Lkotlinx/coroutines/flow/j;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlinx/coroutines/channels/d0;", "scope", "h", "(Lkotlinx/coroutines/channels/d0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "collect", "", "toString", "Lkotlinx/coroutines/flow/i;", "d", "Lkotlinx/coroutines/flow/i;", "flow", "context", "", "capacity", "Lkotlinx/coroutines/channels/BufferOverflow;", "onBufferOverflow", "<init>", "(Lkotlinx/coroutines/flow/i;Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public abstract class g<S, T> extends d<T> {
    @JvmField
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    protected final kotlinx.coroutines.flow.i<S> f85935d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ChannelFlow.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0005\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u00012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00010\u0002H\u008a@"}, d2 = {ExifInterface.LATITUDE_SOUTH, ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/flow/j;", "it", "", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    @DebugMetadata(c = "kotlinx.coroutines.flow.internal.ChannelFlowOperator$collectWithContextUndispatched$2", f = "ChannelFlow.kt", i = {}, l = {152}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes4.dex */
    public static final class a extends SuspendLambda implements Function2<kotlinx.coroutines.flow.j<? super T>, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f85936a;

        /* renamed from: b  reason: collision with root package name */
        /* synthetic */ Object f85937b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ g<S, T> f85938c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(g<S, T> gVar, Continuation<? super a> continuation) {
            super(2, continuation);
            this.f85938c = gVar;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            a aVar = new a(this.f85938c, continuation);
            aVar.f85937b = obj;
            return aVar;
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Continuation<? super Unit> continuation) {
            return invoke((kotlinx.coroutines.flow.j) ((kotlinx.coroutines.flow.j) obj), continuation);
        }

        @m8.h
        public final Object invoke(@m8.g kotlinx.coroutines.flow.j<? super T> jVar, @m8.h Continuation<? super Unit> continuation) {
            return ((a) create(jVar, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f85936a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                g<S, T> gVar = this.f85938c;
                this.f85936a = 1;
                if (gVar.r((kotlinx.coroutines.flow.j) this.f85937b, this) == coroutine_suspended) {
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

    /* JADX WARN: Multi-variable type inference failed */
    public g(@m8.g kotlinx.coroutines.flow.i<? extends S> iVar, @m8.g CoroutineContext coroutineContext, int i4, @m8.g BufferOverflow bufferOverflow) {
        super(coroutineContext, i4, bufferOverflow);
        this.f85935d = iVar;
    }

    static /* synthetic */ Object o(g gVar, kotlinx.coroutines.flow.j jVar, Continuation continuation) {
        Object coroutine_suspended;
        Object coroutine_suspended2;
        Object coroutine_suspended3;
        if (gVar.f85911b == -3) {
            CoroutineContext context = continuation.getContext();
            CoroutineContext plus = context.plus(gVar.f85910a);
            if (Intrinsics.areEqual(plus, context)) {
                Object r9 = gVar.r(jVar, continuation);
                coroutine_suspended3 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                return r9 == coroutine_suspended3 ? r9 : Unit.INSTANCE;
            }
            ContinuationInterceptor.Key key = ContinuationInterceptor.Key;
            if (Intrinsics.areEqual(plus.get(key), context.get(key))) {
                Object q9 = gVar.q(jVar, plus, continuation);
                coroutine_suspended2 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                return q9 == coroutine_suspended2 ? q9 : Unit.INSTANCE;
            }
        }
        Object collect = super.collect(jVar, continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return collect == coroutine_suspended ? collect : Unit.INSTANCE;
    }

    static /* synthetic */ Object p(g gVar, d0 d0Var, Continuation continuation) {
        Object coroutine_suspended;
        Object r9 = gVar.r(new u(d0Var), continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return r9 == coroutine_suspended ? r9 : Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object q(kotlinx.coroutines.flow.j<? super T> jVar, CoroutineContext coroutineContext, Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        Object d4 = e.d(coroutineContext, e.a(jVar, continuation.getContext()), null, new a(this, null), continuation, 4, null);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return d4 == coroutine_suspended ? d4 : Unit.INSTANCE;
    }

    @Override // kotlinx.coroutines.flow.internal.d, kotlinx.coroutines.flow.i
    @m8.h
    public Object collect(@m8.g kotlinx.coroutines.flow.j<? super T> jVar, @m8.g Continuation<? super Unit> continuation) {
        return o(this, jVar, continuation);
    }

    @Override // kotlinx.coroutines.flow.internal.d
    @m8.h
    protected Object h(@m8.g d0<? super T> d0Var, @m8.g Continuation<? super Unit> continuation) {
        return p(this, d0Var, continuation);
    }

    @m8.h
    protected abstract Object r(@m8.g kotlinx.coroutines.flow.j<? super T> jVar, @m8.g Continuation<? super Unit> continuation);

    @Override // kotlinx.coroutines.flow.internal.d
    @m8.g
    public String toString() {
        return this.f85935d + " -> " + super.toString();
    }
}

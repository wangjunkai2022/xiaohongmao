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
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.channels.b0;
import kotlinx.coroutines.channels.d0;
import kotlinx.coroutines.channels.f0;
import kotlinx.coroutines.s0;

/* compiled from: Merge.kt */
@Metadata(bv = {}, d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u001c\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B9\u0012\u0012\u0010\u0016\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00130\u0012\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\u0017\u0010\u0018J&\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\u00022\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0014J\u0016\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00000\f2\u0006\u0010\u000b\u001a\u00020\nH\u0016J!\u0010\u0010\u001a\u00020\u000f2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\u000eH\u0094@ø\u0001\u0000¢\u0006\u0004\b\u0010\u0010\u0011R \u0010\u0016\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00130\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0019"}, d2 = {"Lkotlinx/coroutines/flow/internal/j;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/flow/internal/d;", "Lkotlin/coroutines/CoroutineContext;", "context", "", "capacity", "Lkotlinx/coroutines/channels/BufferOverflow;", "onBufferOverflow", ContextChain.TAG_INFRA, "Lkotlinx/coroutines/s0;", "scope", "Lkotlinx/coroutines/channels/f0;", "m", "Lkotlinx/coroutines/channels/d0;", "", "h", "(Lkotlinx/coroutines/channels/d0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "Lkotlinx/coroutines/flow/i;", "d", "Ljava/lang/Iterable;", "flows", "<init>", "(Ljava/lang/Iterable;Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class j<T> extends d<T> {
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private final Iterable<kotlinx.coroutines.flow.i<T>> f85958d;

    /* compiled from: Merge.kt */
    @Metadata(bv = {}, d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    @DebugMetadata(c = "kotlinx.coroutines.flow.internal.ChannelLimitedFlowMerge$collectTo$2$1", f = "Merge.kt", i = {}, l = {96}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes4.dex */
    static final class a extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f85959a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ kotlinx.coroutines.flow.i<T> f85960b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ u<T> f85961c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        a(kotlinx.coroutines.flow.i<? extends T> iVar, u<T> uVar, Continuation<? super a> continuation) {
            super(2, continuation);
            this.f85960b = iVar;
            this.f85961c = uVar;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            return new a(this.f85960b, this.f85961c, continuation);
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
            int i4 = this.f85959a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                kotlinx.coroutines.flow.i<T> iVar = this.f85960b;
                u<T> uVar = this.f85961c;
                this.f85959a = 1;
                if (iVar.collect(uVar, this) == coroutine_suspended) {
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

    public /* synthetic */ j(Iterable iterable, CoroutineContext coroutineContext, int i4, BufferOverflow bufferOverflow, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(iterable, (i10 & 2) != 0 ? EmptyCoroutineContext.INSTANCE : coroutineContext, (i10 & 4) != 0 ? -2 : i4, (i10 & 8) != 0 ? BufferOverflow.SUSPEND : bufferOverflow);
    }

    @Override // kotlinx.coroutines.flow.internal.d
    @m8.h
    protected Object h(@m8.g d0<? super T> d0Var, @m8.g Continuation<? super Unit> continuation) {
        u uVar = new u(d0Var);
        for (kotlinx.coroutines.flow.i<T> iVar : this.f85958d) {
            kotlinx.coroutines.l.f(d0Var, null, null, new a(iVar, uVar, null), 3, null);
        }
        return Unit.INSTANCE;
    }

    @Override // kotlinx.coroutines.flow.internal.d
    @m8.g
    protected d<T> i(@m8.g CoroutineContext coroutineContext, int i4, @m8.g BufferOverflow bufferOverflow) {
        return new j(this.f85958d, coroutineContext, i4, bufferOverflow);
    }

    @Override // kotlinx.coroutines.flow.internal.d
    @m8.g
    public f0<T> m(@m8.g s0 s0Var) {
        return b0.c(s0Var, this.f85910a, this.f85911b, k());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public j(@m8.g Iterable<? extends kotlinx.coroutines.flow.i<? extends T>> iterable, @m8.g CoroutineContext coroutineContext, int i4, @m8.g BufferOverflow bufferOverflow) {
        super(coroutineContext, i4, bufferOverflow);
        this.f85958d = iterable;
    }
}

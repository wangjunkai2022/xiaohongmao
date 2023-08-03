package kotlinx.coroutines.flow.internal;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.internal.u0;

/* compiled from: ChannelFlow.kt */
@Metadata(bv = {}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002B\u001d\u0012\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012\u0006\u0010\n\u001a\u00020\u0007¢\u0006\u0004\b\u0015\u0010\u0016J\u001b\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR3\u0010\u0013\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u000f8\u0002X\u0082\u0004ø\u0001\u0000¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0017"}, d2 = {"Lkotlinx/coroutines/flow/internal/x;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/flow/j;", "value", "", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlin/coroutines/CoroutineContext;", "a", "Lkotlin/coroutines/CoroutineContext;", "emitContext", "", "b", "Ljava/lang/Object;", "countOrElement", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "c", "Lkotlin/jvm/functions/Function2;", "emitRef", "downstream", "<init>", "(Lkotlinx/coroutines/flow/j;Lkotlin/coroutines/CoroutineContext;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
final class x<T> implements kotlinx.coroutines.flow.j<T> {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final CoroutineContext f86039a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final Object f86040b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final Function2<T, Continuation<? super Unit>, Object> f86041c;

    /* compiled from: ChannelFlow.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u00002\u0006\u0010\u0001\u001a\u00028\u0000H\u008a@"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "it", "", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    @DebugMetadata(c = "kotlinx.coroutines.flow.internal.UndispatchedContextCollector$emitRef$1", f = "ChannelFlow.kt", i = {}, l = {212}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes4.dex */
    static final class a extends SuspendLambda implements Function2<T, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f86042a;

        /* renamed from: b  reason: collision with root package name */
        /* synthetic */ Object f86043b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ kotlinx.coroutines.flow.j<T> f86044c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        a(kotlinx.coroutines.flow.j<? super T> jVar, Continuation<? super a> continuation) {
            super(2, continuation);
            this.f86044c = jVar;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            a aVar = new a(this.f86044c, continuation);
            aVar.f86043b = obj;
            return aVar;
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Continuation<? super Unit> continuation) {
            return invoke2((a) obj, continuation);
        }

        @m8.h
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final Object invoke2(T t9, @m8.h Continuation<? super Unit> continuation) {
            return ((a) create(t9, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.f86042a;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                Object obj2 = this.f86043b;
                this.f86042a = 1;
                if (this.f86044c.emit(obj2, this) == coroutine_suspended) {
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

    public x(@m8.g kotlinx.coroutines.flow.j<? super T> jVar, @m8.g CoroutineContext coroutineContext) {
        this.f86039a = coroutineContext;
        this.f86040b = u0.b(coroutineContext);
        this.f86041c = new a(jVar, null);
    }

    @Override // kotlinx.coroutines.flow.j
    @m8.h
    public Object emit(T t9, @m8.g Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        Object c10 = e.c(this.f86039a, t9, this.f86040b, this.f86041c, continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return c10 == coroutine_suspended ? c10 : Unit.INSTANCE;
    }
}

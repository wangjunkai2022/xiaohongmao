package androidx.paging;

import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.c0;
import kotlinx.coroutines.flow.i;
import kotlinx.coroutines.j2;
import kotlinx.coroutines.l;
import kotlinx.coroutines.o2;
import m8.g;
import m8.h;

/* compiled from: FlowExt.kt */
@Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0005\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0004\b\u0002\u0010\u0002*\b\u0012\u0004\u0012\u00028\u00020\u0003H\u008a@"}, d2 = {"T1", "T2", "R", "Landroidx/paging/SimpleProducerScope;", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "androidx.paging.FlowExtKt$combineWithoutBatching$2", f = "FlowExt.kt", i = {}, l = {159}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes.dex */
public final class FlowExtKt$combineWithoutBatching$2 extends SuspendLambda implements Function2<SimpleProducerScope<R>, Continuation<? super Unit>, Object> {
    final /* synthetic */ i<T2> $otherFlow;
    final /* synthetic */ i<T1> $this_combineWithoutBatching;
    final /* synthetic */ Function4<T1, T2, CombineSource, Continuation<? super R>, Object> $transform;
    private /* synthetic */ Object L$0;
    int label;

    /* compiled from: FlowExt.kt */
    @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0004\b\u0002\u0010\u0002H\n"}, d2 = {"T1", "T2", "R", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
    /* renamed from: androidx.paging.FlowExtKt$combineWithoutBatching$2$2  reason: invalid class name */
    /* loaded from: classes.dex */
    public static final class AnonymousClass2 extends Lambda implements Function0<Unit> {
        final /* synthetic */ c0 $parentJob;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(c0 c0Var) {
            super(0);
            this.$parentJob = c0Var;
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            j2.a.b(this.$parentJob, null, 1, null);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public FlowExtKt$combineWithoutBatching$2(i<? extends T1> iVar, i<? extends T2> iVar2, Function4<? super T1, ? super T2, ? super CombineSource, ? super Continuation<? super R>, ? extends Object> function4, Continuation<? super FlowExtKt$combineWithoutBatching$2> continuation) {
        super(2, continuation);
        this.$this_combineWithoutBatching = iVar;
        this.$otherFlow = iVar2;
        this.$transform = function4;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @g
    public final Continuation<Unit> create(@h Object obj, @g Continuation<?> continuation) {
        FlowExtKt$combineWithoutBatching$2 flowExtKt$combineWithoutBatching$2 = new FlowExtKt$combineWithoutBatching$2(this.$this_combineWithoutBatching, this.$otherFlow, this.$transform, continuation);
        flowExtKt$combineWithoutBatching$2.L$0 = obj;
        return flowExtKt$combineWithoutBatching$2;
    }

    @Override // kotlin.jvm.functions.Function2
    @h
    public final Object invoke(@g SimpleProducerScope<R> simpleProducerScope, @h Continuation<? super Unit> continuation) {
        return ((FlowExtKt$combineWithoutBatching$2) create(simpleProducerScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @h
    public final Object invokeSuspend(@g Object obj) {
        Object coroutine_suspended;
        c0 c10;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i4 = this.label;
        if (i4 == 0) {
            ResultKt.throwOnFailure(obj);
            SimpleProducerScope simpleProducerScope = (SimpleProducerScope) this.L$0;
            AtomicInteger atomicInteger = new AtomicInteger(2);
            UnbatchedFlowCombiner unbatchedFlowCombiner = new UnbatchedFlowCombiner(new FlowExtKt$combineWithoutBatching$2$unbatchedFlowCombiner$1(simpleProducerScope, this.$transform, null));
            c10 = o2.c(null, 1, null);
            i[] iVarArr = {this.$this_combineWithoutBatching, this.$otherFlow};
            int i10 = 0;
            int i11 = 0;
            while (i11 < 2) {
                l.f(simpleProducerScope, c10, null, new FlowExtKt$combineWithoutBatching$2$1$1(iVarArr[i11], atomicInteger, simpleProducerScope, unbatchedFlowCombiner, i10, null), 2, null);
                i11++;
                i10++;
            }
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(c10);
            this.label = 1;
            if (simpleProducerScope.awaitClose(anonymousClass2, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else if (i4 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            ResultKt.throwOnFailure(obj);
        }
        return Unit.INSTANCE;
    }

    @h
    public final Object invokeSuspend$$forInline(@g Object obj) {
        c0 c10;
        SimpleProducerScope simpleProducerScope = (SimpleProducerScope) this.L$0;
        AtomicInteger atomicInteger = new AtomicInteger(2);
        UnbatchedFlowCombiner unbatchedFlowCombiner = new UnbatchedFlowCombiner(new FlowExtKt$combineWithoutBatching$2$unbatchedFlowCombiner$1(simpleProducerScope, this.$transform, null));
        c10 = o2.c(null, 1, null);
        i[] iVarArr = {this.$this_combineWithoutBatching, this.$otherFlow};
        int i4 = 0;
        int i10 = 0;
        while (i10 < 2) {
            l.f(simpleProducerScope, c10, null, new FlowExtKt$combineWithoutBatching$2$1$1(iVarArr[i10], atomicInteger, simpleProducerScope, unbatchedFlowCombiner, i4, null), 2, null);
            i10++;
            i4++;
        }
        AnonymousClass2 anonymousClass2 = new AnonymousClass2(c10);
        InlineMarker.mark(0);
        simpleProducerScope.awaitClose(anonymousClass2, this);
        InlineMarker.mark(1);
        return Unit.INSTANCE;
    }
}

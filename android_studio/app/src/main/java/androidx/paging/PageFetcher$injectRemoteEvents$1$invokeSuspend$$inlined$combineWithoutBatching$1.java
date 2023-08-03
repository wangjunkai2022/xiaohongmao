package androidx.paging;

import androidx.paging.LoadState;
import androidx.paging.PageEvent;
import com.google.android.exoplayer2.extractor.ts.h0;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.c0;
import kotlinx.coroutines.channels.j0;
import kotlinx.coroutines.flow.i;
import kotlinx.coroutines.flow.j;
import kotlinx.coroutines.j2;
import kotlinx.coroutines.l;
import kotlinx.coroutines.o2;
import kotlinx.coroutines.s0;
import m8.g;
import m8.h;

/* compiled from: FlowExt.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0004\b\u0002\u0010\u0002*\b\u0012\u0004\u0012\u00028\u00020\u0003H\u008a@¨\u0006\u0005"}, d2 = {"T1", "T2", "R", "Landroidx/paging/SimpleProducerScope;", "", "androidx/paging/FlowExtKt$combineWithoutBatching$2", "<anonymous>"}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "androidx.paging.PageFetcher$injectRemoteEvents$1$invokeSuspend$$inlined$combineWithoutBatching$1", f = "PageFetcher.kt", i = {}, l = {159}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes.dex */
public final class PageFetcher$injectRemoteEvents$1$invokeSuspend$$inlined$combineWithoutBatching$1 extends SuspendLambda implements Function2<SimpleProducerScope<PageEvent<Value>>, Continuation<? super Unit>, Object> {
    final /* synthetic */ i $otherFlow;
    final /* synthetic */ MutableLoadStateCollection $sourceStates$inlined;
    final /* synthetic */ i $this_combineWithoutBatching;
    private /* synthetic */ Object L$0;
    int label;

    /* compiled from: FlowExt.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\t\u001a\u00020\u0007\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0004\b\u0002\u0010\u00022\u0006\u0010\u0003\u001a\u00028\u00002\u0006\u0010\u0004\u001a\u00028\u00012\u0006\u0010\u0006\u001a\u00020\u0005H\u008a@¨\u0006\b"}, d2 = {"T1", "T2", "R", "t1", "t2", "Landroidx/paging/CombineSource;", "updateFrom", "", "androidx/paging/FlowExtKt$combineWithoutBatching$2$unbatchedFlowCombiner$1", "<anonymous>"}, k = 3, mv = {1, 5, 1})
    @DebugMetadata(c = "androidx.paging.PageFetcher$injectRemoteEvents$1$invokeSuspend$$inlined$combineWithoutBatching$1$1", f = "PageFetcher.kt", i = {}, l = {222}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: androidx.paging.PageFetcher$injectRemoteEvents$1$invokeSuspend$$inlined$combineWithoutBatching$1$1  reason: invalid class name */
    /* loaded from: classes.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function4<LoadStates, PageEvent<Value>, CombineSource, Continuation<? super Unit>, Object> {
        final /* synthetic */ SimpleProducerScope<PageEvent<Value>> $$this$simpleChannelFlow;
        final /* synthetic */ MutableLoadStateCollection $sourceStates$inlined;
        /* synthetic */ Object L$0;
        /* synthetic */ Object L$1;
        /* synthetic */ Object L$2;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(SimpleProducerScope simpleProducerScope, Continuation continuation, MutableLoadStateCollection mutableLoadStateCollection) {
            super(4, continuation);
            this.$sourceStates$inlined = mutableLoadStateCollection;
            this.$$this$simpleChannelFlow = simpleProducerScope;
        }

        @Override // kotlin.jvm.functions.Function4
        @h
        public final Object invoke(LoadStates loadStates, PageEvent<Value> pageEvent, @g CombineSource combineSource, @h Continuation<? super Unit> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$$this$simpleChannelFlow, continuation, this.$sourceStates$inlined);
            anonymousClass1.L$0 = loadStates;
            anonymousClass1.L$1 = pageEvent;
            anonymousClass1.L$2 = combineSource;
            return anonymousClass1.invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @h
        public final Object invokeSuspend(@g Object obj) {
            Object coroutine_suspended;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.label;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                Object obj2 = this.L$0;
                Object obj3 = this.L$1;
                CombineSource combineSource = (CombineSource) this.L$2;
                j0 j0Var = this.$$this$simpleChannelFlow;
                Object obj4 = (PageEvent) obj3;
                LoadStates loadStates = (LoadStates) obj2;
                if (combineSource != CombineSource.RECEIVER) {
                    if (obj4 instanceof PageEvent.Insert) {
                        PageEvent.Insert insert = (PageEvent.Insert) obj4;
                        this.$sourceStates$inlined.set(insert.getSourceLoadStates());
                        obj4 = PageEvent.Insert.copy$default(insert, null, null, 0, 0, insert.getSourceLoadStates(), loadStates, 15, null);
                    } else if (obj4 instanceof PageEvent.Drop) {
                        this.$sourceStates$inlined.set(((PageEvent.Drop) obj4).getLoadType(), LoadState.NotLoading.Companion.getIncomplete$paging_common());
                    } else if (!(obj4 instanceof PageEvent.LoadStateUpdate)) {
                        throw new NoWhenBranchMatchedException();
                    } else {
                        PageEvent.LoadStateUpdate loadStateUpdate = (PageEvent.LoadStateUpdate) obj4;
                        this.$sourceStates$inlined.set(loadStateUpdate.getSource());
                        obj4 = new PageEvent.LoadStateUpdate(loadStateUpdate.getSource(), loadStates);
                    }
                } else {
                    obj4 = new PageEvent.LoadStateUpdate(this.$sourceStates$inlined.snapshot(), loadStates);
                }
                this.label = 1;
                if (j0Var.send(obj4, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 == 1) {
                ResultKt.throwOnFailure(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            return Unit.INSTANCE;
        }
    }

    /* compiled from: FlowExt.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0004\b\u0002\u0010\u0002*\u00020\u0003H\u008a@¨\u0006\u0005"}, d2 = {"T1", "T2", "R", "Lkotlinx/coroutines/s0;", "", "androidx/paging/FlowExtKt$combineWithoutBatching$2$1$1", "<anonymous>"}, k = 3, mv = {1, 5, 1})
    @DebugMetadata(c = "androidx.paging.FlowExtKt$combineWithoutBatching$2$1$1", f = "FlowExt.kt", i = {}, l = {222}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: androidx.paging.PageFetcher$injectRemoteEvents$1$invokeSuspend$$inlined$combineWithoutBatching$1$2  reason: invalid class name */
    /* loaded from: classes.dex */
    public static final class AnonymousClass2 extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {
        final /* synthetic */ SimpleProducerScope<PageEvent<Value>> $$this$simpleChannelFlow;
        final /* synthetic */ i $flow;
        final /* synthetic */ AtomicInteger $incompleteFlows;
        final /* synthetic */ int $index;
        final /* synthetic */ UnbatchedFlowCombiner $unbatchedFlowCombiner;
        int label;

        /* compiled from: Collect.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u001b\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0006¸\u0006\u0007"}, d2 = {"kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3", "Lkotlinx/coroutines/flow/j;", "value", "", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core", "androidx/paging/FlowExtKt$combineWithoutBatching$2$1$1$invokeSuspend$$inlined$collect$1"}, k = 1, mv = {1, 5, 1})
        /* renamed from: androidx.paging.PageFetcher$injectRemoteEvents$1$invokeSuspend$$inlined$combineWithoutBatching$1$2$1  reason: invalid class name */
        /* loaded from: classes.dex */
        public static final class AnonymousClass1 implements j<Object> {
            final /* synthetic */ int $index$inlined;
            final /* synthetic */ UnbatchedFlowCombiner $unbatchedFlowCombiner$inlined;

            @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
            @DebugMetadata(c = "androidx.paging.PageFetcher$injectRemoteEvents$1$invokeSuspend$$inlined$combineWithoutBatching$1$2$1", f = "PageFetcher.kt", i = {}, l = {h0.J, h0.H}, m = "emit", n = {}, s = {})
            /* renamed from: androidx.paging.PageFetcher$injectRemoteEvents$1$invokeSuspend$$inlined$combineWithoutBatching$1$2$1$1  reason: invalid class name and collision with other inner class name */
            /* loaded from: classes.dex */
            public static final class C00151 extends ContinuationImpl {
                int label;
                /* synthetic */ Object result;

                public C00151(Continuation continuation) {
                    super(continuation);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                @h
                public final Object invokeSuspend(@g Object obj) {
                    this.result = obj;
                    this.label |= Integer.MIN_VALUE;
                    return AnonymousClass1.this.emit(null, this);
                }
            }

            public AnonymousClass1(UnbatchedFlowCombiner unbatchedFlowCombiner, int i4) {
                this.$unbatchedFlowCombiner$inlined = unbatchedFlowCombiner;
                this.$index$inlined = i4;
            }

            /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
            /* JADX WARN: Removed duplicated region for block: B:16:0x0038  */
            /* JADX WARN: Removed duplicated region for block: B:21:0x0050 A[RETURN] */
            @Override // kotlinx.coroutines.flow.j
            @m8.h
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public java.lang.Object emit(java.lang.Object r6, @m8.g kotlin.coroutines.Continuation r7) {
                /*
                    r5 = this;
                    boolean r0 = r7 instanceof androidx.paging.PageFetcher$injectRemoteEvents$1$invokeSuspend$$inlined$combineWithoutBatching$1.AnonymousClass2.AnonymousClass1.C00151
                    if (r0 == 0) goto L13
                    r0 = r7
                    androidx.paging.PageFetcher$injectRemoteEvents$1$invokeSuspend$$inlined$combineWithoutBatching$1$2$1$1 r0 = (androidx.paging.PageFetcher$injectRemoteEvents$1$invokeSuspend$$inlined$combineWithoutBatching$1.AnonymousClass2.AnonymousClass1.C00151) r0
                    int r1 = r0.label
                    r2 = -2147483648(0xffffffff80000000, float:-0.0)
                    r3 = r1 & r2
                    if (r3 == 0) goto L13
                    int r1 = r1 - r2
                    r0.label = r1
                    goto L18
                L13:
                    androidx.paging.PageFetcher$injectRemoteEvents$1$invokeSuspend$$inlined$combineWithoutBatching$1$2$1$1 r0 = new androidx.paging.PageFetcher$injectRemoteEvents$1$invokeSuspend$$inlined$combineWithoutBatching$1$2$1$1
                    r0.<init>(r7)
                L18:
                    java.lang.Object r7 = r0.result
                    java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                    int r2 = r0.label
                    r3 = 2
                    r4 = 1
                    if (r2 == 0) goto L38
                    if (r2 == r4) goto L34
                    if (r2 != r3) goto L2c
                    kotlin.ResultKt.throwOnFailure(r7)
                    goto L51
                L2c:
                    java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
                    java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
                    r6.<init>(r7)
                    throw r6
                L34:
                    kotlin.ResultKt.throwOnFailure(r7)
                    goto L48
                L38:
                    kotlin.ResultKt.throwOnFailure(r7)
                    androidx.paging.UnbatchedFlowCombiner r7 = r5.$unbatchedFlowCombiner$inlined
                    int r2 = r5.$index$inlined
                    r0.label = r4
                    java.lang.Object r6 = r7.onNext(r2, r6, r0)
                    if (r6 != r1) goto L48
                    return r1
                L48:
                    r0.label = r3
                    java.lang.Object r6 = kotlinx.coroutines.z3.a(r0)
                    if (r6 != r1) goto L51
                    return r1
                L51:
                    kotlin.Unit r6 = kotlin.Unit.INSTANCE
                    return r6
                */
                throw new UnsupportedOperationException("Method not decompiled: androidx.paging.PageFetcher$injectRemoteEvents$1$invokeSuspend$$inlined$combineWithoutBatching$1.AnonymousClass2.AnonymousClass1.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(i iVar, AtomicInteger atomicInteger, SimpleProducerScope simpleProducerScope, UnbatchedFlowCombiner unbatchedFlowCombiner, int i4, Continuation continuation) {
            super(2, continuation);
            this.$flow = iVar;
            this.$incompleteFlows = atomicInteger;
            this.$unbatchedFlowCombiner = unbatchedFlowCombiner;
            this.$index = i4;
            this.$$this$simpleChannelFlow = simpleProducerScope;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @g
        public final Continuation<Unit> create(@h Object obj, @g Continuation<?> continuation) {
            return new AnonymousClass2(this.$flow, this.$incompleteFlows, this.$$this$simpleChannelFlow, this.$unbatchedFlowCombiner, this.$index, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @h
        public final Object invoke(@g s0 s0Var, @h Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @h
        public final Object invokeSuspend(@g Object obj) {
            Object coroutine_suspended;
            AtomicInteger atomicInteger;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.label;
            try {
                if (i4 == 0) {
                    ResultKt.throwOnFailure(obj);
                    i iVar = this.$flow;
                    AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$unbatchedFlowCombiner, this.$index);
                    this.label = 1;
                    if (iVar.collect(anonymousClass1, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else if (i4 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    ResultKt.throwOnFailure(obj);
                }
                if (atomicInteger.decrementAndGet() == 0) {
                    j0.a.a(this.$$this$simpleChannelFlow, null, 1, null);
                }
                return Unit.INSTANCE;
            } finally {
                if (this.$incompleteFlows.decrementAndGet() == 0) {
                    j0.a.a(this.$$this$simpleChannelFlow, null, 1, null);
                }
            }
        }
    }

    /* compiled from: FlowExt.kt */
    @Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0004\b\u0002\u0010\u0002H\n¨\u0006\u0004"}, d2 = {"T1", "T2", "R", "", "androidx/paging/FlowExtKt$combineWithoutBatching$2$2", "<anonymous>"}, k = 3, mv = {1, 5, 1})
    /* renamed from: androidx.paging.PageFetcher$injectRemoteEvents$1$invokeSuspend$$inlined$combineWithoutBatching$1$3  reason: invalid class name */
    /* loaded from: classes.dex */
    public static final class AnonymousClass3 extends Lambda implements Function0<Unit> {
        final /* synthetic */ c0 $parentJob;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass3(c0 c0Var) {
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
    public PageFetcher$injectRemoteEvents$1$invokeSuspend$$inlined$combineWithoutBatching$1(i iVar, i iVar2, Continuation continuation, MutableLoadStateCollection mutableLoadStateCollection) {
        super(2, continuation);
        this.$this_combineWithoutBatching = iVar;
        this.$otherFlow = iVar2;
        this.$sourceStates$inlined = mutableLoadStateCollection;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @g
    public final Continuation<Unit> create(@h Object obj, @g Continuation<?> continuation) {
        PageFetcher$injectRemoteEvents$1$invokeSuspend$$inlined$combineWithoutBatching$1 pageFetcher$injectRemoteEvents$1$invokeSuspend$$inlined$combineWithoutBatching$1 = new PageFetcher$injectRemoteEvents$1$invokeSuspend$$inlined$combineWithoutBatching$1(this.$this_combineWithoutBatching, this.$otherFlow, continuation, this.$sourceStates$inlined);
        pageFetcher$injectRemoteEvents$1$invokeSuspend$$inlined$combineWithoutBatching$1.L$0 = obj;
        return pageFetcher$injectRemoteEvents$1$invokeSuspend$$inlined$combineWithoutBatching$1;
    }

    @Override // kotlin.jvm.functions.Function2
    @h
    public final Object invoke(@g SimpleProducerScope<PageEvent<Value>> simpleProducerScope, @h Continuation<? super Unit> continuation) {
        return ((PageFetcher$injectRemoteEvents$1$invokeSuspend$$inlined$combineWithoutBatching$1) create(simpleProducerScope, continuation)).invokeSuspend(Unit.INSTANCE);
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
            UnbatchedFlowCombiner unbatchedFlowCombiner = new UnbatchedFlowCombiner(new AnonymousClass1(simpleProducerScope, null, this.$sourceStates$inlined));
            c10 = o2.c(null, 1, null);
            i[] iVarArr = {this.$this_combineWithoutBatching, this.$otherFlow};
            int i10 = 0;
            int i11 = 0;
            while (i11 < 2) {
                l.f(simpleProducerScope, c10, null, new AnonymousClass2(iVarArr[i11], atomicInteger, simpleProducerScope, unbatchedFlowCombiner, i10, null), 2, null);
                i11++;
                i10++;
            }
            AnonymousClass3 anonymousClass3 = new AnonymousClass3(c10);
            this.label = 1;
            if (simpleProducerScope.awaitClose(anonymousClass3, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else if (i4 == 1) {
            ResultKt.throwOnFailure(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        return Unit.INSTANCE;
    }
}

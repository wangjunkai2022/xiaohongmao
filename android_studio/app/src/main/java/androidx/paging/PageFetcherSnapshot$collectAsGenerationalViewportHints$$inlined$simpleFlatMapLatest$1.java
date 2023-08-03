package androidx.paging;

import androidx.exifinterface.media.ExifInterface;
import androidx.paging.LoadState;
import androidx.paging.PageFetcherSnapshotState;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.i;
import kotlinx.coroutines.flow.j;
import kotlinx.coroutines.flow.k;
import kotlinx.coroutines.sync.c;
import m8.g;
import m8.h;

/* compiled from: FlowExt.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00010\u00022\u0006\u0010\u0003\u001a\u00028\u0000H\u008a@¨\u0006\u0005"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "R", "Lkotlinx/coroutines/flow/j;", "it", "", "androidx/paging/FlowExtKt$simpleFlatMapLatest$1", "<anonymous>"}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "androidx.paging.PageFetcherSnapshot$collectAsGenerationalViewportHints$$inlined$simpleFlatMapLatest$1", f = "PageFetcherSnapshot.kt", i = {0, 0, 0}, l = {229, 244}, m = "invokeSuspend", n = {"this_$iv", "$this$withLock_u24default$iv$iv", "generationId"}, s = {"L$1", "L$2", "I$0"})
/* loaded from: classes.dex */
public final class PageFetcherSnapshot$collectAsGenerationalViewportHints$$inlined$simpleFlatMapLatest$1 extends SuspendLambda implements Function3<j<? super GenerationalViewportHint>, Integer, Continuation<? super Unit>, Object> {
    final /* synthetic */ LoadType $loadType$inlined;
    int I$0;
    private /* synthetic */ Object L$0;
    /* synthetic */ Object L$1;
    Object L$2;
    int label;
    final /* synthetic */ PageFetcherSnapshot this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PageFetcherSnapshot$collectAsGenerationalViewportHints$$inlined$simpleFlatMapLatest$1(Continuation continuation, PageFetcherSnapshot pageFetcherSnapshot, LoadType loadType) {
        super(3, continuation);
        this.this$0 = pageFetcherSnapshot;
        this.$loadType$inlined = loadType;
    }

    @Override // kotlin.jvm.functions.Function3
    @h
    public final Object invoke(@g j<? super GenerationalViewportHint> jVar, Integer num, @h Continuation<? super Unit> continuation) {
        PageFetcherSnapshot$collectAsGenerationalViewportHints$$inlined$simpleFlatMapLatest$1 pageFetcherSnapshot$collectAsGenerationalViewportHints$$inlined$simpleFlatMapLatest$1 = new PageFetcherSnapshot$collectAsGenerationalViewportHints$$inlined$simpleFlatMapLatest$1(continuation, this.this$0, this.$loadType$inlined);
        pageFetcherSnapshot$collectAsGenerationalViewportHints$$inlined$simpleFlatMapLatest$1.L$0 = jVar;
        pageFetcherSnapshot$collectAsGenerationalViewportHints$$inlined$simpleFlatMapLatest$1.L$1 = num;
        return pageFetcherSnapshot$collectAsGenerationalViewportHints$$inlined$simpleFlatMapLatest$1.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @h
    public final Object invokeSuspend(@g Object obj) {
        Object coroutine_suspended;
        j jVar;
        final int intValue;
        PageFetcherSnapshotState.Holder holder;
        c cVar;
        HintHandler hintHandler;
        i<GenerationalViewportHint> iVar;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i4 = this.label;
        try {
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                jVar = (j) this.L$0;
                intValue = ((Number) this.L$1).intValue();
                holder = this.this$0.stateHolder;
                cVar = holder.lock;
                this.L$0 = jVar;
                this.L$1 = holder;
                this.L$2 = cVar;
                this.I$0 = intValue;
                this.label = 1;
                if (cVar.c(null, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                if (i4 == 2) {
                    ResultKt.throwOnFailure(obj);
                    return Unit.INSTANCE;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                intValue = this.I$0;
                cVar = (c) this.L$2;
                holder = (PageFetcherSnapshotState.Holder) this.L$1;
                jVar = (j) this.L$0;
                ResultKt.throwOnFailure(obj);
            }
            PageFetcherSnapshotState pageFetcherSnapshotState = holder.state;
            LoadState loadState = pageFetcherSnapshotState.getSourceLoadStates$paging_common().get(this.$loadType$inlined);
            LoadState.NotLoading.Companion companion = LoadState.NotLoading.Companion;
            if (Intrinsics.areEqual(loadState, companion.getComplete$paging_common())) {
                iVar = k.M0(new GenerationalViewportHint[0]);
            } else {
                if (!(pageFetcherSnapshotState.getSourceLoadStates$paging_common().get(this.$loadType$inlined) instanceof LoadState.Error)) {
                    pageFetcherSnapshotState.getSourceLoadStates$paging_common().set(this.$loadType$inlined, companion.getIncomplete$paging_common());
                }
                Unit unit = Unit.INSTANCE;
                cVar.d(null);
                hintHandler = this.this$0.hintHandler;
                final i j02 = k.j0(hintHandler.hintFor(this.$loadType$inlined), intValue == 0 ? 0 : 1);
                iVar = new i<GenerationalViewportHint>() { // from class: androidx.paging.PageFetcherSnapshot$collectAsGenerationalViewportHints$lambda-6$$inlined$map$1

                    /* compiled from: Collect.kt */
                    @Metadata(bv = {}, d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u001b\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0006¸\u0006\u0007"}, d2 = {"kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3", "Lkotlinx/coroutines/flow/j;", "value", "", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core", "kotlinx/coroutines/flow/FlowKt__TransformKt$map$$inlined$unsafeTransform$1$2"}, k = 1, mv = {1, 5, 1})
                    /* renamed from: androidx.paging.PageFetcherSnapshot$collectAsGenerationalViewportHints$lambda-6$$inlined$map$1$2  reason: invalid class name */
                    /* loaded from: classes.dex */
                    public static final class AnonymousClass2 implements j<ViewportHint> {
                        final /* synthetic */ int $generationId$inlined;
                        final /* synthetic */ j $this_unsafeFlow$inlined;

                        @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
                        @DebugMetadata(c = "androidx.paging.PageFetcherSnapshot$collectAsGenerationalViewportHints$lambda-6$$inlined$map$1$2", f = "PageFetcherSnapshot.kt", i = {}, l = {137}, m = "emit", n = {}, s = {})
                        /* renamed from: androidx.paging.PageFetcherSnapshot$collectAsGenerationalViewportHints$lambda-6$$inlined$map$1$2$1  reason: invalid class name */
                        /* loaded from: classes.dex */
                        public static final class AnonymousClass1 extends ContinuationImpl {
                            Object L$0;
                            int label;
                            /* synthetic */ Object result;

                            public AnonymousClass1(Continuation continuation) {
                                super(continuation);
                            }

                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                            @h
                            public final Object invokeSuspend(@g Object obj) {
                                this.result = obj;
                                this.label |= Integer.MIN_VALUE;
                                return AnonymousClass2.this.emit(null, this);
                            }
                        }

                        public AnonymousClass2(j jVar, int i4) {
                            this.$this_unsafeFlow$inlined = jVar;
                            this.$generationId$inlined = i4;
                        }

                        /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
                        /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
                        @Override // kotlinx.coroutines.flow.j
                        @m8.h
                        /*
                            Code decompiled incorrectly, please refer to instructions dump.
                            To view partially-correct code enable 'Show inconsistent code' option in preferences
                        */
                        public java.lang.Object emit(androidx.paging.ViewportHint r6, @m8.g kotlin.coroutines.Continuation r7) {
                            /*
                                r5 = this;
                                boolean r0 = r7 instanceof androidx.paging.PageFetcherSnapshot$collectAsGenerationalViewportHints$lambda6$$inlined$map$1.AnonymousClass2.AnonymousClass1
                                if (r0 == 0) goto L13
                                r0 = r7
                                androidx.paging.PageFetcherSnapshot$collectAsGenerationalViewportHints$lambda-6$$inlined$map$1$2$1 r0 = (androidx.paging.PageFetcherSnapshot$collectAsGenerationalViewportHints$lambda6$$inlined$map$1.AnonymousClass2.AnonymousClass1) r0
                                int r1 = r0.label
                                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                                r3 = r1 & r2
                                if (r3 == 0) goto L13
                                int r1 = r1 - r2
                                r0.label = r1
                                goto L18
                            L13:
                                androidx.paging.PageFetcherSnapshot$collectAsGenerationalViewportHints$lambda-6$$inlined$map$1$2$1 r0 = new androidx.paging.PageFetcherSnapshot$collectAsGenerationalViewportHints$lambda-6$$inlined$map$1$2$1
                                r0.<init>(r7)
                            L18:
                                java.lang.Object r7 = r0.result
                                java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                                int r2 = r0.label
                                r3 = 1
                                if (r2 == 0) goto L31
                                if (r2 != r3) goto L29
                                kotlin.ResultKt.throwOnFailure(r7)
                                goto L48
                            L29:
                                java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
                                java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
                                r6.<init>(r7)
                                throw r6
                            L31:
                                kotlin.ResultKt.throwOnFailure(r7)
                                kotlinx.coroutines.flow.j r7 = r5.$this_unsafeFlow$inlined
                                androidx.paging.ViewportHint r6 = (androidx.paging.ViewportHint) r6
                                androidx.paging.GenerationalViewportHint r2 = new androidx.paging.GenerationalViewportHint
                                int r4 = r5.$generationId$inlined
                                r2.<init>(r4, r6)
                                r0.label = r3
                                java.lang.Object r6 = r7.emit(r2, r0)
                                if (r6 != r1) goto L48
                                return r1
                            L48:
                                kotlin.Unit r6 = kotlin.Unit.INSTANCE
                                return r6
                            */
                            throw new UnsupportedOperationException("Method not decompiled: androidx.paging.PageFetcherSnapshot$collectAsGenerationalViewportHints$lambda6$$inlined$map$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                        }
                    }

                    @Override // kotlinx.coroutines.flow.i
                    @h
                    public Object collect(@g j<? super GenerationalViewportHint> jVar2, @g Continuation continuation) {
                        Object coroutine_suspended2;
                        Object collect = i.this.collect(new AnonymousClass2(jVar2, intValue), continuation);
                        coroutine_suspended2 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                        return collect == coroutine_suspended2 ? collect : Unit.INSTANCE;
                    }
                };
            }
            this.L$0 = null;
            this.L$1 = null;
            this.L$2 = null;
            this.label = 2;
            if (k.m0(jVar, iVar, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
            return Unit.INSTANCE;
        } finally {
            cVar.d(null);
        }
    }
}

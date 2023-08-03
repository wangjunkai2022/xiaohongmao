package androidx.paging;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.flow.i;
import kotlinx.coroutines.flow.j;
import kotlinx.coroutines.flow.k;
import kotlinx.coroutines.s0;
import m8.g;
import m8.h;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PageFetcherSnapshot.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0005\u001a\u00020\u0004\"\b\b\u0000\u0010\u0001*\u00020\u0000\"\b\b\u0001\u0010\u0002*\u00020\u0000*\u00020\u0003H\u008a@"}, d2 = {"", "Key", "Value", "Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "androidx.paging.PageFetcherSnapshot$startConsumingHints$1$1", f = "PageFetcherSnapshot.kt", i = {}, l = {222}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes.dex */
public final class PageFetcherSnapshot$startConsumingHints$1$1 extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {
    final /* synthetic */ LoadType $loadType;
    int label;
    final /* synthetic */ PageFetcherSnapshot<Key, Value> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PageFetcherSnapshot.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0006\u001a\u00020\u0005\"\b\b\u0000\u0010\u0001*\u00020\u0000\"\b\b\u0001\u0010\u0002*\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0003H\u008a@"}, d2 = {"", "Key", "Value", "Landroidx/paging/ViewportHint;", "it", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
    @DebugMetadata(c = "androidx.paging.PageFetcherSnapshot$startConsumingHints$1$1$2", f = "PageFetcherSnapshot.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: androidx.paging.PageFetcherSnapshot$startConsumingHints$1$1$2  reason: invalid class name */
    /* loaded from: classes.dex */
    public static final class AnonymousClass2 extends SuspendLambda implements Function2<ViewportHint, Continuation<? super Unit>, Object> {
        int label;
        final /* synthetic */ PageFetcherSnapshot<Key, Value> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(PageFetcherSnapshot<Key, Value> pageFetcherSnapshot, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.this$0 = pageFetcherSnapshot;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @g
        public final Continuation<Unit> create(@h Object obj, @g Continuation<?> continuation) {
            return new AnonymousClass2(this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        @h
        public final Object invoke(@g ViewportHint viewportHint, @h Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(viewportHint, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @h
        public final Object invokeSuspend(@g Object obj) {
            Function0 function0;
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                function0 = ((PageFetcherSnapshot) this.this$0).invalidate;
                function0.invoke();
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PageFetcherSnapshot$startConsumingHints$1$1(PageFetcherSnapshot<Key, Value> pageFetcherSnapshot, LoadType loadType, Continuation<? super PageFetcherSnapshot$startConsumingHints$1$1> continuation) {
        super(2, continuation);
        this.this$0 = pageFetcherSnapshot;
        this.$loadType = loadType;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @g
    public final Continuation<Unit> create(@h Object obj, @g Continuation<?> continuation) {
        return new PageFetcherSnapshot$startConsumingHints$1$1(this.this$0, this.$loadType, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    @h
    public final Object invoke(@g s0 s0Var, @h Continuation<? super Unit> continuation) {
        return ((PageFetcherSnapshot$startConsumingHints$1$1) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @h
    public final Object invokeSuspend(@g Object obj) {
        Object coroutine_suspended;
        HintHandler hintHandler;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i4 = this.label;
        if (i4 == 0) {
            ResultKt.throwOnFailure(obj);
            hintHandler = ((PageFetcherSnapshot) this.this$0).hintHandler;
            final i<ViewportHint> hintFor = hintHandler.hintFor(this.$loadType);
            final PageFetcherSnapshot<Key, Value> pageFetcherSnapshot = this.this$0;
            i<ViewportHint> iVar = new i<ViewportHint>() { // from class: androidx.paging.PageFetcherSnapshot$startConsumingHints$1$1$invokeSuspend$$inlined$filter$1

                /* compiled from: Collect.kt */
                @Metadata(bv = {}, d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u001b\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0006¸\u0006\u0007"}, d2 = {"kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3", "Lkotlinx/coroutines/flow/j;", "value", "", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core", "kotlinx/coroutines/flow/FlowKt__TransformKt$filter$$inlined$unsafeTransform$1$2"}, k = 1, mv = {1, 5, 1})
                /* renamed from: androidx.paging.PageFetcherSnapshot$startConsumingHints$1$1$invokeSuspend$$inlined$filter$1$2  reason: invalid class name */
                /* loaded from: classes.dex */
                public static final class AnonymousClass2 implements j<ViewportHint> {
                    final /* synthetic */ j $this_unsafeFlow$inlined;
                    final /* synthetic */ PageFetcherSnapshot this$0;

                    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
                    @DebugMetadata(c = "androidx.paging.PageFetcherSnapshot$startConsumingHints$1$1$invokeSuspend$$inlined$filter$1$2", f = "PageFetcherSnapshot.kt", i = {}, l = {137}, m = "emit", n = {}, s = {})
                    /* renamed from: androidx.paging.PageFetcherSnapshot$startConsumingHints$1$1$invokeSuspend$$inlined$filter$1$2$1  reason: invalid class name */
                    /* loaded from: classes.dex */
                    public static final class AnonymousClass1 extends ContinuationImpl {
                        Object L$0;
                        Object L$1;
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

                    public AnonymousClass2(j jVar, PageFetcherSnapshot pageFetcherSnapshot) {
                        this.$this_unsafeFlow$inlined = jVar;
                        this.this$0 = pageFetcherSnapshot;
                    }

                    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
                    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
                    /* JADX WARN: Removed duplicated region for block: B:22:0x005f  */
                    @Override // kotlinx.coroutines.flow.j
                    @m8.h
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct code enable 'Show inconsistent code' option in preferences
                    */
                    public java.lang.Object emit(androidx.paging.ViewportHint r7, @m8.g kotlin.coroutines.Continuation r8) {
                        /*
                            r6 = this;
                            boolean r0 = r8 instanceof androidx.paging.PageFetcherSnapshot$startConsumingHints$1$1$invokeSuspend$$inlined$filter$1.AnonymousClass2.AnonymousClass1
                            if (r0 == 0) goto L13
                            r0 = r8
                            androidx.paging.PageFetcherSnapshot$startConsumingHints$1$1$invokeSuspend$$inlined$filter$1$2$1 r0 = (androidx.paging.PageFetcherSnapshot$startConsumingHints$1$1$invokeSuspend$$inlined$filter$1.AnonymousClass2.AnonymousClass1) r0
                            int r1 = r0.label
                            r2 = -2147483648(0xffffffff80000000, float:-0.0)
                            r3 = r1 & r2
                            if (r3 == 0) goto L13
                            int r1 = r1 - r2
                            r0.label = r1
                            goto L18
                        L13:
                            androidx.paging.PageFetcherSnapshot$startConsumingHints$1$1$invokeSuspend$$inlined$filter$1$2$1 r0 = new androidx.paging.PageFetcherSnapshot$startConsumingHints$1$1$invokeSuspend$$inlined$filter$1$2$1
                            r0.<init>(r8)
                        L18:
                            java.lang.Object r8 = r0.result
                            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                            int r2 = r0.label
                            r3 = 1
                            if (r2 == 0) goto L31
                            if (r2 != r3) goto L29
                            kotlin.ResultKt.throwOnFailure(r8)
                            goto L68
                        L29:
                            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
                            r7.<init>(r8)
                            throw r7
                        L31:
                            kotlin.ResultKt.throwOnFailure(r8)
                            kotlinx.coroutines.flow.j r8 = r6.$this_unsafeFlow$inlined
                            r2 = r7
                            androidx.paging.ViewportHint r2 = (androidx.paging.ViewportHint) r2
                            int r4 = r2.getPresentedItemsBefore()
                            int r4 = r4 * (-1)
                            androidx.paging.PageFetcherSnapshot r5 = r6.this$0
                            androidx.paging.PagingConfig r5 = androidx.paging.PageFetcherSnapshot.access$getConfig$p(r5)
                            int r5 = r5.jumpThreshold
                            if (r4 > r5) goto L5c
                            int r2 = r2.getPresentedItemsAfter()
                            int r2 = r2 * (-1)
                            androidx.paging.PageFetcherSnapshot r4 = r6.this$0
                            androidx.paging.PagingConfig r4 = androidx.paging.PageFetcherSnapshot.access$getConfig$p(r4)
                            int r4 = r4.jumpThreshold
                            if (r2 <= r4) goto L5a
                            goto L5c
                        L5a:
                            r2 = 0
                            goto L5d
                        L5c:
                            r2 = 1
                        L5d:
                            if (r2 == 0) goto L68
                            r0.label = r3
                            java.lang.Object r7 = r8.emit(r7, r0)
                            if (r7 != r1) goto L68
                            return r1
                        L68:
                            kotlin.Unit r7 = kotlin.Unit.INSTANCE
                            return r7
                        */
                        throw new UnsupportedOperationException("Method not decompiled: androidx.paging.PageFetcherSnapshot$startConsumingHints$1$1$invokeSuspend$$inlined$filter$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                    }
                }

                @Override // kotlinx.coroutines.flow.i
                @h
                public Object collect(@g j<? super ViewportHint> jVar, @g Continuation continuation) {
                    Object coroutine_suspended2;
                    Object collect = i.this.collect(new AnonymousClass2(jVar, pageFetcherSnapshot), continuation);
                    coroutine_suspended2 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    return collect == coroutine_suspended2 ? collect : Unit.INSTANCE;
                }
            };
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.this$0, null);
            this.label = 1;
            if (k.A(iVar, anonymousClass2, this) == coroutine_suspended) {
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

package androidx.paging;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.InlineMarker;
import kotlinx.coroutines.flow.i;
import kotlinx.coroutines.flow.j;
import m8.g;
import m8.h;

/* compiled from: SafeCollector.common.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J!\u0010\u0005\u001a\u00020\u00042\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0007¸\u0006\b"}, d2 = {"kotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1", "Lkotlinx/coroutines/flow/i;", "Lkotlinx/coroutines/flow/j;", "collector", "", "collect", "(Lkotlinx/coroutines/flow/j;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core", "kotlinx/coroutines/flow/FlowKt__TransformKt$map$$inlined$unsafeTransform$1"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes.dex */
public final class PagingDataTransforms$transform$$inlined$map$1 implements i<PageEvent<R>> {
    final /* synthetic */ i $this_unsafeTransform$inlined;
    final /* synthetic */ Function2 $transform$inlined;

    /* compiled from: Collect.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u001b\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0006¸\u0006\u0007"}, d2 = {"kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3", "Lkotlinx/coroutines/flow/j;", "value", "", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core", "kotlinx/coroutines/flow/FlowKt__TransformKt$map$$inlined$unsafeTransform$1$2"}, k = 1, mv = {1, 5, 1})
    /* renamed from: androidx.paging.PagingDataTransforms$transform$$inlined$map$1$2  reason: invalid class name */
    /* loaded from: classes.dex */
    public static final class AnonymousClass2 implements j<PageEvent<T>> {
        final /* synthetic */ j $this_unsafeFlow$inlined;
        final /* synthetic */ Function2 $transform$inlined;

        @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
        @DebugMetadata(c = "androidx.paging.PagingDataTransforms$transform$$inlined$map$1$2", f = "PagingDataTransforms.kt", i = {}, l = {137, 137}, m = "emit", n = {}, s = {})
        /* renamed from: androidx.paging.PagingDataTransforms$transform$$inlined$map$1$2$1  reason: invalid class name */
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

        public AnonymousClass2(j jVar, Function2 function2) {
            this.$this_unsafeFlow$inlined = jVar;
            this.$transform$inlined = function2;
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
        /* JADX WARN: Removed duplicated region for block: B:16:0x003c  */
        /* JADX WARN: Removed duplicated region for block: B:22:0x005e A[RETURN] */
        @Override // kotlinx.coroutines.flow.j
        @m8.h
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public java.lang.Object emit(java.lang.Object r7, @m8.g kotlin.coroutines.Continuation r8) {
            /*
                r6 = this;
                boolean r0 = r8 instanceof androidx.paging.PagingDataTransforms$transform$$inlined$map$1.AnonymousClass2.AnonymousClass1
                if (r0 == 0) goto L13
                r0 = r8
                androidx.paging.PagingDataTransforms$transform$$inlined$map$1$2$1 r0 = (androidx.paging.PagingDataTransforms$transform$$inlined$map$1.AnonymousClass2.AnonymousClass1) r0
                int r1 = r0.label
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.label = r1
                goto L18
            L13:
                androidx.paging.PagingDataTransforms$transform$$inlined$map$1$2$1 r0 = new androidx.paging.PagingDataTransforms$transform$$inlined$map$1$2$1
                r0.<init>(r8)
            L18:
                java.lang.Object r8 = r0.result
                java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r2 = r0.label
                r3 = 2
                r4 = 1
                if (r2 == 0) goto L3c
                if (r2 == r4) goto L34
                if (r2 != r3) goto L2c
                kotlin.ResultKt.throwOnFailure(r8)
                goto L5f
            L2c:
                java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
                r7.<init>(r8)
                throw r7
            L34:
                java.lang.Object r7 = r0.L$0
                kotlinx.coroutines.flow.j r7 = (kotlinx.coroutines.flow.j) r7
                kotlin.ResultKt.throwOnFailure(r8)
                goto L53
            L3c:
                kotlin.ResultKt.throwOnFailure(r8)
                kotlinx.coroutines.flow.j r8 = r6.$this_unsafeFlow$inlined
                androidx.paging.PageEvent r7 = (androidx.paging.PageEvent) r7
                kotlin.jvm.functions.Function2 r2 = r6.$transform$inlined
                r0.L$0 = r8
                r0.label = r4
                java.lang.Object r7 = r2.invoke(r7, r0)
                if (r7 != r1) goto L50
                return r1
            L50:
                r5 = r8
                r8 = r7
                r7 = r5
            L53:
                r2 = 0
                r0.L$0 = r2
                r0.label = r3
                java.lang.Object r7 = r7.emit(r8, r0)
                if (r7 != r1) goto L5f
                return r1
            L5f:
                kotlin.Unit r7 = kotlin.Unit.INSTANCE
                return r7
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.paging.PagingDataTransforms$transform$$inlined$map$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
        }

        @h
        public Object emit$$forInline(Object obj, @g Continuation continuation) {
            InlineMarker.mark(4);
            new AnonymousClass1(continuation);
            InlineMarker.mark(5);
            j jVar = this.$this_unsafeFlow$inlined;
            Object invoke = this.$transform$inlined.invoke((PageEvent) obj, continuation);
            InlineMarker.mark(0);
            jVar.emit(invoke, continuation);
            InlineMarker.mark(1);
            return Unit.INSTANCE;
        }
    }

    public PagingDataTransforms$transform$$inlined$map$1(i iVar, Function2 function2) {
        this.$this_unsafeTransform$inlined = iVar;
        this.$transform$inlined = function2;
    }

    @Override // kotlinx.coroutines.flow.i
    @h
    public Object collect(@g j jVar, @g Continuation continuation) {
        Object coroutine_suspended;
        Object collect = this.$this_unsafeTransform$inlined.collect(new AnonymousClass2(jVar, this.$transform$inlined), continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return collect == coroutine_suspended ? collect : Unit.INSTANCE;
    }

    @h
    public Object collect$$forInline(@g j jVar, @g Continuation continuation) {
        InlineMarker.mark(4);
        new ContinuationImpl(continuation) { // from class: androidx.paging.PagingDataTransforms$transform$$inlined$map$1.1
            int label;
            /* synthetic */ Object result;

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @h
            public final Object invokeSuspend(@g Object obj) {
                this.result = obj;
                this.label |= Integer.MIN_VALUE;
                return PagingDataTransforms$transform$$inlined$map$1.this.collect(null, this);
            }
        };
        InlineMarker.mark(5);
        i iVar = this.$this_unsafeTransform$inlined;
        AnonymousClass2 anonymousClass2 = new AnonymousClass2(jVar, this.$transform$inlined);
        InlineMarker.mark(0);
        iVar.collect(anonymousClass2, continuation);
        InlineMarker.mark(1);
        return Unit.INSTANCE;
    }
}

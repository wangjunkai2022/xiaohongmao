package androidx.paging;

import com.google.android.exoplayer2.extractor.ts.h0;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.flow.j;
import m8.g;
import m8.h;

/* compiled from: Collect.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u001b\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0006¸\u0006\u0000"}, d2 = {"kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3", "Lkotlinx/coroutines/flow/j;", "value", "", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes.dex */
public final class FlowExtKt$simpleScan$1$invokeSuspend$$inlined$collect$1 implements j<T> {
    final /* synthetic */ j $$this$flow$inlined;
    final /* synthetic */ Ref.ObjectRef $accumulator$inlined;
    final /* synthetic */ Function3 $operation$inlined;

    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    @DebugMetadata(c = "androidx.paging.FlowExtKt$simpleScan$1$invokeSuspend$$inlined$collect$1", f = "FlowExt.kt", i = {0}, l = {h0.J, 136}, m = "emit", n = {"this"}, s = {"L$0"})
    /* renamed from: androidx.paging.FlowExtKt$simpleScan$1$invokeSuspend$$inlined$collect$1$1  reason: invalid class name */
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
            return FlowExtKt$simpleScan$1$invokeSuspend$$inlined$collect$1.this.emit(null, this);
        }
    }

    public FlowExtKt$simpleScan$1$invokeSuspend$$inlined$collect$1(Ref.ObjectRef objectRef, Function3 function3, j jVar) {
        this.$accumulator$inlined = objectRef;
        this.$operation$inlined = function3;
        this.$$this$flow$inlined = jVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0077 A[RETURN] */
    @Override // kotlinx.coroutines.flow.j
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object emit(T r8, @m8.g kotlin.coroutines.Continuation<? super kotlin.Unit> r9) {
        /*
            r7 = this;
            boolean r0 = r9 instanceof androidx.paging.FlowExtKt$simpleScan$1$invokeSuspend$$inlined$collect$1.AnonymousClass1
            if (r0 == 0) goto L13
            r0 = r9
            androidx.paging.FlowExtKt$simpleScan$1$invokeSuspend$$inlined$collect$1$1 r0 = (androidx.paging.FlowExtKt$simpleScan$1$invokeSuspend$$inlined$collect$1.AnonymousClass1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.paging.FlowExtKt$simpleScan$1$invokeSuspend$$inlined$collect$1$1 r0 = new androidx.paging.FlowExtKt$simpleScan$1$invokeSuspend$$inlined$collect$1$1
            r0.<init>(r9)
        L18:
            java.lang.Object r9 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L40
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            kotlin.ResultKt.throwOnFailure(r9)
            goto L78
        L2c:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L34:
            java.lang.Object r8 = r0.L$1
            kotlin.jvm.internal.Ref$ObjectRef r8 = (kotlin.jvm.internal.Ref.ObjectRef) r8
            java.lang.Object r2 = r0.L$0
            androidx.paging.FlowExtKt$simpleScan$1$invokeSuspend$$inlined$collect$1 r2 = (androidx.paging.FlowExtKt$simpleScan$1$invokeSuspend$$inlined$collect$1) r2
            kotlin.ResultKt.throwOnFailure(r9)
            goto L62
        L40:
            kotlin.ResultKt.throwOnFailure(r9)
            kotlin.jvm.internal.Ref$ObjectRef r9 = r7.$accumulator$inlined
            kotlin.jvm.functions.Function3 r2 = r7.$operation$inlined
            T r5 = r9.element
            r0.L$0 = r7
            r0.L$1 = r9
            r0.label = r4
            r4 = 6
            kotlin.jvm.internal.InlineMarker.mark(r4)
            java.lang.Object r8 = r2.invoke(r5, r8, r0)
            r2 = 7
            kotlin.jvm.internal.InlineMarker.mark(r2)
            if (r8 != r1) goto L5e
            return r1
        L5e:
            r2 = r7
            r6 = r9
            r9 = r8
            r8 = r6
        L62:
            r8.element = r9
            kotlinx.coroutines.flow.j r8 = r2.$$this$flow$inlined
            kotlin.jvm.internal.Ref$ObjectRef r9 = r2.$accumulator$inlined
            T r9 = r9.element
            r2 = 0
            r0.L$0 = r2
            r0.L$1 = r2
            r0.label = r3
            java.lang.Object r8 = r8.emit(r9, r0)
            if (r8 != r1) goto L78
            return r1
        L78:
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.paging.FlowExtKt$simpleScan$1$invokeSuspend$$inlined$collect$1.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
    }
}

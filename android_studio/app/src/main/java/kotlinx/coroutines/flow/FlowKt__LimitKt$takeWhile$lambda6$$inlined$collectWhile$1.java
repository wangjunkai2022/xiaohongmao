package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function2;

/* compiled from: Limit.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u001b\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0006¸\u0006\u0000"}, d2 = {"kotlinx/coroutines/flow/FlowKt__LimitKt$collectWhile$collector$1", "Lkotlinx/coroutines/flow/j;", "value", "", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* renamed from: kotlinx.coroutines.flow.FlowKt__LimitKt$takeWhile$lambda-6$$inlined$collectWhile$1  reason: invalid class name */
/* loaded from: classes4.dex */
public final class FlowKt__LimitKt$takeWhile$lambda6$$inlined$collectWhile$1 implements j<T> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Function2 f85443a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ j f85444b;

    /* compiled from: Limit.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__LimitKt$takeWhile$lambda-6$$inlined$collectWhile$1", f = "Limit.kt", i = {0, 0, 1}, l = {143, 144}, m = "emit", n = {"this", "value", "this"}, s = {"L$0", "L$1", "L$0"})
    /* renamed from: kotlinx.coroutines.flow.FlowKt__LimitKt$takeWhile$lambda-6$$inlined$collectWhile$1$1  reason: invalid class name */
    /* loaded from: classes4.dex */
    public static final class AnonymousClass1 extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        Object f85445a;

        /* renamed from: b  reason: collision with root package name */
        /* synthetic */ Object f85446b;

        /* renamed from: c  reason: collision with root package name */
        int f85447c;

        /* renamed from: e  reason: collision with root package name */
        Object f85449e;

        public AnonymousClass1(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f85446b = obj;
            this.f85447c |= Integer.MIN_VALUE;
            return FlowKt__LimitKt$takeWhile$lambda6$$inlined$collectWhile$1.this.emit(null, this);
        }
    }

    public FlowKt__LimitKt$takeWhile$lambda6$$inlined$collectWhile$1(Function2 function2, j jVar) {
        this.f85443a = function2;
        this.f85444b = jVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0081  */
    @Override // kotlinx.coroutines.flow.j
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object emit(T r8, @m8.g kotlin.coroutines.Continuation<? super kotlin.Unit> r9) {
        /*
            r7 = this;
            boolean r0 = r9 instanceof kotlinx.coroutines.flow.FlowKt__LimitKt$takeWhile$lambda6$$inlined$collectWhile$1.AnonymousClass1
            if (r0 == 0) goto L13
            r0 = r9
            kotlinx.coroutines.flow.FlowKt__LimitKt$takeWhile$lambda-6$$inlined$collectWhile$1$1 r0 = (kotlinx.coroutines.flow.FlowKt__LimitKt$takeWhile$lambda6$$inlined$collectWhile$1.AnonymousClass1) r0
            int r1 = r0.f85447c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f85447c = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.FlowKt__LimitKt$takeWhile$lambda-6$$inlined$collectWhile$1$1 r0 = new kotlinx.coroutines.flow.FlowKt__LimitKt$takeWhile$lambda-6$$inlined$collectWhile$1$1
            r0.<init>(r9)
        L18:
            java.lang.Object r9 = r0.f85446b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f85447c
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L46
            if (r2 == r4) goto L38
            if (r2 != r3) goto L30
            java.lang.Object r8 = r0.f85445a
            kotlinx.coroutines.flow.FlowKt__LimitKt$takeWhile$lambda-6$$inlined$collectWhile$1 r8 = (kotlinx.coroutines.flow.FlowKt__LimitKt$takeWhile$lambda6$$inlined$collectWhile$1) r8
            kotlin.ResultKt.throwOnFailure(r9)
            goto L7c
        L30:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L38:
            java.lang.Object r8 = r0.f85449e
            java.lang.Object r2 = r0.f85445a
            kotlinx.coroutines.flow.FlowKt__LimitKt$takeWhile$lambda-6$$inlined$collectWhile$1 r2 = (kotlinx.coroutines.flow.FlowKt__LimitKt$takeWhile$lambda6$$inlined$collectWhile$1) r2
            kotlin.ResultKt.throwOnFailure(r9)
            r6 = r9
            r9 = r8
            r8 = r2
            r2 = r6
            goto L63
        L46:
            kotlin.ResultKt.throwOnFailure(r9)
            kotlin.jvm.functions.Function2 r9 = r7.f85443a
            r0.f85445a = r7
            r0.f85449e = r8
            r0.f85447c = r4
            r2 = 6
            kotlin.jvm.internal.InlineMarker.mark(r2)
            java.lang.Object r9 = r9.invoke(r8, r0)
            r2 = 7
            kotlin.jvm.internal.InlineMarker.mark(r2)
            if (r9 != r1) goto L60
            return r1
        L60:
            r2 = r9
            r9 = r8
            r8 = r7
        L63:
            java.lang.Boolean r2 = (java.lang.Boolean) r2
            boolean r2 = r2.booleanValue()
            if (r2 == 0) goto L7b
            kotlinx.coroutines.flow.j r2 = r8.f85444b
            r0.f85445a = r8
            r5 = 0
            r0.f85449e = r5
            r0.f85447c = r3
            java.lang.Object r9 = r2.emit(r9, r0)
            if (r9 != r1) goto L7c
            return r1
        L7b:
            r4 = 0
        L7c:
            if (r4 == 0) goto L81
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        L81:
            kotlinx.coroutines.flow.internal.AbortFlowException r9 = new kotlinx.coroutines.flow.internal.AbortFlowException
            r9.<init>(r8)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__LimitKt$takeWhile$lambda6$$inlined$collectWhile$1.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
    }
}

package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.ranges.LongRange;

/* compiled from: SafeCollector.common.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J!\u0010\u0005\u001a\u00020\u00042\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0007¸\u0006\u0000"}, d2 = {"kotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1", "Lkotlinx/coroutines/flow/i;", "Lkotlinx/coroutines/flow/j;", "collector", "", "collect", "(Lkotlinx/coroutines/flow/j;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$10 implements i<Long> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ LongRange f85269a;

    /* compiled from: SafeCollector.common.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$10", f = "Builders.kt", i = {0}, l = {115}, m = "collect", n = {"$this$asFlow_u24lambda_u2d19"}, s = {"L$0"})
    /* renamed from: kotlinx.coroutines.flow.FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$10$1  reason: invalid class name */
    /* loaded from: classes4.dex */
    public static final class AnonymousClass1 extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        /* synthetic */ Object f85270a;

        /* renamed from: b  reason: collision with root package name */
        int f85271b;

        /* renamed from: d  reason: collision with root package name */
        Object f85273d;

        /* renamed from: e  reason: collision with root package name */
        Object f85274e;

        public AnonymousClass1(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            this.f85270a = obj;
            this.f85271b |= Integer.MIN_VALUE;
            return FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$10.this.collect(null, this);
        }
    }

    public FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$10(LongRange longRange) {
        this.f85269a = longRange;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x004c  */
    @Override // kotlinx.coroutines.flow.i
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object collect(@m8.g kotlinx.coroutines.flow.j<? super java.lang.Long> r8, @m8.g kotlin.coroutines.Continuation<? super kotlin.Unit> r9) {
        /*
            r7 = this;
            boolean r0 = r9 instanceof kotlinx.coroutines.flow.FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$10.AnonymousClass1
            if (r0 == 0) goto L13
            r0 = r9
            kotlinx.coroutines.flow.FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$10$1 r0 = (kotlinx.coroutines.flow.FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$10.AnonymousClass1) r0
            int r1 = r0.f85271b
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f85271b = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$10$1 r0 = new kotlinx.coroutines.flow.FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$10$1
            r0.<init>(r9)
        L18:
            java.lang.Object r9 = r0.f85270a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f85271b
            r3 = 1
            if (r2 == 0) goto L3a
            if (r2 != r3) goto L32
            java.lang.Object r8 = r0.f85274e
            java.util.Iterator r8 = (java.util.Iterator) r8
            java.lang.Object r2 = r0.f85273d
            kotlinx.coroutines.flow.j r2 = (kotlinx.coroutines.flow.j) r2
            kotlin.ResultKt.throwOnFailure(r9)
            r9 = r2
            goto L46
        L32:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L3a:
            kotlin.ResultKt.throwOnFailure(r9)
            kotlin.ranges.LongRange r9 = r7.f85269a
            java.util.Iterator r9 = r9.iterator()
            r6 = r9
            r9 = r8
            r8 = r6
        L46:
            boolean r2 = r8.hasNext()
            if (r2 == 0) goto L64
            r2 = r8
            kotlin.collections.LongIterator r2 = (kotlin.collections.LongIterator) r2
            long r4 = r2.nextLong()
            java.lang.Long r2 = kotlin.coroutines.jvm.internal.Boxing.boxLong(r4)
            r0.f85273d = r9
            r0.f85274e = r8
            r0.f85271b = r3
            java.lang.Object r2 = r9.emit(r2, r0)
            if (r2 != r1) goto L46
            return r1
        L64:
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__BuildersKt$asFlow$$inlined$unsafeFlow$10.collect(kotlinx.coroutines.flow.j, kotlin.coroutines.Continuation):java.lang.Object");
    }
}

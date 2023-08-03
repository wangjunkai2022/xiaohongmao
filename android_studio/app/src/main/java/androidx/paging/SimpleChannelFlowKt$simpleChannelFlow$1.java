package androidx.paging;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.flow.j;
import kotlinx.coroutines.s0;
import kotlinx.coroutines.t0;
import m8.g;
import m8.h;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SimpleChannelFlow.kt */
@Metadata(bv = {}, d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u008a@"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/flow/j;", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "androidx.paging.SimpleChannelFlowKt$simpleChannelFlow$1", f = "SimpleChannelFlow.kt", i = {}, l = {46}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes.dex */
public final class SimpleChannelFlowKt$simpleChannelFlow$1 extends SuspendLambda implements Function2<j<? super T>, Continuation<? super Unit>, Object> {
    final /* synthetic */ Function2<SimpleProducerScope<T>, Continuation<? super Unit>, Object> $block;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SimpleChannelFlow.kt */
    @Metadata(bv = {}, d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
    @DebugMetadata(c = "androidx.paging.SimpleChannelFlowKt$simpleChannelFlow$1$1", f = "SimpleChannelFlow.kt", i = {0, 1}, l = {64, 65}, m = "invokeSuspend", n = {"producer", "producer"}, s = {"L$0", "L$0"})
    /* renamed from: androidx.paging.SimpleChannelFlowKt$simpleChannelFlow$1$1  reason: invalid class name */
    /* loaded from: classes.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {
        final /* synthetic */ j<T> $$this$flow;
        final /* synthetic */ Function2<SimpleProducerScope<T>, Continuation<? super Unit>, Object> $block;
        private /* synthetic */ Object L$0;
        Object L$1;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(j<? super T> jVar, Function2<? super SimpleProducerScope<T>, ? super Continuation<? super Unit>, ? extends Object> function2, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$$this$flow = jVar;
            this.$block = function2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @g
        public final Continuation<Unit> create(@h Object obj, @g Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$$this$flow, this.$block, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        @h
        public final Object invoke(@g s0 s0Var, @h Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:14:0x0060 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:15:0x0061  */
        /* JADX WARN: Removed duplicated region for block: B:18:0x006e  */
        /* JADX WARN: Removed duplicated region for block: B:22:0x0085  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0081 -> B:12:0x0054). Please submit an issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(@m8.g java.lang.Object r13) {
            /*
                r12 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r12.label
                r2 = 2
                r3 = 1
                r4 = 0
                if (r1 == 0) goto L32
                if (r1 == r3) goto L25
                if (r1 != r2) goto L1d
                java.lang.Object r1 = r12.L$1
                kotlinx.coroutines.channels.o r1 = (kotlinx.coroutines.channels.o) r1
                java.lang.Object r5 = r12.L$0
                kotlinx.coroutines.j2 r5 = (kotlinx.coroutines.j2) r5
                kotlin.ResultKt.throwOnFailure(r13)
                r13 = r1
                r1 = r5
                goto L53
            L1d:
                java.lang.IllegalStateException r13 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r13.<init>(r0)
                throw r13
            L25:
                java.lang.Object r1 = r12.L$1
                kotlinx.coroutines.channels.o r1 = (kotlinx.coroutines.channels.o) r1
                java.lang.Object r5 = r12.L$0
                kotlinx.coroutines.j2 r5 = (kotlinx.coroutines.j2) r5
                kotlin.ResultKt.throwOnFailure(r13)
                r6 = r12
                goto L66
            L32:
                kotlin.ResultKt.throwOnFailure(r13)
                java.lang.Object r13 = r12.L$0
                r5 = r13
                kotlinx.coroutines.s0 r5 = (kotlinx.coroutines.s0) r5
                r13 = 0
                r1 = 6
                kotlinx.coroutines.channels.m r13 = kotlinx.coroutines.channels.p.d(r13, r4, r4, r1, r4)
                r6 = 0
                r7 = 0
                androidx.paging.SimpleChannelFlowKt$simpleChannelFlow$1$1$producer$1 r8 = new androidx.paging.SimpleChannelFlowKt$simpleChannelFlow$1$1$producer$1
                kotlin.jvm.functions.Function2<androidx.paging.SimpleProducerScope<T>, kotlin.coroutines.Continuation<? super kotlin.Unit>, java.lang.Object> r1 = r12.$block
                r8.<init>(r13, r1, r4)
                r9 = 3
                r10 = 0
                kotlinx.coroutines.j2 r1 = kotlinx.coroutines.j.e(r5, r6, r7, r8, r9, r10)
                kotlinx.coroutines.channels.o r13 = r13.iterator()
            L53:
                r5 = r12
            L54:
                r5.L$0 = r1
                r5.L$1 = r13
                r5.label = r3
                java.lang.Object r6 = r13.b(r5)
                if (r6 != r0) goto L61
                return r0
            L61:
                r11 = r1
                r1 = r13
                r13 = r6
                r6 = r5
                r5 = r11
            L66:
                java.lang.Boolean r13 = (java.lang.Boolean) r13
                boolean r13 = r13.booleanValue()
                if (r13 == 0) goto L85
                java.lang.Object r13 = r1.next()
                kotlinx.coroutines.flow.j<T> r7 = r6.$$this$flow
                r6.L$0 = r5
                r6.L$1 = r1
                r6.label = r2
                java.lang.Object r13 = r7.emit(r13, r6)
                if (r13 != r0) goto L81
                return r0
            L81:
                r13 = r1
                r1 = r5
                r5 = r6
                goto L54
            L85:
                kotlinx.coroutines.j2.a.b(r5, r4, r3, r4)
                kotlin.Unit r13 = kotlin.Unit.INSTANCE
                return r13
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.paging.SimpleChannelFlowKt$simpleChannelFlow$1.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public SimpleChannelFlowKt$simpleChannelFlow$1(Function2<? super SimpleProducerScope<T>, ? super Continuation<? super Unit>, ? extends Object> function2, Continuation<? super SimpleChannelFlowKt$simpleChannelFlow$1> continuation) {
        super(2, continuation);
        this.$block = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @g
    public final Continuation<Unit> create(@h Object obj, @g Continuation<?> continuation) {
        SimpleChannelFlowKt$simpleChannelFlow$1 simpleChannelFlowKt$simpleChannelFlow$1 = new SimpleChannelFlowKt$simpleChannelFlow$1(this.$block, continuation);
        simpleChannelFlowKt$simpleChannelFlow$1.L$0 = obj;
        return simpleChannelFlowKt$simpleChannelFlow$1;
    }

    @Override // kotlin.jvm.functions.Function2
    @h
    public final Object invoke(@g j<? super T> jVar, @h Continuation<? super Unit> continuation) {
        return ((SimpleChannelFlowKt$simpleChannelFlow$1) create(jVar, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @h
    public final Object invokeSuspend(@g Object obj) {
        Object coroutine_suspended;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i4 = this.label;
        if (i4 == 0) {
            ResultKt.throwOnFailure(obj);
            AnonymousClass1 anonymousClass1 = new AnonymousClass1((j) this.L$0, this.$block, null);
            this.label = 1;
            if (t0.g(anonymousClass1, this) == coroutine_suspended) {
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

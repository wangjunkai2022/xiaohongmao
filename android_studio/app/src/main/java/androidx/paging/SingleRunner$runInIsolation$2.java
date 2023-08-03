package androidx.paging;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.s0;
import m8.g;
import m8.h;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SingleRunner.kt */
@Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "androidx.paging.SingleRunner$runInIsolation$2", f = "SingleRunner.kt", i = {0, 1}, l = {53, 59, 61, 61}, m = "invokeSuspend", n = {"myJob", "myJob"}, s = {"L$0", "L$0"})
/* loaded from: classes.dex */
public final class SingleRunner$runInIsolation$2 extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {
    final /* synthetic */ Function1<Continuation<? super Unit>, Object> $block;
    final /* synthetic */ int $priority;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ SingleRunner this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public SingleRunner$runInIsolation$2(SingleRunner singleRunner, int i4, Function1<? super Continuation<? super Unit>, ? extends Object> function1, Continuation<? super SingleRunner$runInIsolation$2> continuation) {
        super(2, continuation);
        this.this$0 = singleRunner;
        this.$priority = i4;
        this.$block = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @g
    public final Continuation<Unit> create(@h Object obj, @g Continuation<?> continuation) {
        SingleRunner$runInIsolation$2 singleRunner$runInIsolation$2 = new SingleRunner$runInIsolation$2(this.this$0, this.$priority, this.$block, continuation);
        singleRunner$runInIsolation$2.L$0 = obj;
        return singleRunner$runInIsolation$2;
    }

    @Override // kotlin.jvm.functions.Function2
    @h
    public final Object invoke(@g s0 s0Var, @h Continuation<? super Unit> continuation) {
        return ((SingleRunner$runInIsolation$2) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:31:0x008d A[RETURN] */
    /* JADX WARN: Type inference failed for: r1v0, types: [int] */
    /* JADX WARN: Type inference failed for: r1v1, types: [kotlinx.coroutines.j2] */
    /* JADX WARN: Type inference failed for: r1v14 */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v9, types: [kotlinx.coroutines.j2] */
    /* JADX WARN: Type inference failed for: r3v2, types: [androidx.paging.SingleRunner$Holder] */
    /* JADX WARN: Type inference failed for: r9v15, types: [androidx.paging.SingleRunner$Holder] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(@m8.g java.lang.Object r9) {
        /*
            r8 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r8.label
            r2 = 4
            r3 = 3
            r4 = 2
            r5 = 1
            if (r1 == 0) goto L3c
            if (r1 == r5) goto L34
            if (r1 == r4) goto L2a
            if (r1 == r3) goto L25
            if (r1 == r2) goto L1c
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r0)
            throw r9
        L1c:
            java.lang.Object r0 = r8.L$0
            java.lang.Throwable r0 = (java.lang.Throwable) r0
            kotlin.ResultKt.throwOnFailure(r9)
            goto La0
        L25:
            kotlin.ResultKt.throwOnFailure(r9)
            goto La1
        L2a:
            java.lang.Object r1 = r8.L$0
            kotlinx.coroutines.j2 r1 = (kotlinx.coroutines.j2) r1
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Throwable -> L32
            goto L7c
        L32:
            r9 = move-exception
            goto L8e
        L34:
            java.lang.Object r1 = r8.L$0
            kotlinx.coroutines.j2 r1 = (kotlinx.coroutines.j2) r1
            kotlin.ResultKt.throwOnFailure(r9)
            goto L67
        L3c:
            kotlin.ResultKt.throwOnFailure(r9)
            java.lang.Object r9 = r8.L$0
            kotlinx.coroutines.s0 r9 = (kotlinx.coroutines.s0) r9
            kotlin.coroutines.CoroutineContext r9 = r9.getCoroutineContext()
            kotlinx.coroutines.j2$b r1 = kotlinx.coroutines.j2.f86331k2
            kotlin.coroutines.CoroutineContext$Element r9 = r9.get(r1)
            if (r9 == 0) goto La4
            kotlinx.coroutines.j2 r9 = (kotlinx.coroutines.j2) r9
            androidx.paging.SingleRunner r1 = r8.this$0
            androidx.paging.SingleRunner$Holder r1 = androidx.paging.SingleRunner.access$getHolder$p(r1)
            int r6 = r8.$priority
            r8.L$0 = r9
            r8.label = r5
            java.lang.Object r1 = r1.tryEnqueue(r6, r9, r8)
            if (r1 != r0) goto L64
            return r0
        L64:
            r7 = r1
            r1 = r9
            r9 = r7
        L67:
            java.lang.Boolean r9 = (java.lang.Boolean) r9
            boolean r9 = r9.booleanValue()
            if (r9 == 0) goto La1
            kotlin.jvm.functions.Function1<kotlin.coroutines.Continuation<? super kotlin.Unit>, java.lang.Object> r9 = r8.$block     // Catch: java.lang.Throwable -> L32
            r8.L$0 = r1     // Catch: java.lang.Throwable -> L32
            r8.label = r4     // Catch: java.lang.Throwable -> L32
            java.lang.Object r9 = r9.invoke(r8)     // Catch: java.lang.Throwable -> L32
            if (r9 != r0) goto L7c
            return r0
        L7c:
            androidx.paging.SingleRunner r9 = r8.this$0
            androidx.paging.SingleRunner$Holder r9 = androidx.paging.SingleRunner.access$getHolder$p(r9)
            r2 = 0
            r8.L$0 = r2
            r8.label = r3
            java.lang.Object r9 = r9.onFinish(r1, r8)
            if (r9 != r0) goto La1
            return r0
        L8e:
            androidx.paging.SingleRunner r3 = r8.this$0
            androidx.paging.SingleRunner$Holder r3 = androidx.paging.SingleRunner.access$getHolder$p(r3)
            r8.L$0 = r9
            r8.label = r2
            java.lang.Object r1 = r3.onFinish(r1, r8)
            if (r1 != r0) goto L9f
            return r0
        L9f:
            r0 = r9
        La0:
            throw r0
        La1:
            kotlin.Unit r9 = kotlin.Unit.INSTANCE
            return r9
        La4:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r0 = "Internal error. coroutineScope should've created a job."
            java.lang.String r0 = r0.toString()
            r9.<init>(r0)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.paging.SingleRunner$runInIsolation$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}

package kotlinx.coroutines.flow;

import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SharingStarted.kt */
@Metadata(bv = {}, d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\b\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0012\u001a\u00020\u000f\u0012\u0006\u0010\u0014\u001a\u00020\u000f¢\u0006\u0004\b\u0015\u0010\u0016J\u001c\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0016J\b\u0010\t\u001a\u00020\bH\u0016J\u0013\u0010\r\u001a\u00020\f2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0096\u0002J\b\u0010\u000e\u001a\u00020\u0003H\u0017R\u0014\u0010\u0012\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0014\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0011¨\u0006\u0017"}, d2 = {"Lkotlinx/coroutines/flow/g0;", "Lkotlinx/coroutines/flow/c0;", "Lkotlinx/coroutines/flow/h0;", "", "subscriptionCount", "Lkotlinx/coroutines/flow/i;", "Lkotlinx/coroutines/flow/SharingCommand;", "a", "", "toString", "", "other", "", "equals", "hashCode", "", "b", "J", "stopTimeout", "c", "replayExpiration", "<init>", "(JJ)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class g0 implements c0 {

    /* renamed from: b  reason: collision with root package name */
    private final long f85878b;

    /* renamed from: c  reason: collision with root package name */
    private final long f85879c;

    /* compiled from: SharingStarted.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0005\u001a\u00020\u0004*\b\u0012\u0004\u0012\u00020\u00010\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\u008a@"}, d2 = {"Lkotlinx/coroutines/flow/j;", "Lkotlinx/coroutines/flow/SharingCommand;", "", "count", "", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    @DebugMetadata(c = "kotlinx.coroutines.flow.StartedWhileSubscribed$command$1", f = "SharingStarted.kt", i = {1, 2, 3}, l = {178, com.facebook.imagepipeline.common.e.f12205e, 182, 183, 185}, m = "invokeSuspend", n = {"$this$transformLatest", "$this$transformLatest", "$this$transformLatest"}, s = {"L$0", "L$0", "L$0"})
    /* loaded from: classes4.dex */
    static final class a extends SuspendLambda implements Function3<j<? super SharingCommand>, Integer, Continuation<? super Unit>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f85880a;

        /* renamed from: b  reason: collision with root package name */
        private /* synthetic */ Object f85881b;

        /* renamed from: c  reason: collision with root package name */
        /* synthetic */ int f85882c;

        a(Continuation<? super a> continuation) {
            super(3, continuation);
        }

        @m8.h
        public final Object h(@m8.g j<? super SharingCommand> jVar, int i4, @m8.h Continuation<? super Unit> continuation) {
            a aVar = new a(continuation);
            aVar.f85881b = jVar;
            aVar.f85882c = i4;
            return aVar.invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.jvm.functions.Function3
        public /* bridge */ /* synthetic */ Object invoke(j<? super SharingCommand> jVar, Integer num, Continuation<? super Unit> continuation) {
            return h(jVar, num.intValue(), continuation);
        }

        /* JADX WARN: Removed duplicated region for block: B:26:0x0070  */
        /* JADX WARN: Removed duplicated region for block: B:31:0x008d A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:34:0x009b A[RETURN] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(@m8.g java.lang.Object r10) {
            /*
                r9 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r9.f85880a
                r2 = 5
                r3 = 4
                r4 = 3
                r5 = 2
                r6 = 1
                if (r1 == 0) goto L3c
                if (r1 == r6) goto L38
                if (r1 == r5) goto L30
                if (r1 == r4) goto L28
                if (r1 == r3) goto L20
                if (r1 != r2) goto L18
                goto L38
            L18:
                java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r10.<init>(r0)
                throw r10
            L20:
                java.lang.Object r1 = r9.f85881b
                kotlinx.coroutines.flow.j r1 = (kotlinx.coroutines.flow.j) r1
                kotlin.ResultKt.throwOnFailure(r10)
                goto L8e
            L28:
                java.lang.Object r1 = r9.f85881b
                kotlinx.coroutines.flow.j r1 = (kotlinx.coroutines.flow.j) r1
                kotlin.ResultKt.throwOnFailure(r10)
                goto L7d
            L30:
                java.lang.Object r1 = r9.f85881b
                kotlinx.coroutines.flow.j r1 = (kotlinx.coroutines.flow.j) r1
                kotlin.ResultKt.throwOnFailure(r10)
                goto L64
            L38:
                kotlin.ResultKt.throwOnFailure(r10)
                goto L9c
            L3c:
                kotlin.ResultKt.throwOnFailure(r10)
                java.lang.Object r10 = r9.f85881b
                r1 = r10
                kotlinx.coroutines.flow.j r1 = (kotlinx.coroutines.flow.j) r1
                int r10 = r9.f85882c
                if (r10 <= 0) goto L53
                kotlinx.coroutines.flow.SharingCommand r10 = kotlinx.coroutines.flow.SharingCommand.START
                r9.f85880a = r6
                java.lang.Object r10 = r1.emit(r10, r9)
                if (r10 != r0) goto L9c
                return r0
            L53:
                kotlinx.coroutines.flow.g0 r10 = kotlinx.coroutines.flow.g0.this
                long r6 = kotlinx.coroutines.flow.g0.c(r10)
                r9.f85881b = r1
                r9.f85880a = r5
                java.lang.Object r10 = kotlinx.coroutines.b1.b(r6, r9)
                if (r10 != r0) goto L64
                return r0
            L64:
                kotlinx.coroutines.flow.g0 r10 = kotlinx.coroutines.flow.g0.this
                long r5 = kotlinx.coroutines.flow.g0.b(r10)
                r7 = 0
                int r10 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
                if (r10 <= 0) goto L8e
                kotlinx.coroutines.flow.SharingCommand r10 = kotlinx.coroutines.flow.SharingCommand.STOP
                r9.f85881b = r1
                r9.f85880a = r4
                java.lang.Object r10 = r1.emit(r10, r9)
                if (r10 != r0) goto L7d
                return r0
            L7d:
                kotlinx.coroutines.flow.g0 r10 = kotlinx.coroutines.flow.g0.this
                long r4 = kotlinx.coroutines.flow.g0.b(r10)
                r9.f85881b = r1
                r9.f85880a = r3
                java.lang.Object r10 = kotlinx.coroutines.b1.b(r4, r9)
                if (r10 != r0) goto L8e
                return r0
            L8e:
                kotlinx.coroutines.flow.SharingCommand r10 = kotlinx.coroutines.flow.SharingCommand.STOP_AND_RESET_REPLAY_CACHE
                r3 = 0
                r9.f85881b = r3
                r9.f85880a = r2
                java.lang.Object r10 = r1.emit(r10, r9)
                if (r10 != r0) goto L9c
                return r0
            L9c:
                kotlin.Unit r10 = kotlin.Unit.INSTANCE
                return r10
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.g0.a.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* compiled from: SharingStarted.kt */
    @Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/flow/SharingCommand;", "it", "", "<anonymous>"}, k = 3, mv = {1, 6, 0})
    @DebugMetadata(c = "kotlinx.coroutines.flow.StartedWhileSubscribed$command$2", f = "SharingStarted.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* loaded from: classes4.dex */
    static final class b extends SuspendLambda implements Function2<SharingCommand, Continuation<? super Boolean>, Object> {

        /* renamed from: a  reason: collision with root package name */
        int f85884a;

        /* renamed from: b  reason: collision with root package name */
        /* synthetic */ Object f85885b;

        b(Continuation<? super b> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            b bVar = new b(continuation);
            bVar.f85885b = obj;
            return bVar;
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        /* renamed from: h */
        public final Object invoke(@m8.g SharingCommand sharingCommand, @m8.h Continuation<? super Boolean> continuation) {
            return ((b) create(sharingCommand, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.f85884a == 0) {
                ResultKt.throwOnFailure(obj);
                return Boxing.boxBoolean(((SharingCommand) this.f85885b) != SharingCommand.START);
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    public g0(long j4, long j10) {
        this.f85878b = j4;
        this.f85879c = j10;
        if (!(j4 >= 0)) {
            throw new IllegalArgumentException(("stopTimeout(" + j4 + " ms) cannot be negative").toString());
        }
        if (j10 >= 0) {
            return;
        }
        throw new IllegalArgumentException(("replayExpiration(" + j10 + " ms) cannot be negative").toString());
    }

    @Override // kotlinx.coroutines.flow.c0
    @m8.g
    public i<SharingCommand> a(@m8.g h0<Integer> h0Var) {
        return k.g0(k.k0(k.b2(h0Var, new a(null)), new b(null)));
    }

    public boolean equals(@m8.h Object obj) {
        if (obj instanceof g0) {
            g0 g0Var = (g0) obj;
            if (this.f85878b == g0Var.f85878b && this.f85879c == g0Var.f85879c) {
                return true;
            }
        }
        return false;
    }

    @IgnoreJRERequirement
    public int hashCode() {
        return (a5.a.a(this.f85878b) * 31) + a5.a.a(this.f85879c);
    }

    @m8.g
    public String toString() {
        List createListBuilder;
        List build;
        String joinToString$default;
        createListBuilder = CollectionsKt__CollectionsJVMKt.createListBuilder(2);
        if (this.f85878b > 0) {
            createListBuilder.add("stopTimeout=" + this.f85878b + "ms");
        }
        if (this.f85879c < Long.MAX_VALUE) {
            createListBuilder.add("replayExpiration=" + this.f85879c + "ms");
        }
        build = CollectionsKt__CollectionsJVMKt.build(createListBuilder);
        StringBuilder sb = new StringBuilder();
        sb.append("SharingStarted.WhileSubscribed(");
        joinToString$default = CollectionsKt___CollectionsKt.joinToString$default(build, null, null, null, 0, null, null, 63, null);
        sb.append(joinToString$default);
        sb.append(')');
        return sb.toString();
    }
}

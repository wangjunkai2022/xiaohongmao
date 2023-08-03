package androidx.paging;

import io.sentry.protocol.t;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.j2;
import kotlinx.coroutines.sync.c;
import kotlinx.coroutines.sync.e;
import m8.g;
import m8.h;

/* compiled from: SingleRunner.kt */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u0000 \u00102\u00020\u0001:\u0003\u000f\u0010\u0011B\u000f\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J9\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\n2\u001c\u0010\u000b\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\r\u0012\u0006\u0012\u0004\u0018\u00010\u00010\fH\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u000eR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0012"}, d2 = {"Landroidx/paging/SingleRunner;", "", "cancelPreviousInEqualPriority", "", "(Z)V", "holder", "Landroidx/paging/SingleRunner$Holder;", "runInIsolation", "", t.b.f83857b, "", "block", "Lkotlin/Function1;", "Lkotlin/coroutines/Continuation;", "(ILkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "CancelIsolatedRunnerException", "Companion", "Holder", "paging-common"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class SingleRunner {
    @g
    public static final Companion Companion = new Companion(null);
    public static final int DEFAULT_PRIORITY = 0;
    @g
    private final Holder holder;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SingleRunner.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00060\u0001j\u0002`\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/paging/SingleRunner$CancelIsolatedRunnerException;", "Ljava/util/concurrent/CancellationException;", "Lkotlinx/coroutines/CancellationException;", "runner", "Landroidx/paging/SingleRunner;", "(Landroidx/paging/SingleRunner;)V", "getRunner", "()Landroidx/paging/SingleRunner;", "paging-common"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class CancelIsolatedRunnerException extends CancellationException {
        @g
        private final SingleRunner runner;

        public CancelIsolatedRunnerException(@g SingleRunner runner) {
            Intrinsics.checkNotNullParameter(runner, "runner");
            this.runner = runner;
        }

        @g
        public final SingleRunner getRunner() {
            return this.runner;
        }
    }

    /* compiled from: SingleRunner.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Landroidx/paging/SingleRunner$Companion;", "", "()V", "DEFAULT_PRIORITY", "", "paging-common"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SingleRunner.kt */
    @Metadata(bv = {}, d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u0006¢\u0006\u0004\b\u0018\u0010\u0019J#\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0086@ø\u0001\u0000¢\u0006\u0004\b\u0007\u0010\bJ\u001b\u0010\n\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u0004H\u0086@ø\u0001\u0000¢\u0006\u0004\b\n\u0010\u000bR\u0014\u0010\r\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0014\u0010\u000f\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0012\u001a\u00020\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0016\u0010\u0016\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001a"}, d2 = {"Landroidx/paging/SingleRunner$Holder;", "", "", t.b.f83857b, "Lkotlinx/coroutines/j2;", "job", "", "tryEnqueue", "(ILkotlinx/coroutines/j2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "onFinish", "(Lkotlinx/coroutines/j2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Landroidx/paging/SingleRunner;", "singleRunner", "Landroidx/paging/SingleRunner;", "cancelPreviousInEqualPriority", "Z", "Lkotlinx/coroutines/sync/c;", "mutex", "Lkotlinx/coroutines/sync/c;", "previous", "Lkotlinx/coroutines/j2;", "previousPriority", "I", "<init>", "(Landroidx/paging/SingleRunner;Z)V", "paging-common"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes.dex */
    public static final class Holder {
        private final boolean cancelPreviousInEqualPriority;
        @g
        private final c mutex;
        @h
        private j2 previous;
        private int previousPriority;
        @g
        private final SingleRunner singleRunner;

        public Holder(@g SingleRunner singleRunner, boolean z9) {
            Intrinsics.checkNotNullParameter(singleRunner, "singleRunner");
            this.singleRunner = singleRunner;
            this.cancelPreviousInEqualPriority = z9;
            this.mutex = e.b(false, 1, null);
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
        /* JADX WARN: Removed duplicated region for block: B:14:0x0040  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x0059 A[Catch: all -> 0x0061, TryCatch #0 {all -> 0x0061, blocks: (B:18:0x0055, B:20:0x0059, B:21:0x005b), top: B:27:0x0055 }] */
        @m8.h
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object onFinish(@m8.g kotlinx.coroutines.j2 r6, @m8.g kotlin.coroutines.Continuation<? super kotlin.Unit> r7) {
            /*
                r5 = this;
                boolean r0 = r7 instanceof androidx.paging.SingleRunner$Holder$onFinish$1
                if (r0 == 0) goto L13
                r0 = r7
                androidx.paging.SingleRunner$Holder$onFinish$1 r0 = (androidx.paging.SingleRunner$Holder$onFinish$1) r0
                int r1 = r0.label
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.label = r1
                goto L18
            L13:
                androidx.paging.SingleRunner$Holder$onFinish$1 r0 = new androidx.paging.SingleRunner$Holder$onFinish$1
                r0.<init>(r5, r7)
            L18:
                java.lang.Object r7 = r0.result
                java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r2 = r0.label
                r3 = 1
                r4 = 0
                if (r2 == 0) goto L40
                if (r2 != r3) goto L38
                java.lang.Object r6 = r0.L$2
                kotlinx.coroutines.sync.c r6 = (kotlinx.coroutines.sync.c) r6
                java.lang.Object r1 = r0.L$1
                kotlinx.coroutines.j2 r1 = (kotlinx.coroutines.j2) r1
                java.lang.Object r0 = r0.L$0
                androidx.paging.SingleRunner$Holder r0 = (androidx.paging.SingleRunner.Holder) r0
                kotlin.ResultKt.throwOnFailure(r7)
                r7 = r6
                r6 = r1
                goto L55
            L38:
                java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
                java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
                r6.<init>(r7)
                throw r6
            L40:
                kotlin.ResultKt.throwOnFailure(r7)
                kotlinx.coroutines.sync.c r7 = r5.mutex
                r0.L$0 = r5
                r0.L$1 = r6
                r0.L$2 = r7
                r0.label = r3
                java.lang.Object r0 = r7.c(r4, r0)
                if (r0 != r1) goto L54
                return r1
            L54:
                r0 = r5
            L55:
                kotlinx.coroutines.j2 r1 = r0.previous     // Catch: java.lang.Throwable -> L61
                if (r6 != r1) goto L5b
                r0.previous = r4     // Catch: java.lang.Throwable -> L61
            L5b:
                kotlin.Unit r6 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L61
                r7.d(r4)
                return r6
            L61:
                r6 = move-exception
                r7.d(r4)
                throw r6
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.paging.SingleRunner.Holder.onFinish(kotlinx.coroutines.j2, kotlin.coroutines.Continuation):java.lang.Object");
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x0059  */
        /* JADX WARN: Removed duplicated region for block: B:39:0x0098  */
        /* JADX WARN: Removed duplicated region for block: B:40:0x0099 A[Catch: all -> 0x003c, TryCatch #0 {all -> 0x003c, blocks: (B:13:0x0037, B:45:0x00ae, B:46:0x00b2, B:24:0x0072, B:26:0x0076, B:28:0x007c, B:31:0x0082, B:40:0x0099, B:37:0x008c), top: B:51:0x0023 }] */
        /* JADX WARN: Type inference failed for: r11v0, types: [kotlinx.coroutines.j2, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r11v1, types: [kotlinx.coroutines.sync.c] */
        /* JADX WARN: Type inference failed for: r11v16 */
        /* JADX WARN: Type inference failed for: r11v17 */
        /* JADX WARN: Type inference failed for: r11v4, types: [kotlinx.coroutines.sync.c] */
        @m8.h
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object tryEnqueue(int r10, @m8.g kotlinx.coroutines.j2 r11, @m8.g kotlin.coroutines.Continuation<? super java.lang.Boolean> r12) {
            /*
                r9 = this;
                boolean r0 = r12 instanceof androidx.paging.SingleRunner$Holder$tryEnqueue$1
                if (r0 == 0) goto L13
                r0 = r12
                androidx.paging.SingleRunner$Holder$tryEnqueue$1 r0 = (androidx.paging.SingleRunner$Holder$tryEnqueue$1) r0
                int r1 = r0.label
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.label = r1
                goto L18
            L13:
                androidx.paging.SingleRunner$Holder$tryEnqueue$1 r0 = new androidx.paging.SingleRunner$Holder$tryEnqueue$1
                r0.<init>(r9, r12)
            L18:
                java.lang.Object r12 = r0.result
                java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r2 = r0.label
                r3 = 2
                r4 = 0
                r5 = 1
                if (r2 == 0) goto L59
                if (r2 == r5) goto L47
                if (r2 != r3) goto L3f
                int r10 = r0.I$0
                java.lang.Object r11 = r0.L$2
                kotlinx.coroutines.sync.c r11 = (kotlinx.coroutines.sync.c) r11
                java.lang.Object r1 = r0.L$1
                kotlinx.coroutines.j2 r1 = (kotlinx.coroutines.j2) r1
                java.lang.Object r0 = r0.L$0
                androidx.paging.SingleRunner$Holder r0 = (androidx.paging.SingleRunner.Holder) r0
                kotlin.ResultKt.throwOnFailure(r12)     // Catch: java.lang.Throwable -> L3c
                goto Lac
            L3c:
                r10 = move-exception
                goto Lba
            L3f:
                java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
                java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
                r10.<init>(r11)
                throw r10
            L47:
                int r10 = r0.I$0
                java.lang.Object r11 = r0.L$2
                kotlinx.coroutines.sync.c r11 = (kotlinx.coroutines.sync.c) r11
                java.lang.Object r2 = r0.L$1
                kotlinx.coroutines.j2 r2 = (kotlinx.coroutines.j2) r2
                java.lang.Object r6 = r0.L$0
                androidx.paging.SingleRunner$Holder r6 = (androidx.paging.SingleRunner.Holder) r6
                kotlin.ResultKt.throwOnFailure(r12)
                goto L72
            L59:
                kotlin.ResultKt.throwOnFailure(r12)
                kotlinx.coroutines.sync.c r12 = r9.mutex
                r0.L$0 = r9
                r0.L$1 = r11
                r0.L$2 = r12
                r0.I$0 = r10
                r0.label = r5
                java.lang.Object r2 = r12.c(r4, r0)
                if (r2 != r1) goto L6f
                return r1
            L6f:
                r6 = r9
                r2 = r11
                r11 = r12
            L72:
                kotlinx.coroutines.j2 r12 = r6.previous     // Catch: java.lang.Throwable -> L3c
                if (r12 == 0) goto L89
                boolean r7 = r12.a()     // Catch: java.lang.Throwable -> L3c
                if (r7 == 0) goto L89
                int r7 = r6.previousPriority     // Catch: java.lang.Throwable -> L3c
                if (r7 < r10) goto L89
                if (r7 != r10) goto L87
                boolean r7 = r6.cancelPreviousInEqualPriority     // Catch: java.lang.Throwable -> L3c
                if (r7 == 0) goto L87
                goto L89
            L87:
                r5 = 0
                goto Lb2
            L89:
                if (r12 != 0) goto L8c
                goto L96
            L8c:
                androidx.paging.SingleRunner$CancelIsolatedRunnerException r7 = new androidx.paging.SingleRunner$CancelIsolatedRunnerException     // Catch: java.lang.Throwable -> L3c
                androidx.paging.SingleRunner r8 = r6.singleRunner     // Catch: java.lang.Throwable -> L3c
                r7.<init>(r8)     // Catch: java.lang.Throwable -> L3c
                r12.d(r7)     // Catch: java.lang.Throwable -> L3c
            L96:
                if (r12 != 0) goto L99
                goto Lae
            L99:
                r0.L$0 = r6     // Catch: java.lang.Throwable -> L3c
                r0.L$1 = r2     // Catch: java.lang.Throwable -> L3c
                r0.L$2 = r11     // Catch: java.lang.Throwable -> L3c
                r0.I$0 = r10     // Catch: java.lang.Throwable -> L3c
                r0.label = r3     // Catch: java.lang.Throwable -> L3c
                java.lang.Object r12 = r12.X(r0)     // Catch: java.lang.Throwable -> L3c
                if (r12 != r1) goto Laa
                return r1
            Laa:
                r1 = r2
                r0 = r6
            Lac:
                r6 = r0
                r2 = r1
            Lae:
                r6.previous = r2     // Catch: java.lang.Throwable -> L3c
                r6.previousPriority = r10     // Catch: java.lang.Throwable -> L3c
            Lb2:
                java.lang.Boolean r10 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r5)     // Catch: java.lang.Throwable -> L3c
                r11.d(r4)
                return r10
            Lba:
                r11.d(r4)
                throw r10
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.paging.SingleRunner.Holder.tryEnqueue(int, kotlinx.coroutines.j2, kotlin.coroutines.Continuation):java.lang.Object");
        }
    }

    public SingleRunner() {
        this(false, 1, null);
    }

    public SingleRunner(boolean z9) {
        this.holder = new Holder(this, z9);
    }

    public static /* synthetic */ Object runInIsolation$default(SingleRunner singleRunner, int i4, Function1 function1, Continuation continuation, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i4 = 0;
        }
        return singleRunner.runInIsolation(i4, function1, continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0056  */
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object runInIsolation(int r5, @m8.g kotlin.jvm.functions.Function1<? super kotlin.coroutines.Continuation<? super kotlin.Unit>, ? extends java.lang.Object> r6, @m8.g kotlin.coroutines.Continuation<? super kotlin.Unit> r7) {
        /*
            r4 = this;
            boolean r0 = r7 instanceof androidx.paging.SingleRunner$runInIsolation$1
            if (r0 == 0) goto L13
            r0 = r7
            androidx.paging.SingleRunner$runInIsolation$1 r0 = (androidx.paging.SingleRunner$runInIsolation$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.paging.SingleRunner$runInIsolation$1 r0 = new androidx.paging.SingleRunner$runInIsolation$1
            r0.<init>(r4, r7)
        L18:
            java.lang.Object r7 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            java.lang.Object r5 = r0.L$0
            androidx.paging.SingleRunner r5 = (androidx.paging.SingleRunner) r5
            kotlin.ResultKt.throwOnFailure(r7)     // Catch: androidx.paging.SingleRunner.CancelIsolatedRunnerException -> L2d
            goto L53
        L2d:
            r6 = move-exception
            goto L4d
        L2f:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L37:
            kotlin.ResultKt.throwOnFailure(r7)
            androidx.paging.SingleRunner$runInIsolation$2 r7 = new androidx.paging.SingleRunner$runInIsolation$2     // Catch: androidx.paging.SingleRunner.CancelIsolatedRunnerException -> L4b
            r2 = 0
            r7.<init>(r4, r5, r6, r2)     // Catch: androidx.paging.SingleRunner.CancelIsolatedRunnerException -> L4b
            r0.L$0 = r4     // Catch: androidx.paging.SingleRunner.CancelIsolatedRunnerException -> L4b
            r0.label = r3     // Catch: androidx.paging.SingleRunner.CancelIsolatedRunnerException -> L4b
            java.lang.Object r5 = kotlinx.coroutines.t0.g(r7, r0)     // Catch: androidx.paging.SingleRunner.CancelIsolatedRunnerException -> L4b
            if (r5 != r1) goto L53
            return r1
        L4b:
            r6 = move-exception
            r5 = r4
        L4d:
            androidx.paging.SingleRunner r7 = r6.getRunner()
            if (r7 != r5) goto L56
        L53:
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        L56:
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.paging.SingleRunner.runInIsolation(int, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public /* synthetic */ SingleRunner(boolean z9, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? true : z9);
    }
}

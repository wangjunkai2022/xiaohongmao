package androidx.room;

import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.j2;
import kotlinx.coroutines.r;

/* compiled from: RoomDatabase.kt */
@Metadata(bv = {}, d1 = {"\u00000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a;\u0010\u0006\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\u00020\u00012\u001c\u0010\u0005\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0002H\u0086@ø\u0001\u0000¢\u0006\u0004\b\u0006\u0010\u0007\u001a\u0017\u0010\t\u001a\u00020\b*\u00020\u0001H\u0082@ø\u0001\u0000¢\u0006\u0004\b\t\u0010\n\u001a\u001f\u0010\u000f\u001a\u00020\u000e*\u00020\u000b2\u0006\u0010\r\u001a\u00020\fH\u0082@ø\u0001\u0000¢\u0006\u0004\b\u000f\u0010\u0010\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0011"}, d2 = {"R", "Landroidx/room/RoomDatabase;", "Lkotlin/Function1;", "Lkotlin/coroutines/Continuation;", "", "block", "withTransaction", "(Landroidx/room/RoomDatabase;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlin/coroutines/CoroutineContext;", "createTransactionContext", "(Landroidx/room/RoomDatabase;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Ljava/util/concurrent/Executor;", "Lkotlinx/coroutines/j2;", "controlJob", "Lkotlin/coroutines/ContinuationInterceptor;", "acquireTransactionThread", "(Ljava/util/concurrent/Executor;Lkotlinx/coroutines/j2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "room-ktx_release"}, k = 2, mv = {1, 7, 1})
/* loaded from: classes.dex */
public final class RoomDatabaseKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final Object acquireTransactionThread(Executor executor, final j2 j2Var, Continuation<? super ContinuationInterceptor> continuation) {
        Continuation intercepted;
        Object coroutine_suspended;
        intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
        final r rVar = new r(intercepted, 1);
        rVar.C();
        rVar.k(new RoomDatabaseKt$acquireTransactionThread$2$1(j2Var));
        try {
            executor.execute(new Runnable() { // from class: androidx.room.RoomDatabaseKt$acquireTransactionThread$2$2

                /* compiled from: RoomDatabase.kt */
                @Metadata(bv = {}, d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
                @DebugMetadata(c = "androidx.room.RoomDatabaseKt$acquireTransactionThread$2$2$1", f = "RoomDatabase.kt", i = {}, l = {124}, m = "invokeSuspend", n = {}, s = {})
                /* renamed from: androidx.room.RoomDatabaseKt$acquireTransactionThread$2$2$1  reason: invalid class name */
                /* loaded from: classes.dex */
                static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.s0, Continuation<? super Unit>, Object> {
                    final /* synthetic */ kotlinx.coroutines.q<ContinuationInterceptor> $continuation;
                    final /* synthetic */ j2 $controlJob;
                    private /* synthetic */ Object L$0;
                    int label;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    AnonymousClass1(kotlinx.coroutines.q<? super ContinuationInterceptor> qVar, j2 j2Var, Continuation<? super AnonymousClass1> continuation) {
                        super(2, continuation);
                        this.$continuation = qVar;
                        this.$controlJob = j2Var;
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    @m8.g
                    public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                        AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$continuation, this.$controlJob, continuation);
                        anonymousClass1.L$0 = obj;
                        return anonymousClass1;
                    }

                    @Override // kotlin.jvm.functions.Function2
                    @m8.h
                    public final Object invoke(@m8.g kotlinx.coroutines.s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
                        return ((AnonymousClass1) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    @m8.h
                    public final Object invokeSuspend(@m8.g Object obj) {
                        Object coroutine_suspended;
                        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                        int i4 = this.label;
                        if (i4 == 0) {
                            ResultKt.throwOnFailure(obj);
                            kotlinx.coroutines.q<ContinuationInterceptor> qVar = this.$continuation;
                            Result.Companion companion = Result.Companion;
                            CoroutineContext.Element element = ((kotlinx.coroutines.s0) this.L$0).getCoroutineContext().get(ContinuationInterceptor.Key);
                            Intrinsics.checkNotNull(element);
                            qVar.resumeWith(Result.m70constructorimpl(element));
                            j2 j2Var = this.$controlJob;
                            this.label = 1;
                            if (j2Var.X(this) == coroutine_suspended) {
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

                @Override // java.lang.Runnable
                public final void run() {
                    kotlinx.coroutines.k.b(null, new AnonymousClass1(rVar, j2Var, null), 1, null);
                }
            });
        } catch (RejectedExecutionException e4) {
            rVar.b(new IllegalStateException("Unable to acquire a thread to perform the database transaction.", e4));
        }
        Object A = rVar.A();
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (A == coroutine_suspended) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return A;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0039  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.Object createTransactionContext(androidx.room.RoomDatabase r6, kotlin.coroutines.Continuation<? super kotlin.coroutines.CoroutineContext> r7) {
        /*
            boolean r0 = r7 instanceof androidx.room.RoomDatabaseKt$createTransactionContext$1
            if (r0 == 0) goto L13
            r0 = r7
            androidx.room.RoomDatabaseKt$createTransactionContext$1 r0 = (androidx.room.RoomDatabaseKt$createTransactionContext$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.room.RoomDatabaseKt$createTransactionContext$1 r0 = new androidx.room.RoomDatabaseKt$createTransactionContext$1
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L39
            if (r2 != r3) goto L31
            java.lang.Object r6 = r0.L$1
            kotlinx.coroutines.c0 r6 = (kotlinx.coroutines.c0) r6
            java.lang.Object r0 = r0.L$0
            androidx.room.RoomDatabase r0 = (androidx.room.RoomDatabase) r0
            kotlin.ResultKt.throwOnFailure(r7)
            goto L71
        L31:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L39:
            kotlin.ResultKt.throwOnFailure(r7)
            r7 = 0
            kotlinx.coroutines.c0 r7 = kotlinx.coroutines.m2.c(r7, r3, r7)
            kotlin.coroutines.CoroutineContext r2 = r0.getContext()
            kotlinx.coroutines.j2$b r4 = kotlinx.coroutines.j2.f86331k2
            kotlin.coroutines.CoroutineContext$Element r2 = r2.get(r4)
            kotlinx.coroutines.j2 r2 = (kotlinx.coroutines.j2) r2
            if (r2 == 0) goto L57
            androidx.room.RoomDatabaseKt$createTransactionContext$2 r4 = new androidx.room.RoomDatabaseKt$createTransactionContext$2
            r4.<init>(r7)
            r2.H(r4)
        L57:
            java.util.concurrent.Executor r2 = r6.getTransactionExecutor()
            java.lang.String r4 = "transactionExecutor"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r4)
            r0.L$0 = r6
            r0.L$1 = r7
            r0.label = r3
            java.lang.Object r0 = acquireTransactionThread(r2, r7, r0)
            if (r0 != r1) goto L6d
            return r1
        L6d:
            r5 = r0
            r0 = r6
            r6 = r7
            r7 = r5
        L71:
            kotlin.coroutines.ContinuationInterceptor r7 = (kotlin.coroutines.ContinuationInterceptor) r7
            androidx.room.TransactionElement r1 = new androidx.room.TransactionElement
            r1.<init>(r6, r7)
            java.lang.ThreadLocal r0 = r0.getSuspendingTransactionId()
            java.lang.String r2 = "suspendingTransactionId"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r2)
            int r6 = java.lang.System.identityHashCode(r6)
            java.lang.Integer r6 = kotlin.coroutines.jvm.internal.Boxing.boxInt(r6)
            kotlinx.coroutines.n3 r6 = kotlinx.coroutines.o3.a(r0, r6)
            kotlin.coroutines.CoroutineContext r7 = r7.plus(r1)
            kotlin.coroutines.CoroutineContext r6 = r7.plus(r6)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.RoomDatabaseKt.createTransactionContext(androidx.room.RoomDatabase, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x007a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x007b A[PHI: r7 
      PHI: (r7v11 java.lang.Object) = (r7v8 java.lang.Object), (r7v1 java.lang.Object) binds: [B:26:0x0078, B:12:0x0028] A[DONT_GENERATE, DONT_INLINE], RETURN] */
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final <R> java.lang.Object withTransaction(@m8.g androidx.room.RoomDatabase r5, @m8.g kotlin.jvm.functions.Function1<? super kotlin.coroutines.Continuation<? super R>, ? extends java.lang.Object> r6, @m8.g kotlin.coroutines.Continuation<? super R> r7) {
        /*
            boolean r0 = r7 instanceof androidx.room.RoomDatabaseKt$withTransaction$1
            if (r0 == 0) goto L13
            r0 = r7
            androidx.room.RoomDatabaseKt$withTransaction$1 r0 = (androidx.room.RoomDatabaseKt$withTransaction$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.room.RoomDatabaseKt$withTransaction$1 r0 = new androidx.room.RoomDatabaseKt$withTransaction$1
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L41
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            kotlin.ResultKt.throwOnFailure(r7)
            goto L7b
        L2c:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L34:
            java.lang.Object r5 = r0.L$1
            r6 = r5
            kotlin.jvm.functions.Function1 r6 = (kotlin.jvm.functions.Function1) r6
            java.lang.Object r5 = r0.L$0
            androidx.room.RoomDatabase r5 = (androidx.room.RoomDatabase) r5
            kotlin.ResultKt.throwOnFailure(r7)
            goto L66
        L41:
            kotlin.ResultKt.throwOnFailure(r7)
            kotlin.coroutines.CoroutineContext r7 = r0.getContext()
            androidx.room.TransactionElement$Key r2 = androidx.room.TransactionElement.Key
            kotlin.coroutines.CoroutineContext$Element r7 = r7.get(r2)
            androidx.room.TransactionElement r7 = (androidx.room.TransactionElement) r7
            if (r7 == 0) goto L59
            kotlin.coroutines.ContinuationInterceptor r7 = r7.getTransactionDispatcher$room_ktx_release()
            if (r7 == 0) goto L59
            goto L68
        L59:
            r0.L$0 = r5
            r0.L$1 = r6
            r0.label = r4
            java.lang.Object r7 = createTransactionContext(r5, r0)
            if (r7 != r1) goto L66
            return r1
        L66:
            kotlin.coroutines.CoroutineContext r7 = (kotlin.coroutines.CoroutineContext) r7
        L68:
            androidx.room.RoomDatabaseKt$withTransaction$2 r2 = new androidx.room.RoomDatabaseKt$withTransaction$2
            r4 = 0
            r2.<init>(r5, r6, r4)
            r0.L$0 = r4
            r0.L$1 = r4
            r0.label = r3
            java.lang.Object r7 = kotlinx.coroutines.j.h(r7, r2, r0)
            if (r7 != r1) goto L7b
            return r1
        L7b:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.RoomDatabaseKt.withTransaction(androidx.room.RoomDatabase, kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }
}

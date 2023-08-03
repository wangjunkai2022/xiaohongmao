package androidx.room;

import androidx.room.InvalidationTracker;
import java.util.Set;
import java.util.concurrent.Callable;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: CoroutinesRoom.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0000*\r\u0012\t\u0012\u00078\u0000¢\u0006\u0002\b\u00020\u0001H\u008a@"}, d2 = {"R", "Lkotlinx/coroutines/flow/j;", "Lkotlin/jvm/JvmSuppressWildcards;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
@DebugMetadata(c = "androidx.room.CoroutinesRoom$Companion$createFlow$1", f = "CoroutinesRoom.kt", i = {}, l = {110}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes.dex */
final class CoroutinesRoom$Companion$createFlow$1 extends SuspendLambda implements Function2<kotlinx.coroutines.flow.j<R>, Continuation<? super Unit>, Object> {
    final /* synthetic */ Callable<R> $callable;
    final /* synthetic */ RoomDatabase $db;
    final /* synthetic */ boolean $inTransaction;
    final /* synthetic */ String[] $tableNames;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CoroutinesRoom.kt */
    @Metadata(bv = {}, d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@"}, d2 = {"R", "Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "androidx.room.CoroutinesRoom$Companion$createFlow$1$1", f = "CoroutinesRoom.kt", i = {}, l = {136}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: androidx.room.CoroutinesRoom$Companion$createFlow$1$1  reason: invalid class name */
    /* loaded from: classes.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.s0, Continuation<? super Unit>, Object> {
        final /* synthetic */ kotlinx.coroutines.flow.j<R> $$this$flow;
        final /* synthetic */ Callable<R> $callable;
        final /* synthetic */ RoomDatabase $db;
        final /* synthetic */ boolean $inTransaction;
        final /* synthetic */ String[] $tableNames;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: CoroutinesRoom.kt */
        @Metadata(bv = {}, d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@"}, d2 = {"R", "Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
        @DebugMetadata(c = "androidx.room.CoroutinesRoom$Companion$createFlow$1$1$1", f = "CoroutinesRoom.kt", i = {}, l = {127, com.google.android.exoplayer2.extractor.ts.h0.G}, m = "invokeSuspend", n = {}, s = {})
        /* renamed from: androidx.room.CoroutinesRoom$Companion$createFlow$1$1$1  reason: invalid class name and collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C00201 extends SuspendLambda implements Function2<kotlinx.coroutines.s0, Continuation<? super Unit>, Object> {
            final /* synthetic */ Callable<R> $callable;
            final /* synthetic */ RoomDatabase $db;
            final /* synthetic */ CoroutinesRoom$Companion$createFlow$1$1$observer$1 $observer;
            final /* synthetic */ kotlinx.coroutines.channels.m<Unit> $observerChannel;
            final /* synthetic */ kotlinx.coroutines.channels.m<R> $resultChannel;
            Object L$0;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C00201(RoomDatabase roomDatabase, CoroutinesRoom$Companion$createFlow$1$1$observer$1 coroutinesRoom$Companion$createFlow$1$1$observer$1, kotlinx.coroutines.channels.m<Unit> mVar, Callable<R> callable, kotlinx.coroutines.channels.m<R> mVar2, Continuation<? super C00201> continuation) {
                super(2, continuation);
                this.$db = roomDatabase;
                this.$observer = coroutinesRoom$Companion$createFlow$1$1$observer$1;
                this.$observerChannel = mVar;
                this.$callable = callable;
                this.$resultChannel = mVar2;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.g
            public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
                return new C00201(this.$db, this.$observer, this.$observerChannel, this.$callable, this.$resultChannel, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            @m8.h
            public final Object invoke(@m8.g kotlinx.coroutines.s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
                return ((C00201) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            /* JADX WARN: Removed duplicated region for block: B:19:0x0048 A[RETURN] */
            /* JADX WARN: Removed duplicated region for block: B:20:0x0049  */
            /* JADX WARN: Removed duplicated region for block: B:23:0x0054 A[Catch: all -> 0x007a, TRY_LEAVE, TryCatch #0 {all -> 0x007a, blocks: (B:17:0x003e, B:21:0x004c, B:23:0x0054), top: B:35:0x003e }] */
            /* JADX WARN: Removed duplicated region for block: B:27:0x006c  */
            /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x006a -> B:35:0x003e). Please submit an issue!!! */
            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @m8.h
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final java.lang.Object invokeSuspend(@m8.g java.lang.Object r8) {
                /*
                    r7 = this;
                    java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                    int r1 = r7.label
                    r2 = 2
                    r3 = 1
                    if (r1 == 0) goto L29
                    if (r1 == r3) goto L1f
                    if (r1 != r2) goto L17
                    java.lang.Object r1 = r7.L$0
                    kotlinx.coroutines.channels.o r1 = (kotlinx.coroutines.channels.o) r1
                    kotlin.ResultKt.throwOnFailure(r8)     // Catch: java.lang.Throwable -> L7c
                    r8 = r1
                    goto L3d
                L17:
                    java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
                    java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                    r8.<init>(r0)
                    throw r8
                L1f:
                    java.lang.Object r1 = r7.L$0
                    kotlinx.coroutines.channels.o r1 = (kotlinx.coroutines.channels.o) r1
                    kotlin.ResultKt.throwOnFailure(r8)     // Catch: java.lang.Throwable -> L7c
                    r4 = r1
                    r1 = r7
                    goto L4c
                L29:
                    kotlin.ResultKt.throwOnFailure(r8)
                    androidx.room.RoomDatabase r8 = r7.$db
                    androidx.room.InvalidationTracker r8 = r8.getInvalidationTracker()
                    androidx.room.CoroutinesRoom$Companion$createFlow$1$1$observer$1 r1 = r7.$observer
                    r8.addObserver(r1)
                    kotlinx.coroutines.channels.m<kotlin.Unit> r8 = r7.$observerChannel     // Catch: java.lang.Throwable -> L7c
                    kotlinx.coroutines.channels.o r8 = r8.iterator()     // Catch: java.lang.Throwable -> L7c
                L3d:
                    r1 = r7
                L3e:
                    r1.L$0 = r8     // Catch: java.lang.Throwable -> L7a
                    r1.label = r3     // Catch: java.lang.Throwable -> L7a
                    java.lang.Object r4 = r8.b(r1)     // Catch: java.lang.Throwable -> L7a
                    if (r4 != r0) goto L49
                    return r0
                L49:
                    r6 = r4
                    r4 = r8
                    r8 = r6
                L4c:
                    java.lang.Boolean r8 = (java.lang.Boolean) r8     // Catch: java.lang.Throwable -> L7a
                    boolean r8 = r8.booleanValue()     // Catch: java.lang.Throwable -> L7a
                    if (r8 == 0) goto L6c
                    r4.next()     // Catch: java.lang.Throwable -> L7a
                    java.util.concurrent.Callable<R> r8 = r1.$callable     // Catch: java.lang.Throwable -> L7a
                    java.lang.Object r8 = r8.call()     // Catch: java.lang.Throwable -> L7a
                    kotlinx.coroutines.channels.m<R> r5 = r1.$resultChannel     // Catch: java.lang.Throwable -> L7a
                    r1.L$0 = r4     // Catch: java.lang.Throwable -> L7a
                    r1.label = r2     // Catch: java.lang.Throwable -> L7a
                    java.lang.Object r8 = r5.send(r8, r1)     // Catch: java.lang.Throwable -> L7a
                    if (r8 != r0) goto L6a
                    return r0
                L6a:
                    r8 = r4
                    goto L3e
                L6c:
                    androidx.room.RoomDatabase r8 = r1.$db
                    androidx.room.InvalidationTracker r8 = r8.getInvalidationTracker()
                    androidx.room.CoroutinesRoom$Companion$createFlow$1$1$observer$1 r0 = r1.$observer
                    r8.removeObserver(r0)
                    kotlin.Unit r8 = kotlin.Unit.INSTANCE
                    return r8
                L7a:
                    r8 = move-exception
                    goto L7e
                L7c:
                    r8 = move-exception
                    r1 = r7
                L7e:
                    androidx.room.RoomDatabase r0 = r1.$db
                    androidx.room.InvalidationTracker r0 = r0.getInvalidationTracker()
                    androidx.room.CoroutinesRoom$Companion$createFlow$1$1$observer$1 r1 = r1.$observer
                    r0.removeObserver(r1)
                    throw r8
                */
                throw new UnsupportedOperationException("Method not decompiled: androidx.room.CoroutinesRoom$Companion$createFlow$1.AnonymousClass1.C00201.invokeSuspend(java.lang.Object):java.lang.Object");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(boolean z9, RoomDatabase roomDatabase, kotlinx.coroutines.flow.j<R> jVar, String[] strArr, Callable<R> callable, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$inTransaction = z9;
            this.$db = roomDatabase;
            this.$$this$flow = jVar;
            this.$tableNames = strArr;
            this.$callable = callable;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.g
        public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$inTransaction, this.$db, this.$$this$flow, this.$tableNames, this.$callable, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        @m8.h
        public final Object invoke(@m8.g kotlinx.coroutines.s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Type inference failed for: r7v0, types: [androidx.room.CoroutinesRoom$Companion$createFlow$1$1$observer$1] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        public final Object invokeSuspend(@m8.g Object obj) {
            Object coroutine_suspended;
            ContinuationInterceptor transactionDispatcher;
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i4 = this.label;
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                kotlinx.coroutines.s0 s0Var = (kotlinx.coroutines.s0) this.L$0;
                final kotlinx.coroutines.channels.m d4 = kotlinx.coroutines.channels.p.d(-1, null, null, 6, null);
                final String[] strArr = this.$tableNames;
                ?? r72 = new InvalidationTracker.Observer(strArr) { // from class: androidx.room.CoroutinesRoom$Companion$createFlow$1$1$observer$1
                    @Override // androidx.room.InvalidationTracker.Observer
                    public void onInvalidated(@m8.g Set<String> tables) {
                        Intrinsics.checkNotNullParameter(tables, "tables");
                        d4.mo51trySendJP2dKIU(Unit.INSTANCE);
                    }
                };
                d4.mo51trySendJP2dKIU(Unit.INSTANCE);
                TransactionElement transactionElement = (TransactionElement) s0Var.getCoroutineContext().get(TransactionElement.Key);
                if (transactionElement == null || (transactionDispatcher = transactionElement.getTransactionDispatcher$room_ktx_release()) == null) {
                    transactionDispatcher = this.$inTransaction ? CoroutinesRoomKt.getTransactionDispatcher(this.$db) : CoroutinesRoomKt.getQueryDispatcher(this.$db);
                }
                kotlinx.coroutines.channels.m d10 = kotlinx.coroutines.channels.p.d(0, null, null, 7, null);
                kotlinx.coroutines.l.f(s0Var, transactionDispatcher, null, new C00201(this.$db, r72, d4, this.$callable, d10, null), 2, null);
                kotlinx.coroutines.flow.j<R> jVar = this.$$this$flow;
                this.label = 1;
                if (kotlinx.coroutines.flow.k.l0(jVar, d10, this) == coroutine_suspended) {
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CoroutinesRoom$Companion$createFlow$1(boolean z9, RoomDatabase roomDatabase, String[] strArr, Callable<R> callable, Continuation<? super CoroutinesRoom$Companion$createFlow$1> continuation) {
        super(2, continuation);
        this.$inTransaction = z9;
        this.$db = roomDatabase;
        this.$tableNames = strArr;
        this.$callable = callable;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @m8.g
    public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
        CoroutinesRoom$Companion$createFlow$1 coroutinesRoom$Companion$createFlow$1 = new CoroutinesRoom$Companion$createFlow$1(this.$inTransaction, this.$db, this.$tableNames, this.$callable, continuation);
        coroutinesRoom$Companion$createFlow$1.L$0 = obj;
        return coroutinesRoom$Companion$createFlow$1;
    }

    @Override // kotlin.jvm.functions.Function2
    @m8.h
    public final Object invoke(@m8.g kotlinx.coroutines.flow.j<R> jVar, @m8.h Continuation<? super Unit> continuation) {
        return ((CoroutinesRoom$Companion$createFlow$1) create(jVar, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @m8.h
    public final Object invokeSuspend(@m8.g Object obj) {
        Object coroutine_suspended;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i4 = this.label;
        if (i4 == 0) {
            ResultKt.throwOnFailure(obj);
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$inTransaction, this.$db, (kotlinx.coroutines.flow.j) this.L$0, this.$tableNames, this.$callable, null);
            this.label = 1;
            if (kotlinx.coroutines.t0.g(anonymousClass1, this) == coroutine_suspended) {
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

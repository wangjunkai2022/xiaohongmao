package androidx.paging;

import androidx.paging.AccessorState;
import androidx.paging.LoadState;
import androidx.paging.RemoteMediator;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.s0;
import m8.g;
import m8.h;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RemoteMediatorAccessor.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0005\u001a\u00020\u0004\"\b\b\u0000\u0010\u0001*\u00020\u0000\"\b\b\u0001\u0010\u0002*\u00020\u0000*\u00020\u0003H\u008a@"}, d2 = {"", "Key", "Value", "Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "androidx.paging.RemoteMediatorAccessImpl$launchBoundary$1", f = "RemoteMediatorAccessor.kt", i = {}, l = {338}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes.dex */
public final class RemoteMediatorAccessImpl$launchBoundary$1 extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ RemoteMediatorAccessImpl<Key, Value> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RemoteMediatorAccessor.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u0003\"\b\b\u0000\u0010\u0001*\u00020\u0000\"\b\b\u0001\u0010\u0002*\u00020\u0000H\u008a@"}, d2 = {"", "Key", "Value", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
    @DebugMetadata(c = "androidx.paging.RemoteMediatorAccessImpl$launchBoundary$1$1", f = "RemoteMediatorAccessor.kt", i = {0}, l = {345}, m = "invokeSuspend", n = {"loadType"}, s = {"L$0"})
    /* renamed from: androidx.paging.RemoteMediatorAccessImpl$launchBoundary$1$1  reason: invalid class name */
    /* loaded from: classes.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
        Object L$0;
        int label;
        final /* synthetic */ RemoteMediatorAccessImpl<Key, Value> this$0;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: RemoteMediatorAccessor.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u001c\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\b\u001a\u001c\u0012\u0004\u0012\u00020\u0006\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0007\u0018\u00010\u0005\"\b\b\u0000\u0010\u0001*\u00020\u0000\"\b\b\u0001\u0010\u0002*\u00020\u00002\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0003H\n"}, d2 = {"", "Key", "Value", "Landroidx/paging/AccessorState;", "it", "Lkotlin/Pair;", "Landroidx/paging/LoadType;", "Landroidx/paging/PagingState;", "<anonymous>"}, k = 3, mv = {1, 5, 1})
        /* renamed from: androidx.paging.RemoteMediatorAccessImpl$launchBoundary$1$1$1  reason: invalid class name and collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C00161 extends Lambda implements Function1<AccessorState<Key, Value>, Pair<? extends LoadType, ? extends PagingState<Key, Value>>> {
            public static final C00161 INSTANCE = new C00161();

            C00161() {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @h
            public final Pair<LoadType, PagingState<Key, Value>> invoke(@g AccessorState<Key, Value> it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return it.getPendingBoundary();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: RemoteMediatorAccessor.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0006\u001a\u00020\u0005\"\b\b\u0000\u0010\u0001*\u00020\u0000\"\b\b\u0001\u0010\u0002*\u00020\u00002\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0003H\n"}, d2 = {"", "Key", "Value", "Landroidx/paging/AccessorState;", "it", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
        /* renamed from: androidx.paging.RemoteMediatorAccessImpl$launchBoundary$1$1$2  reason: invalid class name */
        /* loaded from: classes.dex */
        public static final class AnonymousClass2 extends Lambda implements Function1<AccessorState<Key, Value>, Unit> {
            final /* synthetic */ RemoteMediator.MediatorResult $loadResult;
            final /* synthetic */ LoadType $loadType;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass2(LoadType loadType, RemoteMediator.MediatorResult mediatorResult) {
                super(1);
                this.$loadType = loadType;
                this.$loadResult = mediatorResult;
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Object obj) {
                invoke((AccessorState) obj);
                return Unit.INSTANCE;
            }

            public final void invoke(@g AccessorState<Key, Value> it) {
                Intrinsics.checkNotNullParameter(it, "it");
                it.clearPendingRequest(this.$loadType);
                if (((RemoteMediator.MediatorResult.Success) this.$loadResult).endOfPaginationReached()) {
                    it.setBlockState(this.$loadType, AccessorState.BlockState.COMPLETED);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: RemoteMediatorAccessor.kt */
        @Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0006\u001a\u00020\u0005\"\b\b\u0000\u0010\u0001*\u00020\u0000\"\b\b\u0001\u0010\u0002*\u00020\u00002\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0003H\n"}, d2 = {"", "Key", "Value", "Landroidx/paging/AccessorState;", "it", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
        /* renamed from: androidx.paging.RemoteMediatorAccessImpl$launchBoundary$1$1$3  reason: invalid class name */
        /* loaded from: classes.dex */
        public static final class AnonymousClass3 extends Lambda implements Function1<AccessorState<Key, Value>, Unit> {
            final /* synthetic */ RemoteMediator.MediatorResult $loadResult;
            final /* synthetic */ LoadType $loadType;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass3(LoadType loadType, RemoteMediator.MediatorResult mediatorResult) {
                super(1);
                this.$loadType = loadType;
                this.$loadResult = mediatorResult;
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Object obj) {
                invoke((AccessorState) obj);
                return Unit.INSTANCE;
            }

            public final void invoke(@g AccessorState<Key, Value> it) {
                Intrinsics.checkNotNullParameter(it, "it");
                it.clearPendingRequest(this.$loadType);
                it.setError(this.$loadType, new LoadState.Error(((RemoteMediator.MediatorResult.Error) this.$loadResult).getThrowable()));
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(RemoteMediatorAccessImpl<Key, Value> remoteMediatorAccessImpl, Continuation<? super AnonymousClass1> continuation) {
            super(1, continuation);
            this.this$0 = remoteMediatorAccessImpl;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @g
        public final Continuation<Unit> create(@g Continuation<?> continuation) {
            return new AnonymousClass1(this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        @h
        public final Object invoke(@h Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:11:0x0032  */
        /* JADX WARN: Removed duplicated region for block: B:13:0x0035  */
        /* JADX WARN: Removed duplicated region for block: B:19:0x005c  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x006b  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0052 -> B:17:0x0056). Please submit an issue!!! */
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
                r2 = 1
                if (r1 == 0) goto L1e
                if (r1 != r2) goto L16
                java.lang.Object r1 = r7.L$0
                androidx.paging.LoadType r1 = (androidx.paging.LoadType) r1
                kotlin.ResultKt.throwOnFailure(r8)
                r3 = r1
                r1 = r0
                r0 = r7
                goto L56
            L16:
                java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r8.<init>(r0)
                throw r8
            L1e:
                kotlin.ResultKt.throwOnFailure(r8)
                r8 = r7
            L22:
                androidx.paging.RemoteMediatorAccessImpl<Key, Value> r1 = r8.this$0
                androidx.paging.AccessorStateHolder r1 = androidx.paging.RemoteMediatorAccessImpl.access$getAccessorState$p(r1)
                androidx.paging.RemoteMediatorAccessImpl$launchBoundary$1$1$1 r3 = androidx.paging.RemoteMediatorAccessImpl$launchBoundary$1.AnonymousClass1.C00161.INSTANCE
                java.lang.Object r1 = r1.use(r3)
                kotlin.Pair r1 = (kotlin.Pair) r1
                if (r1 != 0) goto L35
                kotlin.Unit r8 = kotlin.Unit.INSTANCE
                return r8
            L35:
                java.lang.Object r3 = r1.component1()
                androidx.paging.LoadType r3 = (androidx.paging.LoadType) r3
                java.lang.Object r1 = r1.component2()
                androidx.paging.PagingState r1 = (androidx.paging.PagingState) r1
                androidx.paging.RemoteMediatorAccessImpl<Key, Value> r4 = r8.this$0
                androidx.paging.RemoteMediator r4 = androidx.paging.RemoteMediatorAccessImpl.access$getRemoteMediator$p(r4)
                r8.L$0 = r3
                r8.label = r2
                java.lang.Object r1 = r4.load(r3, r1, r8)
                if (r1 != r0) goto L52
                return r0
            L52:
                r6 = r0
                r0 = r8
                r8 = r1
                r1 = r6
            L56:
                androidx.paging.RemoteMediator$MediatorResult r8 = (androidx.paging.RemoteMediator.MediatorResult) r8
                boolean r4 = r8 instanceof androidx.paging.RemoteMediator.MediatorResult.Success
                if (r4 == 0) goto L6b
                androidx.paging.RemoteMediatorAccessImpl<Key, Value> r4 = r0.this$0
                androidx.paging.AccessorStateHolder r4 = androidx.paging.RemoteMediatorAccessImpl.access$getAccessorState$p(r4)
                androidx.paging.RemoteMediatorAccessImpl$launchBoundary$1$1$2 r5 = new androidx.paging.RemoteMediatorAccessImpl$launchBoundary$1$1$2
                r5.<init>(r3, r8)
                r4.use(r5)
                goto L7d
            L6b:
                boolean r4 = r8 instanceof androidx.paging.RemoteMediator.MediatorResult.Error
                if (r4 == 0) goto L7d
                androidx.paging.RemoteMediatorAccessImpl<Key, Value> r4 = r0.this$0
                androidx.paging.AccessorStateHolder r4 = androidx.paging.RemoteMediatorAccessImpl.access$getAccessorState$p(r4)
                androidx.paging.RemoteMediatorAccessImpl$launchBoundary$1$1$3 r5 = new androidx.paging.RemoteMediatorAccessImpl$launchBoundary$1$1$3
                r5.<init>(r3, r8)
                r4.use(r5)
            L7d:
                r8 = r0
                r0 = r1
                goto L22
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.paging.RemoteMediatorAccessImpl$launchBoundary$1.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RemoteMediatorAccessImpl$launchBoundary$1(RemoteMediatorAccessImpl<Key, Value> remoteMediatorAccessImpl, Continuation<? super RemoteMediatorAccessImpl$launchBoundary$1> continuation) {
        super(2, continuation);
        this.this$0 = remoteMediatorAccessImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @g
    public final Continuation<Unit> create(@h Object obj, @g Continuation<?> continuation) {
        return new RemoteMediatorAccessImpl$launchBoundary$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    @h
    public final Object invoke(@g s0 s0Var, @h Continuation<? super Unit> continuation) {
        return ((RemoteMediatorAccessImpl$launchBoundary$1) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @h
    public final Object invokeSuspend(@g Object obj) {
        Object coroutine_suspended;
        SingleRunner singleRunner;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i4 = this.label;
        if (i4 == 0) {
            ResultKt.throwOnFailure(obj);
            singleRunner = ((RemoteMediatorAccessImpl) this.this$0).isolationRunner;
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, null);
            this.label = 1;
            if (singleRunner.runInIsolation(1, anonymousClass1, this) == coroutine_suspended) {
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

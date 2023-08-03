package androidx.paging;

import androidx.paging.PageFetcher;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlinx.coroutines.flow.i;
import kotlinx.coroutines.flow.j;
import kotlinx.coroutines.flow.k;
import m8.g;
import m8.h;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PageFetcher.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0016\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0006\u001a\u00020\u0005\"\b\b\u0000\u0010\u0001*\u00020\u0000\"\b\b\u0001\u0010\u0002*\u00020\u0000*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u00040\u0003H\u008a@"}, d2 = {"", "Key", "Value", "Landroidx/paging/SimpleProducerScope;", "Landroidx/paging/PagingData;", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "androidx.paging.PageFetcher$flow$1", f = "PageFetcher.kt", i = {}, l = {233}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes.dex */
public final class PageFetcher$flow$1 extends SuspendLambda implements Function2<SimpleProducerScope<PagingData<Value>>, Continuation<? super Unit>, Object> {
    final /* synthetic */ RemoteMediator<Key, Value> $remoteMediator;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ PageFetcher<Key, Value> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PageFetcher.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0016\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0002\n\u0000\u0010\u0006\u001a\u00020\u0005\"\b\b\u0000\u0010\u0001*\u00020\u0000\"\b\b\u0001\u0010\u0002*\u00020\u0000*\b\u0012\u0004\u0012\u00020\u00040\u0003H\u008a@"}, d2 = {"", "Key", "Value", "Lkotlinx/coroutines/flow/j;", "", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
    @DebugMetadata(c = "androidx.paging.PageFetcher$flow$1$1", f = "PageFetcher.kt", i = {}, l = {62, 62}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: androidx.paging.PageFetcher$flow$1$1  reason: invalid class name */
    /* loaded from: classes.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<j<? super Boolean>, Continuation<? super Unit>, Object> {
        final /* synthetic */ RemoteMediatorAccessor<Key, Value> $remoteMediatorAccessor;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(RemoteMediatorAccessor<Key, Value> remoteMediatorAccessor, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$remoteMediatorAccessor = remoteMediatorAccessor;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @g
        public final Continuation<Unit> create(@h Object obj, @g Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$remoteMediatorAccessor, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        @h
        public final Object invoke(@g j<? super Boolean> jVar, @h Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(jVar, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:20:0x0043  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x0052 A[RETURN] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(@m8.g java.lang.Object r7) {
            /*
                r6 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r6.label
                r2 = 0
                r3 = 2
                r4 = 1
                if (r1 == 0) goto L23
                if (r1 == r4) goto L1b
                if (r1 != r3) goto L13
                kotlin.ResultKt.throwOnFailure(r7)
                goto L53
            L13:
                java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r7.<init>(r0)
                throw r7
            L1b:
                java.lang.Object r1 = r6.L$0
                kotlinx.coroutines.flow.j r1 = (kotlinx.coroutines.flow.j) r1
                kotlin.ResultKt.throwOnFailure(r7)
                goto L3c
            L23:
                kotlin.ResultKt.throwOnFailure(r7)
                java.lang.Object r7 = r6.L$0
                r1 = r7
                kotlinx.coroutines.flow.j r1 = (kotlinx.coroutines.flow.j) r1
                androidx.paging.RemoteMediatorAccessor<Key, Value> r7 = r6.$remoteMediatorAccessor
                if (r7 != 0) goto L31
                r7 = r2
                goto L3e
            L31:
                r6.L$0 = r1
                r6.label = r4
                java.lang.Object r7 = r7.initialize(r6)
                if (r7 != r0) goto L3c
                return r0
            L3c:
                androidx.paging.RemoteMediator$InitializeAction r7 = (androidx.paging.RemoteMediator.InitializeAction) r7
            L3e:
                androidx.paging.RemoteMediator$InitializeAction r5 = androidx.paging.RemoteMediator.InitializeAction.LAUNCH_INITIAL_REFRESH
                if (r7 != r5) goto L43
                goto L44
            L43:
                r4 = 0
            L44:
                java.lang.Boolean r7 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r4)
                r6.L$0 = r2
                r6.label = r3
                java.lang.Object r7 = r1.emit(r7, r6)
                if (r7 != r0) goto L53
                return r0
            L53:
                kotlin.Unit r7 = kotlin.Unit.INSTANCE
                return r7
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.paging.PageFetcher$flow$1.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PageFetcher.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0016\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u0003\"\b\b\u0000\u0010\u0001*\u00020\u0000\"\b\b\u0001\u0010\u0002*\u00020\u00002\u0014\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u008a@"}, d2 = {"", "Key", "Value", "Landroidx/paging/PageFetcher$GenerationInfo;", "previousGeneration", "", "triggerRemoteRefresh", "<anonymous>"}, k = 3, mv = {1, 5, 1})
    @DebugMetadata(c = "androidx.paging.PageFetcher$flow$1$2", f = "PageFetcher.kt", i = {0, 0, 1, 1, 1}, l = {66, 70}, m = "invokeSuspend", n = {"previousGeneration", "triggerRemoteRefresh", "previousGeneration", "pagingSource", "triggerRemoteRefresh"}, s = {"L$0", "Z$0", "L$0", "L$1", "Z$0"})
    /* renamed from: androidx.paging.PageFetcher$flow$1$2  reason: invalid class name */
    /* loaded from: classes.dex */
    public static final class AnonymousClass2 extends SuspendLambda implements Function3<PageFetcher.GenerationInfo<Key, Value>, Boolean, Continuation<? super PageFetcher.GenerationInfo<Key, Value>>, Object> {
        final /* synthetic */ RemoteMediatorAccessor<Key, Value> $remoteMediatorAccessor;
        /* synthetic */ Object L$0;
        Object L$1;
        /* synthetic */ boolean Z$0;
        int label;
        final /* synthetic */ PageFetcher<Key, Value> this$0;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: PageFetcher.kt */
        @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
        /* renamed from: androidx.paging.PageFetcher$flow$1$2$1  reason: invalid class name */
        /* loaded from: classes.dex */
        public /* synthetic */ class AnonymousClass1 extends FunctionReferenceImpl implements Function0<Unit> {
            AnonymousClass1(Object obj) {
                super(0, obj, PageFetcher.class, "refresh", "refresh()V", 0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            @Override // kotlin.jvm.functions.Function0
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                ((PageFetcher) this.receiver).refresh();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(PageFetcher<Key, Value> pageFetcher, RemoteMediatorAccessor<Key, Value> remoteMediatorAccessor, Continuation<? super AnonymousClass2> continuation) {
            super(3, continuation);
            this.this$0 = pageFetcher;
            this.$remoteMediatorAccessor = remoteMediatorAccessor;
        }

        @h
        public final Object invoke(@h PageFetcher.GenerationInfo<Key, Value> generationInfo, boolean z9, @h Continuation<? super PageFetcher.GenerationInfo<Key, Value>> continuation) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.this$0, this.$remoteMediatorAccessor, continuation);
            anonymousClass2.L$0 = generationInfo;
            anonymousClass2.Z$0 = z9;
            return anonymousClass2.invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.jvm.functions.Function3
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Boolean bool, Object obj2) {
            return invoke((PageFetcher.GenerationInfo) obj, bool.booleanValue(), (Continuation) obj2);
        }

        /* JADX WARN: Removed duplicated region for block: B:27:0x0082  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x0084  */
        /* JADX WARN: Removed duplicated region for block: B:31:0x008b  */
        /* JADX WARN: Removed duplicated region for block: B:37:0x0097  */
        /* JADX WARN: Removed duplicated region for block: B:51:0x00b8  */
        /* JADX WARN: Removed duplicated region for block: B:52:0x00ba  */
        /* JADX WARN: Removed duplicated region for block: B:54:0x00c0  */
        /* JADX WARN: Removed duplicated region for block: B:63:0x00d7  */
        /* JADX WARN: Removed duplicated region for block: B:64:0x00d9  */
        /* JADX WARN: Removed duplicated region for block: B:66:0x00df  */
        /* JADX WARN: Removed duplicated region for block: B:70:0x00e9  */
        /* JADX WARN: Removed duplicated region for block: B:73:0x00f3  */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @m8.h
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(@m8.g java.lang.Object r18) {
            /*
                Method dump skipped, instructions count: 292
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.paging.PageFetcher$flow$1.AnonymousClass2.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PageFetcher$flow$1(RemoteMediator<Key, Value> remoteMediator, PageFetcher<Key, Value> pageFetcher, Continuation<? super PageFetcher$flow$1> continuation) {
        super(2, continuation);
        this.$remoteMediator = remoteMediator;
        this.this$0 = pageFetcher;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @g
    public final Continuation<Unit> create(@h Object obj, @g Continuation<?> continuation) {
        PageFetcher$flow$1 pageFetcher$flow$1 = new PageFetcher$flow$1(this.$remoteMediator, this.this$0, continuation);
        pageFetcher$flow$1.L$0 = obj;
        return pageFetcher$flow$1;
    }

    @Override // kotlin.jvm.functions.Function2
    @h
    public final Object invoke(@g SimpleProducerScope<PagingData<Value>> simpleProducerScope, @h Continuation<? super Unit> continuation) {
        return ((PageFetcher$flow$1) create(simpleProducerScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @h
    public final Object invokeSuspend(@g Object obj) {
        Object coroutine_suspended;
        ConflatedEventBus conflatedEventBus;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i4 = this.label;
        if (i4 == 0) {
            ResultKt.throwOnFailure(obj);
            final SimpleProducerScope simpleProducerScope = (SimpleProducerScope) this.L$0;
            RemoteMediator<Key, Value> remoteMediator = this.$remoteMediator;
            RemoteMediatorAccessor RemoteMediatorAccessor = remoteMediator == 0 ? null : RemoteMediatorAccessorKt.RemoteMediatorAccessor(simpleProducerScope, remoteMediator);
            conflatedEventBus = ((PageFetcher) this.this$0).refreshEvents;
            i simpleTransformLatest = FlowExtKt.simpleTransformLatest(k.s0(FlowExtKt.simpleScan(k.l1(conflatedEventBus.getFlow(), new AnonymousClass1(RemoteMediatorAccessor, null)), null, new AnonymousClass2(this.this$0, RemoteMediatorAccessor, null))), new PageFetcher$flow$1$invokeSuspend$$inlined$simpleMapLatest$1(null, this.this$0, RemoteMediatorAccessor));
            Object obj2 = new j<PagingData<Value>>() { // from class: androidx.paging.PageFetcher$flow$1$invokeSuspend$$inlined$collect$1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // kotlinx.coroutines.flow.j
                @h
                public Object emit(PagingData<Value> pagingData, @g Continuation<? super Unit> continuation) {
                    Object coroutine_suspended2;
                    Object send = SimpleProducerScope.this.send(pagingData, continuation);
                    coroutine_suspended2 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    return send == coroutine_suspended2 ? send : Unit.INSTANCE;
                }
            };
            this.label = 1;
            if (simpleTransformLatest.collect(obj2, this) == coroutine_suspended) {
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

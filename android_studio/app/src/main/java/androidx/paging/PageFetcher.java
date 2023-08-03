package androidx.paging;

import androidx.annotation.VisibleForTesting;
import io.sentry.protocol.s;
import io.sentry.protocol.t;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.i;
import kotlinx.coroutines.j2;
import m8.g;
import m8.h;

/* compiled from: PageFetcher.kt */
@Metadata(bv = {}, d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0000\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u0001*\b\b\u0001\u0010\u0003*\u00020\u00012\u00020\u0001:\u0002*+B^\u0012(\u0010\u0015\u001a$\b\u0001\u0012\u0016\u0012\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u000e0\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0013\u0012\b\u0010\u0017\u001a\u0004\u0018\u00018\u0000\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0016\b\u0002\u0010'\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0018\u00010&ø\u0001\u0000¢\u0006\u0004\b(\u0010)J\b\u0010\u0005\u001a\u00020\u0004H\u0002JB\u0010\r\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\f0\u000b*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00062\u0006\u0010\b\u001a\u00020\u00072\u0014\u0010\n\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0018\u00010\tH\u0002J5\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u000e2\u0014\u0010\u000f\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u000eH\u0082@ø\u0001\u0000¢\u0006\u0004\b\u0010\u0010\u0011J\u0006\u0010\u0012\u001a\u00020\u0004R9\u0010\u0015\u001a$\b\u0001\u0012\u0016\u0012\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u000e0\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00138\u0002X\u0082\u0004ø\u0001\u0000¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0016\u0010\u0017\u001a\u0004\u0018\u00018\u00008\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u0014\u0010\u001a\u001a\u00020\u00198\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u001a\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001d0\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u001a\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00040\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010\u001fR#\u0010\"\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010!0\u000b8\u0006¢\u0006\f\n\u0004\b\"\u0010#\u001a\u0004\b$\u0010%\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006,"}, d2 = {"Landroidx/paging/PageFetcher;", "", "Key", "Value", "", "invalidate", "Landroidx/paging/PageFetcherSnapshot;", "Lkotlinx/coroutines/j2;", "job", "Landroidx/paging/RemoteMediatorAccessor;", "accessor", "Lkotlinx/coroutines/flow/i;", "Landroidx/paging/PageEvent;", "injectRemoteEvents", "Landroidx/paging/PagingSource;", "previousPagingSource", "generateNewPagingSource", "(Landroidx/paging/PagingSource;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "refresh", "Lkotlin/Function1;", "Lkotlin/coroutines/Continuation;", "pagingSourceFactory", "Lkotlin/jvm/functions/Function1;", "initialKey", "Ljava/lang/Object;", "Landroidx/paging/PagingConfig;", "config", "Landroidx/paging/PagingConfig;", "Landroidx/paging/ConflatedEventBus;", "", "refreshEvents", "Landroidx/paging/ConflatedEventBus;", "retryEvents", "Landroidx/paging/PagingData;", "flow", "Lkotlinx/coroutines/flow/i;", "getFlow", "()Lkotlinx/coroutines/flow/i;", "Landroidx/paging/RemoteMediator;", "remoteMediator", "<init>", "(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Landroidx/paging/PagingConfig;Landroidx/paging/RemoteMediator;)V", "GenerationInfo", "PagerUiReceiver", "paging-common"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes.dex */
public final class PageFetcher<Key, Value> {
    @g
    private final PagingConfig config;
    @g
    private final i<PagingData<Value>> flow;
    @h
    private final Key initialKey;
    @g
    private final Function1<Continuation<? super PagingSource<Key, Value>>, Object> pagingSourceFactory;
    @g
    private final ConflatedEventBus<Boolean> refreshEvents;
    @g
    private final ConflatedEventBus<Unit> retryEvents;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: PageFetcher.kt */
    @Metadata(bv = {}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0002\u0018\u0000*\b\b\u0002\u0010\u0002*\u00020\u0001*\b\b\u0003\u0010\u0003*\u00020\u00012\u00020\u0001B9\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0004\u0012\u0014\u0010\n\u001a\u0010\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u0003\u0018\u00010\t\u0012\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0013\u0010\u0014R#\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\bR%\u0010\n\u001a\u0010\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u0003\u0018\u00010\t8\u0006¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\rR\u0017\u0010\u000f\u001a\u00020\u000e8\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u0015"}, d2 = {"Landroidx/paging/PageFetcher$GenerationInfo;", "", "Key", "Value", "Landroidx/paging/PageFetcherSnapshot;", s.b.f83846c, "Landroidx/paging/PageFetcherSnapshot;", "getSnapshot", "()Landroidx/paging/PageFetcherSnapshot;", "Landroidx/paging/PagingState;", t.b.f83859d, "Landroidx/paging/PagingState;", "getState", "()Landroidx/paging/PagingState;", "Lkotlinx/coroutines/j2;", "job", "Lkotlinx/coroutines/j2;", "getJob", "()Lkotlinx/coroutines/j2;", "<init>", "(Landroidx/paging/PageFetcherSnapshot;Landroidx/paging/PagingState;Lkotlinx/coroutines/j2;)V", "paging-common"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes.dex */
    public static final class GenerationInfo<Key, Value> {
        @g
        private final j2 job;
        @g
        private final PageFetcherSnapshot<Key, Value> snapshot;
        @h
        private final PagingState<Key, Value> state;

        public GenerationInfo(@g PageFetcherSnapshot<Key, Value> snapshot, @h PagingState<Key, Value> pagingState, @g j2 job) {
            Intrinsics.checkNotNullParameter(snapshot, "snapshot");
            Intrinsics.checkNotNullParameter(job, "job");
            this.snapshot = snapshot;
            this.state = pagingState;
            this.job = job;
        }

        @g
        public final j2 getJob() {
            return this.job;
        }

        @g
        public final PageFetcherSnapshot<Key, Value> getSnapshot() {
            return this.snapshot;
        }

        @h
        public final PagingState<Key, Value> getState() {
            return this.state;
        }
    }

    /* compiled from: PageFetcher.kt */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0004\u0018\u0000*\b\b\u0002\u0010\u0001*\u00020\u0002*\b\b\u0003\u0010\u0003*\u00020\u00022\u00020\u0004B)\u0012\u0014\b\u0001\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0006\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b¢\u0006\u0002\u0010\nJ\u0010\u0010\r\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0010\u001a\u00020\tH\u0016J\b\u0010\u0011\u001a\u00020\tH\u0016R \u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0006X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Landroidx/paging/PageFetcher$PagerUiReceiver;", "Key", "", "Value", "Landroidx/paging/UiReceiver;", "pageFetcherSnapshot", "Landroidx/paging/PageFetcherSnapshot;", "retryEventBus", "Landroidx/paging/ConflatedEventBus;", "", "(Landroidx/paging/PageFetcher;Landroidx/paging/PageFetcherSnapshot;Landroidx/paging/ConflatedEventBus;)V", "getPageFetcherSnapshot$paging_common", "()Landroidx/paging/PageFetcherSnapshot;", "accessHint", "viewportHint", "Landroidx/paging/ViewportHint;", "refresh", "retry", "paging-common"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public final class PagerUiReceiver<Key, Value> implements UiReceiver {
        @g
        private final PageFetcherSnapshot<Key, Value> pageFetcherSnapshot;
        @g
        private final ConflatedEventBus<Unit> retryEventBus;
        final /* synthetic */ PageFetcher<Key, Value> this$0;

        public PagerUiReceiver(@g @VisibleForTesting(otherwise = 2) PageFetcher this$0, @g PageFetcherSnapshot<Key, Value> pageFetcherSnapshot, ConflatedEventBus<Unit> retryEventBus) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(pageFetcherSnapshot, "pageFetcherSnapshot");
            Intrinsics.checkNotNullParameter(retryEventBus, "retryEventBus");
            this.this$0 = this$0;
            this.pageFetcherSnapshot = pageFetcherSnapshot;
            this.retryEventBus = retryEventBus;
        }

        @Override // androidx.paging.UiReceiver
        public void accessHint(@g ViewportHint viewportHint) {
            Intrinsics.checkNotNullParameter(viewportHint, "viewportHint");
            this.pageFetcherSnapshot.accessHint(viewportHint);
        }

        @g
        public final PageFetcherSnapshot<Key, Value> getPageFetcherSnapshot$paging_common() {
            return this.pageFetcherSnapshot;
        }

        @Override // androidx.paging.UiReceiver
        public void refresh() {
            this.this$0.refresh();
        }

        @Override // androidx.paging.UiReceiver
        public void retry() {
            this.retryEventBus.send(Unit.INSTANCE);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public PageFetcher(@g Function1<? super Continuation<? super PagingSource<Key, Value>>, ? extends Object> pagingSourceFactory, @h Key key, @g PagingConfig config, @h RemoteMediator<Key, Value> remoteMediator) {
        Intrinsics.checkNotNullParameter(pagingSourceFactory, "pagingSourceFactory");
        Intrinsics.checkNotNullParameter(config, "config");
        this.pagingSourceFactory = pagingSourceFactory;
        this.initialKey = key;
        this.config = config;
        this.refreshEvents = new ConflatedEventBus<>(null, 1, null);
        this.retryEvents = new ConflatedEventBus<>(null, 1, null);
        this.flow = SimpleChannelFlowKt.simpleChannelFlow(new PageFetcher$flow$1(remoteMediator, this, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x007c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object generateNewPagingSource(androidx.paging.PagingSource<Key, Value> r5, kotlin.coroutines.Continuation<? super androidx.paging.PagingSource<Key, Value>> r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof androidx.paging.PageFetcher$generateNewPagingSource$1
            if (r0 == 0) goto L13
            r0 = r6
            androidx.paging.PageFetcher$generateNewPagingSource$1 r0 = (androidx.paging.PageFetcher$generateNewPagingSource$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.paging.PageFetcher$generateNewPagingSource$1 r0 = new androidx.paging.PageFetcher$generateNewPagingSource$1
            r0.<init>(r4, r6)
        L18:
            java.lang.Object r6 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L39
            if (r2 != r3) goto L31
            java.lang.Object r5 = r0.L$1
            androidx.paging.PagingSource r5 = (androidx.paging.PagingSource) r5
            java.lang.Object r0 = r0.L$0
            androidx.paging.PageFetcher r0 = (androidx.paging.PageFetcher) r0
            kotlin.ResultKt.throwOnFailure(r6)
            goto L4c
        L31:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L39:
            kotlin.ResultKt.throwOnFailure(r6)
            kotlin.jvm.functions.Function1<kotlin.coroutines.Continuation<? super androidx.paging.PagingSource<Key, Value>>, java.lang.Object> r6 = r4.pagingSourceFactory
            r0.L$0 = r4
            r0.L$1 = r5
            r0.label = r3
            java.lang.Object r6 = r6.invoke(r0)
            if (r6 != r1) goto L4b
            return r1
        L4b:
            r0 = r4
        L4c:
            androidx.paging.PagingSource r6 = (androidx.paging.PagingSource) r6
            boolean r1 = r6 instanceof androidx.paging.LegacyPagingSource
            if (r1 == 0) goto L5c
            r1 = r6
            androidx.paging.LegacyPagingSource r1 = (androidx.paging.LegacyPagingSource) r1
            androidx.paging.PagingConfig r2 = r0.config
            int r2 = r2.pageSize
            r1.setPageSize(r2)
        L5c:
            if (r6 == r5) goto L5f
            goto L60
        L5f:
            r3 = 0
        L60:
            if (r3 == 0) goto L7c
            androidx.paging.PageFetcher$generateNewPagingSource$3 r1 = new androidx.paging.PageFetcher$generateNewPagingSource$3
            r1.<init>(r0)
            r6.registerInvalidatedCallback(r1)
            if (r5 != 0) goto L6d
            goto L75
        L6d:
            androidx.paging.PageFetcher$generateNewPagingSource$4 r1 = new androidx.paging.PageFetcher$generateNewPagingSource$4
            r1.<init>(r0)
            r5.unregisterInvalidatedCallback(r1)
        L75:
            if (r5 != 0) goto L78
            goto L7b
        L78:
            r5.invalidate()
        L7b:
            return r6
        L7c:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "An instance of PagingSource was re-used when Pager expected to create a new\ninstance. Ensure that the pagingSourceFactory passed to Pager always returns a\nnew instance of PagingSource."
            java.lang.String r6 = r6.toString()
            r5.<init>(r6)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.paging.PageFetcher.generateNewPagingSource(androidx.paging.PagingSource, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final i<PageEvent<Value>> injectRemoteEvents(PageFetcherSnapshot<Key, Value> pageFetcherSnapshot, j2 j2Var, RemoteMediatorAccessor<Key, Value> remoteMediatorAccessor) {
        if (remoteMediatorAccessor == null) {
            return pageFetcherSnapshot.getPageEventFlow();
        }
        return CancelableChannelFlowKt.cancelableChannelFlow(j2Var, new PageFetcher$injectRemoteEvents$1(remoteMediatorAccessor, pageFetcherSnapshot, new MutableLoadStateCollection(), null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void invalidate() {
        this.refreshEvents.send(Boolean.FALSE);
    }

    @g
    public final i<PagingData<Value>> getFlow() {
        return this.flow;
    }

    public final void refresh() {
        this.refreshEvents.send(Boolean.TRUE);
    }

    public /* synthetic */ PageFetcher(Function1 function1, Object obj, PagingConfig pagingConfig, RemoteMediator remoteMediator, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(function1, obj, pagingConfig, (i4 & 8) != 0 ? null : remoteMediator);
    }
}

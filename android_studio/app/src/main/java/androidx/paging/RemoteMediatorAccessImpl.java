package androidx.paging;

import io.sentry.protocol.t;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.h0;
import kotlinx.coroutines.l;
import kotlinx.coroutines.s0;
import m8.g;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RemoteMediatorAccessor.kt */
@Metadata(bv = {}, d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0002\u0018\u0000 $*\b\b\u0000\u0010\u0002*\u00020\u0001*\b\b\u0001\u0010\u0003*\u00020\u00012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0004:\u0001$B#\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0012\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0014¢\u0006\u0004\b\"\u0010#J\b\u0010\u0006\u001a\u00020\u0005H\u0002J\b\u0010\u0007\u001a\u00020\u0005H\u0002J$\u0010\f\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\b2\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\nH\u0016J\u001c\u0010\r\u001a\u00020\u00052\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\nH\u0016J\u0013\u0010\u000f\u001a\u00020\u000eH\u0096@ø\u0001\u0000¢\u0006\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0012\u001a\u00020\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R \u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R \u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0014\u0010\u001b\u001a\u00020\u001a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u001a\u0010!\u001a\b\u0012\u0004\u0012\u00020\u001e0\u001d8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001f\u0010 \u0082\u0002\u0004\n\u0002\b\u0019¨\u0006%"}, d2 = {"Landroidx/paging/RemoteMediatorAccessImpl;", "", "Key", "Value", "Landroidx/paging/RemoteMediatorAccessor;", "", "launchRefresh", "launchBoundary", "Landroidx/paging/LoadType;", "loadType", "Landroidx/paging/PagingState;", "pagingState", "requestLoad", "retryFailed", "Landroidx/paging/RemoteMediator$InitializeAction;", "initialize", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlinx/coroutines/s0;", "scope", "Lkotlinx/coroutines/s0;", "Landroidx/paging/RemoteMediator;", "remoteMediator", "Landroidx/paging/RemoteMediator;", "Landroidx/paging/AccessorStateHolder;", "accessorState", "Landroidx/paging/AccessorStateHolder;", "Landroidx/paging/SingleRunner;", "isolationRunner", "Landroidx/paging/SingleRunner;", "Lkotlinx/coroutines/flow/h0;", "Landroidx/paging/LoadStates;", "getState", "()Lkotlinx/coroutines/flow/h0;", t.b.f83859d, "<init>", "(Lkotlinx/coroutines/s0;Landroidx/paging/RemoteMediator;)V", "Companion", "paging-common"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes.dex */
public final class RemoteMediatorAccessImpl<Key, Value> implements RemoteMediatorAccessor<Key, Value> {
    @g
    public static final Companion Companion = new Companion(null);
    private static final int PRIORITY_APPEND_PREPEND = 1;
    private static final int PRIORITY_REFRESH = 2;
    @g
    private final AccessorStateHolder<Key, Value> accessorState;
    @g
    private final SingleRunner isolationRunner;
    @g
    private final RemoteMediator<Key, Value> remoteMediator;
    @g
    private final s0 scope;

    /* compiled from: RemoteMediatorAccessor.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Landroidx/paging/RemoteMediatorAccessImpl$Companion;", "", "()V", "PRIORITY_APPEND_PREPEND", "", "PRIORITY_REFRESH", "paging-common"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* compiled from: RemoteMediatorAccessor.kt */
    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[LoadType.values().length];
            iArr[LoadType.REFRESH.ordinal()] = 1;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public RemoteMediatorAccessImpl(@g s0 scope, @g RemoteMediator<Key, Value> remoteMediator) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(remoteMediator, "remoteMediator");
        this.scope = scope;
        this.remoteMediator = remoteMediator;
        this.accessorState = new AccessorStateHolder<>();
        this.isolationRunner = new SingleRunner(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void launchBoundary() {
        l.f(this.scope, null, null, new RemoteMediatorAccessImpl$launchBoundary$1(this, null), 3, null);
    }

    private final void launchRefresh() {
        l.f(this.scope, null, null, new RemoteMediatorAccessImpl$launchRefresh$1(this, null), 3, null);
    }

    @Override // androidx.paging.RemoteMediatorAccessor
    @g
    public h0<LoadStates> getState() {
        return this.accessorState.getLoadStates();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x004d  */
    @Override // androidx.paging.RemoteMediatorAccessor
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object initialize(@m8.g kotlin.coroutines.Continuation<? super androidx.paging.RemoteMediator.InitializeAction> r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof androidx.paging.RemoteMediatorAccessImpl$initialize$1
            if (r0 == 0) goto L13
            r0 = r5
            androidx.paging.RemoteMediatorAccessImpl$initialize$1 r0 = (androidx.paging.RemoteMediatorAccessImpl$initialize$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.paging.RemoteMediatorAccessImpl$initialize$1 r0 = new androidx.paging.RemoteMediatorAccessImpl$initialize$1
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            java.lang.Object r0 = r0.L$0
            androidx.paging.RemoteMediatorAccessImpl r0 = (androidx.paging.RemoteMediatorAccessImpl) r0
            kotlin.ResultKt.throwOnFailure(r5)
            goto L46
        L2d:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L35:
            kotlin.ResultKt.throwOnFailure(r5)
            androidx.paging.RemoteMediator<Key, Value> r5 = r4.remoteMediator
            r0.L$0 = r4
            r0.label = r3
            java.lang.Object r5 = r5.initialize(r0)
            if (r5 != r1) goto L45
            return r1
        L45:
            r0 = r4
        L46:
            r1 = r5
            androidx.paging.RemoteMediator$InitializeAction r1 = (androidx.paging.RemoteMediator.InitializeAction) r1
            androidx.paging.RemoteMediator$InitializeAction r2 = androidx.paging.RemoteMediator.InitializeAction.LAUNCH_INITIAL_REFRESH
            if (r1 != r2) goto L54
            androidx.paging.AccessorStateHolder<Key, Value> r0 = r0.accessorState
            androidx.paging.RemoteMediatorAccessImpl$initialize$2$1 r1 = androidx.paging.RemoteMediatorAccessImpl$initialize$2$1.INSTANCE
            r0.use(r1)
        L54:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.paging.RemoteMediatorAccessImpl.initialize(kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // androidx.paging.RemoteMediatorConnection
    public void requestLoad(@g LoadType loadType, @g PagingState<Key, Value> pagingState) {
        Intrinsics.checkNotNullParameter(loadType, "loadType");
        Intrinsics.checkNotNullParameter(pagingState, "pagingState");
        if (((Boolean) this.accessorState.use(new RemoteMediatorAccessImpl$requestLoad$newRequest$1(loadType, pagingState))).booleanValue()) {
            if (WhenMappings.$EnumSwitchMapping$0[loadType.ordinal()] == 1) {
                launchRefresh();
            } else {
                launchBoundary();
            }
        }
    }

    @Override // androidx.paging.RemoteMediatorConnection
    public void retryFailed(@g PagingState<Key, Value> pagingState) {
        Intrinsics.checkNotNullParameter(pagingState, "pagingState");
        ArrayList<LoadType> arrayList = new ArrayList();
        this.accessorState.use(new RemoteMediatorAccessImpl$retryFailed$1(arrayList));
        for (LoadType loadType : arrayList) {
            requestLoad(loadType, pagingState);
        }
    }
}

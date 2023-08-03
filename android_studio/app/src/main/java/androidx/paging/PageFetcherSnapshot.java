package androidx.paging;

import androidx.paging.LoadState;
import androidx.paging.PageEvent;
import androidx.paging.PageFetcherSnapshotState;
import androidx.paging.PagingSource;
import com.qennnsad.aknkaksd.data.websocket.b;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.c0;
import kotlinx.coroutines.channels.m;
import kotlinx.coroutines.channels.p;
import kotlinx.coroutines.flow.i;
import kotlinx.coroutines.flow.j;
import kotlinx.coroutines.flow.k;
import kotlinx.coroutines.j2;
import kotlinx.coroutines.l;
import kotlinx.coroutines.o2;
import kotlinx.coroutines.s0;
import m8.g;
import m8.h;

/* compiled from: PageFetcherSnapshot.kt */
@Metadata(bv = {}, d1 = {"\u0000®\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b\u0000\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u0001*\b\b\u0001\u0010\u0003*\u00020\u00012\u00020\u0001B\u0085\u0001\u0012\b\u0010+\u001a\u0004\u0018\u00018\u0000\u0012\u0012\u00100\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010/\u0012\u0006\u00105\u001a\u000204\u0012\f\u00107\u001a\b\u0012\u0004\u0012\u00020\b0\r\u0012\b\b\u0002\u0010:\u001a\u000209\u0012\u0016\b\u0002\u0010=\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0018\u00010<\u0012\u0016\b\u0002\u0010A\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0018\u00010)\u0012\u000e\b\u0002\u0010D\u001a\b\u0012\u0004\u0012\u00020\b0C¢\u0006\u0004\bY\u0010ZJ%\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0082@ø\u0001\u0000¢\u0006\u0004\b\t\u0010\nJ\f\u0010\f\u001a\u00020\b*\u00020\u000bH\u0002J%\u0010\u000f\u001a\u00020\b*\b\u0012\u0004\u0012\u00020\u000e0\r2\u0006\u0010\u0005\u001a\u00020\u0004H\u0082@ø\u0001\u0000¢\u0006\u0004\b\u000f\u0010\u0010J'\u0010\u0013\u001a\b\u0012\u0004\u0012\u00028\u00000\u00122\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0011\u001a\u0004\u0018\u00018\u0000H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u0013\u0010\u0015\u001a\u00020\bH\u0082@ø\u0001\u0000¢\u0006\u0004\b\u0015\u0010\u0016J#\u0010\u0019\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0017H\u0082@ø\u0001\u0000¢\u0006\u0004\b\u0019\u0010\u001aJ+\u0010\u001c\u001a\u00020\b*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u001b2\u0006\u0010\u0005\u001a\u00020\u0004H\u0082@ø\u0001\u0000¢\u0006\u0004\b\u001c\u0010\u001dJ3\u0010 \u001a\u00020\b*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u001b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u001eH\u0082@ø\u0001\u0000¢\u0006\u0004\b \u0010!J9\u0010$\u001a\u0004\u0018\u00018\u0000*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u001b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020\u000e2\u0006\u0010#\u001a\u00020\u000eH\u0002¢\u0006\u0004\b$\u0010%J\b\u0010&\u001a\u00020\bH\u0002J\u000e\u0010'\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006J\u0006\u0010(\u001a\u00020\bJ\u001f\u0010*\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010)H\u0086@ø\u0001\u0000¢\u0006\u0004\b*\u0010\u0016R\u001c\u0010+\u001a\u0004\u0018\u00018\u00008\u0000X\u0080\u0004¢\u0006\f\n\u0004\b+\u0010,\u001a\u0004\b-\u0010.R&\u00100\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010/8\u0000X\u0080\u0004¢\u0006\f\n\u0004\b0\u00101\u001a\u0004\b2\u00103R\u0014\u00105\u001a\u0002048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b5\u00106R\u001a\u00107\u001a\b\u0012\u0004\u0012\u00020\b0\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b7\u00108R\u0014\u0010:\u001a\u0002098\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b:\u0010;R%\u0010=\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0018\u00010<8\u0006¢\u0006\f\n\u0004\b=\u0010>\u001a\u0004\b?\u0010@R\"\u0010A\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0018\u00010)8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bA\u0010BR\u001a\u0010D\u001a\b\u0012\u0004\u0012\u00020\b0C8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bD\u0010ER\u0014\u0010G\u001a\u00020F8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bG\u0010HR\u0014\u0010J\u001a\u00020I8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bJ\u0010KR \u0010N\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010M0L8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bN\u0010OR \u0010Q\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010P8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bQ\u0010RR\u0014\u0010T\u001a\u00020S8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bT\u0010UR#\u0010V\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010M0\r8\u0006¢\u0006\f\n\u0004\bV\u00108\u001a\u0004\bW\u0010X\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006["}, d2 = {"Landroidx/paging/PageFetcherSnapshot;", "", "Key", "Value", "Landroidx/paging/LoadType;", "loadType", "Landroidx/paging/ViewportHint;", "viewportHint", "", "retryLoadError", "(Landroidx/paging/LoadType;Landroidx/paging/ViewportHint;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlinx/coroutines/s0;", "startConsumingHints", "Lkotlinx/coroutines/flow/i;", "", "collectAsGenerationalViewportHints", "(Lkotlinx/coroutines/flow/i;Landroidx/paging/LoadType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "key", "Landroidx/paging/PagingSource$LoadParams;", "loadParams", "(Landroidx/paging/LoadType;Ljava/lang/Object;)Landroidx/paging/PagingSource$LoadParams;", "doInitialLoad", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Landroidx/paging/GenerationalViewportHint;", "generationalHint", "doLoad", "(Landroidx/paging/LoadType;Landroidx/paging/GenerationalViewportHint;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Landroidx/paging/PageFetcherSnapshotState;", "setLoading", "(Landroidx/paging/PageFetcherSnapshotState;Landroidx/paging/LoadType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Landroidx/paging/LoadState$Error;", b.f47825n, "setError", "(Landroidx/paging/PageFetcherSnapshotState;Landroidx/paging/LoadType;Landroidx/paging/LoadState$Error;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "generationId", "presentedItemsBeyondAnchor", "nextLoadKeyOrNull", "(Landroidx/paging/PageFetcherSnapshotState;Landroidx/paging/LoadType;II)Ljava/lang/Object;", "onInvalidLoad", "accessHint", "close", "Landroidx/paging/PagingState;", "currentPagingState", "initialKey", "Ljava/lang/Object;", "getInitialKey$paging_common", "()Ljava/lang/Object;", "Landroidx/paging/PagingSource;", "pagingSource", "Landroidx/paging/PagingSource;", "getPagingSource$paging_common", "()Landroidx/paging/PagingSource;", "Landroidx/paging/PagingConfig;", "config", "Landroidx/paging/PagingConfig;", "retryFlow", "Lkotlinx/coroutines/flow/i;", "", "triggerRemoteRefresh", "Z", "Landroidx/paging/RemoteMediatorConnection;", "remoteMediatorConnection", "Landroidx/paging/RemoteMediatorConnection;", "getRemoteMediatorConnection", "()Landroidx/paging/RemoteMediatorConnection;", "previousPagingState", "Landroidx/paging/PagingState;", "Lkotlin/Function0;", "invalidate", "Lkotlin/jvm/functions/Function0;", "Landroidx/paging/HintHandler;", "hintHandler", "Landroidx/paging/HintHandler;", "Ljava/util/concurrent/atomic/AtomicBoolean;", "pageEventChCollected", "Ljava/util/concurrent/atomic/AtomicBoolean;", "Lkotlinx/coroutines/channels/m;", "Landroidx/paging/PageEvent;", "pageEventCh", "Lkotlinx/coroutines/channels/m;", "Landroidx/paging/PageFetcherSnapshotState$Holder;", "stateHolder", "Landroidx/paging/PageFetcherSnapshotState$Holder;", "Lkotlinx/coroutines/c0;", "pageEventChannelFlowJob", "Lkotlinx/coroutines/c0;", "pageEventFlow", "getPageEventFlow", "()Lkotlinx/coroutines/flow/i;", "<init>", "(Ljava/lang/Object;Landroidx/paging/PagingSource;Landroidx/paging/PagingConfig;Lkotlinx/coroutines/flow/i;ZLandroidx/paging/RemoteMediatorConnection;Landroidx/paging/PagingState;Lkotlin/jvm/functions/Function0;)V", "paging-common"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes.dex */
public final class PageFetcherSnapshot<Key, Value> {
    @g
    private final PagingConfig config;
    @g
    private final HintHandler hintHandler;
    @h
    private final Key initialKey;
    @g
    private final Function0<Unit> invalidate;
    @g
    private final m<PageEvent<Value>> pageEventCh;
    @g
    private final AtomicBoolean pageEventChCollected;
    @g
    private final c0 pageEventChannelFlowJob;
    @g
    private final i<PageEvent<Value>> pageEventFlow;
    @g
    private final PagingSource<Key, Value> pagingSource;
    @h
    private final PagingState<Key, Value> previousPagingState;
    @h
    private final RemoteMediatorConnection<Key, Value> remoteMediatorConnection;
    @g
    private final i<Unit> retryFlow;
    @g
    private final PageFetcherSnapshotState.Holder<Key, Value> stateHolder;
    private final boolean triggerRemoteRefresh;

    /* compiled from: PageFetcherSnapshot.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u0003\"\b\b\u0000\u0010\u0001*\u00020\u0000\"\b\b\u0001\u0010\u0002*\u00020\u0000H\n"}, d2 = {"", "Key", "Value", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
    /* renamed from: androidx.paging.PageFetcherSnapshot$1  reason: invalid class name */
    /* loaded from: classes.dex */
    static final class AnonymousClass1 extends Lambda implements Function0<Unit> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        AnonymousClass1() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
        }
    }

    /* compiled from: PageFetcherSnapshot.kt */
    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[LoadType.values().length];
            iArr[LoadType.REFRESH.ordinal()] = 1;
            iArr[LoadType.PREPEND.ordinal()] = 2;
            iArr[LoadType.APPEND.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public PageFetcherSnapshot(@h Key key, @g PagingSource<Key, Value> pagingSource, @g PagingConfig config, @g i<Unit> retryFlow, boolean z9, @h RemoteMediatorConnection<Key, Value> remoteMediatorConnection, @h PagingState<Key, Value> pagingState, @g Function0<Unit> invalidate) {
        c0 c10;
        Intrinsics.checkNotNullParameter(pagingSource, "pagingSource");
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(retryFlow, "retryFlow");
        Intrinsics.checkNotNullParameter(invalidate, "invalidate");
        this.initialKey = key;
        this.pagingSource = pagingSource;
        this.config = config;
        this.retryFlow = retryFlow;
        this.triggerRemoteRefresh = z9;
        this.remoteMediatorConnection = remoteMediatorConnection;
        this.previousPagingState = pagingState;
        this.invalidate = invalidate;
        if (config.jumpThreshold == Integer.MIN_VALUE || pagingSource.getJumpingSupported()) {
            this.hintHandler = new HintHandler();
            this.pageEventChCollected = new AtomicBoolean(false);
            this.pageEventCh = p.d(-2, null, null, 6, null);
            this.stateHolder = new PageFetcherSnapshotState.Holder<>(config);
            c10 = o2.c(null, 1, null);
            this.pageEventChannelFlowJob = c10;
            this.pageEventFlow = k.l1(CancelableChannelFlowKt.cancelableChannelFlow(c10, new PageFetcherSnapshot$pageEventFlow$1(this, null)), new PageFetcherSnapshot$pageEventFlow$2(this, null));
            return;
        }
        throw new IllegalArgumentException("PagingConfig.jumpThreshold was set, but the associated PagingSource has not marked support for jumps by overriding PagingSource.jumpingSupported to true.".toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object collectAsGenerationalViewportHints(i<Integer> iVar, final LoadType loadType, Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        Object collect = k.W(FlowExtKt.simpleRunningReduce(FlowExtKt.simpleTransformLatest(iVar, new PageFetcherSnapshot$collectAsGenerationalViewportHints$$inlined$simpleFlatMapLatest$1(null, this, loadType)), new PageFetcherSnapshot$collectAsGenerationalViewportHints$3(loadType, null))).collect(new j<GenerationalViewportHint>() { // from class: androidx.paging.PageFetcherSnapshot$collectAsGenerationalViewportHints$$inlined$collect$1
            @Override // kotlinx.coroutines.flow.j
            @h
            public Object emit(GenerationalViewportHint generationalViewportHint, @g Continuation<? super Unit> continuation2) {
                Object doLoad;
                Object coroutine_suspended2;
                doLoad = PageFetcherSnapshot.this.doLoad(loadType, generationalViewportHint, continuation2);
                coroutine_suspended2 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                return doLoad == coroutine_suspended2 ? doLoad : Unit.INSTANCE;
            }
        }, continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return collect == coroutine_suspended ? collect : Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:102:0x027c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:103:0x027d  */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00fa A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x011c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0125  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0161 A[Catch: all -> 0x0237, TryCatch #5 {all -> 0x0237, blocks: (B:51:0x013d, B:53:0x0161, B:54:0x016e, B:56:0x0177), top: B:127:0x013d }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0177 A[Catch: all -> 0x0237, TRY_LEAVE, TryCatch #5 {all -> 0x0237, blocks: (B:51:0x013d, B:53:0x0161, B:54:0x016e, B:56:0x0177), top: B:127:0x013d }] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0189  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x01c2 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x01c3  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01cf  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01d7  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0219  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0228  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x023c  */
    /* JADX WARN: Type inference failed for: r2v0, types: [int] */
    /* JADX WARN: Type inference failed for: r2v1, types: [kotlinx.coroutines.sync.c] */
    /* JADX WARN: Type inference failed for: r2v2, types: [kotlinx.coroutines.sync.c] */
    /* JADX WARN: Type inference failed for: r2v30, types: [kotlinx.coroutines.sync.c] */
    /* JADX WARN: Type inference failed for: r2v42 */
    /* JADX WARN: Type inference failed for: r2v43 */
    /* JADX WARN: Type inference failed for: r2v44 */
    /* JADX WARN: Type inference failed for: r2v45 */
    /* JADX WARN: Type inference failed for: r2v9, types: [kotlinx.coroutines.sync.c] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object doInitialLoad(kotlin.coroutines.Continuation<? super kotlin.Unit> r13) {
        /*
            Method dump skipped, instructions count: 690
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.paging.PageFetcherSnapshot.doInitialLoad(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x002b  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x0440  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x047a  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x04c8 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:154:0x04c9  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x04f8  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x04fb  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x0526 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:173:0x0527  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x0540  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x0544 A[Catch: all -> 0x0689, TRY_LEAVE, TryCatch #7 {all -> 0x0689, blocks: (B:174:0x0532, B:177:0x0544, B:181:0x0562), top: B:269:0x0532 }] */
    /* JADX WARN: Removed duplicated region for block: B:188:0x0593 A[Catch: all -> 0x00bc, TryCatch #9 {all -> 0x00bc, blocks: (B:186:0x057c, B:188:0x0593, B:190:0x059f, B:192:0x05a7, B:194:0x05b4, B:193:0x05ae, B:195:0x05b7, B:199:0x05d9, B:203:0x05ec, B:185:0x0574, B:14:0x0086, B:17:0x00b7), top: B:267:0x0028 }] */
    /* JADX WARN: Removed duplicated region for block: B:192:0x05a7 A[Catch: all -> 0x00bc, TryCatch #9 {all -> 0x00bc, blocks: (B:186:0x057c, B:188:0x0593, B:190:0x059f, B:192:0x05a7, B:194:0x05b4, B:193:0x05ae, B:195:0x05b7, B:199:0x05d9, B:203:0x05ec, B:185:0x0574, B:14:0x0086, B:17:0x00b7), top: B:267:0x0028 }] */
    /* JADX WARN: Removed duplicated region for block: B:193:0x05ae A[Catch: all -> 0x00bc, TryCatch #9 {all -> 0x00bc, blocks: (B:186:0x057c, B:188:0x0593, B:190:0x059f, B:192:0x05a7, B:194:0x05b4, B:193:0x05ae, B:195:0x05b7, B:199:0x05d9, B:203:0x05ec, B:185:0x0574, B:14:0x0086, B:17:0x00b7), top: B:267:0x0028 }] */
    /* JADX WARN: Removed duplicated region for block: B:201:0x05e1 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:202:0x05e2  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:227:0x065d  */
    /* JADX WARN: Removed duplicated region for block: B:229:0x0668  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00f2  */
    /* JADX WARN: Removed duplicated region for block: B:249:0x069c A[Catch: all -> 0x06a2, TRY_ENTER, TryCatch #0 {all -> 0x06a2, blocks: (B:47:0x0222, B:72:0x02d5, B:54:0x0239, B:56:0x024a, B:57:0x0257, B:59:0x0261, B:63:0x027f, B:65:0x0298, B:68:0x02b7, B:249:0x069c, B:250:0x06a1), top: B:256:0x0222 }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x010b  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x015f  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0187  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x01ae  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x01d3  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x01f1  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0231  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0325  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0327 A[Catch: all -> 0x0694, TRY_LEAVE, TryCatch #2 {all -> 0x0694, blocks: (B:77:0x030c, B:80:0x0327), top: B:259:0x030c }] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0357  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0389  */
    /* JADX WARN: Type inference failed for: r12v41, types: [androidx.paging.PageFetcherSnapshot, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v18, types: [T, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v14 */
    /* JADX WARN: Type inference failed for: r2v15, types: [T] */
    /* JADX WARN: Type inference failed for: r2v16 */
    /* JADX WARN: Type inference failed for: r4v0, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v12 */
    /* JADX WARN: Type inference failed for: r4v6, types: [kotlinx.coroutines.sync.c] */
    /* JADX WARN: Type inference failed for: r5v0, types: [int] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v44, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v51 */
    /* JADX WARN: Type inference failed for: r5v83 */
    /* JADX WARN: Type inference failed for: r7v34, types: [java.lang.Object] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:223:0x0643 -> B:265:0x0649). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:234:0x067c -> B:86:0x0353). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object doLoad(androidx.paging.LoadType r18, androidx.paging.GenerationalViewportHint r19, kotlin.coroutines.Continuation<? super kotlin.Unit> r20) {
        /*
            Method dump skipped, instructions count: 1742
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.paging.PageFetcherSnapshot.doLoad(androidx.paging.LoadType, androidx.paging.GenerationalViewportHint, kotlin.coroutines.Continuation):java.lang.Object");
    }

    private final PagingSource.LoadParams<Key> loadParams(LoadType loadType, Key key) {
        return PagingSource.LoadParams.Companion.create(loadType, key, loadType == LoadType.REFRESH ? this.config.initialLoadSize : this.config.pageSize, this.config.enablePlaceholders);
    }

    private final Key nextLoadKeyOrNull(PageFetcherSnapshotState<Key, Value> pageFetcherSnapshotState, LoadType loadType, int i4, int i10) {
        Object last;
        Object first;
        if (i4 == pageFetcherSnapshotState.generationId$paging_common(loadType) && !(pageFetcherSnapshotState.getSourceLoadStates$paging_common().get(loadType) instanceof LoadState.Error) && i10 < this.config.prefetchDistance) {
            if (loadType == LoadType.PREPEND) {
                first = CollectionsKt___CollectionsKt.first((List<? extends Object>) pageFetcherSnapshotState.getPages$paging_common());
                return (Key) ((PagingSource.LoadResult.Page) first).getPrevKey();
            }
            last = CollectionsKt___CollectionsKt.last((List<? extends Object>) pageFetcherSnapshotState.getPages$paging_common());
            return (Key) ((PagingSource.LoadResult.Page) last).getNextKey();
        }
        return null;
    }

    private final void onInvalidLoad() {
        close();
        this.pagingSource.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object retryLoadError(LoadType loadType, ViewportHint viewportHint, Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        if (WhenMappings.$EnumSwitchMapping$0[loadType.ordinal()] == 1) {
            Object doInitialLoad = doInitialLoad(continuation);
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            return doInitialLoad == coroutine_suspended ? doInitialLoad : Unit.INSTANCE;
        }
        if (viewportHint != null) {
            this.hintHandler.forceSetHint(loadType, viewportHint);
            return Unit.INSTANCE;
        }
        throw new IllegalStateException("Cannot retry APPEND / PREPEND load on PagingSource without ViewportHint".toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object setError(PageFetcherSnapshotState<Key, Value> pageFetcherSnapshotState, LoadType loadType, LoadState.Error error, Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        if (!Intrinsics.areEqual(pageFetcherSnapshotState.getSourceLoadStates$paging_common().get(loadType), error)) {
            pageFetcherSnapshotState.getSourceLoadStates$paging_common().set(loadType, error);
            Object send = this.pageEventCh.send(new PageEvent.LoadStateUpdate(pageFetcherSnapshotState.getSourceLoadStates$paging_common().snapshot(), null), continuation);
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            return send == coroutine_suspended ? send : Unit.INSTANCE;
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object setLoading(PageFetcherSnapshotState<Key, Value> pageFetcherSnapshotState, LoadType loadType, Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        LoadState loadState = pageFetcherSnapshotState.getSourceLoadStates$paging_common().get(loadType);
        LoadState.Loading loading = LoadState.Loading.INSTANCE;
        if (!Intrinsics.areEqual(loadState, loading)) {
            pageFetcherSnapshotState.getSourceLoadStates$paging_common().set(loadType, loading);
            Object send = this.pageEventCh.send(new PageEvent.LoadStateUpdate(pageFetcherSnapshotState.getSourceLoadStates$paging_common().snapshot(), null), continuation);
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            return send == coroutine_suspended ? send : Unit.INSTANCE;
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void startConsumingHints(s0 s0Var) {
        List<LoadType> listOf;
        if (this.config.jumpThreshold != Integer.MIN_VALUE) {
            listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new LoadType[]{LoadType.APPEND, LoadType.PREPEND});
            for (LoadType loadType : listOf) {
                l.f(s0Var, null, null, new PageFetcherSnapshot$startConsumingHints$1$1(this, loadType, null), 3, null);
            }
        }
        l.f(s0Var, null, null, new PageFetcherSnapshot$startConsumingHints$2(this, null), 3, null);
        l.f(s0Var, null, null, new PageFetcherSnapshot$startConsumingHints$3(this, null), 3, null);
    }

    public final void accessHint(@g ViewportHint viewportHint) {
        Intrinsics.checkNotNullParameter(viewportHint, "viewportHint");
        this.hintHandler.processHint(viewportHint);
    }

    public final void close() {
        j2.a.b(this.pageEventChannelFlowJob, null, 1, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003e  */
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object currentPagingState(@m8.g kotlin.coroutines.Continuation<? super androidx.paging.PagingState<Key, Value>> r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof androidx.paging.PageFetcherSnapshot$currentPagingState$1
            if (r0 == 0) goto L13
            r0 = r6
            androidx.paging.PageFetcherSnapshot$currentPagingState$1 r0 = (androidx.paging.PageFetcherSnapshot$currentPagingState$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.paging.PageFetcherSnapshot$currentPagingState$1 r0 = new androidx.paging.PageFetcherSnapshot$currentPagingState$1
            r0.<init>(r5, r6)
        L18:
            java.lang.Object r6 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L3e
            if (r2 != r4) goto L36
            java.lang.Object r1 = r0.L$2
            kotlinx.coroutines.sync.c r1 = (kotlinx.coroutines.sync.c) r1
            java.lang.Object r2 = r0.L$1
            androidx.paging.PageFetcherSnapshotState$Holder r2 = (androidx.paging.PageFetcherSnapshotState.Holder) r2
            java.lang.Object r0 = r0.L$0
            androidx.paging.PageFetcherSnapshot r0 = (androidx.paging.PageFetcherSnapshot) r0
            kotlin.ResultKt.throwOnFailure(r6)
            goto L58
        L36:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L3e:
            kotlin.ResultKt.throwOnFailure(r6)
            androidx.paging.PageFetcherSnapshotState$Holder<Key, Value> r2 = r5.stateHolder
            kotlinx.coroutines.sync.c r6 = androidx.paging.PageFetcherSnapshotState.Holder.access$getLock$p(r2)
            r0.L$0 = r5
            r0.L$1 = r2
            r0.L$2 = r6
            r0.label = r4
            java.lang.Object r0 = r6.c(r3, r0)
            if (r0 != r1) goto L56
            return r1
        L56:
            r0 = r5
            r1 = r6
        L58:
            androidx.paging.PageFetcherSnapshotState r6 = androidx.paging.PageFetcherSnapshotState.Holder.access$getState$p(r2)     // Catch: java.lang.Throwable -> L6a
            androidx.paging.HintHandler r0 = r0.hintHandler     // Catch: java.lang.Throwable -> L6a
            androidx.paging.ViewportHint$Access r0 = r0.getLastAccessHint()     // Catch: java.lang.Throwable -> L6a
            androidx.paging.PagingState r6 = r6.currentPagingState$paging_common(r0)     // Catch: java.lang.Throwable -> L6a
            r1.d(r3)
            return r6
        L6a:
            r6 = move-exception
            r1.d(r3)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.paging.PageFetcherSnapshot.currentPagingState(kotlin.coroutines.Continuation):java.lang.Object");
    }

    @h
    public final Key getInitialKey$paging_common() {
        return this.initialKey;
    }

    @g
    public final i<PageEvent<Value>> getPageEventFlow() {
        return this.pageEventFlow;
    }

    @g
    public final PagingSource<Key, Value> getPagingSource$paging_common() {
        return this.pagingSource;
    }

    @h
    public final RemoteMediatorConnection<Key, Value> getRemoteMediatorConnection() {
        return this.remoteMediatorConnection;
    }

    public /* synthetic */ PageFetcherSnapshot(Object obj, PagingSource pagingSource, PagingConfig pagingConfig, i iVar, boolean z9, RemoteMediatorConnection remoteMediatorConnection, PagingState pagingState, Function0 function0, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(obj, pagingSource, pagingConfig, iVar, (i4 & 16) != 0 ? false : z9, (i4 & 32) != 0 ? null : remoteMediatorConnection, (i4 & 64) != 0 ? null : pagingState, (i4 & 128) != 0 ? AnonymousClass1.INSTANCE : function0);
    }
}

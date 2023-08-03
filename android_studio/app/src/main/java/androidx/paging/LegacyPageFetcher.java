package androidx.paging;

import androidx.exifinterface.media.ExifInterface;
import androidx.paging.LoadState;
import androidx.paging.PagedList;
import androidx.paging.PagingSource;
import com.qennnsad.aknkaksd.data.repository.f;
import io.sentry.protocol.t;
import io.sentry.protocol.v;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.l;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.s0;
import m8.g;
import m8.h;

/* compiled from: LegacyPageFetcher.kt */
@Metadata(bv = {}, d1 = {"\u0000v\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0000\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u0001*\b\b\u0001\u0010\u0003*\u00020\u00012\u00020\u0001:\u0002ABBW\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\u001b\u001a\u00020\u001a\u0012\u0012\u0010 \u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u001f\u0012\u0006\u0010%\u001a\u00020$\u0012\u0006\u0010'\u001a\u00020$\u0012\f\u0010)\u001a\b\u0012\u0004\u0012\u00028\u00010(\u0012\f\u0010.\u001a\b\u0012\u0004\u0012\u00028\u00000-¢\u0006\u0004\b?\u0010@J\u001e\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006H\u0002J$\u0010\f\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\nH\u0002J\u0018\u0010\u000f\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\rH\u0002J\b\u0010\u0010\u001a\u00020\bH\u0002J\b\u0010\u0011\u001a\u00020\bH\u0002J\b\u0010\u0012\u001a\u00020\bH\u0002J\u0006\u0010\u0013\u001a\u00020\bJ\u0006\u0010\u0014\u001a\u00020\bJ\u0006\u0010\u0015\u001a\u00020\bJ\u0006\u0010\u0016\u001a\u00020\bR\u0014\u0010\u0018\u001a\u00020\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0017\u0010\u001b\u001a\u00020\u001a8\u0006¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001eR#\u0010 \u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u001f8\u0006¢\u0006\f\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#R\u0014\u0010%\u001a\u00020$8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u0010&R\u0014\u0010'\u001a\u00020$8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010&R\u001d\u0010)\u001a\b\u0012\u0004\u0012\u00028\u00010(8\u0006¢\u0006\f\n\u0004\b)\u0010*\u001a\u0004\b+\u0010,R\u001a\u0010.\u001a\b\u0012\u0004\u0012\u00028\u00000-8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b.\u0010/R\u0014\u00101\u001a\u0002008\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b1\u00102R(\u00104\u001a\u0002038\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0004\b4\u00105\u0012\u0004\b:\u0010;\u001a\u0004\b6\u00107\"\u0004\b8\u00109R\u0011\u0010=\u001a\u00020<8F¢\u0006\u0006\u001a\u0004\b=\u0010>¨\u0006C"}, d2 = {"Landroidx/paging/LegacyPageFetcher;", "", "K", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Landroidx/paging/LoadType;", "type", "Landroidx/paging/PagingSource$LoadParams;", "params", "", "scheduleLoad", "Landroidx/paging/PagingSource$LoadResult$Page;", "value", "onLoadSuccess", "", "throwable", "onLoadError", "onLoadInvalid", "schedulePrepend", "scheduleAppend", "trySchedulePrepend", "tryScheduleAppend", "retry", "detach", "Lkotlinx/coroutines/s0;", "pagedListScope", "Lkotlinx/coroutines/s0;", "Landroidx/paging/PagedList$Config;", "config", "Landroidx/paging/PagedList$Config;", "getConfig", "()Landroidx/paging/PagedList$Config;", "Landroidx/paging/PagingSource;", v.b.f83881a, "Landroidx/paging/PagingSource;", "getSource", "()Landroidx/paging/PagingSource;", "Lkotlinx/coroutines/n0;", "notifyDispatcher", "Lkotlinx/coroutines/n0;", "fetchDispatcher", "Landroidx/paging/LegacyPageFetcher$PageConsumer;", "pageConsumer", "Landroidx/paging/LegacyPageFetcher$PageConsumer;", "getPageConsumer", "()Landroidx/paging/LegacyPageFetcher$PageConsumer;", "Landroidx/paging/LegacyPageFetcher$KeyProvider;", "keyProvider", "Landroidx/paging/LegacyPageFetcher$KeyProvider;", "Ljava/util/concurrent/atomic/AtomicBoolean;", "detached", "Ljava/util/concurrent/atomic/AtomicBoolean;", "Landroidx/paging/PagedList$LoadStateManager;", "loadStateManager", "Landroidx/paging/PagedList$LoadStateManager;", "getLoadStateManager", "()Landroidx/paging/PagedList$LoadStateManager;", "setLoadStateManager", "(Landroidx/paging/PagedList$LoadStateManager;)V", "getLoadStateManager$annotations", "()V", "", "isDetached", "()Z", "<init>", "(Lkotlinx/coroutines/s0;Landroidx/paging/PagedList$Config;Landroidx/paging/PagingSource;Lkotlinx/coroutines/n0;Lkotlinx/coroutines/n0;Landroidx/paging/LegacyPageFetcher$PageConsumer;Landroidx/paging/LegacyPageFetcher$KeyProvider;)V", "KeyProvider", "PageConsumer", "paging-common"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes.dex */
public final class LegacyPageFetcher<K, V> {
    @g
    private final PagedList.Config config;
    @g
    private final AtomicBoolean detached;
    @g
    private final n0 fetchDispatcher;
    @g
    private final KeyProvider<K> keyProvider;
    @g
    private PagedList.LoadStateManager loadStateManager;
    @g
    private final n0 notifyDispatcher;
    @g
    private final PageConsumer<V> pageConsumer;
    @g
    private final s0 pagedListScope;
    @g
    private final PagingSource<K, V> source;

    /* compiled from: LegacyPageFetcher.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0006\b`\u0018\u0000*\b\b\u0002\u0010\u0001*\u00020\u00022\u00020\u0002R\u0014\u0010\u0003\u001a\u0004\u0018\u00018\u0002X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0006\u001a\u0004\u0018\u00018\u0002X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\u0005¨\u0006\b"}, d2 = {"Landroidx/paging/LegacyPageFetcher$KeyProvider;", "K", "", "nextKey", "getNextKey", "()Ljava/lang/Object;", "prevKey", "getPrevKey", "paging-common"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public interface KeyProvider<K> {
        @h
        K getNextKey();

        @h
        K getPrevKey();
    }

    /* compiled from: LegacyPageFetcher.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b`\u0018\u0000*\b\b\u0002\u0010\u0001*\u00020\u00022\u00020\u0002J\"\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0010\u0010\u0007\u001a\f\u0012\u0002\b\u0003\u0012\u0004\u0012\u00028\u00020\bH&J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\fH&¨\u0006\r"}, d2 = {"Landroidx/paging/LegacyPageFetcher$PageConsumer;", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "", "onPageResult", "", "type", "Landroidx/paging/LoadType;", f.f47744a, "Landroidx/paging/PagingSource$LoadResult$Page;", "onStateChanged", "", t.b.f83859d, "Landroidx/paging/LoadState;", "paging-common"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public interface PageConsumer<V> {
        boolean onPageResult(@g LoadType loadType, @g PagingSource.LoadResult.Page<?, V> page);

        void onStateChanged(@g LoadType loadType, @g LoadState loadState);
    }

    /* compiled from: LegacyPageFetcher.kt */
    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[LoadType.values().length];
            iArr[LoadType.PREPEND.ordinal()] = 1;
            iArr[LoadType.APPEND.ordinal()] = 2;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public LegacyPageFetcher(@g s0 pagedListScope, @g PagedList.Config config, @g PagingSource<K, V> source, @g n0 notifyDispatcher, @g n0 fetchDispatcher, @g PageConsumer<V> pageConsumer, @g KeyProvider<K> keyProvider) {
        Intrinsics.checkNotNullParameter(pagedListScope, "pagedListScope");
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(notifyDispatcher, "notifyDispatcher");
        Intrinsics.checkNotNullParameter(fetchDispatcher, "fetchDispatcher");
        Intrinsics.checkNotNullParameter(pageConsumer, "pageConsumer");
        Intrinsics.checkNotNullParameter(keyProvider, "keyProvider");
        this.pagedListScope = pagedListScope;
        this.config = config;
        this.source = source;
        this.notifyDispatcher = notifyDispatcher;
        this.fetchDispatcher = fetchDispatcher;
        this.pageConsumer = pageConsumer;
        this.keyProvider = keyProvider;
        this.detached = new AtomicBoolean(false);
        this.loadStateManager = new PagedList.LoadStateManager(this) { // from class: androidx.paging.LegacyPageFetcher$loadStateManager$1
            final /* synthetic */ LegacyPageFetcher<K, V> this$0;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.this$0 = this;
            }

            @Override // androidx.paging.PagedList.LoadStateManager
            public void onStateChanged(@g LoadType type, @g LoadState state) {
                Intrinsics.checkNotNullParameter(type, "type");
                Intrinsics.checkNotNullParameter(state, "state");
                this.this$0.getPageConsumer().onStateChanged(type, state);
            }
        };
    }

    public static /* synthetic */ void getLoadStateManager$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onLoadError(LoadType loadType, Throwable th) {
        if (isDetached()) {
            return;
        }
        this.loadStateManager.setState(loadType, new LoadState.Error(th));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onLoadInvalid() {
        this.source.invalidate();
        detach();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onLoadSuccess(LoadType loadType, PagingSource.LoadResult.Page<K, V> page) {
        if (isDetached()) {
            return;
        }
        if (this.pageConsumer.onPageResult(loadType, page)) {
            int i4 = WhenMappings.$EnumSwitchMapping$0[loadType.ordinal()];
            if (i4 == 1) {
                schedulePrepend();
                return;
            } else if (i4 == 2) {
                scheduleAppend();
                return;
            } else {
                throw new IllegalStateException("Can only fetch more during append/prepend");
            }
        }
        this.loadStateManager.setState(loadType, page.getData().isEmpty() ? LoadState.NotLoading.Companion.getComplete$paging_common() : LoadState.NotLoading.Companion.getIncomplete$paging_common());
    }

    private final void scheduleAppend() {
        K nextKey = this.keyProvider.getNextKey();
        if (nextKey == null) {
            onLoadSuccess(LoadType.APPEND, PagingSource.LoadResult.Page.Companion.empty$paging_common());
            return;
        }
        PagedList.LoadStateManager loadStateManager = this.loadStateManager;
        LoadType loadType = LoadType.APPEND;
        loadStateManager.setState(loadType, LoadState.Loading.INSTANCE);
        PagedList.Config config = this.config;
        scheduleLoad(loadType, new PagingSource.LoadParams.Append(nextKey, config.pageSize, config.enablePlaceholders));
    }

    private final void scheduleLoad(LoadType loadType, PagingSource.LoadParams<K> loadParams) {
        l.f(this.pagedListScope, this.fetchDispatcher, null, new LegacyPageFetcher$scheduleLoad$1(this, loadParams, loadType, null), 2, null);
    }

    private final void schedulePrepend() {
        K prevKey = this.keyProvider.getPrevKey();
        if (prevKey == null) {
            onLoadSuccess(LoadType.PREPEND, PagingSource.LoadResult.Page.Companion.empty$paging_common());
            return;
        }
        PagedList.LoadStateManager loadStateManager = this.loadStateManager;
        LoadType loadType = LoadType.PREPEND;
        loadStateManager.setState(loadType, LoadState.Loading.INSTANCE);
        PagedList.Config config = this.config;
        scheduleLoad(loadType, new PagingSource.LoadParams.Prepend(prevKey, config.pageSize, config.enablePlaceholders));
    }

    public final void detach() {
        this.detached.set(true);
    }

    @g
    public final PagedList.Config getConfig() {
        return this.config;
    }

    @g
    public final PagedList.LoadStateManager getLoadStateManager() {
        return this.loadStateManager;
    }

    @g
    public final PageConsumer<V> getPageConsumer() {
        return this.pageConsumer;
    }

    @g
    public final PagingSource<K, V> getSource() {
        return this.source;
    }

    public final boolean isDetached() {
        return this.detached.get();
    }

    public final void retry() {
        if (this.loadStateManager.getStartState() instanceof LoadState.Error) {
            schedulePrepend();
        }
        if (this.loadStateManager.getEndState() instanceof LoadState.Error) {
            scheduleAppend();
        }
    }

    public final void setLoadStateManager(@g PagedList.LoadStateManager loadStateManager) {
        Intrinsics.checkNotNullParameter(loadStateManager, "<set-?>");
        this.loadStateManager = loadStateManager;
    }

    public final void tryScheduleAppend() {
        LoadState endState = this.loadStateManager.getEndState();
        if (!(endState instanceof LoadState.NotLoading) || endState.getEndOfPaginationReached()) {
            return;
        }
        scheduleAppend();
    }

    public final void trySchedulePrepend() {
        LoadState startState = this.loadStateManager.getStartState();
        if (!(startState instanceof LoadState.NotLoading) || startState.getEndOfPaginationReached()) {
            return;
        }
        schedulePrepend();
    }
}

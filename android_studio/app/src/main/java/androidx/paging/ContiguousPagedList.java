package androidx.paging;

import androidx.annotation.AnyThread;
import androidx.annotation.MainThread;
import androidx.annotation.RestrictTo;
import androidx.exifinterface.media.ExifInterface;
import androidx.paging.LegacyPageFetcher;
import androidx.paging.LoadState;
import androidx.paging.PagedList;
import androidx.paging.PagedStorage;
import androidx.paging.PagingSource;
import com.google.android.exoplayer2.text.ttml.d;
import com.qennnsad.aknkaksd.data.repository.f;
import io.sentry.protocol.t;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.l;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.s0;
import m8.g;
import m8.h;

/* compiled from: ContiguousPagedList.kt */
@Metadata(bv = {}, d1 = {"\u0000~\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0017\u0018\u0000 _*\b\b\u0000\u0010\u0002*\u00020\u0001*\b\b\u0001\u0010\u0003*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00010\u00042\u00020\u00052\b\u0012\u0004\u0012\u00028\u00010\u0006:\u0001_Bi\u0012\u0012\u00105\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u000104\u0012\u0006\u0010V\u001a\u00020U\u0012\u0006\u0010X\u001a\u00020W\u0012\u0006\u0010Y\u001a\u00020W\u0012\u000e\u0010:\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u000109\u0012\u0006\u0010[\u001a\u00020Z\u0012\u0012\u0010\\\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0013\u0012\b\u0010>\u001a\u0004\u0018\u00018\u0000¢\u0006\u0004\b]\u0010^J\u001e\u0010\f\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\u00072\f\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00010\tH\u0002J\u0010\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u0018\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\rH\u0002J\"\u0010\u0014\u001a\u00020\r2\u0006\u0010\b\u001a\u00020\u00072\u0010\u0010\n\u001a\f\u0012\u0002\b\u0003\u0012\u0004\u0012\u00028\u00010\u0013H\u0016J\u0018\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u0015H\u0016J'\u0010\u001d\u001a\u00020\u000b2\u0006\u0010\u0018\u001a\u00020\r2\u0006\u0010\u0019\u001a\u00020\r2\u0006\u0010\u001a\u001a\u00020\rH\u0001¢\u0006\u0004\b\u001b\u0010\u001cJ\b\u0010\u001e\u001a\u00020\u000bH\u0016J\"\u0010!\u001a\u00020\u000b2\u0018\u0010 \u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u000b0\u001fH\u0016J\u0018\u0010$\u001a\u00020\u000b2\u0006\u0010\"\u001a\u00020\u00072\u0006\u0010#\u001a\u00020\u0015H\u0016J\u0010\u0010'\u001a\u00020\u000b2\u0006\u0010&\u001a\u00020%H\u0017J\b\u0010(\u001a\u00020\u000bH\u0016J\u0010\u0010*\u001a\u00020\u000b2\u0006\u0010)\u001a\u00020%H\u0017J \u0010.\u001a\u00020\u000b2\u0006\u0010+\u001a\u00020%2\u0006\u0010,\u001a\u00020%2\u0006\u0010-\u001a\u00020%H\u0017J \u00100\u001a\u00020\u000b2\u0006\u0010/\u001a\u00020%2\u0006\u0010,\u001a\u00020%2\u0006\u0010-\u001a\u00020%H\u0017J\u0018\u00102\u001a\u00020\u000b2\u0006\u00101\u001a\u00020%2\u0006\u0010)\u001a\u00020%H\u0016J\u0018\u00103\u001a\u00020\u000b2\u0006\u00101\u001a\u00020%2\u0006\u0010)\u001a\u00020%H\u0016R#\u00105\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001048\u0006¢\u0006\f\n\u0004\b5\u00106\u001a\u0004\b7\u00108R\"\u0010:\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u0001098\u0000X\u0080\u0004¢\u0006\f\n\u0004\b:\u0010;\u001a\u0004\b<\u0010=R\u0016\u0010>\u001a\u0004\u0018\u00018\u00008\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b>\u0010?R\u0016\u0010@\u001a\u00020%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b@\u0010AR\u0016\u0010B\u001a\u00020%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bB\u0010AR\u0016\u0010C\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bC\u0010DR\u0016\u0010E\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bE\u0010DR\u0016\u0010F\u001a\u00020%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bF\u0010AR\u0016\u0010G\u001a\u00020%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bG\u0010AR\u0016\u0010H\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bH\u0010DR\u0014\u0010I\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bI\u0010DR&\u0010K\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010J8\u0002X\u0082\u0004¢\u0006\f\n\u0004\bK\u0010L\u0012\u0004\bM\u0010NR\u001c\u0010R\u001a\u0004\u0018\u00018\u00008VX\u0096\u0004¢\u0006\f\u0012\u0004\bQ\u0010N\u001a\u0004\bO\u0010PR\u0014\u0010S\u001a\u00020\r8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bS\u0010T¨\u0006`"}, d2 = {"Landroidx/paging/ContiguousPagedList;", "", "K", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Landroidx/paging/PagedList;", "Landroidx/paging/PagedStorage$Callback;", "Landroidx/paging/LegacyPageFetcher$PageConsumer;", "Landroidx/paging/LoadType;", "type", "", f.f47744a, "", "triggerBoundaryCallback", "", "post", "tryDispatchBoundaryCallbacks", "begin", d.f25727p0, "dispatchBoundaryCallbacks", "Landroidx/paging/PagingSource$LoadResult$Page;", "onPageResult", "Landroidx/paging/LoadState;", t.b.f83859d, "onStateChanged", "deferEmpty", "deferBegin", "deferEnd", "deferBoundaryCallbacks$paging_common", "(ZZZ)V", "deferBoundaryCallbacks", "retry", "Lkotlin/Function2;", com.alipay.sdk.authjs.a.f6838i, "dispatchCurrentLoadState", "loadType", "loadState", "setInitialLoadState", "", "index", "loadAroundInternal", "detach", "count", "onInitialized", "leadingNulls", "changed", "added", "onPagePrepended", "endPosition", "onPageAppended", "startOfDrops", "onPagesRemoved", "onPagesSwappedToPlaceholder", "Landroidx/paging/PagingSource;", "pagingSource", "Landroidx/paging/PagingSource;", "getPagingSource", "()Landroidx/paging/PagingSource;", "Landroidx/paging/PagedList$BoundaryCallback;", "boundaryCallback", "Landroidx/paging/PagedList$BoundaryCallback;", "getBoundaryCallback$paging_common", "()Landroidx/paging/PagedList$BoundaryCallback;", "initialLastKey", "Ljava/lang/Object;", "prependItemsRequested", "I", "appendItemsRequested", "boundaryCallbackBeginDeferred", "Z", "boundaryCallbackEndDeferred", "lowestIndexAccessed", "highestIndexAccessed", "replacePagesWithNulls", "shouldTrim", "Landroidx/paging/LegacyPageFetcher;", "pager", "Landroidx/paging/LegacyPageFetcher;", "getPager$annotations", "()V", "getLastKey", "()Ljava/lang/Object;", "getLastKey$annotations", "lastKey", "isDetached", "()Z", "Lkotlinx/coroutines/s0;", "coroutineScope", "Lkotlinx/coroutines/n0;", "notifyDispatcher", "backgroundDispatcher", "Landroidx/paging/PagedList$Config;", "config", "initialPage", "<init>", "(Landroidx/paging/PagingSource;Lkotlinx/coroutines/s0;Lkotlinx/coroutines/n0;Lkotlinx/coroutines/n0;Landroidx/paging/PagedList$BoundaryCallback;Landroidx/paging/PagedList$Config;Landroidx/paging/PagingSource$LoadResult$Page;Ljava/lang/Object;)V", "Companion", "paging-common"}, k = 1, mv = {1, 5, 1})
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public class ContiguousPagedList<K, V> extends PagedList<V> implements PagedStorage.Callback, LegacyPageFetcher.PageConsumer<V> {
    @g
    public static final Companion Companion = new Companion(null);
    private int appendItemsRequested;
    @h
    private final PagedList.BoundaryCallback<V> boundaryCallback;
    private boolean boundaryCallbackBeginDeferred;
    private boolean boundaryCallbackEndDeferred;
    private int highestIndexAccessed;
    @h
    private final K initialLastKey;
    private int lowestIndexAccessed;
    @g
    private final LegacyPageFetcher<K, V> pager;
    @g
    private final PagingSource<K, V> pagingSource;
    private int prependItemsRequested;
    private boolean replacePagesWithNulls;
    private final boolean shouldTrim;

    /* compiled from: ContiguousPagedList.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\b\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004H\u0000¢\u0006\u0002\b\bJ%\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0004H\u0000¢\u0006\u0002\b\u000b¨\u0006\f"}, d2 = {"Landroidx/paging/ContiguousPagedList$Companion;", "", "()V", "getAppendItemsRequested", "", "prefetchDistance", "index", "itemsBeforeTrailingNulls", "getAppendItemsRequested$paging_common", "getPrependItemsRequested", "leadingNulls", "getPrependItemsRequested$paging_common", "paging-common"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int getAppendItemsRequested$paging_common(int i4, int i10, int i11) {
            return ((i10 + i4) + 1) - i11;
        }

        public final int getPrependItemsRequested$paging_common(int i4, int i10, int i11) {
            return i4 - (i10 - i11);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ContiguousPagedList(@g PagingSource<K, V> pagingSource, @g s0 coroutineScope, @g n0 notifyDispatcher, @g n0 backgroundDispatcher, @h PagedList.BoundaryCallback<V> boundaryCallback, @g PagedList.Config config, @g PagingSource.LoadResult.Page<K, V> initialPage, @h K k10) {
        super(pagingSource, coroutineScope, notifyDispatcher, new PagedStorage(), config);
        Intrinsics.checkNotNullParameter(pagingSource, "pagingSource");
        Intrinsics.checkNotNullParameter(coroutineScope, "coroutineScope");
        Intrinsics.checkNotNullParameter(notifyDispatcher, "notifyDispatcher");
        Intrinsics.checkNotNullParameter(backgroundDispatcher, "backgroundDispatcher");
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(initialPage, "initialPage");
        this.pagingSource = pagingSource;
        this.boundaryCallback = boundaryCallback;
        this.initialLastKey = k10;
        this.lowestIndexAccessed = Integer.MAX_VALUE;
        this.highestIndexAccessed = Integer.MIN_VALUE;
        this.shouldTrim = config.maxSize != Integer.MAX_VALUE;
        this.pager = new LegacyPageFetcher<>(coroutineScope, config, pagingSource, notifyDispatcher, backgroundDispatcher, this, getStorage$paging_common());
        if (config.enablePlaceholders) {
            getStorage$paging_common().init(initialPage.getItemsBefore() != Integer.MIN_VALUE ? initialPage.getItemsBefore() : 0, initialPage, initialPage.getItemsAfter() != Integer.MIN_VALUE ? initialPage.getItemsAfter() : 0, 0, this, (initialPage.getItemsBefore() == Integer.MIN_VALUE || initialPage.getItemsAfter() == Integer.MIN_VALUE) ? false : true);
        } else {
            getStorage$paging_common().init(0, initialPage, 0, initialPage.getItemsBefore() != Integer.MIN_VALUE ? initialPage.getItemsBefore() : 0, this, false);
        }
        triggerBoundaryCallback(LoadType.REFRESH, initialPage.getData());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void dispatchBoundaryCallbacks(boolean z9, boolean z10) {
        if (z9) {
            PagedList.BoundaryCallback<V> boundaryCallback = this.boundaryCallback;
            Intrinsics.checkNotNull(boundaryCallback);
            boundaryCallback.onItemAtFrontLoaded(getStorage$paging_common().getFirstLoadedItem$paging_common());
        }
        if (z10) {
            PagedList.BoundaryCallback<V> boundaryCallback2 = this.boundaryCallback;
            Intrinsics.checkNotNull(boundaryCallback2);
            boundaryCallback2.onItemAtEndLoaded(getStorage$paging_common().getLastLoadedItem$paging_common());
        }
    }

    public static /* synthetic */ void getLastKey$annotations() {
    }

    private static /* synthetic */ void getPager$annotations() {
    }

    private final void triggerBoundaryCallback(LoadType loadType, List<? extends V> list) {
        if (this.boundaryCallback != null) {
            boolean z9 = true;
            boolean z10 = getStorage$paging_common().size() == 0;
            deferBoundaryCallbacks$paging_common(z10, !z10 && loadType == LoadType.PREPEND && list.isEmpty(), (!z10 && loadType == LoadType.APPEND && list.isEmpty()) ? false : false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void tryDispatchBoundaryCallbacks(boolean z9) {
        boolean z10 = true;
        boolean z11 = this.boundaryCallbackBeginDeferred && this.lowestIndexAccessed <= getConfig().prefetchDistance;
        z10 = (!this.boundaryCallbackEndDeferred || this.highestIndexAccessed < (size() - 1) - getConfig().prefetchDistance) ? false : false;
        if (z11 || z10) {
            if (z11) {
                this.boundaryCallbackBeginDeferred = false;
            }
            if (z10) {
                this.boundaryCallbackEndDeferred = false;
            }
            if (z9) {
                l.f(getCoroutineScope$paging_common(), getNotifyDispatcher$paging_common(), null, new ContiguousPagedList$tryDispatchBoundaryCallbacks$1(this, z11, z10, null), 2, null);
            } else {
                dispatchBoundaryCallbacks(z11, z10);
            }
        }
    }

    @AnyThread
    public final void deferBoundaryCallbacks$paging_common(boolean z9, boolean z10, boolean z11) {
        if (this.boundaryCallback != null) {
            if (this.lowestIndexAccessed == Integer.MAX_VALUE) {
                this.lowestIndexAccessed = getStorage$paging_common().size();
            }
            if (this.highestIndexAccessed == Integer.MIN_VALUE) {
                this.highestIndexAccessed = 0;
            }
            if (z9 || z10 || z11) {
                l.f(getCoroutineScope$paging_common(), getNotifyDispatcher$paging_common(), null, new ContiguousPagedList$deferBoundaryCallbacks$1(z9, this, z10, z11, null), 2, null);
                return;
            }
            return;
        }
        throw new IllegalStateException("Can't defer BoundaryCallback, no instance");
    }

    @Override // androidx.paging.PagedList
    public void detach() {
        this.pager.detach();
    }

    @Override // androidx.paging.PagedList
    public void dispatchCurrentLoadState(@g Function2<? super LoadType, ? super LoadState, Unit> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.pager.getLoadStateManager().dispatchCurrentLoadState(callback);
    }

    @h
    public final PagedList.BoundaryCallback<V> getBoundaryCallback$paging_common() {
        return this.boundaryCallback;
    }

    @Override // androidx.paging.PagedList
    @h
    public K getLastKey() {
        PagingState<K, V> refreshKeyInfo = getStorage$paging_common().getRefreshKeyInfo(getConfig());
        K refreshKey = refreshKeyInfo == null ? null : getPagingSource().getRefreshKey(refreshKeyInfo);
        return refreshKey == null ? this.initialLastKey : refreshKey;
    }

    @Override // androidx.paging.PagedList
    @g
    public final PagingSource<K, V> getPagingSource() {
        return this.pagingSource;
    }

    @Override // androidx.paging.PagedList
    public boolean isDetached() {
        return this.pager.isDetached();
    }

    @Override // androidx.paging.PagedList
    @MainThread
    public void loadAroundInternal(int i4) {
        Companion companion = Companion;
        int prependItemsRequested$paging_common = companion.getPrependItemsRequested$paging_common(getConfig().prefetchDistance, i4, getStorage$paging_common().getPlaceholdersBefore());
        int appendItemsRequested$paging_common = companion.getAppendItemsRequested$paging_common(getConfig().prefetchDistance, i4, getStorage$paging_common().getPlaceholdersBefore() + getStorage$paging_common().getStorageCount());
        int max = Math.max(prependItemsRequested$paging_common, this.prependItemsRequested);
        this.prependItemsRequested = max;
        if (max > 0) {
            this.pager.trySchedulePrepend();
        }
        int max2 = Math.max(appendItemsRequested$paging_common, this.appendItemsRequested);
        this.appendItemsRequested = max2;
        if (max2 > 0) {
            this.pager.tryScheduleAppend();
        }
        this.lowestIndexAccessed = Math.min(this.lowestIndexAccessed, i4);
        this.highestIndexAccessed = Math.max(this.highestIndexAccessed, i4);
        tryDispatchBoundaryCallbacks(true);
    }

    @Override // androidx.paging.PagedStorage.Callback
    @MainThread
    public void onInitialized(int i4) {
        boolean z9 = false;
        notifyInserted$paging_common(0, i4);
        this.replacePagesWithNulls = (getStorage$paging_common().getPlaceholdersBefore() > 0 || getStorage$paging_common().getPlaceholdersAfter() > 0) ? true : true;
    }

    @Override // androidx.paging.PagedStorage.Callback
    @MainThread
    public void onPageAppended(int i4, int i10, int i11) {
        notifyChanged(i4, i10);
        notifyInserted$paging_common(i4 + i10, i11);
    }

    @Override // androidx.paging.PagedStorage.Callback
    @MainThread
    public void onPagePrepended(int i4, int i10, int i11) {
        notifyChanged(i4, i10);
        notifyInserted$paging_common(0, i11);
        this.lowestIndexAccessed += i11;
        this.highestIndexAccessed += i11;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0062, code lost:
        if ((!r0.isEmpty()) != false) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0064, code lost:
        r3 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0088, code lost:
        if ((!r0.isEmpty()) != false) goto L34;
     */
    @Override // androidx.paging.LegacyPageFetcher.PageConsumer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean onPageResult(@m8.g androidx.paging.LoadType r9, @m8.g androidx.paging.PagingSource.LoadResult.Page<?, V> r10) {
        /*
            Method dump skipped, instructions count: 266
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.paging.ContiguousPagedList.onPageResult(androidx.paging.LoadType, androidx.paging.PagingSource$LoadResult$Page):boolean");
    }

    @Override // androidx.paging.PagedStorage.Callback
    public void onPagesRemoved(int i4, int i10) {
        notifyRemoved(i4, i10);
    }

    @Override // androidx.paging.PagedStorage.Callback
    public void onPagesSwappedToPlaceholder(int i4, int i10) {
        notifyChanged(i4, i10);
    }

    @Override // androidx.paging.LegacyPageFetcher.PageConsumer
    public void onStateChanged(@g LoadType type, @g LoadState state) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(state, "state");
        dispatchStateChangeAsync$paging_common(type, state);
    }

    @Override // androidx.paging.PagedList
    public void retry() {
        Runnable refreshRetryCallback$paging_common;
        super.retry();
        this.pager.retry();
        if (!(this.pager.getLoadStateManager().getRefreshState() instanceof LoadState.Error) || (refreshRetryCallback$paging_common = getRefreshRetryCallback$paging_common()) == null) {
            return;
        }
        refreshRetryCallback$paging_common.run();
    }

    @Override // androidx.paging.PagedList
    public void setInitialLoadState(@g LoadType loadType, @g LoadState loadState) {
        Intrinsics.checkNotNullParameter(loadType, "loadType");
        Intrinsics.checkNotNullParameter(loadState, "loadState");
        this.pager.getLoadStateManager().setState(loadType, loadState);
    }
}

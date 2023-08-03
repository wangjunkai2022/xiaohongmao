package androidx.paging;

import androidx.annotation.IntRange;
import androidx.annotation.MainThread;
import androidx.annotation.RestrictTo;
import androidx.exifinterface.media.ExifInterface;
import androidx.paging.LoadState;
import androidx.paging.PagingSource;
import com.google.android.gms.common.internal.x;
import com.qennnsad.aknkaksd.data.repository.f;
import io.sentry.protocol.s;
import io.sentry.protocol.t;
import java.lang.ref.WeakReference;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.a2;
import kotlinx.coroutines.i1;
import kotlinx.coroutines.k;
import kotlinx.coroutines.l;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.s0;
import kotlinx.coroutines.x1;
import m8.g;
import m8.h;

/* compiled from: PagedList.kt */
@Metadata(bv = {}, d1 = {"\u0000\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0010\b'\u0018\u0000 l*\b\b\u0000\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00000\u0003:\u0006mnolpqBA\b\u0000\u0012\u0010\u00101\u001a\f\u0012\u0002\b\u0003\u0012\u0004\u0012\u00028\u000000\u0012\u0006\u00106\u001a\u000205\u0012\u0006\u0010;\u001a\u00020:\u0012\f\u0010@\u001a\b\u0012\u0004\u0012\u00028\u00000?\u0012\u0006\u0010E\u001a\u00020D¢\u0006\u0004\bj\u0010kJ\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004H\u0007J\b\u0010\u0007\u001a\u00020\u0006H\u0007J\"\u0010\r\u001a\u00020\u000b2\u0018\u0010\f\u001a\u0014\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\bH'J\u0010\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u0006H'J\b\u0010\u0010\u001a\u00020\u000bH&J\u0018\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\nH\u0017J\b\u0010\u0014\u001a\u00020\u000bH\u0016J\u0012\u0010\u0017\u001a\u00020\u000b2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0007J\u001f\u0010\u001c\u001a\u00020\u000b2\u0006\u0010\u0018\u001a\u00020\t2\u0006\u0010\u0019\u001a\u00020\nH\u0000¢\u0006\u0004\b\u001a\u0010\u001bJ\u001a\u0010\u001d\u001a\u0004\u0018\u00018\u00002\u0006\u0010\u000e\u001a\u00020\u0006H\u0096\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u000e\u0010\u001f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u0006J\f\u0010!\u001a\b\u0012\u0004\u0012\u00028\u00000 J \u0010#\u001a\u00020\u000b2\u0018\u0010\"\u001a\u0014\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\bJ \u0010$\u001a\u00020\u000b2\u0018\u0010\"\u001a\u0014\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\bJ \u0010'\u001a\u00020\u000b2\u000e\u0010%\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010 2\u0006\u0010\f\u001a\u00020&H\u0007J\u000e\u0010'\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020&J\u000e\u0010(\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020&J\u001f\u0010-\u001a\u00020\u000b2\u0006\u0010)\u001a\u00020\u00062\u0006\u0010*\u001a\u00020\u0006H\u0000¢\u0006\u0004\b+\u0010,J\u0018\u0010.\u001a\u00020\u000b2\u0006\u0010)\u001a\u00020\u00062\u0006\u0010*\u001a\u00020\u0006H\u0007J\u0018\u0010/\u001a\u00020\u000b2\u0006\u0010)\u001a\u00020\u00062\u0006\u0010*\u001a\u00020\u0006H\u0007R$\u00101\u001a\f\u0012\u0002\b\u0003\u0012\u0004\u0012\u00028\u0000008\u0016X\u0097\u0004¢\u0006\f\n\u0004\b1\u00102\u001a\u0004\b3\u00104R\u001a\u00106\u001a\u0002058\u0000X\u0080\u0004¢\u0006\f\n\u0004\b6\u00107\u001a\u0004\b8\u00109R\u001a\u0010;\u001a\u00020:8\u0000X\u0080\u0004¢\u0006\f\n\u0004\b;\u0010<\u001a\u0004\b=\u0010>R \u0010@\u001a\b\u0012\u0004\u0012\u00028\u00000?8\u0000X\u0080\u0004¢\u0006\f\n\u0004\b@\u0010A\u001a\u0004\bB\u0010CR\u0017\u0010E\u001a\u00020D8\u0006¢\u0006\f\n\u0004\bE\u0010F\u001a\u0004\bG\u0010HR$\u0010\u0016\u001a\u0004\u0018\u00010\u00158\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010I\u001a\u0004\bJ\u0010K\"\u0004\bL\u0010MR\u001a\u0010N\u001a\u00020\u00068\u0000X\u0080\u0004¢\u0006\f\n\u0004\bN\u0010O\u001a\u0004\bP\u0010QR \u0010T\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020&0S0R8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bT\u0010UR2\u0010V\u001a \u0012\u001c\u0012\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\b0S0R8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bV\u0010UR\u0014\u0010X\u001a\u00020\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bW\u0010QR$\u0010^\u001a\f\u0012\u0002\b\u0003\u0012\u0004\u0012\u00028\u00000Y8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\\\u0010]\u001a\u0004\bZ\u0010[R\u0016\u0010a\u001a\u0004\u0018\u00010\u00018&X¦\u0004¢\u0006\u0006\u001a\u0004\b_\u0010`R\u0014\u0010c\u001a\u00020b8&X¦\u0004¢\u0006\u0006\u001a\u0004\bc\u0010dR\u0011\u0010f\u001a\u00020\u00068F¢\u0006\u0006\u001a\u0004\be\u0010QR\u0014\u0010g\u001a\u00020b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bg\u0010dR\u0011\u0010i\u001a\u00020\u00068F¢\u0006\u0006\u001a\u0004\bh\u0010Q¨\u0006r"}, d2 = {"Landroidx/paging/PagedList;", "", ExifInterface.GPS_DIRECTION_TRUE, "Ljava/util/AbstractList;", "Landroidx/paging/NullPaddedList;", "getNullPaddedList", "", "lastLoad", "Lkotlin/Function2;", "Landroidx/paging/LoadType;", "Landroidx/paging/LoadState;", "", com.alipay.sdk.authjs.a.f6838i, "dispatchCurrentLoadState", "index", "loadAroundInternal", "detach", "loadType", "loadState", "setInitialLoadState", "retry", "Ljava/lang/Runnable;", "refreshRetryCallback", "setRetryCallback", "type", t.b.f83859d, "dispatchStateChangeAsync$paging_common", "(Landroidx/paging/LoadType;Landroidx/paging/LoadState;)V", "dispatchStateChangeAsync", "get", "(I)Ljava/lang/Object;", "loadAround", "", s.b.f83846c, x.a.f29212a, "addWeakLoadStateListener", "removeWeakLoadStateListener", "previousSnapshot", "Landroidx/paging/PagedList$Callback;", "addWeakCallback", "removeWeakCallback", "position", "count", "notifyInserted$paging_common", "(II)V", "notifyInserted", "notifyChanged", "notifyRemoved", "Landroidx/paging/PagingSource;", "pagingSource", "Landroidx/paging/PagingSource;", "getPagingSource", "()Landroidx/paging/PagingSource;", "Lkotlinx/coroutines/s0;", "coroutineScope", "Lkotlinx/coroutines/s0;", "getCoroutineScope$paging_common", "()Lkotlinx/coroutines/s0;", "Lkotlinx/coroutines/n0;", "notifyDispatcher", "Lkotlinx/coroutines/n0;", "getNotifyDispatcher$paging_common", "()Lkotlinx/coroutines/n0;", "Landroidx/paging/PagedStorage;", "storage", "Landroidx/paging/PagedStorage;", "getStorage$paging_common", "()Landroidx/paging/PagedStorage;", "Landroidx/paging/PagedList$Config;", "config", "Landroidx/paging/PagedList$Config;", "getConfig", "()Landroidx/paging/PagedList$Config;", "Ljava/lang/Runnable;", "getRefreshRetryCallback$paging_common", "()Ljava/lang/Runnable;", "setRefreshRetryCallback$paging_common", "(Ljava/lang/Runnable;)V", "requiredRemainder", "I", "getRequiredRemainder$paging_common", "()I", "", "Ljava/lang/ref/WeakReference;", "callbacks", "Ljava/util/List;", "loadStateListeners", "getSize", f.f47745b, "Landroidx/paging/DataSource;", "getDataSource", "()Landroidx/paging/DataSource;", "getDataSource$annotations", "()V", "dataSource", "getLastKey", "()Ljava/lang/Object;", "lastKey", "", "isDetached", "()Z", "getLoadedCount", "loadedCount", "isImmutable", "getPositionOffset", "positionOffset", "<init>", "(Landroidx/paging/PagingSource;Lkotlinx/coroutines/s0;Lkotlinx/coroutines/n0;Landroidx/paging/PagedStorage;Landroidx/paging/PagedList$Config;)V", "Companion", "BoundaryCallback", "Builder", "Callback", "Config", "LoadStateManager", "paging-common"}, k = 1, mv = {1, 5, 1})
@Deprecated(message = "PagedList is deprecated and has been replaced by PagingData")
/* loaded from: classes.dex */
public abstract class PagedList<T> extends AbstractList<T> {
    @g
    public static final Companion Companion = new Companion(null);
    @g
    private final List<WeakReference<Callback>> callbacks;
    @g
    private final Config config;
    @g
    private final s0 coroutineScope;
    @g
    private final List<WeakReference<Function2<LoadType, LoadState, Unit>>> loadStateListeners;
    @g
    private final n0 notifyDispatcher;
    @g
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    private final PagingSource<?, T> pagingSource;
    @h
    private Runnable refreshRetryCallback;
    private final int requiredRemainder;
    @g
    private final PagedStorage<T> storage;

    /* compiled from: PagedList.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\b'\u0018\u0000*\b\b\u0001\u0010\u0001*\u00020\u00022\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\u0015\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00028\u0001H\u0016¢\u0006\u0002\u0010\u0007J\u0015\u0010\b\u001a\u00020\u00052\u0006\u0010\t\u001a\u00028\u0001H\u0016¢\u0006\u0002\u0010\u0007J\b\u0010\n\u001a\u00020\u0005H\u0016¨\u0006\u000b"}, d2 = {"Landroidx/paging/PagedList$BoundaryCallback;", ExifInterface.GPS_DIRECTION_TRUE, "", "()V", "onItemAtEndLoaded", "", "itemAtEnd", "(Ljava/lang/Object;)V", "onItemAtFrontLoaded", "itemAtFront", "onZeroItemsLoaded", "paging-common"}, k = 1, mv = {1, 5, 1}, xi = 48)
    @MainThread
    /* loaded from: classes.dex */
    public static abstract class BoundaryCallback<T> {
        public void onItemAtEndLoaded(@g T itemAtEnd) {
            Intrinsics.checkNotNullParameter(itemAtEnd, "itemAtEnd");
        }

        public void onItemAtFrontLoaded(@g T itemAtFront) {
            Intrinsics.checkNotNullParameter(itemAtFront, "itemAtFront");
        }

        public void onZeroItemsLoaded() {
        }
    }

    /* compiled from: PagedList.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b&\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H&J\u0018\u0010\b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H&J\u0018\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H&¨\u0006\n"}, d2 = {"Landroidx/paging/PagedList$Callback;", "", "()V", "onChanged", "", "position", "", "count", "onInserted", "onRemoved", "paging-common"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static abstract class Callback {
        public abstract void onChanged(int i4, int i10);

        public abstract void onInserted(int i4, int i10);

        public abstract void onRemoved(int i4, int i10);
    }

    /* compiled from: PagedList.kt */
    @Metadata(bv = {}, d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\b\u0087\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u001e\u0010\u001fJ\u008d\u0001\u0010\u0013\u001a\b\u0012\u0004\u0012\u00028\u00020\u0012\"\b\b\u0001\u0010\u0002*\u00020\u0001\"\b\b\u0002\u0010\u0003*\u00020\u00012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u00042\u0014\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\n2\u000e\u0010\u000e\u001a\n\u0012\u0004\u0012\u00028\u0002\u0018\u00010\r2\u0006\u0010\u0010\u001a\u00020\u000f2\b\u0010\u0011\u001a\u0004\u0018\u00018\u0001H\u0007¢\u0006\u0004\b\u0013\u0010\u0014J'\u0010\u001d\u001a\u00020\u001a2\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u00152\u0006\u0010\u0019\u001a\u00020\u0018H\u0000¢\u0006\u0004\b\u001b\u0010\u001c¨\u0006 "}, d2 = {"Landroidx/paging/PagedList$Companion;", "", "K", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/paging/PagingSource;", "pagingSource", "Landroidx/paging/PagingSource$LoadResult$Page;", "initialPage", "Lkotlinx/coroutines/s0;", "coroutineScope", "Lkotlinx/coroutines/n0;", "notifyDispatcher", "fetchDispatcher", "Landroidx/paging/PagedList$BoundaryCallback;", "boundaryCallback", "Landroidx/paging/PagedList$Config;", "config", "key", "Landroidx/paging/PagedList;", "create", "(Landroidx/paging/PagingSource;Landroidx/paging/PagingSource$LoadResult$Page;Lkotlinx/coroutines/s0;Lkotlinx/coroutines/n0;Lkotlinx/coroutines/n0;Landroidx/paging/PagedList$BoundaryCallback;Landroidx/paging/PagedList$Config;Ljava/lang/Object;)Landroidx/paging/PagedList;", "", "currentSize", "snapshotSize", "Landroidx/paging/PagedList$Callback;", com.alipay.sdk.authjs.a.f6838i, "", "dispatchNaiveUpdatesSinceSnapshot$paging_common", "(IILandroidx/paging/PagedList$Callback;)V", "dispatchNaiveUpdatesSinceSnapshot", "<init>", "()V", "paging-common"}, k = 1, mv = {1, 5, 1})
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @g
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public final <K, T> PagedList<T> create(@g PagingSource<K, T> pagingSource, @h PagingSource.LoadResult.Page<K, T> page, @g s0 coroutineScope, @g n0 notifyDispatcher, @g n0 fetchDispatcher, @h BoundaryCallback<T> boundaryCallback, @g Config config, @h K k10) {
            PagingSource.LoadResult.Page<K, T> page2;
            Object b10;
            Intrinsics.checkNotNullParameter(pagingSource, "pagingSource");
            Intrinsics.checkNotNullParameter(coroutineScope, "coroutineScope");
            Intrinsics.checkNotNullParameter(notifyDispatcher, "notifyDispatcher");
            Intrinsics.checkNotNullParameter(fetchDispatcher, "fetchDispatcher");
            Intrinsics.checkNotNullParameter(config, "config");
            if (page == null) {
                b10 = k.b(null, new PagedList$Companion$create$resolvedInitialPage$1(pagingSource, new PagingSource.LoadParams.Refresh(k10, config.initialLoadSizeHint, config.enablePlaceholders), null), 1, null);
                page2 = (PagingSource.LoadResult.Page) b10;
            } else {
                page2 = page;
            }
            return new ContiguousPagedList(pagingSource, coroutineScope, notifyDispatcher, fetchDispatcher, boundaryCallback, config, page2, k10);
        }

        public final void dispatchNaiveUpdatesSinceSnapshot$paging_common(int i4, int i10, @g Callback callback) {
            Intrinsics.checkNotNullParameter(callback, "callback");
            if (i10 < i4) {
                if (i10 > 0) {
                    callback.onChanged(0, i10);
                }
                int i11 = i4 - i10;
                if (i11 > 0) {
                    callback.onInserted(i10, i11);
                    return;
                }
                return;
            }
            if (i4 > 0) {
                callback.onChanged(0, i4);
            }
            int i12 = i10 - i4;
            if (i12 != 0) {
                callback.onRemoved(i4, i12);
            }
        }
    }

    /* compiled from: PagedList.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\u0018\u0000 \u000b2\u00020\u0001:\u0002\n\u000bB/\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003¢\u0006\u0002\u0010\tR\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Landroidx/paging/PagedList$Config;", "", "pageSize", "", "prefetchDistance", "enablePlaceholders", "", "initialLoadSizeHint", "maxSize", "(IIZII)V", "Builder", "Companion", "paging-common"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Config {
        @g
        public static final Companion Companion = new Companion(null);
        public static final int MAX_SIZE_UNBOUNDED = Integer.MAX_VALUE;
        @JvmField
        public final boolean enablePlaceholders;
        @JvmField
        public final int initialLoadSizeHint;
        @JvmField
        public final int maxSize;
        @JvmField
        public final int pageSize;
        @JvmField
        public final int prefetchDistance;

        /* compiled from: PagedList.kt */
        @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\n\u001a\u00020\u000bJ\u000e\u0010\f\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0004J\u0010\u0010\r\u001a\u00020\u00002\b\b\u0001\u0010\u0005\u001a\u00020\u0006J\u0010\u0010\u000e\u001a\u00020\u00002\b\b\u0001\u0010\u0007\u001a\u00020\u0006J\u0010\u0010\u000f\u001a\u00020\u00002\b\b\u0001\u0010\b\u001a\u00020\u0006J\u0010\u0010\u0010\u001a\u00020\u00002\b\b\u0001\u0010\t\u001a\u00020\u0006R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Landroidx/paging/PagedList$Config$Builder;", "", "()V", "enablePlaceholders", "", "initialLoadSizeHint", "", "maxSize", "pageSize", "prefetchDistance", "build", "Landroidx/paging/PagedList$Config;", "setEnablePlaceholders", "setInitialLoadSizeHint", "setMaxSize", "setPageSize", "setPrefetchDistance", "Companion", "paging-common"}, k = 1, mv = {1, 5, 1}, xi = 48)
        /* loaded from: classes.dex */
        public static final class Builder {
            @g
            public static final Companion Companion = new Companion(null);
            public static final int DEFAULT_INITIAL_PAGE_MULTIPLIER = 3;
            private int pageSize = -1;
            private int prefetchDistance = -1;
            private int initialLoadSizeHint = -1;
            private boolean enablePlaceholders = true;
            private int maxSize = Integer.MAX_VALUE;

            /* compiled from: PagedList.kt */
            @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Landroidx/paging/PagedList$Config$Builder$Companion;", "", "()V", "DEFAULT_INITIAL_PAGE_MULTIPLIER", "", "paging-common"}, k = 1, mv = {1, 5, 1}, xi = 48)
            /* loaded from: classes.dex */
            public static final class Companion {
                private Companion() {
                }

                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }
            }

            @g
            public final Config build() {
                if (this.prefetchDistance < 0) {
                    this.prefetchDistance = this.pageSize;
                }
                if (this.initialLoadSizeHint < 0) {
                    this.initialLoadSizeHint = this.pageSize * 3;
                }
                if (!this.enablePlaceholders && this.prefetchDistance == 0) {
                    throw new IllegalArgumentException("Placeholders and prefetch are the only ways to trigger loading of more data in the PagedList, so either placeholders must be enabled, or prefetch distance must be > 0.");
                }
                int i4 = this.maxSize;
                if (i4 != Integer.MAX_VALUE && i4 < this.pageSize + (this.prefetchDistance * 2)) {
                    throw new IllegalArgumentException("Maximum size must be at least pageSize + 2*prefetchDist, pageSize=" + this.pageSize + ", prefetchDist=" + this.prefetchDistance + ", maxSize=" + this.maxSize);
                }
                return new Config(this.pageSize, this.prefetchDistance, this.enablePlaceholders, this.initialLoadSizeHint, this.maxSize);
            }

            @g
            public final Builder setEnablePlaceholders(boolean z9) {
                this.enablePlaceholders = z9;
                return this;
            }

            @g
            public final Builder setInitialLoadSizeHint(@IntRange(from = 1) int i4) {
                this.initialLoadSizeHint = i4;
                return this;
            }

            @g
            public final Builder setMaxSize(@IntRange(from = 2) int i4) {
                this.maxSize = i4;
                return this;
            }

            @g
            public final Builder setPageSize(@IntRange(from = 1) int i4) {
                if (i4 >= 1) {
                    this.pageSize = i4;
                    return this;
                }
                throw new IllegalArgumentException("Page size must be a positive number");
            }

            @g
            public final Builder setPrefetchDistance(@IntRange(from = 0) int i4) {
                this.prefetchDistance = i4;
                return this;
            }
        }

        /* compiled from: PagedList.kt */
        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\b\n\u0000\u0012\u0004\b\u0005\u0010\u0002¨\u0006\u0006"}, d2 = {"Landroidx/paging/PagedList$Config$Companion;", "", "()V", "MAX_SIZE_UNBOUNDED", "", "getMAX_SIZE_UNBOUNDED$annotations", "paging-common"}, k = 1, mv = {1, 5, 1}, xi = 48)
        /* loaded from: classes.dex */
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public static /* synthetic */ void getMAX_SIZE_UNBOUNDED$annotations() {
            }
        }

        public Config(int i4, int i10, boolean z9, int i11, int i12) {
            this.pageSize = i4;
            this.prefetchDistance = i10;
            this.enablePlaceholders = z9;
            this.initialLoadSizeHint = i11;
            this.maxSize = i12;
        }
    }

    /* compiled from: PagedList.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b'\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J \u0010\u000f\u001a\u00020\u00102\u0018\u0010\u0011\u001a\u0014\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00100\u0012J\u0018\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u0004H'J\u0016\u0010\u0017\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u0004R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001a\u0010\f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\b¨\u0006\u0018"}, d2 = {"Landroidx/paging/PagedList$LoadStateManager;", "", "()V", "endState", "Landroidx/paging/LoadState;", "getEndState", "()Landroidx/paging/LoadState;", "setEndState", "(Landroidx/paging/LoadState;)V", "refreshState", "getRefreshState", "setRefreshState", "startState", "getStartState", "setStartState", "dispatchCurrentLoadState", "", com.alipay.sdk.authjs.a.f6838i, "Lkotlin/Function2;", "Landroidx/paging/LoadType;", "onStateChanged", "type", t.b.f83859d, "setState", "paging-common"}, k = 1, mv = {1, 5, 1}, xi = 48)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes.dex */
    public static abstract class LoadStateManager {
        @g
        private LoadState endState;
        @g
        private LoadState refreshState;
        @g
        private LoadState startState;

        /* compiled from: PagedList.kt */
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

        public LoadStateManager() {
            LoadState.NotLoading.Companion companion = LoadState.NotLoading.Companion;
            this.refreshState = companion.getIncomplete$paging_common();
            this.startState = companion.getIncomplete$paging_common();
            this.endState = companion.getIncomplete$paging_common();
        }

        public final void dispatchCurrentLoadState(@g Function2<? super LoadType, ? super LoadState, Unit> callback) {
            Intrinsics.checkNotNullParameter(callback, "callback");
            callback.invoke(LoadType.REFRESH, this.refreshState);
            callback.invoke(LoadType.PREPEND, this.startState);
            callback.invoke(LoadType.APPEND, this.endState);
        }

        @g
        public final LoadState getEndState() {
            return this.endState;
        }

        @g
        public final LoadState getRefreshState() {
            return this.refreshState;
        }

        @g
        public final LoadState getStartState() {
            return this.startState;
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public abstract void onStateChanged(@g LoadType loadType, @g LoadState loadState);

        public final void setEndState(@g LoadState loadState) {
            Intrinsics.checkNotNullParameter(loadState, "<set-?>");
            this.endState = loadState;
        }

        public final void setRefreshState(@g LoadState loadState) {
            Intrinsics.checkNotNullParameter(loadState, "<set-?>");
            this.refreshState = loadState;
        }

        public final void setStartState(@g LoadState loadState) {
            Intrinsics.checkNotNullParameter(loadState, "<set-?>");
            this.startState = loadState;
        }

        public final void setState(@g LoadType type, @g LoadState state) {
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(state, "state");
            int i4 = WhenMappings.$EnumSwitchMapping$0[type.ordinal()];
            if (i4 != 1) {
                if (i4 != 2) {
                    if (i4 == 3) {
                        if (Intrinsics.areEqual(this.endState, state)) {
                            return;
                        }
                        this.endState = state;
                    }
                } else if (Intrinsics.areEqual(this.startState, state)) {
                    return;
                } else {
                    this.startState = state;
                }
            } else if (Intrinsics.areEqual(this.refreshState, state)) {
                return;
            } else {
                this.refreshState = state;
            }
            onStateChanged(type, state);
        }
    }

    public PagedList(@g PagingSource<?, T> pagingSource, @g s0 coroutineScope, @g n0 notifyDispatcher, @g PagedStorage<T> storage, @g Config config) {
        Intrinsics.checkNotNullParameter(pagingSource, "pagingSource");
        Intrinsics.checkNotNullParameter(coroutineScope, "coroutineScope");
        Intrinsics.checkNotNullParameter(notifyDispatcher, "notifyDispatcher");
        Intrinsics.checkNotNullParameter(storage, "storage");
        Intrinsics.checkNotNullParameter(config, "config");
        this.pagingSource = pagingSource;
        this.coroutineScope = coroutineScope;
        this.notifyDispatcher = notifyDispatcher;
        this.storage = storage;
        this.config = config;
        this.requiredRemainder = (config.prefetchDistance * 2) + config.pageSize;
        this.callbacks = new ArrayList();
        this.loadStateListeners = new ArrayList();
    }

    @JvmStatic
    @g
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static final <K, T> PagedList<T> create(@g PagingSource<K, T> pagingSource, @h PagingSource.LoadResult.Page<K, T> page, @g s0 s0Var, @g n0 n0Var, @g n0 n0Var2, @h BoundaryCallback<T> boundaryCallback, @g Config config, @h K k10) {
        return Companion.create(pagingSource, page, s0Var, n0Var, n0Var2, boundaryCallback, config, k10);
    }

    @Deprecated(message = "DataSource is deprecated and has been replaced by PagingSource. PagedList offers indirect ways of controlling fetch ('loadAround()', 'retry()') so that you should not need to access the DataSource/PagingSource.")
    public static /* synthetic */ void getDataSource$annotations() {
    }

    @Deprecated(message = "Dispatching a diff since snapshot created is behavior that can be instead tracked by attaching a Callback to the PagedList that is mutating, and tracking changes since calling PagedList.snapshot().")
    public final void addWeakCallback(@h List<? extends T> list, @g Callback callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        if (list != null && list != this) {
            Companion.dispatchNaiveUpdatesSinceSnapshot$paging_common(size(), list.size(), callback);
        }
        addWeakCallback(callback);
    }

    public final void addWeakLoadStateListener(@g Function2<? super LoadType, ? super LoadState, Unit> listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        CollectionsKt__MutableCollectionsKt.removeAll((List) this.loadStateListeners, (Function1) PagedList$addWeakLoadStateListener$1.INSTANCE);
        this.loadStateListeners.add(new WeakReference<>(listener));
        dispatchCurrentLoadState(listener);
    }

    public abstract void detach();

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public abstract void dispatchCurrentLoadState(@g Function2<? super LoadType, ? super LoadState, Unit> function2);

    public final void dispatchStateChangeAsync$paging_common(@g LoadType type, @g LoadState state) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(state, "state");
        l.f(this.coroutineScope, this.notifyDispatcher, null, new PagedList$dispatchStateChangeAsync$1(this, type, state, null), 2, null);
    }

    @Override // java.util.AbstractList, java.util.List
    @h
    public T get(int i4) {
        return this.storage.get(i4);
    }

    @g
    public final Config getConfig() {
        return this.config;
    }

    @g
    public final s0 getCoroutineScope$paging_common() {
        return this.coroutineScope;
    }

    @g
    public final DataSource<?, T> getDataSource() {
        PagingSource<?, T> pagingSource = getPagingSource();
        if (pagingSource instanceof LegacyPagingSource) {
            return ((LegacyPagingSource) pagingSource).getDataSource$paging_common();
        }
        throw new IllegalStateException("Attempt to access dataSource on a PagedList that was instantiated with a " + ((Object) pagingSource.getClass().getSimpleName()) + " instead of a DataSource");
    }

    @h
    public abstract Object getLastKey();

    public final int getLoadedCount() {
        return this.storage.getStorageCount();
    }

    @g
    public final n0 getNotifyDispatcher$paging_common() {
        return this.notifyDispatcher;
    }

    @g
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public final NullPaddedList<T> getNullPaddedList() {
        return this.storage;
    }

    @g
    public PagingSource<?, T> getPagingSource() {
        return this.pagingSource;
    }

    public final int getPositionOffset() {
        return this.storage.getPositionOffset();
    }

    @h
    public final Runnable getRefreshRetryCallback$paging_common() {
        return this.refreshRetryCallback;
    }

    public final int getRequiredRemainder$paging_common() {
        return this.requiredRemainder;
    }

    public int getSize() {
        return this.storage.size();
    }

    @g
    public final PagedStorage<T> getStorage$paging_common() {
        return this.storage;
    }

    public abstract boolean isDetached();

    public boolean isImmutable() {
        return isDetached();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public final int lastLoad() {
        return this.storage.getLastLoadAroundIndex();
    }

    public final void loadAround(int i4) {
        if (i4 >= 0 && i4 < size()) {
            this.storage.setLastLoadAroundIndex(i4);
            loadAroundInternal(i4);
            return;
        }
        throw new IndexOutOfBoundsException("Index: " + i4 + ", Size: " + size());
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public abstract void loadAroundInternal(int i4);

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public final void notifyChanged(int i4, int i10) {
        List<WeakReference> reversed;
        if (i10 == 0) {
            return;
        }
        reversed = CollectionsKt___CollectionsKt.reversed(this.callbacks);
        for (WeakReference weakReference : reversed) {
            Callback callback = (Callback) weakReference.get();
            if (callback != null) {
                callback.onChanged(i4, i10);
            }
        }
    }

    public final void notifyInserted$paging_common(int i4, int i10) {
        List<WeakReference> reversed;
        if (i10 == 0) {
            return;
        }
        reversed = CollectionsKt___CollectionsKt.reversed(this.callbacks);
        for (WeakReference weakReference : reversed) {
            Callback callback = (Callback) weakReference.get();
            if (callback != null) {
                callback.onInserted(i4, i10);
            }
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public final void notifyRemoved(int i4, int i10) {
        List<WeakReference> reversed;
        if (i10 == 0) {
            return;
        }
        reversed = CollectionsKt___CollectionsKt.reversed(this.callbacks);
        for (WeakReference weakReference : reversed) {
            Callback callback = (Callback) weakReference.get();
            if (callback != null) {
                callback.onRemoved(i4, i10);
            }
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ T remove(int i4) {
        return (T) removeAt(i4);
    }

    public /* bridge */ Object removeAt(int i4) {
        return super.remove(i4);
    }

    public final void removeWeakCallback(@g Callback callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        CollectionsKt__MutableCollectionsKt.removeAll((List) this.callbacks, (Function1) new PagedList$removeWeakCallback$1(callback));
    }

    public final void removeWeakLoadStateListener(@g Function2<? super LoadType, ? super LoadState, Unit> listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        CollectionsKt__MutableCollectionsKt.removeAll((List) this.loadStateListeners, (Function1) new PagedList$removeWeakLoadStateListener$1(listener));
    }

    public void retry() {
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setInitialLoadState(@g LoadType loadType, @g LoadState loadState) {
        Intrinsics.checkNotNullParameter(loadType, "loadType");
        Intrinsics.checkNotNullParameter(loadState, "loadState");
    }

    public final void setRefreshRetryCallback$paging_common(@h Runnable runnable) {
        this.refreshRetryCallback = runnable;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public final void setRetryCallback(@h Runnable runnable) {
        this.refreshRetryCallback = runnable;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ int size() {
        return getSize();
    }

    @g
    public final List<T> snapshot() {
        return isImmutable() ? this : new SnapshotPagedList(this);
    }

    public final void addWeakCallback(@g Callback callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        CollectionsKt__MutableCollectionsKt.removeAll((List) this.callbacks, (Function1) PagedList$addWeakCallback$1.INSTANCE);
        this.callbacks.add(new WeakReference<>(callback));
    }

    /* compiled from: PagedList.kt */
    @Metadata(bv = {}, d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\u0005\b\u0007\u0018\u0000*\b\b\u0001\u0010\u0002*\u00020\u0001*\b\b\u0002\u0010\u0003*\u00020\u00012\u00020\u0001B%\b\u0016\u0012\u0012\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u001c\u0012\u0006\u0010#\u001a\u00020\"¢\u0006\u0004\b+\u0010,B%\b\u0016\u0012\u0012\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u001c\u0012\u0006\u0010.\u001a\u00020-¢\u0006\u0004\b+\u0010/B9\b\u0016\u0012\u0012\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u0019\u0012\u0012\u0010 \u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u001f\u0012\u0006\u0010#\u001a\u00020\"¢\u0006\u0004\b+\u00100B9\b\u0016\u0012\u0012\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u0019\u0012\u0012\u0010 \u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u001f\u0012\u0006\u0010.\u001a\u00020-¢\u0006\u0004\b+\u00101J\u001a\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0004J\u001c\u0010\t\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u00002\u0006\u0010\b\u001a\u00020\u0007H\u0007J\u001a\u0010\f\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u00002\u0006\u0010\u000b\u001a\u00020\nJ\u001c\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u00002\u0006\u0010\r\u001a\u00020\u0007H\u0007J\u001a\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u00002\u0006\u0010\u000f\u001a\u00020\nJ\"\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u00002\u000e\u0010\u0012\u001a\n\u0012\u0004\u0012\u00028\u0002\u0018\u00010\u0011J#\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u00002\b\u0010\u0014\u001a\u0004\u0018\u00018\u0001¢\u0006\u0004\b\u0015\u0010\u0016J\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00028\u00020\u0017R\"\u0010\u001a\u001a\u0010\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0018\u00010\u00198\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR$\u0010\u001d\u001a\u0010\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\"\u0010 \u001a\u0010\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u0002\u0018\u00010\u001f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010!R\u0014\u0010#\u001a\u00020\"8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010$R\u001c\u0010\u0005\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\f\n\u0004\b\u0005\u0010%\u0012\u0004\b&\u0010'R\u0018\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000b\u0010(R\u0018\u0010\u000f\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010(R\u001e\u0010\u0012\u001a\n\u0012\u0004\u0012\u00028\u0002\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010)R\u0018\u0010\u0014\u001a\u0004\u0018\u00018\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010*¨\u00062"}, d2 = {"Landroidx/paging/PagedList$Builder;", "", "Key", "Value", "Lkotlinx/coroutines/s0;", "coroutineScope", "setCoroutineScope", "Ljava/util/concurrent/Executor;", "notifyExecutor", "setNotifyExecutor", "Lkotlinx/coroutines/n0;", "notifyDispatcher", "setNotifyDispatcher", "fetchExecutor", "setFetchExecutor", "fetchDispatcher", "setFetchDispatcher", "Landroidx/paging/PagedList$BoundaryCallback;", "boundaryCallback", "setBoundaryCallback", "initialKey", "setInitialKey", "(Ljava/lang/Object;)Landroidx/paging/PagedList$Builder;", "Landroidx/paging/PagedList;", "build", "Landroidx/paging/PagingSource;", "pagingSource", "Landroidx/paging/PagingSource;", "Landroidx/paging/DataSource;", "dataSource", "Landroidx/paging/DataSource;", "Landroidx/paging/PagingSource$LoadResult$Page;", "initialPage", "Landroidx/paging/PagingSource$LoadResult$Page;", "Landroidx/paging/PagedList$Config;", "config", "Landroidx/paging/PagedList$Config;", "Lkotlinx/coroutines/s0;", "getCoroutineScope$annotations", "()V", "Lkotlinx/coroutines/n0;", "Landroidx/paging/PagedList$BoundaryCallback;", "Ljava/lang/Object;", "<init>", "(Landroidx/paging/DataSource;Landroidx/paging/PagedList$Config;)V", "", "pageSize", "(Landroidx/paging/DataSource;I)V", "(Landroidx/paging/PagingSource;Landroidx/paging/PagingSource$LoadResult$Page;Landroidx/paging/PagedList$Config;)V", "(Landroidx/paging/PagingSource;Landroidx/paging/PagingSource$LoadResult$Page;I)V", "paging-common"}, k = 1, mv = {1, 5, 1})
    @Deprecated(message = "PagedList is deprecated and has been replaced by PagingData, which no longer supports constructing snapshots of loaded data manually.", replaceWith = @ReplaceWith(expression = "Pager.flow", imports = {"androidx.paging.Pager"}))
    /* loaded from: classes.dex */
    public static final class Builder<Key, Value> {
        @h
        private BoundaryCallback<Value> boundaryCallback;
        @g
        private final Config config;
        @g
        private s0 coroutineScope;
        @h
        private DataSource<Key, Value> dataSource;
        @h
        private n0 fetchDispatcher;
        @h
        private Key initialKey;
        @h
        private final PagingSource.LoadResult.Page<Key, Value> initialPage;
        @h
        private n0 notifyDispatcher;
        @h
        private final PagingSource<Key, Value> pagingSource;

        public Builder(@g DataSource<Key, Value> dataSource, @g Config config) {
            Intrinsics.checkNotNullParameter(dataSource, "dataSource");
            Intrinsics.checkNotNullParameter(config, "config");
            this.coroutineScope = a2.f84781a;
            this.pagingSource = null;
            this.dataSource = dataSource;
            this.initialPage = null;
            this.config = config;
        }

        private static /* synthetic */ void getCoroutineScope$annotations() {
        }

        @g
        public final PagedList<Value> build() {
            n0 n0Var = this.fetchDispatcher;
            if (n0Var == null) {
                n0Var = i1.c();
            }
            n0 n0Var2 = n0Var;
            PagingSource<Key, Value> pagingSource = this.pagingSource;
            if (pagingSource == null) {
                DataSource<Key, Value> dataSource = this.dataSource;
                pagingSource = dataSource == null ? null : new LegacyPagingSource(n0Var2, dataSource);
            }
            PagingSource<Key, Value> pagingSource2 = pagingSource;
            if (pagingSource2 instanceof LegacyPagingSource) {
                ((LegacyPagingSource) pagingSource2).setPageSize(this.config.pageSize);
            }
            if (pagingSource2 != null) {
                Companion companion = PagedList.Companion;
                PagingSource.LoadResult.Page<Key, Value> page = this.initialPage;
                s0 s0Var = this.coroutineScope;
                n0 n0Var3 = this.notifyDispatcher;
                if (n0Var3 == null) {
                    n0Var3 = i1.e().p0();
                }
                return companion.create(pagingSource2, page, s0Var, n0Var3, n0Var2, this.boundaryCallback, this.config, this.initialKey);
            }
            throw new IllegalStateException("PagedList cannot be built without a PagingSource or DataSource".toString());
        }

        @g
        public final Builder<Key, Value> setBoundaryCallback(@h BoundaryCallback<Value> boundaryCallback) {
            this.boundaryCallback = boundaryCallback;
            return this;
        }

        @g
        public final Builder<Key, Value> setCoroutineScope(@g s0 coroutineScope) {
            Intrinsics.checkNotNullParameter(coroutineScope, "coroutineScope");
            this.coroutineScope = coroutineScope;
            return this;
        }

        @g
        public final Builder<Key, Value> setFetchDispatcher(@g n0 fetchDispatcher) {
            Intrinsics.checkNotNullParameter(fetchDispatcher, "fetchDispatcher");
            this.fetchDispatcher = fetchDispatcher;
            return this;
        }

        @Deprecated(message = "Passing an executor will cause it get wrapped as a CoroutineDispatcher, consider passing a CoroutineDispatcher directly", replaceWith = @ReplaceWith(expression = "setFetchDispatcher(fetchExecutor.asCoroutineDispatcher())", imports = {"kotlinx.coroutines.asCoroutineDispatcher"}))
        @g
        public final Builder<Key, Value> setFetchExecutor(@g Executor fetchExecutor) {
            Intrinsics.checkNotNullParameter(fetchExecutor, "fetchExecutor");
            this.fetchDispatcher = x1.c(fetchExecutor);
            return this;
        }

        @g
        public final Builder<Key, Value> setInitialKey(@h Key key) {
            this.initialKey = key;
            return this;
        }

        @g
        public final Builder<Key, Value> setNotifyDispatcher(@g n0 notifyDispatcher) {
            Intrinsics.checkNotNullParameter(notifyDispatcher, "notifyDispatcher");
            this.notifyDispatcher = notifyDispatcher;
            return this;
        }

        @Deprecated(message = "Passing an executor will cause it get wrapped as a CoroutineDispatcher, consider passing a CoroutineDispatcher directly", replaceWith = @ReplaceWith(expression = "setNotifyDispatcher(fetchExecutor.asCoroutineDispatcher())", imports = {"kotlinx.coroutines.asCoroutineDispatcher"}))
        @g
        public final Builder<Key, Value> setNotifyExecutor(@g Executor notifyExecutor) {
            Intrinsics.checkNotNullParameter(notifyExecutor, "notifyExecutor");
            this.notifyDispatcher = x1.c(notifyExecutor);
            return this;
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public Builder(@g DataSource<Key, Value> dataSource, int i4) {
            this(dataSource, PagedListConfigKt.Config$default(i4, 0, false, 0, 0, 30, null));
            Intrinsics.checkNotNullParameter(dataSource, "dataSource");
        }

        public Builder(@g PagingSource<Key, Value> pagingSource, @g PagingSource.LoadResult.Page<Key, Value> initialPage, @g Config config) {
            Intrinsics.checkNotNullParameter(pagingSource, "pagingSource");
            Intrinsics.checkNotNullParameter(initialPage, "initialPage");
            Intrinsics.checkNotNullParameter(config, "config");
            this.coroutineScope = a2.f84781a;
            this.pagingSource = pagingSource;
            this.dataSource = null;
            this.initialPage = initialPage;
            this.config = config;
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public Builder(@g PagingSource<Key, Value> pagingSource, @g PagingSource.LoadResult.Page<Key, Value> initialPage, int i4) {
            this(pagingSource, initialPage, PagedListConfigKt.Config$default(i4, 0, false, 0, 0, 30, null));
            Intrinsics.checkNotNullParameter(pagingSource, "pagingSource");
            Intrinsics.checkNotNullParameter(initialPage, "initialPage");
        }
    }
}

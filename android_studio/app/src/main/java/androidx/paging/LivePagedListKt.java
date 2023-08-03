package androidx.paging;

import androidx.arch.core.executor.ArchTaskExecutor;
import androidx.lifecycle.LiveData;
import androidx.paging.DataSource;
import androidx.paging.PagedList;
import java.util.concurrent.Executor;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.a2;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.s0;
import kotlinx.coroutines.x1;
import m8.g;
import m8.h;

/* compiled from: LivePagedList.kt */
@Metadata(bv = {}, d1 = {"\u0000J\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u001ao\u0010\r\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\f0\u000b\"\b\b\u0000\u0010\u0001*\u00020\u0000\"\b\b\u0001\u0010\u0002*\u00020\u0000*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00032\u0006\u0010\u0005\u001a\u00020\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00018\u00002\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u00072\b\b\u0002\u0010\n\u001a\u00020\tH\u0007¢\u0006\u0004\b\r\u0010\u000e\u001ao\u0010\r\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\f0\u000b\"\b\b\u0000\u0010\u0001*\u00020\u0000\"\b\b\u0001\u0010\u0002*\u00020\u0000*\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00032\u0006\u0010\u0010\u001a\u00020\u000f2\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00018\u00002\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u00072\b\b\u0002\u0010\n\u001a\u00020\tH\u0007¢\u0006\u0004\b\r\u0010\u0011\u001a\u007f\u0010\r\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\f0\u000b\"\b\b\u0000\u0010\u0001*\u00020\u0000\"\b\b\u0001\u0010\u0002*\u00020\u0000*\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00130\u00122\u0006\u0010\u0005\u001a\u00020\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00018\u00002\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u00072\b\b\u0002\u0010\u0015\u001a\u00020\u00142\b\b\u0002\u0010\u0017\u001a\u00020\u0016H\u0007¢\u0006\u0004\b\r\u0010\u0018\u001a\u007f\u0010\r\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\f0\u000b\"\b\b\u0000\u0010\u0001*\u00020\u0000\"\b\b\u0001\u0010\u0002*\u00020\u0000*\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00130\u00122\u0006\u0010\u0010\u001a\u00020\u000f2\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00018\u00002\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u00072\b\b\u0002\u0010\u0015\u001a\u00020\u00142\b\b\u0002\u0010\u0017\u001a\u00020\u0016H\u0007¢\u0006\u0004\b\r\u0010\u0019¨\u0006\u001a"}, d2 = {"", "Key", "Value", "Landroidx/paging/DataSource$Factory;", "Landroidx/paging/PagedList$Config;", "config", "initialLoadKey", "Landroidx/paging/PagedList$BoundaryCallback;", "boundaryCallback", "Ljava/util/concurrent/Executor;", "fetchExecutor", "Landroidx/lifecycle/LiveData;", "Landroidx/paging/PagedList;", "toLiveData", "(Landroidx/paging/DataSource$Factory;Landroidx/paging/PagedList$Config;Ljava/lang/Object;Landroidx/paging/PagedList$BoundaryCallback;Ljava/util/concurrent/Executor;)Landroidx/lifecycle/LiveData;", "", "pageSize", "(Landroidx/paging/DataSource$Factory;ILjava/lang/Object;Landroidx/paging/PagedList$BoundaryCallback;Ljava/util/concurrent/Executor;)Landroidx/lifecycle/LiveData;", "Lkotlin/Function0;", "Landroidx/paging/PagingSource;", "Lkotlinx/coroutines/s0;", "coroutineScope", "Lkotlinx/coroutines/n0;", "fetchDispatcher", "(Lkotlin/jvm/functions/Function0;Landroidx/paging/PagedList$Config;Ljava/lang/Object;Landroidx/paging/PagedList$BoundaryCallback;Lkotlinx/coroutines/s0;Lkotlinx/coroutines/n0;)Landroidx/lifecycle/LiveData;", "(Lkotlin/jvm/functions/Function0;ILjava/lang/Object;Landroidx/paging/PagedList$BoundaryCallback;Lkotlinx/coroutines/s0;Lkotlinx/coroutines/n0;)Landroidx/lifecycle/LiveData;", "paging-runtime_release"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes.dex */
public final class LivePagedListKt {
    @Deprecated(message = "PagedList is deprecated and has been replaced by PagingData", replaceWith = @ReplaceWith(expression = "Pager(\n            PagingConfig(\n                config.pageSize,\n                config.prefetchDistance,\n                config.enablePlaceholders,\n                config.initialLoadSizeHint,\n                config.maxSize\n            ),\n            initialLoadKey,\n            this.asPagingSourceFactory(fetchExecutor.asCoroutineDispatcher())\n        ).liveData", imports = {"androidx.paging.Pager", "androidx.paging.PagingConfig", "androidx.paging.liveData", "kotlinx.coroutines.asCoroutineDispatcher"}))
    @g
    public static final <Key, Value> LiveData<PagedList<Value>> toLiveData(@g DataSource.Factory<Key, Value> factory, @g PagedList.Config config, @h Key key, @h PagedList.BoundaryCallback<Value> boundaryCallback, @g Executor fetchExecutor) {
        Intrinsics.checkNotNullParameter(factory, "<this>");
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(fetchExecutor, "fetchExecutor");
        return new LivePagedListBuilder(factory, config).setInitialLoadKey(key).setBoundaryCallback(boundaryCallback).setFetchExecutor(fetchExecutor).build();
    }

    public static /* synthetic */ LiveData toLiveData$default(DataSource.Factory factory, PagedList.Config config, Object obj, PagedList.BoundaryCallback boundaryCallback, Executor executor, int i4, Object obj2) {
        if ((i4 & 2) != 0) {
            obj = null;
        }
        if ((i4 & 4) != 0) {
            boundaryCallback = null;
        }
        if ((i4 & 8) != 0) {
            executor = ArchTaskExecutor.getIOThreadExecutor();
            Intrinsics.checkNotNullExpressionValue(executor, "getIOThreadExecutor()");
        }
        return toLiveData(factory, config, obj, boundaryCallback, executor);
    }

    public static /* synthetic */ LiveData toLiveData$default(DataSource.Factory factory, int i4, Object obj, PagedList.BoundaryCallback boundaryCallback, Executor executor, int i10, Object obj2) {
        if ((i10 & 2) != 0) {
            obj = null;
        }
        if ((i10 & 4) != 0) {
            boundaryCallback = null;
        }
        if ((i10 & 8) != 0) {
            executor = ArchTaskExecutor.getIOThreadExecutor();
            Intrinsics.checkNotNullExpressionValue(executor, "getIOThreadExecutor()");
        }
        return toLiveData(factory, i4, obj, boundaryCallback, executor);
    }

    public static /* synthetic */ LiveData toLiveData$default(Function0 function0, PagedList.Config config, Object obj, PagedList.BoundaryCallback boundaryCallback, s0 s0Var, n0 n0Var, int i4, Object obj2) {
        Object obj3 = (i4 & 2) != 0 ? null : obj;
        PagedList.BoundaryCallback boundaryCallback2 = (i4 & 4) != 0 ? null : boundaryCallback;
        if ((i4 & 8) != 0) {
            s0Var = a2.f84781a;
        }
        s0 s0Var2 = s0Var;
        if ((i4 & 16) != 0) {
            Executor iOThreadExecutor = ArchTaskExecutor.getIOThreadExecutor();
            Intrinsics.checkNotNullExpressionValue(iOThreadExecutor, "getIOThreadExecutor()");
            n0Var = x1.c(iOThreadExecutor);
        }
        return toLiveData(function0, config, obj3, boundaryCallback2, s0Var2, n0Var);
    }

    @Deprecated(message = "PagedList is deprecated and has been replaced by PagingData", replaceWith = @ReplaceWith(expression = "Pager(\n            PagingConfig(pageSize),\n            initialLoadKey,\n            this.asPagingSourceFactory(fetchExecutor.asCoroutineDispatcher())\n        ).liveData", imports = {"androidx.paging.Pager", "androidx.paging.PagingConfig", "androidx.paging.liveData", "kotlinx.coroutines.asCoroutineDispatcher"}))
    @g
    public static final <Key, Value> LiveData<PagedList<Value>> toLiveData(@g DataSource.Factory<Key, Value> factory, int i4, @h Key key, @h PagedList.BoundaryCallback<Value> boundaryCallback, @g Executor fetchExecutor) {
        Intrinsics.checkNotNullParameter(factory, "<this>");
        Intrinsics.checkNotNullParameter(fetchExecutor, "fetchExecutor");
        return new LivePagedListBuilder(factory, PagedListConfigKt.Config$default(i4, 0, false, 0, 0, 30, null)).setInitialLoadKey(key).setBoundaryCallback(boundaryCallback).setFetchExecutor(fetchExecutor).build();
    }

    public static /* synthetic */ LiveData toLiveData$default(Function0 function0, int i4, Object obj, PagedList.BoundaryCallback boundaryCallback, s0 s0Var, n0 n0Var, int i10, Object obj2) {
        Object obj3 = (i10 & 2) != 0 ? null : obj;
        PagedList.BoundaryCallback boundaryCallback2 = (i10 & 4) != 0 ? null : boundaryCallback;
        if ((i10 & 8) != 0) {
            s0Var = a2.f84781a;
        }
        s0 s0Var2 = s0Var;
        if ((i10 & 16) != 0) {
            Executor iOThreadExecutor = ArchTaskExecutor.getIOThreadExecutor();
            Intrinsics.checkNotNullExpressionValue(iOThreadExecutor, "getIOThreadExecutor()");
            n0Var = x1.c(iOThreadExecutor);
        }
        return toLiveData(function0, i4, obj3, boundaryCallback2, s0Var2, n0Var);
    }

    @Deprecated(message = "PagedList is deprecated and has been replaced by PagingData", replaceWith = @ReplaceWith(expression = "Pager(\n            PagingConfig(\n                config.pageSize,\n                config.prefetchDistance,\n                config.enablePlaceholders,\n                config.initialLoadSizeHint,\n                config.maxSize\n            ),\n            initialLoadKey,\n            this\n        ).liveData", imports = {"androidx.paging.Pager", "androidx.paging.PagingConfig", "androidx.paging.liveData"}))
    @g
    public static final <Key, Value> LiveData<PagedList<Value>> toLiveData(@g Function0<? extends PagingSource<Key, Value>> function0, @g PagedList.Config config, @h Key key, @h PagedList.BoundaryCallback<Value> boundaryCallback, @g s0 coroutineScope, @g n0 fetchDispatcher) {
        Intrinsics.checkNotNullParameter(function0, "<this>");
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(coroutineScope, "coroutineScope");
        Intrinsics.checkNotNullParameter(fetchDispatcher, "fetchDispatcher");
        Executor mainThreadExecutor = ArchTaskExecutor.getMainThreadExecutor();
        Intrinsics.checkNotNullExpressionValue(mainThreadExecutor, "getMainThreadExecutor()");
        return new LivePagedList(coroutineScope, key, config, boundaryCallback, function0, x1.c(mainThreadExecutor), fetchDispatcher);
    }

    @Deprecated(message = "PagedList is deprecated and has been replaced by PagingData", replaceWith = @ReplaceWith(expression = "Pager(\n            PagingConfig(pageSize),\n            initialLoadKey,\n            this\n        ).liveData", imports = {"androidx.paging.Pager", "androidx.paging.PagingConfig", "androidx.paging.liveData"}))
    @g
    public static final <Key, Value> LiveData<PagedList<Value>> toLiveData(@g Function0<? extends PagingSource<Key, Value>> function0, int i4, @h Key key, @h PagedList.BoundaryCallback<Value> boundaryCallback, @g s0 coroutineScope, @g n0 fetchDispatcher) {
        Intrinsics.checkNotNullParameter(function0, "<this>");
        Intrinsics.checkNotNullParameter(coroutineScope, "coroutineScope");
        Intrinsics.checkNotNullParameter(fetchDispatcher, "fetchDispatcher");
        PagedList.Config build = new PagedList.Config.Builder().setPageSize(i4).build();
        Executor mainThreadExecutor = ArchTaskExecutor.getMainThreadExecutor();
        Intrinsics.checkNotNullExpressionValue(mainThreadExecutor, "getMainThreadExecutor()");
        return new LivePagedList(coroutineScope, key, build, boundaryCallback, function0, x1.c(mainThreadExecutor), fetchDispatcher);
    }
}

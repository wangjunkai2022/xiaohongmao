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

/* compiled from: LivePagedListBuilder.kt */
@Deprecated(message = "PagedList is deprecated and has been replaced by PagingData")
@Metadata(bv = {}, d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0005\b\u0007\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u0001*\b\b\u0001\u0010\u0003*\u00020\u00012\u00020\u0001B%\b\u0017\u0012\u0012\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0017\u0012\u0006\u0010\u001b\u001a\u00020\u001a¢\u0006\u0004\b(\u0010)B%\b\u0017\u0012\u0012\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0017\u0012\u0006\u0010+\u001a\u00020*¢\u0006\u0004\b(\u0010,B+\b\u0017\u0012\u0018\u0010\u0015\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00140\u0013\u0012\u0006\u0010\u001b\u001a\u00020\u001a¢\u0006\u0004\b(\u0010-B+\b\u0017\u0012\u0018\u0010\u0015\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00140\u0013\u0012\u0006\u0010+\u001a\u00020*¢\u0006\u0004\b(\u0010.J\u001a\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00002\u0006\u0010\u0005\u001a\u00020\u0004J#\u0010\b\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00002\b\u0010\u0007\u001a\u0004\u0018\u00018\u0000¢\u0006\u0004\b\b\u0010\tJ\"\u0010\f\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00002\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\nJ\u001a\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00002\u0006\u0010\u000e\u001a\u00020\rJ\u0012\u0010\u0012\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u00110\u0010R(\u0010\u0015\u001a\u0016\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0014\u0018\u00010\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\"\u0010\u0018\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u001a\u0010\u001b\u001a\u00020\u001a8\u0002X\u0082\u0004¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u0012\u0004\b\u001d\u0010\u001eR\u001c\u0010\u0005\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\f\n\u0004\b\u0005\u0010\u001f\u0012\u0004\b \u0010\u001eR\u0018\u0010!\u001a\u0004\u0018\u00018\u00008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\"R$\u0010\u000b\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\n8\u0002@\u0002X\u0082\u000e¢\u0006\f\n\u0004\b\u000b\u0010#\u0012\u0004\b$\u0010\u001eR\u0016\u0010&\u001a\u00020%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010'¨\u0006/"}, d2 = {"Landroidx/paging/LivePagedListBuilder;", "", "Key", "Value", "Lkotlinx/coroutines/s0;", "coroutineScope", "setCoroutineScope", "key", "setInitialLoadKey", "(Ljava/lang/Object;)Landroidx/paging/LivePagedListBuilder;", "Landroidx/paging/PagedList$BoundaryCallback;", "boundaryCallback", "setBoundaryCallback", "Ljava/util/concurrent/Executor;", "fetchExecutor", "setFetchExecutor", "Landroidx/lifecycle/LiveData;", "Landroidx/paging/PagedList;", "build", "Lkotlin/Function0;", "Landroidx/paging/PagingSource;", "pagingSourceFactory", "Lkotlin/jvm/functions/Function0;", "Landroidx/paging/DataSource$Factory;", "dataSourceFactory", "Landroidx/paging/DataSource$Factory;", "Landroidx/paging/PagedList$Config;", "config", "Landroidx/paging/PagedList$Config;", "getConfig$annotations", "()V", "Lkotlinx/coroutines/s0;", "getCoroutineScope$annotations", "initialLoadKey", "Ljava/lang/Object;", "Landroidx/paging/PagedList$BoundaryCallback;", "getBoundaryCallback$annotations", "Lkotlinx/coroutines/n0;", "fetchDispatcher", "Lkotlinx/coroutines/n0;", "<init>", "(Landroidx/paging/DataSource$Factory;Landroidx/paging/PagedList$Config;)V", "", "pageSize", "(Landroidx/paging/DataSource$Factory;I)V", "(Lkotlin/jvm/functions/Function0;Landroidx/paging/PagedList$Config;)V", "(Lkotlin/jvm/functions/Function0;I)V", "paging-runtime_release"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes.dex */
public final class LivePagedListBuilder<Key, Value> {
    @h
    private PagedList.BoundaryCallback<Value> boundaryCallback;
    @g
    private final PagedList.Config config;
    @g
    private s0 coroutineScope;
    @h
    private final DataSource.Factory<Key, Value> dataSourceFactory;
    @g
    private n0 fetchDispatcher;
    @h
    private Key initialLoadKey;
    @h
    private final Function0<PagingSource<Key, Value>> pagingSourceFactory;

    @Deprecated(message = "PagedList is deprecated and has been replaced by PagingData", replaceWith = @ReplaceWith(expression = "Pager(\n                PagingConfig(\n                    config.pageSize,\n                    config.prefetchDistance,\n                    config.enablePlaceholders,\n                    config.initialLoadSizeHint,\n                    config.maxSize\n                ),\n                initialLoadKey,\n                dataSourceFactory.asPagingSourceFactory(Dispatchers.IO)\n            ).liveData", imports = {"androidx.paging.Pager", "androidx.paging.PagingConfig", "androidx.paging.liveData", "kotlinx.coroutines.Dispatchers"}))
    public LivePagedListBuilder(@g DataSource.Factory<Key, Value> dataSourceFactory, @g PagedList.Config config) {
        Intrinsics.checkNotNullParameter(dataSourceFactory, "dataSourceFactory");
        Intrinsics.checkNotNullParameter(config, "config");
        this.coroutineScope = a2.f84781a;
        Executor iOThreadExecutor = ArchTaskExecutor.getIOThreadExecutor();
        Intrinsics.checkNotNullExpressionValue(iOThreadExecutor, "getIOThreadExecutor()");
        this.fetchDispatcher = x1.c(iOThreadExecutor);
        this.pagingSourceFactory = null;
        this.dataSourceFactory = dataSourceFactory;
        this.config = config;
    }

    private static /* synthetic */ void getBoundaryCallback$annotations() {
    }

    private static /* synthetic */ void getConfig$annotations() {
    }

    private static /* synthetic */ void getCoroutineScope$annotations() {
    }

    @g
    public final LiveData<PagedList<Value>> build() {
        Function0<PagingSource<Key, Value>> function0 = this.pagingSourceFactory;
        if (function0 == null) {
            DataSource.Factory<Key, Value> factory = this.dataSourceFactory;
            function0 = factory == null ? null : factory.asPagingSourceFactory(this.fetchDispatcher);
        }
        Function0<PagingSource<Key, Value>> function02 = function0;
        if (function02 != null) {
            s0 s0Var = this.coroutineScope;
            Key key = this.initialLoadKey;
            PagedList.Config config = this.config;
            PagedList.BoundaryCallback<Value> boundaryCallback = this.boundaryCallback;
            Executor mainThreadExecutor = ArchTaskExecutor.getMainThreadExecutor();
            Intrinsics.checkNotNullExpressionValue(mainThreadExecutor, "getMainThreadExecutor()");
            return new LivePagedList(s0Var, key, config, boundaryCallback, function02, x1.c(mainThreadExecutor), this.fetchDispatcher);
        }
        throw new IllegalStateException("LivePagedList cannot be built without a PagingSourceFactory or DataSource.Factory".toString());
    }

    @g
    public final LivePagedListBuilder<Key, Value> setBoundaryCallback(@h PagedList.BoundaryCallback<Value> boundaryCallback) {
        this.boundaryCallback = boundaryCallback;
        return this;
    }

    @g
    public final LivePagedListBuilder<Key, Value> setCoroutineScope(@g s0 coroutineScope) {
        Intrinsics.checkNotNullParameter(coroutineScope, "coroutineScope");
        this.coroutineScope = coroutineScope;
        return this;
    }

    @g
    public final LivePagedListBuilder<Key, Value> setFetchExecutor(@g Executor fetchExecutor) {
        Intrinsics.checkNotNullParameter(fetchExecutor, "fetchExecutor");
        this.fetchDispatcher = x1.c(fetchExecutor);
        return this;
    }

    @g
    public final LivePagedListBuilder<Key, Value> setInitialLoadKey(@h Key key) {
        this.initialLoadKey = key;
        return this;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @Deprecated(message = "PagedList is deprecated and has been replaced by PagingData", replaceWith = @ReplaceWith(expression = "Pager(\n                PagingConfig(pageSize),\n                initialLoadKey,\n                dataSourceFactory.asPagingSourceFactory(Dispatchers.IO)\n            ).liveData", imports = {"androidx.paging.Pager", "androidx.paging.PagingConfig", "androidx.paging.liveData", "kotlinx.coroutines.Dispatchers"}))
    public LivePagedListBuilder(@g DataSource.Factory<Key, Value> dataSourceFactory, int i4) {
        this(dataSourceFactory, new PagedList.Config.Builder().setPageSize(i4).build());
        Intrinsics.checkNotNullParameter(dataSourceFactory, "dataSourceFactory");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Deprecated(message = "PagedList is deprecated and has been replaced by PagingData", replaceWith = @ReplaceWith(expression = "Pager(\n                PagingConfig(\n                    config.pageSize,\n                    config.prefetchDistance,\n                    config.enablePlaceholders,\n                    config.initialLoadSizeHint,\n                    config.maxSize\n                ),\n                initialLoadKey,\n                this\n            ).liveData", imports = {"androidx.paging.Pager", "androidx.paging.PagingConfig", "androidx.paging.liveData"}))
    public LivePagedListBuilder(@g Function0<? extends PagingSource<Key, Value>> pagingSourceFactory, @g PagedList.Config config) {
        Intrinsics.checkNotNullParameter(pagingSourceFactory, "pagingSourceFactory");
        Intrinsics.checkNotNullParameter(config, "config");
        this.coroutineScope = a2.f84781a;
        Executor iOThreadExecutor = ArchTaskExecutor.getIOThreadExecutor();
        Intrinsics.checkNotNullExpressionValue(iOThreadExecutor, "getIOThreadExecutor()");
        this.fetchDispatcher = x1.c(iOThreadExecutor);
        this.pagingSourceFactory = pagingSourceFactory;
        this.dataSourceFactory = null;
        this.config = config;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @Deprecated(message = "PagedList is deprecated and has been replaced by PagingData", replaceWith = @ReplaceWith(expression = "Pager(\n                PagingConfig(pageSize),\n                initialLoadKey,\n                this\n            ).liveData", imports = {"androidx.paging.Pager", "androidx.paging.PagingConfig", "androidx.paging.liveData"}))
    public LivePagedListBuilder(@g Function0<? extends PagingSource<Key, Value>> pagingSourceFactory, int i4) {
        this(pagingSourceFactory, new PagedList.Config.Builder().setPageSize(i4).build());
        Intrinsics.checkNotNullParameter(pagingSourceFactory, "pagingSourceFactory");
    }
}

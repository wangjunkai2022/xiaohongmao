package androidx.paging;

import androidx.paging.PagedList;
import java.util.concurrent.Executor;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PagedList.kt */
@Metadata(d1 = {"\u0000,\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001aq\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\b\b\u0000\u0010\u0003*\u00020\u0004\"\b\b\u0001\u0010\u0002*\u00020\u00042\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u0002H\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0010\b\u0002\u0010\f\u001a\n\u0012\u0004\u0012\u0002H\u0002\u0018\u00010\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u0001H\u0003H\u0007¢\u0006\u0002\u0010\u000f¨\u0006\u0010"}, d2 = {"PagedList", "Landroidx/paging/PagedList;", "Value", "Key", "", "dataSource", "Landroidx/paging/DataSource;", "config", "Landroidx/paging/PagedList$Config;", "notifyExecutor", "Ljava/util/concurrent/Executor;", "fetchExecutor", "boundaryCallback", "Landroidx/paging/PagedList$BoundaryCallback;", "initialKey", "(Landroidx/paging/DataSource;Landroidx/paging/PagedList$Config;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroidx/paging/PagedList$BoundaryCallback;Ljava/lang/Object;)Landroidx/paging/PagedList;", "paging-common"}, k = 2, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class PagedListKt {
    @Deprecated(message = "DataSource is deprecated and has been replaced by PagingSource")
    public static final /* synthetic */ PagedList PagedList(DataSource dataSource, PagedList.Config config, Executor notifyExecutor, Executor fetchExecutor, PagedList.BoundaryCallback boundaryCallback, Object obj) {
        Intrinsics.checkNotNullParameter(dataSource, "dataSource");
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(notifyExecutor, "notifyExecutor");
        Intrinsics.checkNotNullParameter(fetchExecutor, "fetchExecutor");
        return new PagedList.Builder(dataSource, config).setNotifyExecutor(notifyExecutor).setFetchExecutor(fetchExecutor).setBoundaryCallback(boundaryCallback).setInitialKey(obj).build();
    }
}

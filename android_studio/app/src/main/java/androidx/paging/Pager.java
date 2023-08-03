package androidx.paging;

import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.i;
import m8.g;
import m8.h;

/* compiled from: Pager.kt */
@Metadata(bv = {}, d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u0001*\b\b\u0001\u0010\u0003*\u00020\u00012\u00020\u0001BM\b\u0007\u0012\u0006\u0010\r\u001a\u00020\f\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00018\u0000\u0012\u0014\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u000f\u0012\u0018\u0010\u0013\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00120\u0011¢\u0006\u0004\b\u0014\u0010\u0015B7\b\u0017\u0012\u0006\u0010\r\u001a\u00020\f\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00018\u0000\u0012\u0018\u0010\u0013\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00120\u0011¢\u0006\u0004\b\u0014\u0010\u0016R)\u0010\u0006\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u00050\u00048\u0006¢\u0006\u0012\n\u0004\b\u0006\u0010\u0007\u0012\u0004\b\n\u0010\u000b\u001a\u0004\b\b\u0010\t¨\u0006\u0017"}, d2 = {"Landroidx/paging/Pager;", "", "Key", "Value", "Lkotlinx/coroutines/flow/i;", "Landroidx/paging/PagingData;", "flow", "Lkotlinx/coroutines/flow/i;", "getFlow", "()Lkotlinx/coroutines/flow/i;", "getFlow$annotations", "()V", "Landroidx/paging/PagingConfig;", "config", "initialKey", "Landroidx/paging/RemoteMediator;", "remoteMediator", "Lkotlin/Function0;", "Landroidx/paging/PagingSource;", "pagingSourceFactory", "<init>", "(Landroidx/paging/PagingConfig;Ljava/lang/Object;Landroidx/paging/RemoteMediator;Lkotlin/jvm/functions/Function0;)V", "(Landroidx/paging/PagingConfig;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V", "paging-common"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes.dex */
public final class Pager<Key, Value> {
    @g
    private final i<PagingData<Value>> flow;

    @ExperimentalPagingApi
    public Pager(@g PagingConfig config, @h Key key, @h RemoteMediator<Key, Value> remoteMediator, @g Function0<? extends PagingSource<Key, Value>> pagingSourceFactory) {
        Function1 pager$flow$2;
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(pagingSourceFactory, "pagingSourceFactory");
        if (pagingSourceFactory instanceof SuspendingPagingSourceFactory) {
            pager$flow$2 = new Pager$flow$1(pagingSourceFactory);
        } else {
            pager$flow$2 = new Pager$flow$2(pagingSourceFactory, null);
        }
        this.flow = new PageFetcher(pager$flow$2, key, config, remoteMediator).getFlow();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public Pager(@g PagingConfig config, @g Function0<? extends PagingSource<Key, Value>> pagingSourceFactory) {
        this(config, null, pagingSourceFactory, 2, null);
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(pagingSourceFactory, "pagingSourceFactory");
    }

    public static /* synthetic */ void getFlow$annotations() {
    }

    @g
    public final i<PagingData<Value>> getFlow() {
        return this.flow;
    }

    public /* synthetic */ Pager(PagingConfig pagingConfig, Object obj, RemoteMediator remoteMediator, Function0 function0, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(pagingConfig, (i4 & 2) != 0 ? null : obj, remoteMediator, function0);
    }

    public /* synthetic */ Pager(PagingConfig pagingConfig, Object obj, Function0 function0, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(pagingConfig, (i4 & 2) != 0 ? null : obj, function0);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public Pager(@g PagingConfig config, @h Key key, @g Function0<? extends PagingSource<Key, Value>> pagingSourceFactory) {
        this(config, key, null, pagingSourceFactory);
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(pagingSourceFactory, "pagingSourceFactory");
    }
}

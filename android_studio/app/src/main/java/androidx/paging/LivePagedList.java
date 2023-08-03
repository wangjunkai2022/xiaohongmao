package androidx.paging;

import androidx.lifecycle.LiveData;
import androidx.paging.PagedList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.j2;
import kotlinx.coroutines.l;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.s0;
import m8.g;
import m8.h;

/* compiled from: LivePagedList.kt */
@Metadata(bv = {}, d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0000\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u0001*\b\b\u0001\u0010\u0003*\u00020\u00012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u00050\u0004B[\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\b\u0010(\u001a\u0004\u0018\u00018\u0000\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u000e\u0010\u0015\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u0014\u0012\u0018\u0010\u0019\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00180\u0017\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u0012\u0006\u0010\u001e\u001a\u00020\u001b¢\u0006\u0004\b)\u0010*J\u0010\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J$\u0010\f\u001a\u00020\b2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00010\u00052\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00010\u0005H\u0002J\b\u0010\r\u001a\u00020\bH\u0014R\u0014\u0010\u000f\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0012\u001a\u00020\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u001c\u0010\u0015\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R&\u0010\u0019\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00180\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0014\u0010\u001c\u001a\u00020\u001b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0014\u0010\u001e\u001a\u00020\u001b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001dR\u001c\u0010\u001f\u001a\b\u0012\u0004\u0012\u00028\u00010\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0018\u0010\"\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010#R\u001a\u0010$\u001a\b\u0012\u0004\u0012\u00020\b0\u00178\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010\u001aR\u0014\u0010&\u001a\u00020%8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b&\u0010'¨\u0006+"}, d2 = {"Landroidx/paging/LivePagedList;", "", "Key", "Value", "Landroidx/lifecycle/LiveData;", "Landroidx/paging/PagedList;", "", "force", "", "invalidate", "previous", "next", "onItemUpdate", "onActive", "Lkotlinx/coroutines/s0;", "coroutineScope", "Lkotlinx/coroutines/s0;", "Landroidx/paging/PagedList$Config;", "config", "Landroidx/paging/PagedList$Config;", "Landroidx/paging/PagedList$BoundaryCallback;", "boundaryCallback", "Landroidx/paging/PagedList$BoundaryCallback;", "Lkotlin/Function0;", "Landroidx/paging/PagingSource;", "pagingSourceFactory", "Lkotlin/jvm/functions/Function0;", "Lkotlinx/coroutines/n0;", "notifyDispatcher", "Lkotlinx/coroutines/n0;", "fetchDispatcher", "currentData", "Landroidx/paging/PagedList;", "Lkotlinx/coroutines/j2;", "currentJob", "Lkotlinx/coroutines/j2;", com.alipay.sdk.authjs.a.f6838i, "Ljava/lang/Runnable;", "refreshRetryCallback", "Ljava/lang/Runnable;", "initialKey", "<init>", "(Lkotlinx/coroutines/s0;Ljava/lang/Object;Landroidx/paging/PagedList$Config;Landroidx/paging/PagedList$BoundaryCallback;Lkotlin/jvm/functions/Function0;Lkotlinx/coroutines/n0;Lkotlinx/coroutines/n0;)V", "paging-runtime_release"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes.dex */
public final class LivePagedList<Key, Value> extends LiveData<PagedList<Value>> {
    @h
    private final PagedList.BoundaryCallback<Value> boundaryCallback;
    @g
    private final Function0<Unit> callback;
    @g
    private final PagedList.Config config;
    @g
    private final s0 coroutineScope;
    @g
    private PagedList<Value> currentData;
    @h
    private j2 currentJob;
    @g
    private final n0 fetchDispatcher;
    @g
    private final n0 notifyDispatcher;
    @g
    private final Function0<PagingSource<Key, Value>> pagingSourceFactory;
    @g
    private final Runnable refreshRetryCallback;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public LivePagedList(@g s0 coroutineScope, @h Key key, @g PagedList.Config config, @h PagedList.BoundaryCallback<Value> boundaryCallback, @g Function0<? extends PagingSource<Key, Value>> pagingSourceFactory, @g n0 notifyDispatcher, @g n0 fetchDispatcher) {
        super(new InitialPagedList(coroutineScope, notifyDispatcher, fetchDispatcher, config, key));
        Intrinsics.checkNotNullParameter(coroutineScope, "coroutineScope");
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(pagingSourceFactory, "pagingSourceFactory");
        Intrinsics.checkNotNullParameter(notifyDispatcher, "notifyDispatcher");
        Intrinsics.checkNotNullParameter(fetchDispatcher, "fetchDispatcher");
        this.coroutineScope = coroutineScope;
        this.config = config;
        this.boundaryCallback = boundaryCallback;
        this.pagingSourceFactory = pagingSourceFactory;
        this.notifyDispatcher = notifyDispatcher;
        this.fetchDispatcher = fetchDispatcher;
        this.callback = new LivePagedList$callback$1(this);
        Runnable runnable = new Runnable(this) { // from class: androidx.paging.LivePagedList$refreshRetryCallback$1
            final /* synthetic */ LivePagedList<Key, Value> this$0;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.this$0 = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.this$0.invalidate(true);
            }
        };
        this.refreshRetryCallback = runnable;
        PagedList<Value> value = getValue();
        Intrinsics.checkNotNull(value);
        Intrinsics.checkNotNullExpressionValue(value, "value!!");
        PagedList<Value> pagedList = value;
        this.currentData = pagedList;
        pagedList.setRetryCallback(runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void invalidate(boolean z9) {
        j2 f10;
        j2 j2Var = this.currentJob;
        if (j2Var == null || z9) {
            if (j2Var != null) {
                j2.a.b(j2Var, null, 1, null);
            }
            f10 = l.f(this.coroutineScope, this.fetchDispatcher, null, new LivePagedList$invalidate$1(this, null), 2, null);
            this.currentJob = f10;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onItemUpdate(PagedList<Value> pagedList, PagedList<Value> pagedList2) {
        pagedList.setRetryCallback(null);
        pagedList2.setRetryCallback(this.refreshRetryCallback);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.lifecycle.LiveData
    public void onActive() {
        super.onActive();
        invalidate(false);
    }
}

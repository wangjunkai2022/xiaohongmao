package androidx.paging;

import androidx.annotation.IntRange;
import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.Lifecycle;
import androidx.paging.LoadState;
import androidx.recyclerview.widget.AdapterListUpdateCallback;
import androidx.recyclerview.widget.ConcatAdapter;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.ViewHolder;
import com.google.android.gms.common.internal.x;
import io.sentry.protocol.s;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.i;
import kotlinx.coroutines.i1;
import kotlinx.coroutines.n0;
import m8.g;
import m8.h;

/* compiled from: PagingDataAdapter.kt */
@Metadata(bv = {}, d1 = {"\u0000\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b&\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u0001*\b\b\u0001\u0010\u0004*\u00020\u00032\b\u0012\u0004\u0012\u00028\u00010\u0005B+\b\u0007\u0012\f\u0010<\u001a\b\u0012\u0004\u0012\u00028\u00000;\u0012\b\b\u0002\u0010>\u001a\u00020=\u0012\b\b\u0002\u0010?\u001a\u00020=¢\u0006\u0004\b@\u0010AJ\u0010\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u000e\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\nJ\u000e\u0010\u0010\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\u000eJ!\u0010\u0013\u001a\u00020\b2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00000\u0011H\u0086@ø\u0001\u0000¢\u0006\u0004\b\u0013\u0010\u0014J\u001c\u0010\u0013\u001a\u00020\b2\u0006\u0010\u0016\u001a\u00020\u00152\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00000\u0011J\u0006\u0010\u0017\u001a\u00020\bJ\u0006\u0010\u0018\u001a\u00020\bJ\u001b\u0010\u0019\u001a\u0004\u0018\u00018\u00002\b\b\u0001\u0010\u000b\u001a\u00020\nH\u0004¢\u0006\u0004\b\u0019\u0010\u001aJ\u0019\u0010\u001c\u001a\u0004\u0018\u00018\u00002\b\b\u0001\u0010\u001b\u001a\u00020\n¢\u0006\u0004\b\u001c\u0010\u001aJ\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00028\u00000\u001dJ\b\u0010\u001f\u001a\u00020\nH\u0016J\u001a\u0010#\u001a\u00020\b2\u0012\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020!\u0012\u0004\u0012\u00020\b0 J\u001a\u0010$\u001a\u00020\b2\u0012\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020!\u0012\u0004\u0012\u00020\b0 J\u0014\u0010&\u001a\u00020\b2\f\u0010\"\u001a\b\u0012\u0004\u0012\u00020\b0%J\u0014\u0010'\u001a\u00020\b2\f\u0010\"\u001a\b\u0012\u0004\u0012\u00020\b0%J\u0012\u0010+\u001a\u00020*2\n\u0010)\u001a\u0006\u0012\u0002\b\u00030(J\u0012\u0010-\u001a\u00020*2\n\u0010,\u001a\u0006\u0012\u0002\b\u00030(J\u001e\u0010.\u001a\u00020*2\n\u0010)\u001a\u0006\u0012\u0002\b\u00030(2\n\u0010,\u001a\u0006\u0012\u0002\b\u00030(R\u0016\u0010/\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u00100R\u001a\u00102\u001a\b\u0012\u0004\u0012\u00028\u0000018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b2\u00103R\u001d\u00105\u001a\b\u0012\u0004\u0012\u00020!048\u0006¢\u0006\f\n\u0004\b5\u00106\u001a\u0004\b7\u00108R\u001d\u00109\u001a\b\u0012\u0004\u0012\u00020\b048\u0006¢\u0006\f\n\u0004\b9\u00106\u001a\u0004\b:\u00108\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006B"}, d2 = {"Landroidx/paging/PagingDataAdapter;", "", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "VH", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter$StateRestorationPolicy;", "strategy", "", "setStateRestorationPolicy", "", "position", "", "getItemId", "", "hasStableIds", "setHasStableIds", "Landroidx/paging/PagingData;", "pagingData", "submitData", "(Landroidx/paging/PagingData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Landroidx/lifecycle/Lifecycle;", "lifecycle", "retry", "refresh", "getItem", "(I)Ljava/lang/Object;", "index", "peek", "Landroidx/paging/ItemSnapshotList;", s.b.f83846c, "getItemCount", "Lkotlin/Function1;", "Landroidx/paging/CombinedLoadStates;", x.a.f29212a, "addLoadStateListener", "removeLoadStateListener", "Lkotlin/Function0;", "addOnPagesUpdatedListener", "removeOnPagesUpdatedListener", "Landroidx/paging/LoadStateAdapter;", "header", "Landroidx/recyclerview/widget/ConcatAdapter;", "withLoadStateHeader", "footer", "withLoadStateFooter", "withLoadStateHeaderAndFooter", "userSetRestorationPolicy", "Z", "Landroidx/paging/AsyncPagingDataDiffer;", "differ", "Landroidx/paging/AsyncPagingDataDiffer;", "Lkotlinx/coroutines/flow/i;", "loadStateFlow", "Lkotlinx/coroutines/flow/i;", "getLoadStateFlow", "()Lkotlinx/coroutines/flow/i;", "onPagesUpdatedFlow", "getOnPagesUpdatedFlow", "Landroidx/recyclerview/widget/DiffUtil$ItemCallback;", "diffCallback", "Lkotlinx/coroutines/n0;", "mainDispatcher", "workerDispatcher", "<init>", "(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;Lkotlinx/coroutines/n0;Lkotlinx/coroutines/n0;)V", "paging-runtime_release"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes.dex */
public abstract class PagingDataAdapter<T, VH extends RecyclerView.ViewHolder> extends RecyclerView.Adapter<VH> {
    @g
    private final AsyncPagingDataDiffer<T> differ;
    @g
    private final i<CombinedLoadStates> loadStateFlow;
    @g
    private final i<Unit> onPagesUpdatedFlow;
    private boolean userSetRestorationPolicy;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public PagingDataAdapter(@g DiffUtil.ItemCallback<T> diffCallback) {
        this(diffCallback, null, null, 6, null);
        Intrinsics.checkNotNullParameter(diffCallback, "diffCallback");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public PagingDataAdapter(@g DiffUtil.ItemCallback<T> diffCallback, @g n0 mainDispatcher) {
        this(diffCallback, mainDispatcher, null, 4, null);
        Intrinsics.checkNotNullParameter(diffCallback, "diffCallback");
        Intrinsics.checkNotNullParameter(mainDispatcher, "mainDispatcher");
    }

    public /* synthetic */ PagingDataAdapter(DiffUtil.ItemCallback itemCallback, n0 n0Var, n0 n0Var2, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(itemCallback, (i4 & 2) != 0 ? i1.e() : n0Var, (i4 & 4) != 0 ? i1.a() : n0Var2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final <T, VH extends RecyclerView.ViewHolder> void _init_$considerAllowingStateRestoration(PagingDataAdapter<T, VH> pagingDataAdapter) {
        if (pagingDataAdapter.getStateRestorationPolicy() != RecyclerView.Adapter.StateRestorationPolicy.PREVENT || ((PagingDataAdapter) pagingDataAdapter).userSetRestorationPolicy) {
            return;
        }
        pagingDataAdapter.setStateRestorationPolicy(RecyclerView.Adapter.StateRestorationPolicy.ALLOW);
    }

    public final void addLoadStateListener(@g Function1<? super CombinedLoadStates, Unit> listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.differ.addLoadStateListener(listener);
    }

    public final void addOnPagesUpdatedListener(@g Function0<Unit> listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.differ.addOnPagesUpdatedListener(listener);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @h
    public final T getItem(@IntRange(from = 0) int i4) {
        return this.differ.getItem(i4);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.differ.getItemCount();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final long getItemId(int i4) {
        return super.getItemId(i4);
    }

    @g
    public final i<CombinedLoadStates> getLoadStateFlow() {
        return this.loadStateFlow;
    }

    @g
    public final i<Unit> getOnPagesUpdatedFlow() {
        return this.onPagesUpdatedFlow;
    }

    @h
    public final T peek(@IntRange(from = 0) int i4) {
        return this.differ.peek(i4);
    }

    public final void refresh() {
        this.differ.refresh();
    }

    public final void removeLoadStateListener(@g Function1<? super CombinedLoadStates, Unit> listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.differ.removeLoadStateListener(listener);
    }

    public final void removeOnPagesUpdatedListener(@g Function0<Unit> listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.differ.removeOnPagesUpdatedListener(listener);
    }

    public final void retry() {
        this.differ.retry();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void setHasStableIds(boolean z9) {
        throw new UnsupportedOperationException("Stable ids are unsupported on PagingDataAdapter.");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void setStateRestorationPolicy(@g RecyclerView.Adapter.StateRestorationPolicy strategy) {
        Intrinsics.checkNotNullParameter(strategy, "strategy");
        this.userSetRestorationPolicy = true;
        super.setStateRestorationPolicy(strategy);
    }

    @g
    public final ItemSnapshotList<T> snapshot() {
        return this.differ.snapshot();
    }

    @h
    public final Object submitData(@g PagingData<T> pagingData, @g Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        Object submitData = this.differ.submitData(pagingData, continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return submitData == coroutine_suspended ? submitData : Unit.INSTANCE;
    }

    @g
    public final ConcatAdapter withLoadStateFooter(@g LoadStateAdapter<?> footer) {
        Intrinsics.checkNotNullParameter(footer, "footer");
        addLoadStateListener(new PagingDataAdapter$withLoadStateFooter$1(footer));
        return new ConcatAdapter(this, footer);
    }

    @g
    public final ConcatAdapter withLoadStateHeader(@g LoadStateAdapter<?> header) {
        Intrinsics.checkNotNullParameter(header, "header");
        addLoadStateListener(new PagingDataAdapter$withLoadStateHeader$1(header));
        return new ConcatAdapter(header, this);
    }

    @g
    public final ConcatAdapter withLoadStateHeaderAndFooter(@g LoadStateAdapter<?> header, @g LoadStateAdapter<?> footer) {
        Intrinsics.checkNotNullParameter(header, "header");
        Intrinsics.checkNotNullParameter(footer, "footer");
        addLoadStateListener(new PagingDataAdapter$withLoadStateHeaderAndFooter$1(header, footer));
        return new ConcatAdapter(header, this, footer);
    }

    public final void submitData(@g Lifecycle lifecycle, @g PagingData<T> pagingData) {
        Intrinsics.checkNotNullParameter(lifecycle, "lifecycle");
        Intrinsics.checkNotNullParameter(pagingData, "pagingData");
        this.differ.submitData(lifecycle, pagingData);
    }

    @JvmOverloads
    public PagingDataAdapter(@g DiffUtil.ItemCallback<T> diffCallback, @g n0 mainDispatcher, @g n0 workerDispatcher) {
        Intrinsics.checkNotNullParameter(diffCallback, "diffCallback");
        Intrinsics.checkNotNullParameter(mainDispatcher, "mainDispatcher");
        Intrinsics.checkNotNullParameter(workerDispatcher, "workerDispatcher");
        AsyncPagingDataDiffer<T> asyncPagingDataDiffer = new AsyncPagingDataDiffer<>(diffCallback, new AdapterListUpdateCallback(this), mainDispatcher, workerDispatcher);
        this.differ = asyncPagingDataDiffer;
        super.setStateRestorationPolicy(RecyclerView.Adapter.StateRestorationPolicy.PREVENT);
        registerAdapterDataObserver(new RecyclerView.AdapterDataObserver(this) { // from class: androidx.paging.PagingDataAdapter.1
            final /* synthetic */ PagingDataAdapter<T, VH> this$0;

            {
                this.this$0 = this;
            }

            @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
            public void onItemRangeInserted(int i4, int i10) {
                PagingDataAdapter._init_$considerAllowingStateRestoration(this.this$0);
                this.this$0.unregisterAdapterDataObserver(this);
                super.onItemRangeInserted(i4, i10);
            }
        });
        addLoadStateListener(new Function1<CombinedLoadStates, Unit>(this) { // from class: androidx.paging.PagingDataAdapter.2
            private boolean ignoreNextEvent = true;
            final /* synthetic */ PagingDataAdapter<T, VH> this$0;

            {
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(CombinedLoadStates combinedLoadStates) {
                invoke2(combinedLoadStates);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public void invoke2(@g CombinedLoadStates loadStates) {
                Intrinsics.checkNotNullParameter(loadStates, "loadStates");
                if (this.ignoreNextEvent) {
                    this.ignoreNextEvent = false;
                } else if (loadStates.getSource().getRefresh() instanceof LoadState.NotLoading) {
                    PagingDataAdapter._init_$considerAllowingStateRestoration(this.this$0);
                    this.this$0.removeLoadStateListener(this);
                }
            }
        });
        this.loadStateFlow = asyncPagingDataDiffer.getLoadStateFlow();
        this.onPagesUpdatedFlow = asyncPagingDataDiffer.getOnPagesUpdatedFlow();
    }
}

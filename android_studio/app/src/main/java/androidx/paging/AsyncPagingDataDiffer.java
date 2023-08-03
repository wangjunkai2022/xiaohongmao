package androidx.paging;

import androidx.annotation.IntRange;
import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleKt;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.ListUpdateCallback;
import com.google.android.gms.common.internal.x;
import io.sentry.protocol.s;
import java.util.concurrent.atomic.AtomicInteger;
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
import kotlinx.coroutines.l;
import kotlinx.coroutines.n0;
import m8.g;
import m8.h;

/* compiled from: AsyncPagingDataDiffer.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0081\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f*\u00014\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u0001B3\b\u0007\u0012\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00028\u00000\u001b\u0012\u0006\u0010\u001f\u001a\u00020\u001e\u0012\b\b\u0002\u0010\"\u001a\u00020!\u0012\b\b\u0002\u0010$\u001a\u00020!¢\u0006\u0004\bD\u0010EJ!\u0010\u0006\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003H\u0086@ø\u0001\u0000¢\u0006\u0004\b\u0006\u0010\u0007J\u001c\u0010\u0006\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\b2\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003J\u0006\u0010\n\u001a\u00020\u0005J\u0006\u0010\u000b\u001a\u00020\u0005J\u0019\u0010\u000e\u001a\u0004\u0018\u00018\u00002\b\b\u0001\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000e\u0010\u000fJ\u0019\u0010\u0010\u001a\u0004\u0018\u00018\u00002\b\b\u0001\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u0010\u0010\u000fJ\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00000\u0011J\u0014\u0010\u0015\u001a\u00020\u00052\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00050\u0013J\u0014\u0010\u0016\u001a\u00020\u00052\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00050\u0013J\u001a\u0010\u0019\u001a\u00020\u00052\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u00050\u0017J\u001a\u0010\u001a\u001a\u00020\u00052\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u00050\u0017R\u001a\u0010\u001c\u001a\b\u0012\u0004\u0012\u00028\u00000\u001b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0014\u0010\u001f\u001a\u00020\u001e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0014\u0010\"\u001a\u00020!8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010#R\u0014\u0010$\u001a\u00020!8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010#R \u0010&\u001a\u00020%8\u0000X\u0080\u0004¢\u0006\u0012\n\u0004\b&\u0010'\u0012\u0004\b*\u0010+\u001a\u0004\b(\u0010)R(\u0010-\u001a\u00020,8\u0000@\u0000X\u0080\u000e¢\u0006\u0018\n\u0004\b-\u0010.\u0012\u0004\b3\u0010+\u001a\u0004\b/\u00100\"\u0004\b1\u00102R\u001a\u00105\u001a\b\u0012\u0004\u0012\u00028\u0000048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b5\u00106R\u0014\u00108\u001a\u0002078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b8\u00109R\u001d\u0010;\u001a\b\u0012\u0004\u0012\u00020\u00180:8\u0006¢\u0006\f\n\u0004\b;\u0010<\u001a\u0004\b=\u0010>R\u001d\u0010?\u001a\b\u0012\u0004\u0012\u00020\u00050:8\u0006¢\u0006\f\n\u0004\b?\u0010<\u001a\u0004\b@\u0010>R\u0011\u0010C\u001a\u00020\f8F¢\u0006\u0006\u001a\u0004\bA\u0010B\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006F"}, d2 = {"Landroidx/paging/AsyncPagingDataDiffer;", "", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/paging/PagingData;", "pagingData", "", "submitData", "(Landroidx/paging/PagingData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Landroidx/lifecycle/Lifecycle;", "lifecycle", "retry", "refresh", "", "index", "getItem", "(I)Ljava/lang/Object;", "peek", "Landroidx/paging/ItemSnapshotList;", s.b.f83846c, "Lkotlin/Function0;", x.a.f29212a, "addOnPagesUpdatedListener", "removeOnPagesUpdatedListener", "Lkotlin/Function1;", "Landroidx/paging/CombinedLoadStates;", "addLoadStateListener", "removeLoadStateListener", "Landroidx/recyclerview/widget/DiffUtil$ItemCallback;", "diffCallback", "Landroidx/recyclerview/widget/DiffUtil$ItemCallback;", "Landroidx/recyclerview/widget/ListUpdateCallback;", "updateCallback", "Landroidx/recyclerview/widget/ListUpdateCallback;", "Lkotlinx/coroutines/n0;", "mainDispatcher", "Lkotlinx/coroutines/n0;", "workerDispatcher", "Landroidx/paging/DifferCallback;", "differCallback", "Landroidx/paging/DifferCallback;", "getDifferCallback$paging_runtime_release", "()Landroidx/paging/DifferCallback;", "getDifferCallback$paging_runtime_release$annotations", "()V", "", "inGetItem", "Z", "getInGetItem$paging_runtime_release", "()Z", "setInGetItem$paging_runtime_release", "(Z)V", "getInGetItem$paging_runtime_release$annotations", "androidx/paging/AsyncPagingDataDiffer$differBase$1", "differBase", "Landroidx/paging/AsyncPagingDataDiffer$differBase$1;", "Ljava/util/concurrent/atomic/AtomicInteger;", "submitDataId", "Ljava/util/concurrent/atomic/AtomicInteger;", "Lkotlinx/coroutines/flow/i;", "loadStateFlow", "Lkotlinx/coroutines/flow/i;", "getLoadStateFlow", "()Lkotlinx/coroutines/flow/i;", "onPagesUpdatedFlow", "getOnPagesUpdatedFlow", "getItemCount", "()I", "itemCount", "<init>", "(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;Landroidx/recyclerview/widget/ListUpdateCallback;Lkotlinx/coroutines/n0;Lkotlinx/coroutines/n0;)V", "paging-runtime_release"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes.dex */
public final class AsyncPagingDataDiffer<T> {
    @g
    private final DiffUtil.ItemCallback<T> diffCallback;
    @g
    private final AsyncPagingDataDiffer$differBase$1 differBase;
    @g
    private final DifferCallback differCallback;
    private boolean inGetItem;
    @g
    private final i<CombinedLoadStates> loadStateFlow;
    @g
    private final n0 mainDispatcher;
    @g
    private final i<Unit> onPagesUpdatedFlow;
    @g
    private final AtomicInteger submitDataId;
    @g
    private final ListUpdateCallback updateCallback;
    @g
    private final n0 workerDispatcher;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public AsyncPagingDataDiffer(@g DiffUtil.ItemCallback<T> diffCallback, @g ListUpdateCallback updateCallback) {
        this(diffCallback, updateCallback, null, null, 12, null);
        Intrinsics.checkNotNullParameter(diffCallback, "diffCallback");
        Intrinsics.checkNotNullParameter(updateCallback, "updateCallback");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public AsyncPagingDataDiffer(@g DiffUtil.ItemCallback<T> diffCallback, @g ListUpdateCallback updateCallback, @g n0 mainDispatcher) {
        this(diffCallback, updateCallback, mainDispatcher, null, 8, null);
        Intrinsics.checkNotNullParameter(diffCallback, "diffCallback");
        Intrinsics.checkNotNullParameter(updateCallback, "updateCallback");
        Intrinsics.checkNotNullParameter(mainDispatcher, "mainDispatcher");
    }

    @JvmOverloads
    public AsyncPagingDataDiffer(@g DiffUtil.ItemCallback<T> diffCallback, @g ListUpdateCallback updateCallback, @g n0 mainDispatcher, @g n0 workerDispatcher) {
        Intrinsics.checkNotNullParameter(diffCallback, "diffCallback");
        Intrinsics.checkNotNullParameter(updateCallback, "updateCallback");
        Intrinsics.checkNotNullParameter(mainDispatcher, "mainDispatcher");
        Intrinsics.checkNotNullParameter(workerDispatcher, "workerDispatcher");
        this.diffCallback = diffCallback;
        this.updateCallback = updateCallback;
        this.mainDispatcher = mainDispatcher;
        this.workerDispatcher = workerDispatcher;
        DifferCallback differCallback = new DifferCallback(this) { // from class: androidx.paging.AsyncPagingDataDiffer$differCallback$1
            final /* synthetic */ AsyncPagingDataDiffer<T> this$0;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.this$0 = this;
            }

            @Override // androidx.paging.DifferCallback
            public void onChanged(int i4, int i10) {
                ListUpdateCallback listUpdateCallback;
                if (i10 > 0) {
                    listUpdateCallback = ((AsyncPagingDataDiffer) this.this$0).updateCallback;
                    listUpdateCallback.onChanged(i4, i10, null);
                }
            }

            @Override // androidx.paging.DifferCallback
            public void onInserted(int i4, int i10) {
                ListUpdateCallback listUpdateCallback;
                if (i10 > 0) {
                    listUpdateCallback = ((AsyncPagingDataDiffer) this.this$0).updateCallback;
                    listUpdateCallback.onInserted(i4, i10);
                }
            }

            @Override // androidx.paging.DifferCallback
            public void onRemoved(int i4, int i10) {
                ListUpdateCallback listUpdateCallback;
                if (i10 > 0) {
                    listUpdateCallback = ((AsyncPagingDataDiffer) this.this$0).updateCallback;
                    listUpdateCallback.onRemoved(i4, i10);
                }
            }
        };
        this.differCallback = differCallback;
        AsyncPagingDataDiffer$differBase$1 asyncPagingDataDiffer$differBase$1 = new AsyncPagingDataDiffer$differBase$1(this, differCallback, mainDispatcher);
        this.differBase = asyncPagingDataDiffer$differBase$1;
        this.submitDataId = new AtomicInteger(0);
        this.loadStateFlow = asyncPagingDataDiffer$differBase$1.getLoadStateFlow();
        this.onPagesUpdatedFlow = asyncPagingDataDiffer$differBase$1.getOnPagesUpdatedFlow();
    }

    public static /* synthetic */ void getDifferCallback$paging_runtime_release$annotations() {
    }

    public static /* synthetic */ void getInGetItem$paging_runtime_release$annotations() {
    }

    public final void addLoadStateListener(@g Function1<? super CombinedLoadStates, Unit> listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.differBase.addLoadStateListener(listener);
    }

    public final void addOnPagesUpdatedListener(@g Function0<Unit> listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.differBase.addOnPagesUpdatedListener(listener);
    }

    @g
    public final DifferCallback getDifferCallback$paging_runtime_release() {
        return this.differCallback;
    }

    public final boolean getInGetItem$paging_runtime_release() {
        return this.inGetItem;
    }

    @h
    public final T getItem(@IntRange(from = 0) int i4) {
        try {
            this.inGetItem = true;
            return this.differBase.get(i4);
        } finally {
            this.inGetItem = false;
        }
    }

    public final int getItemCount() {
        return this.differBase.getSize();
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
        return this.differBase.peek(i4);
    }

    public final void refresh() {
        this.differBase.refresh();
    }

    public final void removeLoadStateListener(@g Function1<? super CombinedLoadStates, Unit> listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.differBase.removeLoadStateListener(listener);
    }

    public final void removeOnPagesUpdatedListener(@g Function0<Unit> listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.differBase.removeOnPagesUpdatedListener(listener);
    }

    public final void retry() {
        this.differBase.retry();
    }

    public final void setInGetItem$paging_runtime_release(boolean z9) {
        this.inGetItem = z9;
    }

    @g
    public final ItemSnapshotList<T> snapshot() {
        return this.differBase.snapshot();
    }

    @h
    public final Object submitData(@g PagingData<T> pagingData, @g Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        this.submitDataId.incrementAndGet();
        Object collectFrom = this.differBase.collectFrom(pagingData, continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return collectFrom == coroutine_suspended ? collectFrom : Unit.INSTANCE;
    }

    public final void submitData(@g Lifecycle lifecycle, @g PagingData<T> pagingData) {
        Intrinsics.checkNotNullParameter(lifecycle, "lifecycle");
        Intrinsics.checkNotNullParameter(pagingData, "pagingData");
        l.f(LifecycleKt.getCoroutineScope(lifecycle), null, null, new AsyncPagingDataDiffer$submitData$2(this, this.submitDataId.incrementAndGet(), pagingData, null), 3, null);
    }

    public /* synthetic */ AsyncPagingDataDiffer(DiffUtil.ItemCallback itemCallback, ListUpdateCallback listUpdateCallback, n0 n0Var, n0 n0Var2, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(itemCallback, listUpdateCallback, (i4 & 4) != 0 ? i1.e() : n0Var, (i4 & 8) != 0 ? i1.a() : n0Var2);
    }
}

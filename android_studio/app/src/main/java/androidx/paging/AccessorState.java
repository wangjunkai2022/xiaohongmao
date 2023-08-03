package androidx.paging;

import androidx.paging.LoadState;
import io.sentry.Session;
import io.sentry.protocol.t;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.ArrayDeque;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: RemoteMediatorAccessor.kt */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\b\u0002\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u0002*\b\b\u0001\u0010\u0003*\u00020\u00022\u00020\u0002:\u0002$%B\u0005¢\u0006\u0002\u0010\u0004J\"\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0014J\u0006\u0010\u0015\u001a\u00020\u0016J\u000e\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u0012J\u0006\u0010\u0018\u001a\u00020\u0016J\u0006\u0010\u0019\u001a\u00020\u001aJ\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J \u0010\u001d\u001a\u001c\u0012\u0004\u0012\u00020\u0012\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0014\u0018\u00010\u001eJ\u0014\u0010\u001f\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u0014J\u0016\u0010 \u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010!\u001a\u00020\u0007J\u0018\u0010\"\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u00122\b\u0010#\u001a\u0004\u0018\u00010\nR\u0016\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\bR\u0018\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\u0006X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u000bR \u0010\f\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u000e0\rX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006&"}, d2 = {"Landroidx/paging/AccessorState;", "Key", "", "Value", "()V", "blockStates", "", "Landroidx/paging/AccessorState$BlockState;", "[Landroidx/paging/AccessorState$BlockState;", Session.b.f81846g, "Landroidx/paging/LoadState$Error;", "[Landroidx/paging/LoadState$Error;", "pendingRequests", "Lkotlin/collections/ArrayDeque;", "Landroidx/paging/AccessorState$PendingRequest;", "add", "", "loadType", "Landroidx/paging/LoadType;", "pagingState", "Landroidx/paging/PagingState;", "clearErrors", "", "clearPendingRequest", "clearPendingRequests", "computeLoadStates", "Landroidx/paging/LoadStates;", "computeLoadTypeState", "Landroidx/paging/LoadState;", "getPendingBoundary", "Lkotlin/Pair;", "getPendingRefresh", "setBlockState", t.b.f83859d, "setError", "errorState", "BlockState", "PendingRequest", "paging-common"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
final class AccessorState<Key, Value> {
    @g
    private final BlockState[] blockStates;
    @g
    private final LoadState.Error[] errors;
    @g
    private final ArrayDeque<PendingRequest<Key, Value>> pendingRequests;

    /* compiled from: RemoteMediatorAccessor.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Landroidx/paging/AccessorState$BlockState;", "", "(Ljava/lang/String;I)V", "UNBLOCKED", "COMPLETED", "REQUIRES_REFRESH", "paging-common"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public enum BlockState {
        UNBLOCKED,
        COMPLETED,
        REQUIRES_REFRESH
    }

    /* compiled from: RemoteMediatorAccessor.kt */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000*\b\b\u0002\u0010\u0001*\u00020\u0002*\b\b\u0003\u0010\u0003*\u00020\u00022\u00020\u0002B!\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0007¢\u0006\u0002\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR&\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Landroidx/paging/AccessorState$PendingRequest;", "Key", "", "Value", "loadType", "Landroidx/paging/LoadType;", "pagingState", "Landroidx/paging/PagingState;", "(Landroidx/paging/LoadType;Landroidx/paging/PagingState;)V", "getLoadType", "()Landroidx/paging/LoadType;", "getPagingState", "()Landroidx/paging/PagingState;", "setPagingState", "(Landroidx/paging/PagingState;)V", "paging-common"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class PendingRequest<Key, Value> {
        @g
        private final LoadType loadType;
        @g
        private PagingState<Key, Value> pagingState;

        public PendingRequest(@g LoadType loadType, @g PagingState<Key, Value> pagingState) {
            Intrinsics.checkNotNullParameter(loadType, "loadType");
            Intrinsics.checkNotNullParameter(pagingState, "pagingState");
            this.loadType = loadType;
            this.pagingState = pagingState;
        }

        @g
        public final LoadType getLoadType() {
            return this.loadType;
        }

        @g
        public final PagingState<Key, Value> getPagingState() {
            return this.pagingState;
        }

        public final void setPagingState(@g PagingState<Key, Value> pagingState) {
            Intrinsics.checkNotNullParameter(pagingState, "<set-?>");
            this.pagingState = pagingState;
        }
    }

    /* compiled from: RemoteMediatorAccessor.kt */
    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[BlockState.values().length];
            iArr[BlockState.COMPLETED.ordinal()] = 1;
            iArr[BlockState.REQUIRES_REFRESH.ordinal()] = 2;
            iArr[BlockState.UNBLOCKED.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[LoadType.values().length];
            iArr2[LoadType.REFRESH.ordinal()] = 1;
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    public AccessorState() {
        int length = LoadType.values().length;
        BlockState[] blockStateArr = new BlockState[length];
        for (int i4 = 0; i4 < length; i4++) {
            blockStateArr[i4] = BlockState.UNBLOCKED;
        }
        this.blockStates = blockStateArr;
        int length2 = LoadType.values().length;
        LoadState.Error[] errorArr = new LoadState.Error[length2];
        for (int i10 = 0; i10 < length2; i10++) {
            errorArr[i10] = null;
        }
        this.errors = errorArr;
        this.pendingRequests = new ArrayDeque<>();
    }

    private final LoadState computeLoadTypeState(LoadType loadType) {
        boolean z9;
        BlockState blockState = this.blockStates[loadType.ordinal()];
        ArrayDeque<PendingRequest<Key, Value>> arrayDeque = this.pendingRequests;
        boolean z10 = false;
        if (!(arrayDeque instanceof Collection) || !arrayDeque.isEmpty()) {
            Iterator<PendingRequest<Key, Value>> it = arrayDeque.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                if (it.next().getLoadType() == loadType) {
                    z9 = true;
                    continue;
                } else {
                    z9 = false;
                    continue;
                }
                if (z9) {
                    z10 = true;
                    break;
                }
            }
        }
        if (z10 && blockState != BlockState.REQUIRES_REFRESH) {
            return LoadState.Loading.INSTANCE;
        }
        LoadState.Error error = this.errors[loadType.ordinal()];
        if (error == null) {
            int i4 = WhenMappings.$EnumSwitchMapping$0[blockState.ordinal()];
            if (i4 == 1) {
                if (WhenMappings.$EnumSwitchMapping$1[loadType.ordinal()] == 1) {
                    return LoadState.NotLoading.Companion.getIncomplete$paging_common();
                }
                return LoadState.NotLoading.Companion.getComplete$paging_common();
            } else if (i4 != 2) {
                if (i4 == 3) {
                    return LoadState.NotLoading.Companion.getIncomplete$paging_common();
                }
                throw new NoWhenBranchMatchedException();
            } else {
                return LoadState.NotLoading.Companion.getIncomplete$paging_common();
            }
        }
        return error;
    }

    public final boolean add(@g LoadType loadType, @g PagingState<Key, Value> pagingState) {
        PendingRequest<Key, Value> pendingRequest;
        boolean z9;
        Intrinsics.checkNotNullParameter(loadType, "loadType");
        Intrinsics.checkNotNullParameter(pagingState, "pagingState");
        Iterator<PendingRequest<Key, Value>> it = this.pendingRequests.iterator();
        while (true) {
            if (!it.hasNext()) {
                pendingRequest = null;
                break;
            }
            pendingRequest = it.next();
            if (pendingRequest.getLoadType() == loadType) {
                z9 = true;
                continue;
            } else {
                z9 = false;
                continue;
            }
            if (z9) {
                break;
            }
        }
        PendingRequest<Key, Value> pendingRequest2 = pendingRequest;
        if (pendingRequest2 != null) {
            pendingRequest2.setPagingState(pagingState);
            return false;
        }
        BlockState blockState = this.blockStates[loadType.ordinal()];
        if (blockState == BlockState.REQUIRES_REFRESH && loadType != LoadType.REFRESH) {
            this.pendingRequests.add(new PendingRequest<>(loadType, pagingState));
            return false;
        } else if (blockState == BlockState.UNBLOCKED || loadType == LoadType.REFRESH) {
            LoadType loadType2 = LoadType.REFRESH;
            if (loadType == loadType2) {
                setError(loadType2, null);
            }
            if (this.errors[loadType.ordinal()] == null) {
                return this.pendingRequests.add(new PendingRequest<>(loadType, pagingState));
            }
            return false;
        } else {
            return false;
        }
    }

    public final void clearErrors() {
        int length = this.errors.length - 1;
        if (length < 0) {
            return;
        }
        int i4 = 0;
        while (true) {
            int i10 = i4 + 1;
            this.errors[i4] = null;
            if (i10 > length) {
                return;
            }
            i4 = i10;
        }
    }

    public final void clearPendingRequest(@g LoadType loadType) {
        Intrinsics.checkNotNullParameter(loadType, "loadType");
        CollectionsKt__MutableCollectionsKt.removeAll((List) this.pendingRequests, (Function1) new AccessorState$clearPendingRequest$1(loadType));
    }

    public final void clearPendingRequests() {
        this.pendingRequests.clear();
    }

    @g
    public final LoadStates computeLoadStates() {
        return new LoadStates(computeLoadTypeState(LoadType.REFRESH), computeLoadTypeState(LoadType.PREPEND), computeLoadTypeState(LoadType.APPEND));
    }

    @h
    public final Pair<LoadType, PagingState<Key, Value>> getPendingBoundary() {
        PendingRequest<Key, Value> pendingRequest;
        boolean z9;
        Iterator<PendingRequest<Key, Value>> it = this.pendingRequests.iterator();
        while (true) {
            if (!it.hasNext()) {
                pendingRequest = null;
                break;
            }
            pendingRequest = it.next();
            PendingRequest<Key, Value> pendingRequest2 = pendingRequest;
            if (pendingRequest2.getLoadType() == LoadType.REFRESH || this.blockStates[pendingRequest2.getLoadType().ordinal()] != BlockState.UNBLOCKED) {
                z9 = false;
                continue;
            } else {
                z9 = true;
                continue;
            }
            if (z9) {
                break;
            }
        }
        PendingRequest<Key, Value> pendingRequest3 = pendingRequest;
        if (pendingRequest3 == null) {
            return null;
        }
        return TuplesKt.to(pendingRequest3.getLoadType(), pendingRequest3.getPagingState());
    }

    @h
    public final PagingState<Key, Value> getPendingRefresh() {
        PendingRequest<Key, Value> pendingRequest;
        boolean z9;
        Iterator<PendingRequest<Key, Value>> it = this.pendingRequests.iterator();
        while (true) {
            if (!it.hasNext()) {
                pendingRequest = null;
                break;
            }
            pendingRequest = it.next();
            if (pendingRequest.getLoadType() == LoadType.REFRESH) {
                z9 = true;
                continue;
            } else {
                z9 = false;
                continue;
            }
            if (z9) {
                break;
            }
        }
        PendingRequest<Key, Value> pendingRequest2 = pendingRequest;
        if (pendingRequest2 == null) {
            return null;
        }
        return pendingRequest2.getPagingState();
    }

    public final void setBlockState(@g LoadType loadType, @g BlockState state) {
        Intrinsics.checkNotNullParameter(loadType, "loadType");
        Intrinsics.checkNotNullParameter(state, "state");
        this.blockStates[loadType.ordinal()] = state;
    }

    public final void setError(@g LoadType loadType, @h LoadState.Error error) {
        Intrinsics.checkNotNullParameter(loadType, "loadType");
        this.errors[loadType.ordinal()] = error;
    }
}

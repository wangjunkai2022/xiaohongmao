package androidx.paging;

import androidx.paging.LoadState;
import io.sentry.protocol.s;
import io.sentry.protocol.t;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: MutableLoadStateCollection.kt */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0011J\u000e\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015J\u0016\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u0004J\u0006\u0010\u0018\u001a\u00020\u0015R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001a\u0010\f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\b¨\u0006\u0019"}, d2 = {"Landroidx/paging/MutableLoadStateCollection;", "", "()V", "append", "Landroidx/paging/LoadState;", "getAppend", "()Landroidx/paging/LoadState;", "setAppend", "(Landroidx/paging/LoadState;)V", "prepend", "getPrepend", "setPrepend", "refresh", "getRefresh", "setRefresh", "get", "loadType", "Landroidx/paging/LoadType;", "set", "", "states", "Landroidx/paging/LoadStates;", "type", t.b.f83859d, s.b.f83846c, "paging-common"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class MutableLoadStateCollection {
    @g
    private LoadState append;
    @g
    private LoadState prepend;
    @g
    private LoadState refresh;

    /* compiled from: MutableLoadStateCollection.kt */
    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[LoadType.values().length];
            iArr[LoadType.REFRESH.ordinal()] = 1;
            iArr[LoadType.APPEND.ordinal()] = 2;
            iArr[LoadType.PREPEND.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public MutableLoadStateCollection() {
        LoadState.NotLoading.Companion companion = LoadState.NotLoading.Companion;
        this.refresh = companion.getIncomplete$paging_common();
        this.prepend = companion.getIncomplete$paging_common();
        this.append = companion.getIncomplete$paging_common();
    }

    @g
    public final LoadState get(@g LoadType loadType) {
        Intrinsics.checkNotNullParameter(loadType, "loadType");
        int i4 = WhenMappings.$EnumSwitchMapping$0[loadType.ordinal()];
        if (i4 != 1) {
            if (i4 != 2) {
                if (i4 == 3) {
                    return this.prepend;
                }
                throw new NoWhenBranchMatchedException();
            }
            return this.append;
        }
        return this.refresh;
    }

    @g
    public final LoadState getAppend() {
        return this.append;
    }

    @g
    public final LoadState getPrepend() {
        return this.prepend;
    }

    @g
    public final LoadState getRefresh() {
        return this.refresh;
    }

    public final void set(@g LoadType type, @g LoadState state) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(state, "state");
        int i4 = WhenMappings.$EnumSwitchMapping$0[type.ordinal()];
        if (i4 == 1) {
            this.refresh = state;
        } else if (i4 == 2) {
            this.append = state;
        } else if (i4 != 3) {
            throw new NoWhenBranchMatchedException();
        } else {
            this.prepend = state;
        }
    }

    public final void setAppend(@g LoadState loadState) {
        Intrinsics.checkNotNullParameter(loadState, "<set-?>");
        this.append = loadState;
    }

    public final void setPrepend(@g LoadState loadState) {
        Intrinsics.checkNotNullParameter(loadState, "<set-?>");
        this.prepend = loadState;
    }

    public final void setRefresh(@g LoadState loadState) {
        Intrinsics.checkNotNullParameter(loadState, "<set-?>");
        this.refresh = loadState;
    }

    @g
    public final LoadStates snapshot() {
        return new LoadStates(this.refresh, this.prepend, this.append);
    }

    public final void set(@g LoadStates states) {
        Intrinsics.checkNotNullParameter(states, "states");
        this.refresh = states.getRefresh();
        this.append = states.getAppend();
        this.prepend = states.getPrepend();
    }
}

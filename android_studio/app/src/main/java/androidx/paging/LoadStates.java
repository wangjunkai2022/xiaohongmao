package androidx.paging;

import androidx.annotation.RestrictTo;
import androidx.paging.LoadState;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: LoadStates.kt */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\b\u0018\u0000 !2\u00020\u0001:\u0001!B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J'\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J&\u0010\u0012\u001a\u00020\u00132\u0018\u0010\u0014\u001a\u0014\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00130\u0015H\u0087\bø\u0001\u0000J\u0015\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0018\u001a\u00020\u0016H\u0000¢\u0006\u0002\b\u0019J\t\u0010\u001a\u001a\u00020\u001bHÖ\u0001J\u001d\u0010\u001c\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u00162\u0006\u0010\u001d\u001a\u00020\u0003H\u0000¢\u0006\u0002\b\u001eJ\t\u0010\u001f\u001a\u00020 HÖ\u0001R\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\b\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\""}, d2 = {"Landroidx/paging/LoadStates;", "", "refresh", "Landroidx/paging/LoadState;", "prepend", "append", "(Landroidx/paging/LoadState;Landroidx/paging/LoadState;Landroidx/paging/LoadState;)V", "getAppend", "()Landroidx/paging/LoadState;", "getPrepend", "getRefresh", "component1", "component2", "component3", "copy", "equals", "", "other", "forEach", "", "op", "Lkotlin/Function2;", "Landroidx/paging/LoadType;", "get", "loadType", "get$paging_common", "hashCode", "", "modifyState", "newState", "modifyState$paging_common", "toString", "", "Companion", "paging-common"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class LoadStates {
    @g
    public static final Companion Companion = new Companion(null);
    @g
    private static final LoadStates IDLE;
    @g
    private final LoadState append;
    @g
    private final LoadState prepend;
    @g
    private final LoadState refresh;

    /* compiled from: LoadStates.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/paging/LoadStates$Companion;", "", "()V", "IDLE", "Landroidx/paging/LoadStates;", "getIDLE", "()Landroidx/paging/LoadStates;", "paging-common"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @g
        public final LoadStates getIDLE() {
            return LoadStates.IDLE;
        }
    }

    /* compiled from: LoadStates.kt */
    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[LoadType.values().length];
            iArr[LoadType.APPEND.ordinal()] = 1;
            iArr[LoadType.PREPEND.ordinal()] = 2;
            iArr[LoadType.REFRESH.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    static {
        LoadState.NotLoading.Companion companion = LoadState.NotLoading.Companion;
        IDLE = new LoadStates(companion.getIncomplete$paging_common(), companion.getIncomplete$paging_common(), companion.getIncomplete$paging_common());
    }

    public LoadStates(@g LoadState refresh, @g LoadState prepend, @g LoadState append) {
        Intrinsics.checkNotNullParameter(refresh, "refresh");
        Intrinsics.checkNotNullParameter(prepend, "prepend");
        Intrinsics.checkNotNullParameter(append, "append");
        this.refresh = refresh;
        this.prepend = prepend;
        this.append = append;
    }

    public static /* synthetic */ LoadStates copy$default(LoadStates loadStates, LoadState loadState, LoadState loadState2, LoadState loadState3, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            loadState = loadStates.refresh;
        }
        if ((i4 & 2) != 0) {
            loadState2 = loadStates.prepend;
        }
        if ((i4 & 4) != 0) {
            loadState3 = loadStates.append;
        }
        return loadStates.copy(loadState, loadState2, loadState3);
    }

    @g
    public final LoadState component1() {
        return this.refresh;
    }

    @g
    public final LoadState component2() {
        return this.prepend;
    }

    @g
    public final LoadState component3() {
        return this.append;
    }

    @g
    public final LoadStates copy(@g LoadState refresh, @g LoadState prepend, @g LoadState append) {
        Intrinsics.checkNotNullParameter(refresh, "refresh");
        Intrinsics.checkNotNullParameter(prepend, "prepend");
        Intrinsics.checkNotNullParameter(append, "append");
        return new LoadStates(refresh, prepend, append);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof LoadStates) {
            LoadStates loadStates = (LoadStates) obj;
            return Intrinsics.areEqual(this.refresh, loadStates.refresh) && Intrinsics.areEqual(this.prepend, loadStates.prepend) && Intrinsics.areEqual(this.append, loadStates.append);
        }
        return false;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public final void forEach(@g Function2<? super LoadType, ? super LoadState, Unit> op) {
        Intrinsics.checkNotNullParameter(op, "op");
        op.invoke(LoadType.REFRESH, getRefresh());
        op.invoke(LoadType.PREPEND, getPrepend());
        op.invoke(LoadType.APPEND, getAppend());
    }

    @g
    public final LoadState get$paging_common(@g LoadType loadType) {
        Intrinsics.checkNotNullParameter(loadType, "loadType");
        int i4 = WhenMappings.$EnumSwitchMapping$0[loadType.ordinal()];
        if (i4 != 1) {
            if (i4 != 2) {
                if (i4 == 3) {
                    return this.refresh;
                }
                throw new NoWhenBranchMatchedException();
            }
            return this.prepend;
        }
        return this.append;
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

    public int hashCode() {
        return (((this.refresh.hashCode() * 31) + this.prepend.hashCode()) * 31) + this.append.hashCode();
    }

    @g
    public final LoadStates modifyState$paging_common(@g LoadType loadType, @g LoadState newState) {
        Intrinsics.checkNotNullParameter(loadType, "loadType");
        Intrinsics.checkNotNullParameter(newState, "newState");
        int i4 = WhenMappings.$EnumSwitchMapping$0[loadType.ordinal()];
        if (i4 != 1) {
            if (i4 != 2) {
                if (i4 == 3) {
                    return copy$default(this, newState, null, null, 6, null);
                }
                throw new NoWhenBranchMatchedException();
            }
            return copy$default(this, null, newState, null, 5, null);
        }
        return copy$default(this, null, null, newState, 3, null);
    }

    @g
    public String toString() {
        return "LoadStates(refresh=" + this.refresh + ", prepend=" + this.prepend + ", append=" + this.append + ')';
    }
}

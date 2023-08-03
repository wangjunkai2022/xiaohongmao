package androidx.paging;

import androidx.paging.AccessorState;
import androidx.paging.LoadState;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import m8.g;

/* compiled from: RemoteMediatorAccessor.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0006\u001a\u00020\u0005\"\b\b\u0000\u0010\u0001*\u00020\u0000\"\b\b\u0001\u0010\u0002*\u00020\u00002\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0003H\n"}, d2 = {"", "Key", "Value", "Landroidx/paging/AccessorState;", "accessorState", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
/* loaded from: classes.dex */
final class RemoteMediatorAccessImpl$retryFailed$1 extends Lambda implements Function1<AccessorState<Key, Value>, Unit> {
    final /* synthetic */ List<LoadType> $toBeStarted;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RemoteMediatorAccessImpl$retryFailed$1(List<LoadType> list) {
        super(1);
        this.$toBeStarted = list;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Object obj) {
        invoke((AccessorState) obj);
        return Unit.INSTANCE;
    }

    public final void invoke(@g AccessorState<Key, Value> accessorState) {
        Intrinsics.checkNotNullParameter(accessorState, "accessorState");
        LoadStates computeLoadStates = accessorState.computeLoadStates();
        boolean z9 = computeLoadStates.getRefresh() instanceof LoadState.Error;
        accessorState.clearErrors();
        if (z9) {
            List<LoadType> list = this.$toBeStarted;
            LoadType loadType = LoadType.REFRESH;
            list.add(loadType);
            accessorState.setBlockState(loadType, AccessorState.BlockState.UNBLOCKED);
        }
        if (computeLoadStates.getAppend() instanceof LoadState.Error) {
            if (!z9) {
                this.$toBeStarted.add(LoadType.APPEND);
            }
            accessorState.clearPendingRequest(LoadType.APPEND);
        }
        if (computeLoadStates.getPrepend() instanceof LoadState.Error) {
            if (!z9) {
                this.$toBeStarted.add(LoadType.PREPEND);
            }
            accessorState.clearPendingRequest(LoadType.PREPEND);
        }
    }
}

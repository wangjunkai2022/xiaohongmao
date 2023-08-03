package androidx.paging;

import androidx.paging.LoadState;
import androidx.paging.RemoteMediator;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import m8.g;

/* compiled from: RemoteMediatorAccessor.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0006\u001a\u00020\u0005\"\b\b\u0000\u0010\u0001*\u00020\u0000\"\b\b\u0001\u0010\u0002*\u00020\u00002\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0003H\n"}, d2 = {"", "Key", "Value", "Landroidx/paging/AccessorState;", "it", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
/* loaded from: classes.dex */
final class RemoteMediatorAccessImpl$launchRefresh$1$1$1$2 extends Lambda implements Function1<AccessorState<Key, Value>, Boolean> {
    final /* synthetic */ RemoteMediator.MediatorResult $loadResult;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RemoteMediatorAccessImpl$launchRefresh$1$1$1$2(RemoteMediator.MediatorResult mediatorResult) {
        super(1);
        this.$loadResult = mediatorResult;
    }

    @Override // kotlin.jvm.functions.Function1
    @g
    public final Boolean invoke(@g AccessorState<Key, Value> it) {
        Intrinsics.checkNotNullParameter(it, "it");
        LoadType loadType = LoadType.REFRESH;
        it.clearPendingRequest(loadType);
        it.setError(loadType, new LoadState.Error(((RemoteMediator.MediatorResult.Error) this.$loadResult).getThrowable()));
        return Boolean.valueOf(it.getPendingBoundary() != null);
    }
}

package androidx.paging;

import androidx.paging.AccessorState;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import m8.g;

/* compiled from: RemoteMediatorAccessor.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0006\u001a\u00020\u0005\"\b\b\u0000\u0010\u0001*\u00020\u0000\"\b\b\u0001\u0010\u0002*\u00020\u00002\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0003H\n"}, d2 = {"", "Key", "Value", "Landroidx/paging/AccessorState;", "it", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
/* loaded from: classes.dex */
final class RemoteMediatorAccessImpl$initialize$2$1 extends Lambda implements Function1<AccessorState<Key, Value>, Unit> {
    public static final RemoteMediatorAccessImpl$initialize$2$1 INSTANCE = new RemoteMediatorAccessImpl$initialize$2$1();

    RemoteMediatorAccessImpl$initialize$2$1() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Object obj) {
        invoke((AccessorState) obj);
        return Unit.INSTANCE;
    }

    public final void invoke(@g AccessorState<Key, Value> it) {
        Intrinsics.checkNotNullParameter(it, "it");
        LoadType loadType = LoadType.APPEND;
        AccessorState.BlockState blockState = AccessorState.BlockState.REQUIRES_REFRESH;
        it.setBlockState(loadType, blockState);
        it.setBlockState(LoadType.PREPEND, blockState);
    }
}

package androidx.paging;

import androidx.paging.HintHandler;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import m8.g;

/* compiled from: HintHandler.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0005\u001a\u00020\u00042\n\u0010\u0002\u001a\u00060\u0000R\u00020\u00012\n\u0010\u0003\u001a\u00060\u0000R\u00020\u0001H\n"}, d2 = {"Landroidx/paging/HintHandler$HintFlow;", "Landroidx/paging/HintHandler;", "prependHint", "appendHint", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
/* loaded from: classes.dex */
final class HintHandler$processHint$1 extends Lambda implements Function2<HintHandler.HintFlow, HintHandler.HintFlow, Unit> {
    final /* synthetic */ ViewportHint $viewportHint;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HintHandler$processHint$1(ViewportHint viewportHint) {
        super(2);
        this.$viewportHint = viewportHint;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Unit invoke(HintHandler.HintFlow hintFlow, HintHandler.HintFlow hintFlow2) {
        invoke2(hintFlow, hintFlow2);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(@g HintHandler.HintFlow prependHint, @g HintHandler.HintFlow appendHint) {
        Intrinsics.checkNotNullParameter(prependHint, "prependHint");
        Intrinsics.checkNotNullParameter(appendHint, "appendHint");
        if (HintHandlerKt.shouldPrioritizeOver(this.$viewportHint, prependHint.getValue(), LoadType.PREPEND)) {
            prependHint.setValue(this.$viewportHint);
        }
        if (HintHandlerKt.shouldPrioritizeOver(this.$viewportHint, appendHint.getValue(), LoadType.APPEND)) {
            appendHint.setValue(this.$viewportHint);
        }
    }
}

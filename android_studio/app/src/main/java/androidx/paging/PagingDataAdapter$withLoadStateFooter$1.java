package androidx.paging;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import m8.g;

/* compiled from: PagingDataAdapter.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0018\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0007\u001a\u00020\u0006\"\b\b\u0000\u0010\u0001*\u00020\u0000\"\b\b\u0001\u0010\u0003*\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\n"}, d2 = {"", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "VH", "Landroidx/paging/CombinedLoadStates;", "loadStates", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
/* loaded from: classes.dex */
final class PagingDataAdapter$withLoadStateFooter$1 extends Lambda implements Function1<CombinedLoadStates, Unit> {
    final /* synthetic */ LoadStateAdapter<?> $footer;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PagingDataAdapter$withLoadStateFooter$1(LoadStateAdapter<?> loadStateAdapter) {
        super(1);
        this.$footer = loadStateAdapter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(CombinedLoadStates combinedLoadStates) {
        invoke2(combinedLoadStates);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(@g CombinedLoadStates loadStates) {
        Intrinsics.checkNotNullParameter(loadStates, "loadStates");
        this.$footer.setLoadState(loadStates.getAppend());
    }
}

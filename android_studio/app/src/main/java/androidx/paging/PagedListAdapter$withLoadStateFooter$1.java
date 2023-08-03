package androidx.paging;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import m8.g;

/* compiled from: PagedListAdapter.kt */
@Metadata(bv = {}, d1 = {"\u0000\u001e\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\t\u001a\u00020\b\"\b\b\u0000\u0010\u0001*\u00020\u0000\"\b\b\u0001\u0010\u0003*\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\n"}, d2 = {"", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "VH", "Landroidx/paging/LoadType;", "loadType", "Landroidx/paging/LoadState;", "loadState", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
/* loaded from: classes.dex */
final class PagedListAdapter$withLoadStateFooter$1 extends Lambda implements Function2<LoadType, LoadState, Unit> {
    final /* synthetic */ LoadStateAdapter<?> $footer;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PagedListAdapter$withLoadStateFooter$1(LoadStateAdapter<?> loadStateAdapter) {
        super(2);
        this.$footer = loadStateAdapter;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Unit invoke(LoadType loadType, LoadState loadState) {
        invoke2(loadType, loadState);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(@g LoadType loadType, @g LoadState loadState) {
        Intrinsics.checkNotNullParameter(loadType, "loadType");
        Intrinsics.checkNotNullParameter(loadState, "loadState");
        if (loadType == LoadType.APPEND) {
            this.$footer.setLoadState(loadState);
        }
    }
}

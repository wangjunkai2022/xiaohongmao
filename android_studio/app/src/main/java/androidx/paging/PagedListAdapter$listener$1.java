package androidx.paging;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;
import m8.h;

/* compiled from: PagedListAdapter.kt */
@Metadata(bv = {}, d1 = {"\u0000\u001a\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\u0010\b\u001a\u00020\u0007\"\b\b\u0000\u0010\u0001*\u00020\u0000\"\b\b\u0001\u0010\u0003*\u00020\u00022\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00042\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0004H\n"}, d2 = {"", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "VH", "Landroidx/paging/PagedList;", "previousList", "currentList", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
/* loaded from: classes.dex */
final class PagedListAdapter$listener$1 extends Lambda implements Function2<PagedList<T>, PagedList<T>, Unit> {
    final /* synthetic */ PagedListAdapter<T, VH> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PagedListAdapter$listener$1(PagedListAdapter<T, VH> pagedListAdapter) {
        super(2);
        this.this$0 = pagedListAdapter;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Unit invoke(Object obj, Object obj2) {
        invoke((PagedList) obj, (PagedList) obj2);
        return Unit.INSTANCE;
    }

    public final void invoke(@h PagedList<T> pagedList, @h PagedList<T> pagedList2) {
        this.this$0.onCurrentListChanged(pagedList2);
        this.this$0.onCurrentListChanged(pagedList, pagedList2);
    }
}

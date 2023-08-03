package androidx.paging;

import androidx.exifinterface.media.ExifInterface;
import androidx.paging.AsyncPagedListDiffer;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;
import m8.g;

/* compiled from: AsyncPagedListDiffer.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\u0010\u0006\u001a\u00020\u0005\"\b\b\u0000\u0010\u0001*\u00020\u00002\u001a\u0010\u0004\u001a\u0016\u0012\u0004\u0012\u00028\u0000 \u0003*\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00020\u0002H\n"}, d2 = {"", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/paging/AsyncPagedListDiffer$PagedListListener;", "kotlin.jvm.PlatformType", "it", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
/* loaded from: classes.dex */
final class AsyncPagedListDiffer$removePagedListListener$1 extends Lambda implements Function1<AsyncPagedListDiffer.PagedListListener<T>, Boolean> {
    final /* synthetic */ Function2<PagedList<T>, PagedList<T>, Unit> $callback;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public AsyncPagedListDiffer$removePagedListListener$1(Function2<? super PagedList<T>, ? super PagedList<T>, Unit> function2) {
        super(1);
        this.$callback = function2;
    }

    @Override // kotlin.jvm.functions.Function1
    @g
    public final Boolean invoke(AsyncPagedListDiffer.PagedListListener<T> pagedListListener) {
        return Boolean.valueOf((pagedListListener instanceof AsyncPagedListDiffer.OnCurrentListChangedWrapper) && ((AsyncPagedListDiffer.OnCurrentListChangedWrapper) pagedListListener).getCallback() == this.$callback);
    }
}

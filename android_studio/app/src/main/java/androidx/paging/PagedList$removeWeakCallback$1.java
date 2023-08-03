package androidx.paging;

import androidx.exifinterface.media.ExifInterface;
import androidx.paging.PagedList;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import m8.g;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PagedList.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0016\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0006\u001a\u00020\u0005\"\b\b\u0000\u0010\u0001*\u00020\u00002\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\n"}, d2 = {"", ExifInterface.GPS_DIRECTION_TRUE, "Ljava/lang/ref/WeakReference;", "Landroidx/paging/PagedList$Callback;", "it", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
/* loaded from: classes.dex */
public final class PagedList$removeWeakCallback$1 extends Lambda implements Function1<WeakReference<PagedList.Callback>, Boolean> {
    final /* synthetic */ PagedList.Callback $callback;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PagedList$removeWeakCallback$1(PagedList.Callback callback) {
        super(1);
        this.$callback = callback;
    }

    @Override // kotlin.jvm.functions.Function1
    @g
    public final Boolean invoke(@g WeakReference<PagedList.Callback> it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Boolean.valueOf(it.get() == null || it.get() == this.$callback);
    }
}

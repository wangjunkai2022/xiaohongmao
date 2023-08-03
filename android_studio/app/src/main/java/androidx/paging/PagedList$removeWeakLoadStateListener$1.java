package androidx.paging;

import androidx.exifinterface.media.ExifInterface;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import m8.g;

/* compiled from: PagedList.kt */
@Metadata(bv = {}, d1 = {"\u0000\"\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\t\u001a\u00020\b\"\b\b\u0000\u0010\u0001*\u00020\u00002\u001e\u0010\u0007\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u00030\u0002H\n"}, d2 = {"", ExifInterface.GPS_DIRECTION_TRUE, "Ljava/lang/ref/WeakReference;", "Lkotlin/Function2;", "Landroidx/paging/LoadType;", "Landroidx/paging/LoadState;", "", "it", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
/* loaded from: classes.dex */
final class PagedList$removeWeakLoadStateListener$1 extends Lambda implements Function1<WeakReference<Function2<? super LoadType, ? super LoadState, ? extends Unit>>, Boolean> {
    final /* synthetic */ Function2<LoadType, LoadState, Unit> $listener;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public PagedList$removeWeakLoadStateListener$1(Function2<? super LoadType, ? super LoadState, Unit> function2) {
        super(1);
        this.$listener = function2;
    }

    @g
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Boolean invoke2(@g WeakReference<Function2<LoadType, LoadState, Unit>> it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Boolean.valueOf(it.get() == null || it.get() == this.$listener);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Boolean invoke(WeakReference<Function2<? super LoadType, ? super LoadState, ? extends Unit>> weakReference) {
        return invoke2((WeakReference<Function2<LoadType, LoadState, Unit>>) weakReference);
    }
}

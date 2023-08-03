package androidx.paging;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Ref;

/* compiled from: PagingDataDiffer.kt */
@Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002\"\b\b\u0000\u0010\u0001*\u00020\u0000H\n"}, d2 = {"", ExifInterface.GPS_DIRECTION_TRUE, "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
/* loaded from: classes.dex */
final class PagingDataDiffer$collectFrom$2$1$1$transformedLastAccessedIndex$1 extends Lambda implements Function0<Unit> {
    final /* synthetic */ PagePresenter<T> $newPresenter;
    final /* synthetic */ Ref.BooleanRef $onListPresentableCalled;
    final /* synthetic */ PagingDataDiffer<T> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PagingDataDiffer$collectFrom$2$1$1$transformedLastAccessedIndex$1(PagingDataDiffer<T> pagingDataDiffer, PagePresenter<T> pagePresenter, Ref.BooleanRef booleanRef) {
        super(0);
        this.this$0 = pagingDataDiffer;
        this.$newPresenter = pagePresenter;
        this.$onListPresentableCalled = booleanRef;
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        invoke2();
        return Unit.INSTANCE;
    }

    @Override // kotlin.jvm.functions.Function0
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2() {
        ((PagingDataDiffer) this.this$0).presenter = this.$newPresenter;
        this.$onListPresentableCalled.element = true;
    }
}

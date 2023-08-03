package androidx.paging;

import androidx.paging.DataSource;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import m8.g;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DataSource.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0006\u001a\u00020\u0005\"\b\b\u0000\u0010\u0001*\u00020\u0000\"\b\b\u0001\u0010\u0002*\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0003H\n"}, d2 = {"", "Key", "Value", "Landroidx/paging/DataSource$InvalidatedCallback;", "it", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
/* loaded from: classes.dex */
public final class DataSource$invalidateCallbackTracker$1 extends Lambda implements Function1<DataSource.InvalidatedCallback, Unit> {
    public static final DataSource$invalidateCallbackTracker$1 INSTANCE = new DataSource$invalidateCallbackTracker$1();

    DataSource$invalidateCallbackTracker$1() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(DataSource.InvalidatedCallback invalidatedCallback) {
        invoke2(invalidatedCallback);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(@g DataSource.InvalidatedCallback it) {
        Intrinsics.checkNotNullParameter(it, "it");
        it.onInvalidated();
    }
}

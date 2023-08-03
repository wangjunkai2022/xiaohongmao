package androidx.paging;

import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import m8.g;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DataSource.kt */
@Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\u0010\u0004\u001a\u00020\u0003\"\b\b\u0000\u0010\u0001*\u00020\u0000\"\b\b\u0001\u0010\u0002*\u00020\u0000H\n"}, d2 = {"", "Key", "Value", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
/* loaded from: classes.dex */
public final class DataSource$invalidateCallbackTracker$2 extends Lambda implements Function0<Boolean> {
    final /* synthetic */ DataSource<Key, Value> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DataSource$invalidateCallbackTracker$2(DataSource<Key, Value> dataSource) {
        super(0);
        this.this$0 = dataSource;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    @g
    public final Boolean invoke() {
        return Boolean.valueOf(this.this$0.isInvalid());
    }
}

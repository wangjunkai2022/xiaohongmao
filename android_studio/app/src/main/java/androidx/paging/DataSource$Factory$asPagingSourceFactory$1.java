package androidx.paging;

import androidx.paging.DataSource;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.n0;
import m8.g;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DataSource.kt */
@Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0003\"\b\b\u0000\u0010\u0001*\u00020\u0000\"\b\b\u0001\u0010\u0002*\u00020\u0000\"\b\b\u0002\u0010\u0001*\u00020\u0000\"\b\b\u0003\u0010\u0002*\u00020\u0000H\n"}, d2 = {"", "Key", "Value", "Landroidx/paging/PagingSource;", "<anonymous>"}, k = 3, mv = {1, 5, 1})
/* loaded from: classes.dex */
public final class DataSource$Factory$asPagingSourceFactory$1 extends Lambda implements Function0<PagingSource<Key, Value>> {
    final /* synthetic */ n0 $fetchDispatcher;
    final /* synthetic */ DataSource.Factory<Key, Value> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DataSource$Factory$asPagingSourceFactory$1(n0 n0Var, DataSource.Factory<Key, Value> factory) {
        super(0);
        this.$fetchDispatcher = n0Var;
        this.this$0 = factory;
    }

    @Override // kotlin.jvm.functions.Function0
    @g
    public final PagingSource<Key, Value> invoke() {
        return new LegacyPagingSource(this.$fetchDispatcher, this.this$0.create());
    }
}

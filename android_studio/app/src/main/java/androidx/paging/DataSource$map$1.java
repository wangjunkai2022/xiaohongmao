package androidx.paging;

import androidx.arch.core.util.Function;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import m8.g;

/* compiled from: DataSource.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\"\b\b\u0000\u0010\u0001*\u00020\u0000\"\b\b\u0001\u0010\u0002*\u00020\u0000\"\b\b\u0002\u0010\u0003*\u00020\u00002\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00020\u0004H\n"}, d2 = {"", "ToValue", "Key", "Value", "", "list", "<anonymous>"}, k = 3, mv = {1, 5, 1})
/* loaded from: classes.dex */
final class DataSource$map$1 extends Lambda implements Function1<List<? extends Value>, List<? extends ToValue>> {
    final /* synthetic */ Function<Value, ToValue> $function;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DataSource$map$1(Function<Value, ToValue> function) {
        super(1);
        this.$function = function;
    }

    @Override // kotlin.jvm.functions.Function1
    @g
    public final List<ToValue> invoke(@g List<? extends Value> list) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(list, "list");
        Function<Value, ToValue> function = this.$function;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(function.apply(it.next()));
        }
        return arrayList;
    }
}

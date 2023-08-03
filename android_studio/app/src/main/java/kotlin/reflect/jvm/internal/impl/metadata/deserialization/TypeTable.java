package kotlin.reflect.jvm.internal.impl.metadata.deserialization;

import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf;
import m8.g;

/* compiled from: TypeTable.kt */
/* loaded from: classes4.dex */
public final class TypeTable {
    @g
    private final List<ProtoBuf.Type> types;

    public TypeTable(@g ProtoBuf.TypeTable typeTable) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(typeTable, "typeTable");
        List<ProtoBuf.Type> typeList = typeTable.getTypeList();
        if (typeTable.hasFirstNullable()) {
            int firstNullable = typeTable.getFirstNullable();
            List<ProtoBuf.Type> typeList2 = typeTable.getTypeList();
            Intrinsics.checkNotNullExpressionValue(typeList2, "typeTable.typeList");
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(typeList2, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            int i4 = 0;
            for (Object obj : typeList2) {
                int i10 = i4 + 1;
                if (i4 < 0) {
                    CollectionsKt__CollectionsKt.throwIndexOverflow();
                }
                ProtoBuf.Type type = (ProtoBuf.Type) obj;
                if (i4 >= firstNullable) {
                    type = type.toBuilder().setNullable(true).build();
                }
                arrayList.add(type);
                i4 = i10;
            }
            typeList = arrayList;
        }
        Intrinsics.checkNotNullExpressionValue(typeList, "run {\n        val origin… else originalTypes\n    }");
        this.types = typeList;
    }

    @g
    public final ProtoBuf.Type get(int i4) {
        return this.types.get(i4);
    }
}

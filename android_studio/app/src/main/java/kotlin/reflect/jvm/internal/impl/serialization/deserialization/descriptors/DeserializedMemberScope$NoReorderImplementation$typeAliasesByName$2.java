package kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeAliasDescriptor;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope;
import m8.g;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DeserializedMemberScope.kt */
/* loaded from: classes4.dex */
public final class DeserializedMemberScope$NoReorderImplementation$typeAliasesByName$2 extends Lambda implements Function0<Map<Name, ? extends TypeAliasDescriptor>> {
    final /* synthetic */ DeserializedMemberScope.NoReorderImplementation this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeserializedMemberScope$NoReorderImplementation$typeAliasesByName$2(DeserializedMemberScope.NoReorderImplementation noReorderImplementation) {
        super(0);
        this.this$0 = noReorderImplementation;
    }

    @Override // kotlin.jvm.functions.Function0
    @g
    public final Map<Name, ? extends TypeAliasDescriptor> invoke() {
        List allTypeAliases;
        int collectionSizeOrDefault;
        int mapCapacity;
        int coerceAtLeast;
        allTypeAliases = this.this$0.getAllTypeAliases();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(allTypeAliases, 10);
        mapCapacity = MapsKt__MapsJVMKt.mapCapacity(collectionSizeOrDefault);
        coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(mapCapacity, 16);
        LinkedHashMap linkedHashMap = new LinkedHashMap(coerceAtLeast);
        for (Object obj : allTypeAliases) {
            Name name = ((TypeAliasDescriptor) obj).getName();
            Intrinsics.checkNotNullExpressionValue(name, "it.name");
            linkedHashMap.put(name, obj);
        }
        return linkedHashMap;
    }
}

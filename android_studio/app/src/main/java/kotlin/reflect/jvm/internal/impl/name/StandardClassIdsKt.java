package kotlin.reflect.jvm.internal.impl.name;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import m8.g;
import org.bouncycastle.pqc.math.linearalgebra.Matrix;

/* compiled from: StandardClassIds.kt */
/* loaded from: classes4.dex */
public final class StandardClassIdsKt {
    @g
    private static final FqName JAVA_LANG_ANNOTATION_PACKAGE;
    @g
    private static final FqName JAVA_LANG_PACKAGE;

    static {
        FqName fqName = new FqName("java.lang");
        JAVA_LANG_PACKAGE = fqName;
        FqName child = fqName.child(Name.identifier("annotation"));
        Intrinsics.checkNotNullExpressionValue(child, "JAVA_LANG_PACKAGE.child(…identifier(\"annotation\"))");
        JAVA_LANG_ANNOTATION_PACKAGE = child;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ClassId annotationId(String str) {
        return new ClassId(StandardClassIds.INSTANCE.getBASE_ANNOTATION_PACKAGE(), Name.identifier(str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ClassId baseId(String str) {
        return new ClassId(StandardClassIds.INSTANCE.getBASE_KOTLIN_PACKAGE(), Name.identifier(str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ClassId collectionsId(String str) {
        return new ClassId(StandardClassIds.INSTANCE.getBASE_COLLECTIONS_PACKAGE(), Name.identifier(str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ClassId coroutinesId(String str) {
        return new ClassId(StandardClassIds.INSTANCE.getBASE_COROUTINES_PACKAGE(), Name.identifier(str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final <K, V> Map<V, K> inverseMap(Map<K, ? extends V> map) {
        int collectionSizeOrDefault;
        int mapCapacity;
        int coerceAtLeast;
        Set<Map.Entry<K, ? extends V>> entrySet = map.entrySet();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(entrySet, 10);
        mapCapacity = MapsKt__MapsJVMKt.mapCapacity(collectionSizeOrDefault);
        coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(mapCapacity, 16);
        LinkedHashMap linkedHashMap = new LinkedHashMap(coerceAtLeast);
        Iterator<T> it = entrySet.iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            Pair pair = TuplesKt.to(entry.getValue(), entry.getKey());
            linkedHashMap.put(pair.getFirst(), pair.getSecond());
        }
        return linkedHashMap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ClassId primitiveArrayId(Name name) {
        StandardClassIds standardClassIds = StandardClassIds.INSTANCE;
        FqName packageFqName = standardClassIds.getArray().getPackageFqName();
        return new ClassId(packageFqName, Name.identifier(name.getIdentifier() + standardClassIds.getArray().getShortClassName().getIdentifier()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ClassId rangesId(String str) {
        return new ClassId(StandardClassIds.INSTANCE.getBASE_RANGES_PACKAGE(), Name.identifier(str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ClassId reflectId(String str) {
        return new ClassId(StandardClassIds.INSTANCE.getBASE_REFLECT_PACKAGE(), Name.identifier(str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ClassId unsignedId(ClassId classId) {
        FqName base_kotlin_package = StandardClassIds.INSTANCE.getBASE_KOTLIN_PACKAGE();
        return new ClassId(base_kotlin_package, Name.identifier(Matrix.MATRIX_TYPE_RANDOM_UT + classId.getShortClassName().getIdentifier()));
    }
}

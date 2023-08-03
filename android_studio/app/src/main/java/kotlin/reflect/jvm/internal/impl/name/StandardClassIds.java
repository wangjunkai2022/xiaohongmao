package kotlin.reflect.jvm.internal.impl.name;

import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.collections.SetsKt___SetsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import m8.g;

/* compiled from: StandardClassIds.kt */
/* loaded from: classes4.dex */
public final class StandardClassIds {
    @g
    private static final ClassId Annotation;
    @g
    private static final ClassId AnnotationRetention;
    @g
    private static final ClassId AnnotationTarget;
    @g
    private static final ClassId Any;
    @g
    private static final ClassId Array;
    @g
    private static final FqName BASE_ANNOTATION_PACKAGE;
    @g
    private static final FqName BASE_COLLECTIONS_PACKAGE;
    @g
    private static final FqName BASE_COROUTINES_PACKAGE;
    @g
    private static final FqName BASE_INTERNAL_IR_PACKAGE;
    @g
    private static final FqName BASE_INTERNAL_PACKAGE;
    @g
    private static final FqName BASE_JVM_INTERNAL_PACKAGE;
    @g
    private static final FqName BASE_JVM_PACKAGE;
    @g
    private static final FqName BASE_KOTLIN_PACKAGE;
    @g
    private static final FqName BASE_RANGES_PACKAGE;
    @g
    private static final FqName BASE_REFLECT_PACKAGE;
    @g
    private static final ClassId Boolean;
    @g
    private static final ClassId Byte;
    @g
    private static final ClassId Char;
    @g
    private static final ClassId CharRange;
    @g
    private static final ClassId Cloneable;
    @g
    private static final ClassId Collection;
    @g
    private static final ClassId Comparable;
    @g
    private static final ClassId Continuation;
    @g
    private static final ClassId Double;
    @g
    private static final ClassId Enum;
    @g
    private static final ClassId Float;
    @g
    private static final ClassId Function;
    @g
    public static final StandardClassIds INSTANCE = new StandardClassIds();
    @g
    private static final ClassId Int;
    @g
    private static final ClassId IntRange;
    @g
    private static final ClassId Iterable;
    @g
    private static final ClassId Iterator;
    @g
    private static final ClassId KCallable;
    @g
    private static final ClassId KClass;
    @g
    private static final ClassId KFunction;
    @g
    private static final ClassId KMutableProperty;
    @g
    private static final ClassId KMutableProperty0;
    @g
    private static final ClassId KMutableProperty1;
    @g
    private static final ClassId KMutableProperty2;
    @g
    private static final ClassId KProperty;
    @g
    private static final ClassId KProperty0;
    @g
    private static final ClassId KProperty1;
    @g
    private static final ClassId KProperty2;
    @g
    private static final ClassId List;
    @g
    private static final ClassId ListIterator;
    @g
    private static final ClassId Long;
    @g
    private static final ClassId LongRange;
    @g
    private static final ClassId Map;
    @g
    private static final ClassId MapEntry;
    @g
    private static final ClassId MutableCollection;
    @g
    private static final ClassId MutableIterable;
    @g
    private static final ClassId MutableIterator;
    @g
    private static final ClassId MutableList;
    @g
    private static final ClassId MutableListIterator;
    @g
    private static final ClassId MutableMap;
    @g
    private static final ClassId MutableMapEntry;
    @g
    private static final ClassId MutableSet;
    @g
    private static final ClassId Nothing;
    @g
    private static final ClassId Number;
    @g
    private static final ClassId Result;
    @g
    private static final ClassId Set;
    @g
    private static final ClassId Short;
    @g
    private static final ClassId String;
    @g
    private static final ClassId Throwable;
    @g
    private static final ClassId UByte;
    @g
    private static final ClassId UInt;
    @g
    private static final ClassId ULong;
    @g
    private static final ClassId UShort;
    @g
    private static final ClassId Unit;
    @g
    private static final Set<FqName> builtInsPackages;
    @g
    private static final Set<ClassId> constantAllowedTypes;
    @g
    private static final Map<ClassId, ClassId> elementTypeByPrimitiveArrayType;
    @g
    private static final Map<ClassId, ClassId> elementTypeByUnsignedArrayType;
    @g
    private static final Map<ClassId, ClassId> primitiveArrayTypeByElementType;
    @g
    private static final Set<ClassId> primitiveTypes;
    @g
    private static final Map<ClassId, ClassId> unsignedArrayTypeByElementType;
    @g
    private static final Set<ClassId> unsignedTypes;

    static {
        Set<FqName> of;
        ClassId baseId;
        ClassId baseId2;
        ClassId baseId3;
        ClassId baseId4;
        ClassId baseId5;
        ClassId baseId6;
        ClassId baseId7;
        ClassId baseId8;
        ClassId baseId9;
        ClassId baseId10;
        ClassId baseId11;
        ClassId baseId12;
        ClassId baseId13;
        ClassId baseId14;
        ClassId unsignedId;
        ClassId unsignedId2;
        ClassId unsignedId3;
        ClassId unsignedId4;
        ClassId baseId15;
        ClassId baseId16;
        ClassId baseId17;
        ClassId reflectId;
        ClassId reflectId2;
        ClassId reflectId3;
        ClassId reflectId4;
        ClassId reflectId5;
        ClassId reflectId6;
        ClassId reflectId7;
        ClassId reflectId8;
        ClassId reflectId9;
        ClassId reflectId10;
        ClassId reflectId11;
        ClassId baseId18;
        ClassId baseId19;
        ClassId baseId20;
        Set<ClassId> of2;
        int collectionSizeOrDefault;
        int mapCapacity;
        int coerceAtLeast;
        Map<ClassId, ClassId> inverseMap;
        Set<ClassId> of3;
        int collectionSizeOrDefault2;
        int mapCapacity2;
        int coerceAtLeast2;
        Map<ClassId, ClassId> inverseMap2;
        Set plus;
        Set<ClassId> plus2;
        ClassId coroutinesId;
        ClassId collectionsId;
        ClassId collectionsId2;
        ClassId collectionsId3;
        ClassId collectionsId4;
        ClassId collectionsId5;
        ClassId collectionsId6;
        ClassId collectionsId7;
        ClassId collectionsId8;
        ClassId collectionsId9;
        ClassId collectionsId10;
        ClassId collectionsId11;
        ClassId collectionsId12;
        ClassId collectionsId13;
        ClassId collectionsId14;
        ClassId baseId21;
        ClassId rangesId;
        ClassId rangesId2;
        ClassId rangesId3;
        ClassId annotationId;
        ClassId annotationId2;
        ClassId primitiveArrayId;
        ClassId primitiveArrayId2;
        FqName fqName = new FqName("kotlin");
        BASE_KOTLIN_PACKAGE = fqName;
        FqName child = fqName.child(Name.identifier("reflect"));
        Intrinsics.checkNotNullExpressionValue(child, "BASE_KOTLIN_PACKAGE.chil…me.identifier(\"reflect\"))");
        BASE_REFLECT_PACKAGE = child;
        FqName child2 = fqName.child(Name.identifier("collections"));
        Intrinsics.checkNotNullExpressionValue(child2, "BASE_KOTLIN_PACKAGE.chil…dentifier(\"collections\"))");
        BASE_COLLECTIONS_PACKAGE = child2;
        FqName child3 = fqName.child(Name.identifier("ranges"));
        Intrinsics.checkNotNullExpressionValue(child3, "BASE_KOTLIN_PACKAGE.chil…ame.identifier(\"ranges\"))");
        BASE_RANGES_PACKAGE = child3;
        FqName child4 = fqName.child(Name.identifier("jvm"));
        Intrinsics.checkNotNullExpressionValue(child4, "BASE_KOTLIN_PACKAGE.child(Name.identifier(\"jvm\"))");
        BASE_JVM_PACKAGE = child4;
        FqName child5 = child4.child(Name.identifier("internal"));
        Intrinsics.checkNotNullExpressionValue(child5, "BASE_JVM_PACKAGE.child(N…e.identifier(\"internal\"))");
        BASE_JVM_INTERNAL_PACKAGE = child5;
        FqName child6 = fqName.child(Name.identifier("annotation"));
        Intrinsics.checkNotNullExpressionValue(child6, "BASE_KOTLIN_PACKAGE.chil…identifier(\"annotation\"))");
        BASE_ANNOTATION_PACKAGE = child6;
        FqName child7 = fqName.child(Name.identifier("internal"));
        Intrinsics.checkNotNullExpressionValue(child7, "BASE_KOTLIN_PACKAGE.chil…e.identifier(\"internal\"))");
        BASE_INTERNAL_PACKAGE = child7;
        FqName child8 = child7.child(Name.identifier("ir"));
        Intrinsics.checkNotNullExpressionValue(child8, "BASE_INTERNAL_PACKAGE.child(Name.identifier(\"ir\"))");
        BASE_INTERNAL_IR_PACKAGE = child8;
        FqName child9 = fqName.child(Name.identifier("coroutines"));
        Intrinsics.checkNotNullExpressionValue(child9, "BASE_KOTLIN_PACKAGE.chil…identifier(\"coroutines\"))");
        BASE_COROUTINES_PACKAGE = child9;
        of = SetsKt__SetsKt.setOf((Object[]) new FqName[]{fqName, child2, child3, child6, child, child7, child9});
        builtInsPackages = of;
        baseId = StandardClassIdsKt.baseId("Nothing");
        Nothing = baseId;
        baseId2 = StandardClassIdsKt.baseId("Unit");
        Unit = baseId2;
        baseId3 = StandardClassIdsKt.baseId("Any");
        Any = baseId3;
        baseId4 = StandardClassIdsKt.baseId("Enum");
        Enum = baseId4;
        baseId5 = StandardClassIdsKt.baseId("Annotation");
        Annotation = baseId5;
        baseId6 = StandardClassIdsKt.baseId("Array");
        Array = baseId6;
        baseId7 = StandardClassIdsKt.baseId("Boolean");
        Boolean = baseId7;
        baseId8 = StandardClassIdsKt.baseId("Char");
        Char = baseId8;
        baseId9 = StandardClassIdsKt.baseId("Byte");
        Byte = baseId9;
        baseId10 = StandardClassIdsKt.baseId("Short");
        Short = baseId10;
        baseId11 = StandardClassIdsKt.baseId("Int");
        Int = baseId11;
        baseId12 = StandardClassIdsKt.baseId("Long");
        Long = baseId12;
        baseId13 = StandardClassIdsKt.baseId("Float");
        Float = baseId13;
        baseId14 = StandardClassIdsKt.baseId("Double");
        Double = baseId14;
        unsignedId = StandardClassIdsKt.unsignedId(baseId9);
        UByte = unsignedId;
        unsignedId2 = StandardClassIdsKt.unsignedId(baseId10);
        UShort = unsignedId2;
        unsignedId3 = StandardClassIdsKt.unsignedId(baseId11);
        UInt = unsignedId3;
        unsignedId4 = StandardClassIdsKt.unsignedId(baseId12);
        ULong = unsignedId4;
        baseId15 = StandardClassIdsKt.baseId("String");
        String = baseId15;
        baseId16 = StandardClassIdsKt.baseId("Throwable");
        Throwable = baseId16;
        baseId17 = StandardClassIdsKt.baseId("Cloneable");
        Cloneable = baseId17;
        reflectId = StandardClassIdsKt.reflectId("KProperty");
        KProperty = reflectId;
        reflectId2 = StandardClassIdsKt.reflectId("KMutableProperty");
        KMutableProperty = reflectId2;
        reflectId3 = StandardClassIdsKt.reflectId("KProperty0");
        KProperty0 = reflectId3;
        reflectId4 = StandardClassIdsKt.reflectId("KMutableProperty0");
        KMutableProperty0 = reflectId4;
        reflectId5 = StandardClassIdsKt.reflectId("KProperty1");
        KProperty1 = reflectId5;
        reflectId6 = StandardClassIdsKt.reflectId("KMutableProperty1");
        KMutableProperty1 = reflectId6;
        reflectId7 = StandardClassIdsKt.reflectId("KProperty2");
        KProperty2 = reflectId7;
        reflectId8 = StandardClassIdsKt.reflectId("KMutableProperty2");
        KMutableProperty2 = reflectId8;
        reflectId9 = StandardClassIdsKt.reflectId("KFunction");
        KFunction = reflectId9;
        reflectId10 = StandardClassIdsKt.reflectId("KClass");
        KClass = reflectId10;
        reflectId11 = StandardClassIdsKt.reflectId("KCallable");
        KCallable = reflectId11;
        baseId18 = StandardClassIdsKt.baseId("Comparable");
        Comparable = baseId18;
        baseId19 = StandardClassIdsKt.baseId("Number");
        Number = baseId19;
        baseId20 = StandardClassIdsKt.baseId("Function");
        Function = baseId20;
        of2 = SetsKt__SetsKt.setOf((Object[]) new ClassId[]{baseId7, baseId8, baseId9, baseId10, baseId11, baseId12, baseId13, baseId14});
        primitiveTypes = of2;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(of2, 10);
        mapCapacity = MapsKt__MapsJVMKt.mapCapacity(collectionSizeOrDefault);
        coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(mapCapacity, 16);
        LinkedHashMap linkedHashMap = new LinkedHashMap(coerceAtLeast);
        for (Object obj : of2) {
            Name shortClassName = ((ClassId) obj).getShortClassName();
            Intrinsics.checkNotNullExpressionValue(shortClassName, "id.shortClassName");
            primitiveArrayId2 = StandardClassIdsKt.primitiveArrayId(shortClassName);
            linkedHashMap.put(obj, primitiveArrayId2);
        }
        primitiveArrayTypeByElementType = linkedHashMap;
        inverseMap = StandardClassIdsKt.inverseMap(linkedHashMap);
        elementTypeByPrimitiveArrayType = inverseMap;
        of3 = SetsKt__SetsKt.setOf((Object[]) new ClassId[]{UByte, UShort, UInt, ULong});
        unsignedTypes = of3;
        collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(of3, 10);
        mapCapacity2 = MapsKt__MapsJVMKt.mapCapacity(collectionSizeOrDefault2);
        coerceAtLeast2 = RangesKt___RangesKt.coerceAtLeast(mapCapacity2, 16);
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(coerceAtLeast2);
        for (Object obj2 : of3) {
            Name shortClassName2 = ((ClassId) obj2).getShortClassName();
            Intrinsics.checkNotNullExpressionValue(shortClassName2, "id.shortClassName");
            primitiveArrayId = StandardClassIdsKt.primitiveArrayId(shortClassName2);
            linkedHashMap2.put(obj2, primitiveArrayId);
        }
        unsignedArrayTypeByElementType = linkedHashMap2;
        inverseMap2 = StandardClassIdsKt.inverseMap(linkedHashMap2);
        elementTypeByUnsignedArrayType = inverseMap2;
        plus = SetsKt___SetsKt.plus((Set) primitiveTypes, (Iterable) unsignedTypes);
        plus2 = SetsKt___SetsKt.plus(plus, String);
        constantAllowedTypes = plus2;
        coroutinesId = StandardClassIdsKt.coroutinesId("Continuation");
        Continuation = coroutinesId;
        collectionsId = StandardClassIdsKt.collectionsId("Iterator");
        Iterator = collectionsId;
        collectionsId2 = StandardClassIdsKt.collectionsId("Iterable");
        Iterable = collectionsId2;
        collectionsId3 = StandardClassIdsKt.collectionsId("Collection");
        Collection = collectionsId3;
        collectionsId4 = StandardClassIdsKt.collectionsId("List");
        List = collectionsId4;
        collectionsId5 = StandardClassIdsKt.collectionsId("ListIterator");
        ListIterator = collectionsId5;
        collectionsId6 = StandardClassIdsKt.collectionsId("Set");
        Set = collectionsId6;
        collectionsId7 = StandardClassIdsKt.collectionsId("Map");
        Map = collectionsId7;
        collectionsId8 = StandardClassIdsKt.collectionsId("MutableIterator");
        MutableIterator = collectionsId8;
        collectionsId9 = StandardClassIdsKt.collectionsId("MutableIterable");
        MutableIterable = collectionsId9;
        collectionsId10 = StandardClassIdsKt.collectionsId("MutableCollection");
        MutableCollection = collectionsId10;
        collectionsId11 = StandardClassIdsKt.collectionsId("MutableList");
        MutableList = collectionsId11;
        collectionsId12 = StandardClassIdsKt.collectionsId("MutableListIterator");
        MutableListIterator = collectionsId12;
        collectionsId13 = StandardClassIdsKt.collectionsId("MutableSet");
        MutableSet = collectionsId13;
        collectionsId14 = StandardClassIdsKt.collectionsId("MutableMap");
        MutableMap = collectionsId14;
        ClassId createNestedClassId = collectionsId7.createNestedClassId(Name.identifier("Entry"));
        Intrinsics.checkNotNullExpressionValue(createNestedClassId, "Map.createNestedClassId(Name.identifier(\"Entry\"))");
        MapEntry = createNestedClassId;
        ClassId createNestedClassId2 = collectionsId14.createNestedClassId(Name.identifier("MutableEntry"));
        Intrinsics.checkNotNullExpressionValue(createNestedClassId2, "MutableMap.createNestedC…entifier(\"MutableEntry\"))");
        MutableMapEntry = createNestedClassId2;
        baseId21 = StandardClassIdsKt.baseId("Result");
        Result = baseId21;
        rangesId = StandardClassIdsKt.rangesId("IntRange");
        IntRange = rangesId;
        rangesId2 = StandardClassIdsKt.rangesId("LongRange");
        LongRange = rangesId2;
        rangesId3 = StandardClassIdsKt.rangesId("CharRange");
        CharRange = rangesId3;
        annotationId = StandardClassIdsKt.annotationId("AnnotationRetention");
        AnnotationRetention = annotationId;
        annotationId2 = StandardClassIdsKt.annotationId("AnnotationTarget");
        AnnotationTarget = annotationId2;
    }

    private StandardClassIds() {
    }

    @g
    public final ClassId getArray() {
        return Array;
    }

    @g
    public final FqName getBASE_ANNOTATION_PACKAGE() {
        return BASE_ANNOTATION_PACKAGE;
    }

    @g
    public final FqName getBASE_COLLECTIONS_PACKAGE() {
        return BASE_COLLECTIONS_PACKAGE;
    }

    @g
    public final FqName getBASE_COROUTINES_PACKAGE() {
        return BASE_COROUTINES_PACKAGE;
    }

    @g
    public final FqName getBASE_KOTLIN_PACKAGE() {
        return BASE_KOTLIN_PACKAGE;
    }

    @g
    public final FqName getBASE_RANGES_PACKAGE() {
        return BASE_RANGES_PACKAGE;
    }

    @g
    public final FqName getBASE_REFLECT_PACKAGE() {
        return BASE_REFLECT_PACKAGE;
    }

    @g
    public final ClassId getKClass() {
        return KClass;
    }

    @g
    public final ClassId getKFunction() {
        return KFunction;
    }

    @g
    public final ClassId getMutableList() {
        return MutableList;
    }

    @g
    public final ClassId getMutableMap() {
        return MutableMap;
    }

    @g
    public final ClassId getMutableSet() {
        return MutableSet;
    }
}

package kotlin.reflect.jvm.internal.impl.types;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.reflect.KClass;
import kotlin.reflect.jvm.internal.impl.util.ArrayMap;
import kotlin.reflect.jvm.internal.impl.util.AttributeArrayOwner;
import kotlin.reflect.jvm.internal.impl.util.TypeRegistry;
import kotlin.reflect.jvm.internal.impl.utils.CollectionsKt;
import m8.g;

/* compiled from: TypeAttributes.kt */
/* loaded from: classes4.dex */
public final class TypeAttributes extends AttributeArrayOwner<TypeAttribute<?>, TypeAttribute<?>> implements Iterable<TypeAttribute<?>>, KMappedMarker {
    @g
    public static final Companion Companion = new Companion(null);
    @g
    private static final TypeAttributes Empty;

    /* compiled from: TypeAttributes.kt */
    /* loaded from: classes4.dex */
    public static final class Companion extends TypeRegistry<TypeAttribute<?>, TypeAttribute<?>> {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @g
        public final TypeAttributes create(@g List<? extends TypeAttribute<?>> attributes) {
            Intrinsics.checkNotNullParameter(attributes, "attributes");
            if (attributes.isEmpty()) {
                return getEmpty();
            }
            return new TypeAttributes(attributes, null);
        }

        @Override // kotlin.reflect.jvm.internal.impl.util.TypeRegistry
        public <T extends TypeAttribute<?>> int customComputeIfAbsent(@g ConcurrentHashMap<KClass<? extends TypeAttribute<?>>, Integer> concurrentHashMap, @g KClass<T> kClass, @g Function1<? super KClass<? extends TypeAttribute<?>>, Integer> compute) {
            int intValue;
            Intrinsics.checkNotNullParameter(concurrentHashMap, "<this>");
            Intrinsics.checkNotNullParameter(kClass, "kClass");
            Intrinsics.checkNotNullParameter(compute, "compute");
            Integer num = concurrentHashMap.get(kClass);
            if (num == null) {
                synchronized (concurrentHashMap) {
                    Integer num2 = concurrentHashMap.get(kClass);
                    if (num2 == null) {
                        Integer invoke = compute.invoke(kClass);
                        concurrentHashMap.putIfAbsent(kClass, Integer.valueOf(invoke.intValue()));
                        num2 = invoke;
                    }
                    Intrinsics.checkNotNullExpressionValue(num2, "this[kClass] ?: compute(…putIfAbsent(kClass, it) }");
                    intValue = num2.intValue();
                }
                return intValue;
            }
            return num.intValue();
        }

        @g
        public final TypeAttributes getEmpty() {
            return TypeAttributes.Empty;
        }
    }

    static {
        List emptyList;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Empty = new TypeAttributes(emptyList);
    }

    private TypeAttributes(List<? extends TypeAttribute<?>> list) {
        for (TypeAttribute<?> typeAttribute : list) {
            registerComponent(typeAttribute.getKey(), typeAttribute);
        }
    }

    public /* synthetic */ TypeAttributes(List list, DefaultConstructorMarker defaultConstructorMarker) {
        this(list);
    }

    @g
    public final TypeAttributes add(@g TypeAttributes other) {
        Object add;
        Intrinsics.checkNotNullParameter(other, "other");
        if (isEmpty() && other.isEmpty()) {
            return this;
        }
        ArrayList arrayList = new ArrayList();
        for (Number number : Companion.getIndices()) {
            int intValue = number.intValue();
            TypeAttribute<?> typeAttribute = getArrayMap().get(intValue);
            TypeAttribute<?> typeAttribute2 = other.getArrayMap().get(intValue);
            if (typeAttribute == null) {
                add = typeAttribute2 != null ? typeAttribute2.add(typeAttribute) : null;
            } else {
                add = typeAttribute.add(typeAttribute2);
            }
            CollectionsKt.addIfNotNull(arrayList, add);
        }
        return Companion.create(arrayList);
    }

    public final boolean contains(@g TypeAttribute<?> attribute) {
        Intrinsics.checkNotNullParameter(attribute, "attribute");
        return getArrayMap().get(Companion.getId(attribute.getKey())) != null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.util.AbstractArrayMapOwner
    @g
    protected TypeRegistry<TypeAttribute<?>, TypeAttribute<?>> getTypeRegistry() {
        return Companion;
    }

    @g
    public final TypeAttributes intersect(@g TypeAttributes other) {
        Object intersect;
        Intrinsics.checkNotNullParameter(other, "other");
        if (isEmpty() && other.isEmpty()) {
            return this;
        }
        ArrayList arrayList = new ArrayList();
        for (Number number : Companion.getIndices()) {
            int intValue = number.intValue();
            TypeAttribute<?> typeAttribute = getArrayMap().get(intValue);
            TypeAttribute<?> typeAttribute2 = other.getArrayMap().get(intValue);
            if (typeAttribute == null) {
                intersect = typeAttribute2 != null ? typeAttribute2.intersect(typeAttribute) : null;
            } else {
                intersect = typeAttribute.intersect(typeAttribute2);
            }
            CollectionsKt.addIfNotNull(arrayList, intersect);
        }
        return Companion.create(arrayList);
    }

    @g
    public final TypeAttributes plus(@g TypeAttribute<?> attribute) {
        List list;
        List<? extends TypeAttribute<?>> plus;
        Intrinsics.checkNotNullParameter(attribute, "attribute");
        if (contains(attribute)) {
            return this;
        }
        if (isEmpty()) {
            return new TypeAttributes(attribute);
        }
        list = CollectionsKt___CollectionsKt.toList(this);
        plus = CollectionsKt___CollectionsKt.plus((Collection<? extends TypeAttribute<?>>) ((Collection<? extends Object>) list), attribute);
        return Companion.create(plus);
    }

    @g
    public final TypeAttributes remove(@g TypeAttribute<?> attribute) {
        Intrinsics.checkNotNullParameter(attribute, "attribute");
        if (isEmpty()) {
            return this;
        }
        ArrayMap<TypeAttribute<?>> arrayMap = getArrayMap();
        ArrayList arrayList = new ArrayList();
        for (TypeAttribute<?> typeAttribute : arrayMap) {
            if (!Intrinsics.areEqual(typeAttribute, attribute)) {
                arrayList.add(typeAttribute);
            }
        }
        return arrayList.size() == getArrayMap().getSize() ? this : Companion.create(arrayList);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private TypeAttributes(kotlin.reflect.jvm.internal.impl.types.TypeAttribute<?> r1) {
        /*
            r0 = this;
            java.util.List r1 = kotlin.collections.CollectionsKt.listOf(r1)
            r0.<init>(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.types.TypeAttributes.<init>(kotlin.reflect.jvm.internal.impl.types.TypeAttribute):void");
    }
}

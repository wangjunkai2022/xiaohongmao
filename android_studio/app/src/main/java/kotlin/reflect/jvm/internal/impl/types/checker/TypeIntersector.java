package kotlin.reflect.jvm.internal.impl.types.checker;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.resolve.constants.IntegerLiteralTypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.DefinitelyNotNullType;
import kotlin.reflect.jvm.internal.impl.types.FlexibleTypesKt;
import kotlin.reflect.jvm.internal.impl.types.IntersectionTypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.SpecialTypesKt;
import kotlin.reflect.jvm.internal.impl.types.StubTypeForBuilderInference;
import kotlin.reflect.jvm.internal.impl.types.TypeAttributes;
import kotlin.reflect.jvm.internal.impl.types.UnwrappedType;
import m8.g;

/* compiled from: IntersectionType.kt */
/* loaded from: classes4.dex */
public final class TypeIntersector {
    @g
    public static final TypeIntersector INSTANCE = new TypeIntersector();

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: IntersectionType.kt */
    /* loaded from: classes4.dex */
    private static final class ResultNullability {
        public static final ResultNullability START = new START("START", 0);
        public static final ResultNullability ACCEPT_NULL = new ACCEPT_NULL("ACCEPT_NULL", 1);
        public static final ResultNullability UNKNOWN = new UNKNOWN("UNKNOWN", 2);
        public static final ResultNullability NOT_NULL = new NOT_NULL("NOT_NULL", 3);
        private static final /* synthetic */ ResultNullability[] $VALUES = $values();

        /* compiled from: IntersectionType.kt */
        /* loaded from: classes4.dex */
        static final class ACCEPT_NULL extends ResultNullability {
            ACCEPT_NULL(String str, int i4) {
                super(str, i4, null);
            }

            @Override // kotlin.reflect.jvm.internal.impl.types.checker.TypeIntersector.ResultNullability
            @g
            public ResultNullability combine(@g UnwrappedType nextType) {
                Intrinsics.checkNotNullParameter(nextType, "nextType");
                return getResultNullability(nextType);
            }
        }

        /* compiled from: IntersectionType.kt */
        /* loaded from: classes4.dex */
        static final class NOT_NULL extends ResultNullability {
            NOT_NULL(String str, int i4) {
                super(str, i4, null);
            }

            @Override // kotlin.reflect.jvm.internal.impl.types.checker.TypeIntersector.ResultNullability
            @g
            public NOT_NULL combine(@g UnwrappedType nextType) {
                Intrinsics.checkNotNullParameter(nextType, "nextType");
                return this;
            }
        }

        /* compiled from: IntersectionType.kt */
        /* loaded from: classes4.dex */
        static final class START extends ResultNullability {
            START(String str, int i4) {
                super(str, i4, null);
            }

            @Override // kotlin.reflect.jvm.internal.impl.types.checker.TypeIntersector.ResultNullability
            @g
            public ResultNullability combine(@g UnwrappedType nextType) {
                Intrinsics.checkNotNullParameter(nextType, "nextType");
                return getResultNullability(nextType);
            }
        }

        /* compiled from: IntersectionType.kt */
        /* loaded from: classes4.dex */
        static final class UNKNOWN extends ResultNullability {
            UNKNOWN(String str, int i4) {
                super(str, i4, null);
            }

            @Override // kotlin.reflect.jvm.internal.impl.types.checker.TypeIntersector.ResultNullability
            @g
            public ResultNullability combine(@g UnwrappedType nextType) {
                Intrinsics.checkNotNullParameter(nextType, "nextType");
                ResultNullability resultNullability = getResultNullability(nextType);
                return resultNullability == ResultNullability.ACCEPT_NULL ? this : resultNullability;
            }
        }

        private static final /* synthetic */ ResultNullability[] $values() {
            return new ResultNullability[]{START, ACCEPT_NULL, UNKNOWN, NOT_NULL};
        }

        private ResultNullability(String str, int i4) {
        }

        public /* synthetic */ ResultNullability(String str, int i4, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, i4);
        }

        public static ResultNullability valueOf(String str) {
            return (ResultNullability) Enum.valueOf(ResultNullability.class, str);
        }

        public static ResultNullability[] values() {
            return (ResultNullability[]) $VALUES.clone();
        }

        @g
        public abstract ResultNullability combine(@g UnwrappedType unwrappedType);

        @g
        protected final ResultNullability getResultNullability(@g UnwrappedType unwrappedType) {
            Intrinsics.checkNotNullParameter(unwrappedType, "<this>");
            return unwrappedType.isMarkedNullable() ? ACCEPT_NULL : ((unwrappedType instanceof DefinitelyNotNullType) && (((DefinitelyNotNullType) unwrappedType).getOriginal() instanceof StubTypeForBuilderInference)) ? NOT_NULL : unwrappedType instanceof StubTypeForBuilderInference ? UNKNOWN : NullabilityChecker.INSTANCE.isSubtypeOfAny(unwrappedType) ? NOT_NULL : UNKNOWN;
        }
    }

    private TypeIntersector() {
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0051 A[EDGE_INSN: B:27:0x0051->B:18:0x0051 ?: BREAK  , SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final java.util.Collection<kotlin.reflect.jvm.internal.impl.types.SimpleType> filterTypes(java.util.Collection<? extends kotlin.reflect.jvm.internal.impl.types.SimpleType> r8, kotlin.jvm.functions.Function2<? super kotlin.reflect.jvm.internal.impl.types.SimpleType, ? super kotlin.reflect.jvm.internal.impl.types.SimpleType, java.lang.Boolean> r9) {
        /*
            r7 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>(r8)
            java.util.Iterator r8 = r0.iterator()
            java.lang.String r1 = "filteredTypes.iterator()"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r8, r1)
        Le:
            boolean r1 = r8.hasNext()
            if (r1 == 0) goto L57
            java.lang.Object r1 = r8.next()
            kotlin.reflect.jvm.internal.impl.types.SimpleType r1 = (kotlin.reflect.jvm.internal.impl.types.SimpleType) r1
            boolean r2 = r0.isEmpty()
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L24
        L22:
            r3 = 0
            goto L51
        L24:
            java.util.Iterator r2 = r0.iterator()
        L28:
            boolean r5 = r2.hasNext()
            if (r5 == 0) goto L22
            java.lang.Object r5 = r2.next()
            kotlin.reflect.jvm.internal.impl.types.SimpleType r5 = (kotlin.reflect.jvm.internal.impl.types.SimpleType) r5
            if (r5 == r1) goto L4e
            java.lang.String r6 = "lower"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r5, r6)
            java.lang.String r6 = "upper"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r6)
            java.lang.Object r5 = r9.invoke(r5, r1)
            java.lang.Boolean r5 = (java.lang.Boolean) r5
            boolean r5 = r5.booleanValue()
            if (r5 == 0) goto L4e
            r5 = 1
            goto L4f
        L4e:
            r5 = 0
        L4f:
            if (r5 == 0) goto L28
        L51:
            if (r3 == 0) goto Le
            r8.remove()
            goto Le
        L57:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.types.checker.TypeIntersector.filterTypes(java.util.Collection, kotlin.jvm.functions.Function2):java.util.Collection");
    }

    private final SimpleType intersectTypesWithoutIntersectionType(Set<? extends SimpleType> set) {
        Object single;
        Object single2;
        if (set.size() == 1) {
            single2 = CollectionsKt___CollectionsKt.single(set);
            return (SimpleType) single2;
        }
        new TypeIntersector$intersectTypesWithoutIntersectionType$errorMessage$1(set);
        Collection<SimpleType> filterTypes = filterTypes(set, new TypeIntersector$intersectTypesWithoutIntersectionType$filteredEqualTypes$1(this));
        filterTypes.isEmpty();
        SimpleType findIntersectionType = IntegerLiteralTypeConstructor.Companion.findIntersectionType(filterTypes);
        if (findIntersectionType != null) {
            return findIntersectionType;
        }
        Collection<SimpleType> filterTypes2 = filterTypes(filterTypes, new TypeIntersector$intersectTypesWithoutIntersectionType$filteredSuperAndEqualTypes$1(NewKotlinTypeChecker.Companion.getDefault()));
        filterTypes2.isEmpty();
        if (filterTypes2.size() < 2) {
            single = CollectionsKt___CollectionsKt.single(filterTypes2);
            return (SimpleType) single;
        }
        return new IntersectionTypeConstructor(set).createType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isStrictSupertype(KotlinType kotlinType, KotlinType kotlinType2) {
        NewKotlinTypeCheckerImpl newKotlinTypeCheckerImpl = NewKotlinTypeChecker.Companion.getDefault();
        return newKotlinTypeCheckerImpl.isSubtypeOf(kotlinType, kotlinType2) && !newKotlinTypeCheckerImpl.isSubtypeOf(kotlinType2, kotlinType);
    }

    @g
    public final SimpleType intersectTypes$descriptors(@g List<? extends SimpleType> types) {
        int collectionSizeOrDefault;
        int collectionSizeOrDefault2;
        Intrinsics.checkNotNullParameter(types, "types");
        types.size();
        ArrayList<UnwrappedType> arrayList = new ArrayList();
        for (SimpleType simpleType : types) {
            if (simpleType.getConstructor() instanceof IntersectionTypeConstructor) {
                Collection<KotlinType> mo1364getSupertypes = simpleType.getConstructor().mo1364getSupertypes();
                Intrinsics.checkNotNullExpressionValue(mo1364getSupertypes, "type.constructor.supertypes");
                collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(mo1364getSupertypes, 10);
                ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault2);
                for (KotlinType it : mo1364getSupertypes) {
                    Intrinsics.checkNotNullExpressionValue(it, "it");
                    SimpleType upperIfFlexible = FlexibleTypesKt.upperIfFlexible(it);
                    if (simpleType.isMarkedNullable()) {
                        upperIfFlexible = upperIfFlexible.makeNullableAsSpecified(true);
                    }
                    arrayList2.add(upperIfFlexible);
                }
                arrayList.addAll(arrayList2);
            } else {
                arrayList.add(simpleType);
            }
        }
        ResultNullability resultNullability = ResultNullability.START;
        for (UnwrappedType unwrappedType : arrayList) {
            resultNullability = resultNullability.combine(unwrappedType);
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            SimpleType simpleType2 = (SimpleType) it2.next();
            if (resultNullability == ResultNullability.NOT_NULL) {
                if (simpleType2 instanceof NewCapturedType) {
                    simpleType2 = SpecialTypesKt.withNotNullProjection((NewCapturedType) simpleType2);
                }
                simpleType2 = SpecialTypesKt.makeSimpleTypeDefinitelyNotNullOrNotNull$default(simpleType2, false, 1, null);
            }
            linkedHashSet.add(simpleType2);
        }
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(types, 10);
        ArrayList arrayList3 = new ArrayList(collectionSizeOrDefault);
        for (SimpleType simpleType3 : types) {
            arrayList3.add(simpleType3.getAttributes());
        }
        Iterator it3 = arrayList3.iterator();
        if (it3.hasNext()) {
            Object next = it3.next();
            while (it3.hasNext()) {
                next = ((TypeAttributes) next).intersect((TypeAttributes) it3.next());
            }
            return intersectTypesWithoutIntersectionType(linkedHashSet).replaceAttributes((TypeAttributes) next);
        }
        throw new UnsupportedOperationException("Empty collection can't be reduced.");
    }
}

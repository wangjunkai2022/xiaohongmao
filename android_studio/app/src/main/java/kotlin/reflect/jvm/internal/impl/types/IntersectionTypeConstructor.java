package kotlin.reflect.jvm.internal.impl.types;

import com.alipay.sdk.util.i;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.LinkedHashSet;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.TypeIntersectionScope;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner;
import kotlin.reflect.jvm.internal.impl.types.model.IntersectionTypeConstructorMarker;
import m8.g;
import m8.h;

/* compiled from: IntersectionTypeConstructor.kt */
/* loaded from: classes4.dex */
public final class IntersectionTypeConstructor implements TypeConstructor, IntersectionTypeConstructorMarker {
    @h
    private KotlinType alternative;
    private final int hashCode;
    @g
    private final LinkedHashSet<KotlinType> intersectedTypes;

    public IntersectionTypeConstructor(@g Collection<? extends KotlinType> typesToIntersect) {
        Intrinsics.checkNotNullParameter(typesToIntersect, "typesToIntersect");
        typesToIntersect.isEmpty();
        LinkedHashSet<KotlinType> linkedHashSet = new LinkedHashSet<>(typesToIntersect);
        this.intersectedTypes = linkedHashSet;
        this.hashCode = linkedHashSet.hashCode();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ String makeDebugNameForIntersectionType$default(IntersectionTypeConstructor intersectionTypeConstructor, Function1 function1, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            function1 = IntersectionTypeConstructor$makeDebugNameForIntersectionType$1.INSTANCE;
        }
        return intersectionTypeConstructor.makeDebugNameForIntersectionType(function1);
    }

    @g
    public final MemberScope createScopeForKotlinType() {
        return TypeIntersectionScope.Companion.create("member scope for intersection type", this.intersectedTypes);
    }

    @g
    public final SimpleType createType() {
        List emptyList;
        TypeAttributes empty = TypeAttributes.Companion.getEmpty();
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        return KotlinTypeFactory.simpleTypeWithNonTrivialMemberScope(empty, this, emptyList, false, createScopeForKotlinType(), new IntersectionTypeConstructor$createType$1(this));
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof IntersectionTypeConstructor) {
            return Intrinsics.areEqual(this.intersectedTypes, ((IntersectionTypeConstructor) obj).intersectedTypes);
        }
        return false;
    }

    @h
    public final KotlinType getAlternativeType() {
        return this.alternative;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    @g
    public KotlinBuiltIns getBuiltIns() {
        KotlinBuiltIns builtIns = this.intersectedTypes.iterator().next().getConstructor().getBuiltIns();
        Intrinsics.checkNotNullExpressionValue(builtIns, "intersectedTypes.iterato…xt().constructor.builtIns");
        return builtIns;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    @h
    public ClassifierDescriptor getDeclarationDescriptor() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    @g
    public List<TypeParameterDescriptor> getParameters() {
        List<TypeParameterDescriptor> emptyList;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        return emptyList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    @g
    /* renamed from: getSupertypes */
    public Collection<KotlinType> mo1364getSupertypes() {
        return this.intersectedTypes;
    }

    public int hashCode() {
        return this.hashCode;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    public boolean isDenotable() {
        return false;
    }

    @g
    public final String makeDebugNameForIntersectionType(@g final Function1<? super KotlinType, ? extends Object> getProperTypeRelatedToStringify) {
        List sortedWith;
        String joinToString$default;
        Intrinsics.checkNotNullParameter(getProperTypeRelatedToStringify, "getProperTypeRelatedToStringify");
        sortedWith = CollectionsKt___CollectionsKt.sortedWith(this.intersectedTypes, new Comparator() { // from class: kotlin.reflect.jvm.internal.impl.types.IntersectionTypeConstructor$makeDebugNameForIntersectionType$$inlined$sortedBy$1
            @Override // java.util.Comparator
            public final int compare(T t9, T t10) {
                int compareValues;
                KotlinType it = (KotlinType) t9;
                Function1 function1 = Function1.this;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                String obj = function1.invoke(it).toString();
                KotlinType it2 = (KotlinType) t10;
                Function1 function12 = Function1.this;
                Intrinsics.checkNotNullExpressionValue(it2, "it");
                compareValues = ComparisonsKt__ComparisonsKt.compareValues(obj, function12.invoke(it2).toString());
                return compareValues;
            }
        });
        joinToString$default = CollectionsKt___CollectionsKt.joinToString$default(sortedWith, " & ", "{", i.f6967d, 0, null, new IntersectionTypeConstructor$makeDebugNameForIntersectionType$3(getProperTypeRelatedToStringify), 24, null);
        return joinToString$default;
    }

    @g
    public final IntersectionTypeConstructor setAlternative(@h KotlinType kotlinType) {
        return new IntersectionTypeConstructor(this.intersectedTypes, kotlinType);
    }

    @g
    public String toString() {
        return makeDebugNameForIntersectionType$default(this, null, 1, null);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    @g
    public IntersectionTypeConstructor refine(@g KotlinTypeRefiner kotlinTypeRefiner) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(kotlinTypeRefiner, "kotlinTypeRefiner");
        Collection<KotlinType> mo1364getSupertypes = mo1364getSupertypes();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(mo1364getSupertypes, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        boolean z9 = false;
        for (KotlinType kotlinType : mo1364getSupertypes) {
            arrayList.add(kotlinType.refine(kotlinTypeRefiner));
            z9 = true;
        }
        IntersectionTypeConstructor intersectionTypeConstructor = null;
        if (z9) {
            KotlinType alternativeType = getAlternativeType();
            intersectionTypeConstructor = new IntersectionTypeConstructor(arrayList).setAlternative(alternativeType != null ? alternativeType.refine(kotlinTypeRefiner) : null);
        }
        return intersectionTypeConstructor == null ? this : intersectionTypeConstructor;
    }

    private IntersectionTypeConstructor(Collection<? extends KotlinType> collection, KotlinType kotlinType) {
        this(collection);
        this.alternative = kotlinType;
    }
}

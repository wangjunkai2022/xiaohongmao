package kotlin.reflect.jvm.internal.impl.types;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.types.checker.NewCapturedType;
import m8.g;
import m8.h;

/* compiled from: SpecialTypes.kt */
/* loaded from: classes4.dex */
public final class SpecialTypesKt {
    @h
    public static final AbbreviatedType getAbbreviatedType(@g KotlinType kotlinType) {
        Intrinsics.checkNotNullParameter(kotlinType, "<this>");
        UnwrappedType unwrap = kotlinType.unwrap();
        if (unwrap instanceof AbbreviatedType) {
            return (AbbreviatedType) unwrap;
        }
        return null;
    }

    @h
    public static final SimpleType getAbbreviation(@g KotlinType kotlinType) {
        Intrinsics.checkNotNullParameter(kotlinType, "<this>");
        AbbreviatedType abbreviatedType = getAbbreviatedType(kotlinType);
        if (abbreviatedType != null) {
            return abbreviatedType.getAbbreviation();
        }
        return null;
    }

    public static final boolean isDefinitelyNotNullType(@g KotlinType kotlinType) {
        Intrinsics.checkNotNullParameter(kotlinType, "<this>");
        return kotlinType.unwrap() instanceof DefinitelyNotNullType;
    }

    @g
    public static final UnwrappedType makeDefinitelyNotNullOrNotNull(@g UnwrappedType unwrappedType, boolean z9) {
        Intrinsics.checkNotNullParameter(unwrappedType, "<this>");
        DefinitelyNotNullType makeDefinitelyNotNull = DefinitelyNotNullType.Companion.makeDefinitelyNotNull(unwrappedType, z9);
        if (makeDefinitelyNotNull != null) {
            return makeDefinitelyNotNull;
        }
        SimpleType makeIntersectionTypeDefinitelyNotNullOrNotNull = makeIntersectionTypeDefinitelyNotNullOrNotNull(unwrappedType);
        return makeIntersectionTypeDefinitelyNotNullOrNotNull != null ? makeIntersectionTypeDefinitelyNotNullOrNotNull : unwrappedType.makeNullableAsSpecified(false);
    }

    public static /* synthetic */ UnwrappedType makeDefinitelyNotNullOrNotNull$default(UnwrappedType unwrappedType, boolean z9, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            z9 = false;
        }
        return makeDefinitelyNotNullOrNotNull(unwrappedType, z9);
    }

    private static final SimpleType makeIntersectionTypeDefinitelyNotNullOrNotNull(KotlinType kotlinType) {
        IntersectionTypeConstructor makeDefinitelyNotNullOrNotNull;
        TypeConstructor constructor = kotlinType.getConstructor();
        IntersectionTypeConstructor intersectionTypeConstructor = constructor instanceof IntersectionTypeConstructor ? (IntersectionTypeConstructor) constructor : null;
        if (intersectionTypeConstructor == null || (makeDefinitelyNotNullOrNotNull = makeDefinitelyNotNullOrNotNull(intersectionTypeConstructor)) == null) {
            return null;
        }
        return makeDefinitelyNotNullOrNotNull.createType();
    }

    @g
    public static final SimpleType makeSimpleTypeDefinitelyNotNullOrNotNull(@g SimpleType simpleType, boolean z9) {
        Intrinsics.checkNotNullParameter(simpleType, "<this>");
        DefinitelyNotNullType makeDefinitelyNotNull = DefinitelyNotNullType.Companion.makeDefinitelyNotNull(simpleType, z9);
        if (makeDefinitelyNotNull != null) {
            return makeDefinitelyNotNull;
        }
        SimpleType makeIntersectionTypeDefinitelyNotNullOrNotNull = makeIntersectionTypeDefinitelyNotNullOrNotNull(simpleType);
        return makeIntersectionTypeDefinitelyNotNullOrNotNull == null ? simpleType.makeNullableAsSpecified(false) : makeIntersectionTypeDefinitelyNotNullOrNotNull;
    }

    public static /* synthetic */ SimpleType makeSimpleTypeDefinitelyNotNullOrNotNull$default(SimpleType simpleType, boolean z9, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            z9 = false;
        }
        return makeSimpleTypeDefinitelyNotNullOrNotNull(simpleType, z9);
    }

    @g
    public static final SimpleType withAbbreviation(@g SimpleType simpleType, @g SimpleType abbreviatedType) {
        Intrinsics.checkNotNullParameter(simpleType, "<this>");
        Intrinsics.checkNotNullParameter(abbreviatedType, "abbreviatedType");
        return KotlinTypeKt.isError(simpleType) ? simpleType : new AbbreviatedType(simpleType, abbreviatedType);
    }

    @g
    public static final NewCapturedType withNotNullProjection(@g NewCapturedType newCapturedType) {
        Intrinsics.checkNotNullParameter(newCapturedType, "<this>");
        return new NewCapturedType(newCapturedType.getCaptureStatus(), newCapturedType.getConstructor(), newCapturedType.getLowerType(), newCapturedType.getAttributes(), newCapturedType.isMarkedNullable(), true);
    }

    private static final IntersectionTypeConstructor makeDefinitelyNotNullOrNotNull(IntersectionTypeConstructor intersectionTypeConstructor) {
        int collectionSizeOrDefault;
        KotlinType kotlinType;
        Collection<KotlinType> mo1364getSupertypes = intersectionTypeConstructor.mo1364getSupertypes();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(mo1364getSupertypes, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it = mo1364getSupertypes.iterator();
        boolean z9 = false;
        while (true) {
            kotlinType = null;
            if (!it.hasNext()) {
                break;
            }
            KotlinType kotlinType2 = (KotlinType) it.next();
            if (TypeUtils.isNullableType(kotlinType2)) {
                kotlinType2 = makeDefinitelyNotNullOrNotNull$default(kotlinType2.unwrap(), false, 1, null);
                z9 = true;
            }
            arrayList.add(kotlinType2);
        }
        if (z9) {
            KotlinType alternativeType = intersectionTypeConstructor.getAlternativeType();
            if (alternativeType != null) {
                if (TypeUtils.isNullableType(alternativeType)) {
                    alternativeType = makeDefinitelyNotNullOrNotNull$default(alternativeType.unwrap(), false, 1, null);
                }
                kotlinType = alternativeType;
            }
            return new IntersectionTypeConstructor(arrayList).setAlternative(kotlinType);
        }
        return null;
    }
}

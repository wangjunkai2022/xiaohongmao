package kotlin.reflect.jvm.internal.impl.types.checker;

import java.util.ArrayList;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.types.DynamicTypesKt;
import kotlin.reflect.jvm.internal.impl.types.FlexibleType;
import kotlin.reflect.jvm.internal.impl.types.FlexibleTypesKt;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeKt;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.UnwrappedType;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorTypeKind;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorUtils;
import m8.g;

/* compiled from: IntersectionType.kt */
/* loaded from: classes4.dex */
public final class IntersectionTypeKt {
    @g
    public static final UnwrappedType intersectTypes(@g List<? extends UnwrappedType> types) {
        Object single;
        int collectionSizeOrDefault;
        int collectionSizeOrDefault2;
        SimpleType lowerBound;
        Intrinsics.checkNotNullParameter(types, "types");
        int size = types.size();
        if (size != 0) {
            if (size != 1) {
                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(types, 10);
                ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
                boolean z9 = false;
                boolean z10 = false;
                for (UnwrappedType unwrappedType : types) {
                    z9 = z9 || KotlinTypeKt.isError(unwrappedType);
                    if (unwrappedType instanceof SimpleType) {
                        lowerBound = (SimpleType) unwrappedType;
                    } else if (unwrappedType instanceof FlexibleType) {
                        if (DynamicTypesKt.isDynamic(unwrappedType)) {
                            return unwrappedType;
                        }
                        lowerBound = ((FlexibleType) unwrappedType).getLowerBound();
                        z10 = true;
                    } else {
                        throw new NoWhenBranchMatchedException();
                    }
                    arrayList.add(lowerBound);
                }
                if (z9) {
                    return ErrorUtils.createErrorType(ErrorTypeKind.INTERSECTION_OF_ERROR_TYPES, types.toString());
                }
                if (!z10) {
                    return TypeIntersector.INSTANCE.intersectTypes$descriptors(arrayList);
                }
                collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(types, 10);
                ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault2);
                for (UnwrappedType unwrappedType2 : types) {
                    arrayList2.add(FlexibleTypesKt.upperIfFlexible(unwrappedType2));
                }
                TypeIntersector typeIntersector = TypeIntersector.INSTANCE;
                return KotlinTypeFactory.flexibleType(typeIntersector.intersectTypes$descriptors(arrayList), typeIntersector.intersectTypes$descriptors(arrayList2));
            }
            single = CollectionsKt___CollectionsKt.single((List<? extends Object>) types);
            return (UnwrappedType) single;
        }
        throw new IllegalStateException("Expected some types".toString());
    }
}

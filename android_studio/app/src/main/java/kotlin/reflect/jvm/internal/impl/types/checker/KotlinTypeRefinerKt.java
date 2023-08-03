package kotlin.reflect.jvm.internal.impl.types.checker;

import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleCapability;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.model.KotlinTypeMarker;
import m8.g;

/* compiled from: KotlinTypeRefiner.kt */
/* loaded from: classes4.dex */
public final class KotlinTypeRefinerKt {
    @g
    private static final ModuleCapability<Ref<TypeRefinementSupport>> REFINER_CAPABILITY = new ModuleCapability<>("KotlinTypeRefiner");

    @g
    public static final ModuleCapability<Ref<TypeRefinementSupport>> getREFINER_CAPABILITY() {
        return REFINER_CAPABILITY;
    }

    @g
    public static final List<KotlinType> refineTypes(@g KotlinTypeRefiner kotlinTypeRefiner, @g Iterable<? extends KotlinType> types) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(kotlinTypeRefiner, "<this>");
        Intrinsics.checkNotNullParameter(types, "types");
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(types, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (KotlinType kotlinType : types) {
            arrayList.add(kotlinTypeRefiner.refineType((KotlinTypeMarker) kotlinType));
        }
        return arrayList;
    }
}

package kotlin.reflect.jvm.internal.impl.types;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import m8.g;
import m8.h;

/* compiled from: TypeSubstitution.kt */
/* loaded from: classes4.dex */
public abstract class TypeConstructorSubstitution extends TypeSubstitution {
    @g
    public static final Companion Companion = new Companion(null);

    /* compiled from: TypeSubstitution.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ TypeConstructorSubstitution createByConstructorsMap$default(Companion companion, Map map, boolean z9, int i4, Object obj) {
            if ((i4 & 2) != 0) {
                z9 = false;
            }
            return companion.createByConstructorsMap(map, z9);
        }

        @JvmStatic
        @g
        public final TypeSubstitution create(@g KotlinType kotlinType) {
            Intrinsics.checkNotNullParameter(kotlinType, "kotlinType");
            return create(kotlinType.getConstructor(), kotlinType.getArguments());
        }

        @JvmStatic
        @JvmOverloads
        @g
        public final TypeConstructorSubstitution createByConstructorsMap(@g Map<TypeConstructor, ? extends TypeProjection> map) {
            Intrinsics.checkNotNullParameter(map, "map");
            return createByConstructorsMap$default(this, map, false, 2, null);
        }

        @JvmStatic
        @JvmOverloads
        @g
        public final TypeConstructorSubstitution createByConstructorsMap(@g final Map<TypeConstructor, ? extends TypeProjection> map, final boolean z9) {
            Intrinsics.checkNotNullParameter(map, "map");
            return new TypeConstructorSubstitution() { // from class: kotlin.reflect.jvm.internal.impl.types.TypeConstructorSubstitution$Companion$createByConstructorsMap$1
                @Override // kotlin.reflect.jvm.internal.impl.types.TypeSubstitution
                public boolean approximateCapturedTypes() {
                    return z9;
                }

                @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructorSubstitution
                @h
                public TypeProjection get(@g TypeConstructor key) {
                    Intrinsics.checkNotNullParameter(key, "key");
                    return map.get(key);
                }

                @Override // kotlin.reflect.jvm.internal.impl.types.TypeSubstitution
                public boolean isEmpty() {
                    return map.isEmpty();
                }
            };
        }

        @JvmStatic
        @g
        public final TypeSubstitution create(@g TypeConstructor typeConstructor, @g List<? extends TypeProjection> arguments) {
            Object lastOrNull;
            int collectionSizeOrDefault;
            List zip;
            Map map;
            Intrinsics.checkNotNullParameter(typeConstructor, "typeConstructor");
            Intrinsics.checkNotNullParameter(arguments, "arguments");
            List<TypeParameterDescriptor> parameters = typeConstructor.getParameters();
            Intrinsics.checkNotNullExpressionValue(parameters, "typeConstructor.parameters");
            lastOrNull = CollectionsKt___CollectionsKt.lastOrNull((List<? extends Object>) parameters);
            TypeParameterDescriptor typeParameterDescriptor = (TypeParameterDescriptor) lastOrNull;
            boolean z9 = true;
            if ((typeParameterDescriptor == null || !typeParameterDescriptor.isCapturedFromOuterDeclaration()) ? false : false) {
                List<TypeParameterDescriptor> parameters2 = typeConstructor.getParameters();
                Intrinsics.checkNotNullExpressionValue(parameters2, "typeConstructor.parameters");
                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(parameters2, 10);
                ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
                for (TypeParameterDescriptor typeParameterDescriptor2 : parameters2) {
                    arrayList.add(typeParameterDescriptor2.getTypeConstructor());
                }
                zip = CollectionsKt___CollectionsKt.zip(arrayList, arguments);
                map = MapsKt__MapsKt.toMap(zip);
                return createByConstructorsMap$default(this, map, false, 2, null);
            }
            return new IndexedParametersSubstitution(parameters, arguments);
        }
    }

    @JvmStatic
    @g
    public static final TypeSubstitution create(@g TypeConstructor typeConstructor, @g List<? extends TypeProjection> list) {
        return Companion.create(typeConstructor, list);
    }

    @JvmStatic
    @JvmOverloads
    @g
    public static final TypeConstructorSubstitution createByConstructorsMap(@g Map<TypeConstructor, ? extends TypeProjection> map) {
        return Companion.createByConstructorsMap(map);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeSubstitution
    @h
    public TypeProjection get(@g KotlinType key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return get(key.getConstructor());
    }

    @h
    public abstract TypeProjection get(@g TypeConstructor typeConstructor);
}

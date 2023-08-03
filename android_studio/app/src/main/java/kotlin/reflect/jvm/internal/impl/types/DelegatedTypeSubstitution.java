package kotlin.reflect.jvm.internal.impl.types;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import m8.g;
import m8.h;

/* compiled from: TypeSubstitution.kt */
/* loaded from: classes4.dex */
public class DelegatedTypeSubstitution extends TypeSubstitution {
    @g
    private final TypeSubstitution substitution;

    public DelegatedTypeSubstitution(@g TypeSubstitution substitution) {
        Intrinsics.checkNotNullParameter(substitution, "substitution");
        this.substitution = substitution;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeSubstitution
    public boolean approximateCapturedTypes() {
        return this.substitution.approximateCapturedTypes();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeSubstitution
    public boolean approximateContravariantCapturedTypes() {
        return this.substitution.approximateContravariantCapturedTypes();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeSubstitution
    @g
    public Annotations filterAnnotations(@g Annotations annotations) {
        Intrinsics.checkNotNullParameter(annotations, "annotations");
        return this.substitution.filterAnnotations(annotations);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeSubstitution
    @h
    public TypeProjection get(@g KotlinType key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return this.substitution.get(key);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeSubstitution
    public boolean isEmpty() {
        return this.substitution.isEmpty();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeSubstitution
    @g
    public KotlinType prepareTopLevelType(@g KotlinType topLevelType, @g Variance position) {
        Intrinsics.checkNotNullParameter(topLevelType, "topLevelType");
        Intrinsics.checkNotNullParameter(position, "position");
        return this.substitution.prepareTopLevelType(topLevelType, position);
    }
}

package kotlin.reflect.jvm.internal.impl.types;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeAliasDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor;
import m8.g;
import m8.h;

/* compiled from: TypeAliasExpansionReportStrategy.kt */
/* loaded from: classes4.dex */
public interface TypeAliasExpansionReportStrategy {

    /* compiled from: TypeAliasExpansionReportStrategy.kt */
    /* loaded from: classes4.dex */
    public static final class DO_NOTHING implements TypeAliasExpansionReportStrategy {
        @g
        public static final DO_NOTHING INSTANCE = new DO_NOTHING();

        private DO_NOTHING() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.TypeAliasExpansionReportStrategy
        public void boundsViolationInSubstitution(@g TypeSubstitutor substitutor, @g KotlinType unsubstitutedArgument, @g KotlinType argument, @g TypeParameterDescriptor typeParameter) {
            Intrinsics.checkNotNullParameter(substitutor, "substitutor");
            Intrinsics.checkNotNullParameter(unsubstitutedArgument, "unsubstitutedArgument");
            Intrinsics.checkNotNullParameter(argument, "argument");
            Intrinsics.checkNotNullParameter(typeParameter, "typeParameter");
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.TypeAliasExpansionReportStrategy
        public void conflictingProjection(@g TypeAliasDescriptor typeAlias, @h TypeParameterDescriptor typeParameterDescriptor, @g KotlinType substitutedArgument) {
            Intrinsics.checkNotNullParameter(typeAlias, "typeAlias");
            Intrinsics.checkNotNullParameter(substitutedArgument, "substitutedArgument");
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.TypeAliasExpansionReportStrategy
        public void recursiveTypeAlias(@g TypeAliasDescriptor typeAlias) {
            Intrinsics.checkNotNullParameter(typeAlias, "typeAlias");
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.TypeAliasExpansionReportStrategy
        public void repeatedAnnotation(@g AnnotationDescriptor annotation) {
            Intrinsics.checkNotNullParameter(annotation, "annotation");
        }
    }

    void boundsViolationInSubstitution(@g TypeSubstitutor typeSubstitutor, @g KotlinType kotlinType, @g KotlinType kotlinType2, @g TypeParameterDescriptor typeParameterDescriptor);

    void conflictingProjection(@g TypeAliasDescriptor typeAliasDescriptor, @h TypeParameterDescriptor typeParameterDescriptor, @g KotlinType kotlinType);

    void recursiveTypeAlias(@g TypeAliasDescriptor typeAliasDescriptor);

    void repeatedAnnotation(@g AnnotationDescriptor annotationDescriptor);
}

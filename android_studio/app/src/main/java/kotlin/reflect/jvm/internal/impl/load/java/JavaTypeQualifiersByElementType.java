package kotlin.reflect.jvm.internal.impl.load.java;

import java.util.EnumMap;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: JavaTypeQualifiersByElementType.kt */
/* loaded from: classes4.dex */
public final class JavaTypeQualifiersByElementType {
    @g
    private final EnumMap<AnnotationQualifierApplicabilityType, JavaDefaultQualifiers> defaultQualifiers;

    public JavaTypeQualifiersByElementType(@g EnumMap<AnnotationQualifierApplicabilityType, JavaDefaultQualifiers> defaultQualifiers) {
        Intrinsics.checkNotNullParameter(defaultQualifiers, "defaultQualifiers");
        this.defaultQualifiers = defaultQualifiers;
    }

    @h
    public final JavaDefaultQualifiers get(@h AnnotationQualifierApplicabilityType annotationQualifierApplicabilityType) {
        return this.defaultQualifiers.get(annotationQualifierApplicabilityType);
    }

    @g
    public final EnumMap<AnnotationQualifierApplicabilityType, JavaDefaultQualifiers> getDefaultQualifiers() {
        return this.defaultQualifiers;
    }
}

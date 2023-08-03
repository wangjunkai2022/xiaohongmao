package kotlin.reflect.jvm.internal.impl.load.java;

import m8.g;

/* compiled from: AnnotationQualifierApplicabilityType.kt */
/* loaded from: classes4.dex */
public enum AnnotationQualifierApplicabilityType {
    METHOD_RETURN_TYPE("METHOD"),
    VALUE_PARAMETER("PARAMETER"),
    FIELD("FIELD"),
    TYPE_USE("TYPE_USE"),
    TYPE_PARAMETER_BOUNDS("TYPE_USE"),
    TYPE_PARAMETER("TYPE_PARAMETER");
    
    @g
    private final String javaTarget;

    AnnotationQualifierApplicabilityType(String str) {
        this.javaTarget = str;
    }

    @g
    public final String getJavaTarget() {
        return this.javaTarget;
    }
}

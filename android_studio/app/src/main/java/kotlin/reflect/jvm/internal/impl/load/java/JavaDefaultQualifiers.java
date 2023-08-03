package kotlin.reflect.jvm.internal.impl.load.java;

import java.util.Collection;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.NullabilityQualifier;
import kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.NullabilityQualifierWithMigrationStatus;
import m8.g;
import m8.h;

/* compiled from: AnnotationQualifiersFqNames.kt */
/* loaded from: classes4.dex */
public final class JavaDefaultQualifiers {
    private final boolean definitelyNotNull;
    @g
    private final NullabilityQualifierWithMigrationStatus nullabilityQualifier;
    @g
    private final Collection<AnnotationQualifierApplicabilityType> qualifierApplicabilityTypes;

    /* JADX WARN: Multi-variable type inference failed */
    public JavaDefaultQualifiers(@g NullabilityQualifierWithMigrationStatus nullabilityQualifier, @g Collection<? extends AnnotationQualifierApplicabilityType> qualifierApplicabilityTypes, boolean z9) {
        Intrinsics.checkNotNullParameter(nullabilityQualifier, "nullabilityQualifier");
        Intrinsics.checkNotNullParameter(qualifierApplicabilityTypes, "qualifierApplicabilityTypes");
        this.nullabilityQualifier = nullabilityQualifier;
        this.qualifierApplicabilityTypes = qualifierApplicabilityTypes;
        this.definitelyNotNull = z9;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ JavaDefaultQualifiers copy$default(JavaDefaultQualifiers javaDefaultQualifiers, NullabilityQualifierWithMigrationStatus nullabilityQualifierWithMigrationStatus, Collection collection, boolean z9, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            nullabilityQualifierWithMigrationStatus = javaDefaultQualifiers.nullabilityQualifier;
        }
        if ((i4 & 2) != 0) {
            collection = javaDefaultQualifiers.qualifierApplicabilityTypes;
        }
        if ((i4 & 4) != 0) {
            z9 = javaDefaultQualifiers.definitelyNotNull;
        }
        return javaDefaultQualifiers.copy(nullabilityQualifierWithMigrationStatus, collection, z9);
    }

    @g
    public final JavaDefaultQualifiers copy(@g NullabilityQualifierWithMigrationStatus nullabilityQualifier, @g Collection<? extends AnnotationQualifierApplicabilityType> qualifierApplicabilityTypes, boolean z9) {
        Intrinsics.checkNotNullParameter(nullabilityQualifier, "nullabilityQualifier");
        Intrinsics.checkNotNullParameter(qualifierApplicabilityTypes, "qualifierApplicabilityTypes");
        return new JavaDefaultQualifiers(nullabilityQualifier, qualifierApplicabilityTypes, z9);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof JavaDefaultQualifiers) {
            JavaDefaultQualifiers javaDefaultQualifiers = (JavaDefaultQualifiers) obj;
            return Intrinsics.areEqual(this.nullabilityQualifier, javaDefaultQualifiers.nullabilityQualifier) && Intrinsics.areEqual(this.qualifierApplicabilityTypes, javaDefaultQualifiers.qualifierApplicabilityTypes) && this.definitelyNotNull == javaDefaultQualifiers.definitelyNotNull;
        }
        return false;
    }

    public final boolean getDefinitelyNotNull() {
        return this.definitelyNotNull;
    }

    @g
    public final NullabilityQualifierWithMigrationStatus getNullabilityQualifier() {
        return this.nullabilityQualifier;
    }

    @g
    public final Collection<AnnotationQualifierApplicabilityType> getQualifierApplicabilityTypes() {
        return this.qualifierApplicabilityTypes;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((this.nullabilityQualifier.hashCode() * 31) + this.qualifierApplicabilityTypes.hashCode()) * 31;
        boolean z9 = this.definitelyNotNull;
        int i4 = z9;
        if (z9 != 0) {
            i4 = 1;
        }
        return hashCode + i4;
    }

    @g
    public String toString() {
        return "JavaDefaultQualifiers(nullabilityQualifier=" + this.nullabilityQualifier + ", qualifierApplicabilityTypes=" + this.qualifierApplicabilityTypes + ", definitelyNotNull=" + this.definitelyNotNull + ')';
    }

    public /* synthetic */ JavaDefaultQualifiers(NullabilityQualifierWithMigrationStatus nullabilityQualifierWithMigrationStatus, Collection collection, boolean z9, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(nullabilityQualifierWithMigrationStatus, collection, (i4 & 4) != 0 ? nullabilityQualifierWithMigrationStatus.getQualifier() == NullabilityQualifier.NOT_NULL : z9);
    }
}

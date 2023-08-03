package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: NullabilityQualifierWithMigrationStatus.kt */
/* loaded from: classes4.dex */
public final class NullabilityQualifierWithMigrationStatus {
    private final boolean isForWarningOnly;
    @g
    private final NullabilityQualifier qualifier;

    public NullabilityQualifierWithMigrationStatus(@g NullabilityQualifier qualifier, boolean z9) {
        Intrinsics.checkNotNullParameter(qualifier, "qualifier");
        this.qualifier = qualifier;
        this.isForWarningOnly = z9;
    }

    public static /* synthetic */ NullabilityQualifierWithMigrationStatus copy$default(NullabilityQualifierWithMigrationStatus nullabilityQualifierWithMigrationStatus, NullabilityQualifier nullabilityQualifier, boolean z9, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            nullabilityQualifier = nullabilityQualifierWithMigrationStatus.qualifier;
        }
        if ((i4 & 2) != 0) {
            z9 = nullabilityQualifierWithMigrationStatus.isForWarningOnly;
        }
        return nullabilityQualifierWithMigrationStatus.copy(nullabilityQualifier, z9);
    }

    @g
    public final NullabilityQualifierWithMigrationStatus copy(@g NullabilityQualifier qualifier, boolean z9) {
        Intrinsics.checkNotNullParameter(qualifier, "qualifier");
        return new NullabilityQualifierWithMigrationStatus(qualifier, z9);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof NullabilityQualifierWithMigrationStatus) {
            NullabilityQualifierWithMigrationStatus nullabilityQualifierWithMigrationStatus = (NullabilityQualifierWithMigrationStatus) obj;
            return this.qualifier == nullabilityQualifierWithMigrationStatus.qualifier && this.isForWarningOnly == nullabilityQualifierWithMigrationStatus.isForWarningOnly;
        }
        return false;
    }

    @g
    public final NullabilityQualifier getQualifier() {
        return this.qualifier;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = this.qualifier.hashCode() * 31;
        boolean z9 = this.isForWarningOnly;
        int i4 = z9;
        if (z9 != 0) {
            i4 = 1;
        }
        return hashCode + i4;
    }

    public final boolean isForWarningOnly() {
        return this.isForWarningOnly;
    }

    @g
    public String toString() {
        return "NullabilityQualifierWithMigrationStatus(qualifier=" + this.qualifier + ", isForWarningOnly=" + this.isForWarningOnly + ')';
    }

    public /* synthetic */ NullabilityQualifierWithMigrationStatus(NullabilityQualifier nullabilityQualifier, boolean z9, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(nullabilityQualifier, (i4 & 2) != 0 ? false : z9);
    }
}

package kotlin.reflect.jvm.internal.impl.load.java;

import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import m8.g;
import m8.h;

/* compiled from: Jsr305Settings.kt */
/* loaded from: classes4.dex */
public final class Jsr305Settings {
    @g
    private final Lazy description$delegate;
    @g
    private final ReportLevel globalLevel;
    private final boolean isDisabled;
    @h
    private final ReportLevel migrationLevel;
    @g
    private final Map<FqName, ReportLevel> userDefinedLevelForSpecificAnnotation;

    /* JADX WARN: Multi-variable type inference failed */
    public Jsr305Settings(@g ReportLevel globalLevel, @h ReportLevel reportLevel, @g Map<FqName, ? extends ReportLevel> userDefinedLevelForSpecificAnnotation) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(globalLevel, "globalLevel");
        Intrinsics.checkNotNullParameter(userDefinedLevelForSpecificAnnotation, "userDefinedLevelForSpecificAnnotation");
        this.globalLevel = globalLevel;
        this.migrationLevel = reportLevel;
        this.userDefinedLevelForSpecificAnnotation = userDefinedLevelForSpecificAnnotation;
        lazy = LazyKt__LazyJVMKt.lazy(new Jsr305Settings$description$2(this));
        this.description$delegate = lazy;
        ReportLevel reportLevel2 = ReportLevel.IGNORE;
        this.isDisabled = globalLevel == reportLevel2 && reportLevel == reportLevel2 && userDefinedLevelForSpecificAnnotation.isEmpty();
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Jsr305Settings) {
            Jsr305Settings jsr305Settings = (Jsr305Settings) obj;
            return this.globalLevel == jsr305Settings.globalLevel && this.migrationLevel == jsr305Settings.migrationLevel && Intrinsics.areEqual(this.userDefinedLevelForSpecificAnnotation, jsr305Settings.userDefinedLevelForSpecificAnnotation);
        }
        return false;
    }

    @g
    public final ReportLevel getGlobalLevel() {
        return this.globalLevel;
    }

    @h
    public final ReportLevel getMigrationLevel() {
        return this.migrationLevel;
    }

    @g
    public final Map<FqName, ReportLevel> getUserDefinedLevelForSpecificAnnotation() {
        return this.userDefinedLevelForSpecificAnnotation;
    }

    public int hashCode() {
        int hashCode = this.globalLevel.hashCode() * 31;
        ReportLevel reportLevel = this.migrationLevel;
        return ((hashCode + (reportLevel == null ? 0 : reportLevel.hashCode())) * 31) + this.userDefinedLevelForSpecificAnnotation.hashCode();
    }

    public final boolean isDisabled() {
        return this.isDisabled;
    }

    @g
    public String toString() {
        return "Jsr305Settings(globalLevel=" + this.globalLevel + ", migrationLevel=" + this.migrationLevel + ", userDefinedLevelForSpecificAnnotation=" + this.userDefinedLevelForSpecificAnnotation + ')';
    }

    public /* synthetic */ Jsr305Settings(ReportLevel reportLevel, ReportLevel reportLevel2, Map map, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(reportLevel, (i4 & 2) != 0 ? null : reportLevel2, (i4 & 4) != 0 ? MapsKt__MapsKt.emptyMap() : map);
    }
}

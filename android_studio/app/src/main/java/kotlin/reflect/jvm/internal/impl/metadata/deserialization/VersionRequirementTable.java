package kotlin.reflect.jvm.internal.impl.metadata.deserialization;

import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf;
import m8.g;

/* compiled from: VersionRequirement.kt */
/* loaded from: classes4.dex */
public final class VersionRequirementTable {
    @g
    public static final Companion Companion = new Companion(null);
    @g
    private static final VersionRequirementTable EMPTY;
    @g
    private final List<ProtoBuf.VersionRequirement> infos;

    /* compiled from: VersionRequirement.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @g
        public final VersionRequirementTable create(@g ProtoBuf.VersionRequirementTable table) {
            Intrinsics.checkNotNullParameter(table, "table");
            if (table.getRequirementCount() == 0) {
                return getEMPTY();
            }
            List<ProtoBuf.VersionRequirement> requirementList = table.getRequirementList();
            Intrinsics.checkNotNullExpressionValue(requirementList, "table.requirementList");
            return new VersionRequirementTable(requirementList, null);
        }

        @g
        public final VersionRequirementTable getEMPTY() {
            return VersionRequirementTable.EMPTY;
        }
    }

    static {
        List emptyList;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        EMPTY = new VersionRequirementTable(emptyList);
    }

    private VersionRequirementTable(List<ProtoBuf.VersionRequirement> list) {
        this.infos = list;
    }

    public /* synthetic */ VersionRequirementTable(List list, DefaultConstructorMarker defaultConstructorMarker) {
        this(list);
    }
}

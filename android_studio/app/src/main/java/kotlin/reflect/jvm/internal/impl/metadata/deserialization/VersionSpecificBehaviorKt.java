package kotlin.reflect.jvm.internal.impl.metadata.deserialization;

import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: versionSpecificBehavior.kt */
/* loaded from: classes4.dex */
public final class VersionSpecificBehaviorKt {
    public static final boolean isKotlin1Dot4OrLater(@g BinaryVersion version) {
        Intrinsics.checkNotNullParameter(version, "version");
        return version.getMajor() == 1 && version.getMinor() >= 4;
    }

    public static final boolean isVersionRequirementTableWrittenCorrectly(@g BinaryVersion version) {
        Intrinsics.checkNotNullParameter(version, "version");
        return isKotlin1Dot4OrLater(version);
    }
}

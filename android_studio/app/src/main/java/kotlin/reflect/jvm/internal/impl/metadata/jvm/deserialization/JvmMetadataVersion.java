package kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization;

import java.util.Arrays;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.BinaryVersion;
import m8.g;

/* compiled from: JvmMetadataVersion.kt */
/* loaded from: classes4.dex */
public final class JvmMetadataVersion extends BinaryVersion {
    @g
    public static final Companion Companion = new Companion(null);
    @JvmField
    @g
    public static final JvmMetadataVersion INSTANCE = new JvmMetadataVersion(1, 7, 1);
    @JvmField
    @g
    public static final JvmMetadataVersion INVALID_VERSION = new JvmMetadataVersion(new int[0]);
    private final boolean isStrictSemantics;

    /* compiled from: JvmMetadataVersion.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JvmMetadataVersion(@g int[] versionArray, boolean z9) {
        super(Arrays.copyOf(versionArray, versionArray.length));
        Intrinsics.checkNotNullParameter(versionArray, "versionArray");
        this.isStrictSemantics = z9;
    }

    public boolean isCompatible() {
        boolean z9;
        if (getMajor() == 1 && getMinor() == 0) {
            return false;
        }
        if (this.isStrictSemantics) {
            z9 = isCompatibleTo(INSTANCE);
        } else {
            int major = getMajor();
            JvmMetadataVersion jvmMetadataVersion = INSTANCE;
            z9 = major == jvmMetadataVersion.getMajor() && getMinor() <= jvmMetadataVersion.getMinor() + 1;
        }
        return z9;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public JvmMetadataVersion(@g int... numbers) {
        this(numbers, false);
        Intrinsics.checkNotNullParameter(numbers, "numbers");
    }
}

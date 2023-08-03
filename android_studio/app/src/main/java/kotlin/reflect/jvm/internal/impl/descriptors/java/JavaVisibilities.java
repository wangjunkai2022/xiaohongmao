package kotlin.reflect.jvm.internal.impl.descriptors.java;

import io.sentry.protocol.r;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.Visibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.Visibility;
import m8.g;
import m8.h;

/* compiled from: JavaVisibilities.kt */
/* loaded from: classes4.dex */
public final class JavaVisibilities {
    @g
    public static final JavaVisibilities INSTANCE = new JavaVisibilities();

    /* compiled from: JavaVisibilities.kt */
    /* loaded from: classes4.dex */
    public static final class PackageVisibility extends Visibility {
        @g
        public static final PackageVisibility INSTANCE = new PackageVisibility();

        private PackageVisibility() {
            super(r.b.f83833i, false);
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.Visibility
        @h
        public Integer compareTo(@g Visibility visibility) {
            Intrinsics.checkNotNullParameter(visibility, "visibility");
            if (this == visibility) {
                return 0;
            }
            return Visibilities.INSTANCE.isPrivate(visibility) ? 1 : -1;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.Visibility
        @g
        public String getInternalDisplayName() {
            return "public/*package*/";
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.Visibility
        @g
        public Visibility normalize() {
            return Visibilities.Protected.INSTANCE;
        }
    }

    /* compiled from: JavaVisibilities.kt */
    /* loaded from: classes4.dex */
    public static final class ProtectedAndPackage extends Visibility {
        @g
        public static final ProtectedAndPackage INSTANCE = new ProtectedAndPackage();

        private ProtectedAndPackage() {
            super("protected_and_package", true);
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.Visibility
        @h
        public Integer compareTo(@g Visibility visibility) {
            Intrinsics.checkNotNullParameter(visibility, "visibility");
            if (Intrinsics.areEqual(this, visibility)) {
                return 0;
            }
            if (visibility == Visibilities.Internal.INSTANCE) {
                return null;
            }
            return Integer.valueOf(Visibilities.INSTANCE.isPrivate(visibility) ? 1 : -1);
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.Visibility
        @g
        public String getInternalDisplayName() {
            return "protected/*protected and package*/";
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.Visibility
        @g
        public Visibility normalize() {
            return Visibilities.Protected.INSTANCE;
        }
    }

    /* compiled from: JavaVisibilities.kt */
    /* loaded from: classes4.dex */
    public static final class ProtectedStaticVisibility extends Visibility {
        @g
        public static final ProtectedStaticVisibility INSTANCE = new ProtectedStaticVisibility();

        private ProtectedStaticVisibility() {
            super("protected_static", true);
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.Visibility
        @g
        public String getInternalDisplayName() {
            return "protected/*protected static*/";
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.Visibility
        @g
        public Visibility normalize() {
            return Visibilities.Protected.INSTANCE;
        }
    }

    private JavaVisibilities() {
    }
}

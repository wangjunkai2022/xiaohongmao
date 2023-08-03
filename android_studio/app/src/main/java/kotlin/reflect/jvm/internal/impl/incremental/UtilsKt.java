package kotlin.reflect.jvm.internal.impl.incremental;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentDescriptor;
import kotlin.reflect.jvm.internal.impl.incremental.components.LocationInfo;
import kotlin.reflect.jvm.internal.impl.incremental.components.LookupLocation;
import kotlin.reflect.jvm.internal.impl.incremental.components.LookupTracker;
import kotlin.reflect.jvm.internal.impl.incremental.components.Position;
import kotlin.reflect.jvm.internal.impl.incremental.components.ScopeKind;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import m8.g;

/* compiled from: utils.kt */
/* loaded from: classes4.dex */
public final class UtilsKt {
    public static final void record(@g LookupTracker lookupTracker, @g LookupLocation from, @g ClassDescriptor scopeOwner, @g Name name) {
        LocationInfo location;
        Intrinsics.checkNotNullParameter(lookupTracker, "<this>");
        Intrinsics.checkNotNullParameter(from, "from");
        Intrinsics.checkNotNullParameter(scopeOwner, "scopeOwner");
        Intrinsics.checkNotNullParameter(name, "name");
        if (lookupTracker == LookupTracker.DO_NOTHING.INSTANCE || (location = from.getLocation()) == null) {
            return;
        }
        Position position = lookupTracker.getRequiresPosition() ? location.getPosition() : Position.Companion.getNO_POSITION();
        String filePath = location.getFilePath();
        String asString = DescriptorUtils.getFqName(scopeOwner).asString();
        Intrinsics.checkNotNullExpressionValue(asString, "getFqName(scopeOwner).asString()");
        ScopeKind scopeKind = ScopeKind.CLASSIFIER;
        String asString2 = name.asString();
        Intrinsics.checkNotNullExpressionValue(asString2, "name.asString()");
        lookupTracker.record(filePath, position, asString, scopeKind, asString2);
    }

    public static final void recordPackageLookup(@g LookupTracker lookupTracker, @g LookupLocation from, @g String packageFqName, @g String name) {
        LocationInfo location;
        Intrinsics.checkNotNullParameter(lookupTracker, "<this>");
        Intrinsics.checkNotNullParameter(from, "from");
        Intrinsics.checkNotNullParameter(packageFqName, "packageFqName");
        Intrinsics.checkNotNullParameter(name, "name");
        if (lookupTracker == LookupTracker.DO_NOTHING.INSTANCE || (location = from.getLocation()) == null) {
            return;
        }
        lookupTracker.record(location.getFilePath(), lookupTracker.getRequiresPosition() ? location.getPosition() : Position.Companion.getNO_POSITION(), packageFqName, ScopeKind.PACKAGE, name);
    }

    public static final void record(@g LookupTracker lookupTracker, @g LookupLocation from, @g PackageFragmentDescriptor scopeOwner, @g Name name) {
        Intrinsics.checkNotNullParameter(lookupTracker, "<this>");
        Intrinsics.checkNotNullParameter(from, "from");
        Intrinsics.checkNotNullParameter(scopeOwner, "scopeOwner");
        Intrinsics.checkNotNullParameter(name, "name");
        String asString = scopeOwner.getFqName().asString();
        Intrinsics.checkNotNullExpressionValue(asString, "scopeOwner.fqName.asString()");
        String asString2 = name.asString();
        Intrinsics.checkNotNullExpressionValue(asString2, "name.asString()");
        recordPackageLookup(lookupTracker, from, asString, asString2);
    }
}

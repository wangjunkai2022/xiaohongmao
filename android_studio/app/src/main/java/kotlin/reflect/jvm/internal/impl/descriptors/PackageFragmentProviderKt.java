package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import m8.g;

/* compiled from: PackageFragmentProvider.kt */
/* loaded from: classes4.dex */
public final class PackageFragmentProviderKt {
    public static final void collectPackageFragmentsOptimizedIfPossible(@g PackageFragmentProvider packageFragmentProvider, @g FqName fqName, @g Collection<PackageFragmentDescriptor> packageFragments) {
        Intrinsics.checkNotNullParameter(packageFragmentProvider, "<this>");
        Intrinsics.checkNotNullParameter(fqName, "fqName");
        Intrinsics.checkNotNullParameter(packageFragments, "packageFragments");
        if (packageFragmentProvider instanceof PackageFragmentProviderOptimized) {
            ((PackageFragmentProviderOptimized) packageFragmentProvider).collectPackageFragments(fqName, packageFragments);
        } else {
            packageFragments.addAll(packageFragmentProvider.getPackageFragments(fqName));
        }
    }

    public static final boolean isEmpty(@g PackageFragmentProvider packageFragmentProvider, @g FqName fqName) {
        Intrinsics.checkNotNullParameter(packageFragmentProvider, "<this>");
        Intrinsics.checkNotNullParameter(fqName, "fqName");
        return packageFragmentProvider instanceof PackageFragmentProviderOptimized ? ((PackageFragmentProviderOptimized) packageFragmentProvider).isEmpty(fqName) : packageFragments(packageFragmentProvider, fqName).isEmpty();
    }

    @g
    public static final List<PackageFragmentDescriptor> packageFragments(@g PackageFragmentProvider packageFragmentProvider, @g FqName fqName) {
        Intrinsics.checkNotNullParameter(packageFragmentProvider, "<this>");
        Intrinsics.checkNotNullParameter(fqName, "fqName");
        ArrayList arrayList = new ArrayList();
        collectPackageFragmentsOptimizedIfPossible(packageFragmentProvider, fqName, arrayList);
        return arrayList;
    }
}

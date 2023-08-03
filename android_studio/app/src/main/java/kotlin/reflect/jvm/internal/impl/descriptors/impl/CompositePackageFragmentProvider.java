package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import kotlin.Deprecated;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProvider;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProviderKt;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProviderOptimized;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import m8.g;

/* compiled from: CompositePackageFragmentProvider.kt */
/* loaded from: classes4.dex */
public final class CompositePackageFragmentProvider implements PackageFragmentProviderOptimized {
    @g
    private final String debugName;
    @g
    private final List<PackageFragmentProvider> providers;

    /* JADX WARN: Multi-variable type inference failed */
    public CompositePackageFragmentProvider(@g List<? extends PackageFragmentProvider> providers, @g String debugName) {
        Set set;
        Intrinsics.checkNotNullParameter(providers, "providers");
        Intrinsics.checkNotNullParameter(debugName, "debugName");
        this.providers = providers;
        this.debugName = debugName;
        providers.size();
        set = CollectionsKt___CollectionsKt.toSet(providers);
        set.size();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProviderOptimized
    public void collectPackageFragments(@g FqName fqName, @g Collection<PackageFragmentDescriptor> packageFragments) {
        Intrinsics.checkNotNullParameter(fqName, "fqName");
        Intrinsics.checkNotNullParameter(packageFragments, "packageFragments");
        for (PackageFragmentProvider packageFragmentProvider : this.providers) {
            PackageFragmentProviderKt.collectPackageFragmentsOptimizedIfPossible(packageFragmentProvider, fqName, packageFragments);
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProvider
    @Deprecated(message = "for usages use #packageFragments(FqName) at final point, for impl use #collectPackageFragments(FqName, MutableCollection<PackageFragmentDescriptor>)")
    @g
    public List<PackageFragmentDescriptor> getPackageFragments(@g FqName fqName) {
        List<PackageFragmentDescriptor> list;
        Intrinsics.checkNotNullParameter(fqName, "fqName");
        ArrayList arrayList = new ArrayList();
        for (PackageFragmentProvider packageFragmentProvider : this.providers) {
            PackageFragmentProviderKt.collectPackageFragmentsOptimizedIfPossible(packageFragmentProvider, fqName, arrayList);
        }
        list = CollectionsKt___CollectionsKt.toList(arrayList);
        return list;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProvider
    @g
    public Collection<FqName> getSubPackagesOf(@g FqName fqName, @g Function1<? super Name, Boolean> nameFilter) {
        Intrinsics.checkNotNullParameter(fqName, "fqName");
        Intrinsics.checkNotNullParameter(nameFilter, "nameFilter");
        HashSet hashSet = new HashSet();
        for (PackageFragmentProvider packageFragmentProvider : this.providers) {
            hashSet.addAll(packageFragmentProvider.getSubPackagesOf(fqName, nameFilter));
        }
        return hashSet;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProviderOptimized
    public boolean isEmpty(@g FqName fqName) {
        Intrinsics.checkNotNullParameter(fqName, "fqName");
        List<PackageFragmentProvider> list = this.providers;
        if ((list instanceof Collection) && list.isEmpty()) {
            return true;
        }
        for (PackageFragmentProvider packageFragmentProvider : list) {
            if (!PackageFragmentProviderKt.isEmpty(packageFragmentProvider, fqName)) {
                return false;
            }
        }
        return true;
    }

    @g
    public String toString() {
        return this.debugName;
    }
}

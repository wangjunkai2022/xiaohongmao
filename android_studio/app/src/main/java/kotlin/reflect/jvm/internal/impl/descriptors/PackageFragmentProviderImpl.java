package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Deprecated;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt___SequencesKt;
import m8.g;

/* compiled from: PackageFragmentProviderImpl.kt */
/* loaded from: classes4.dex */
public final class PackageFragmentProviderImpl implements PackageFragmentProviderOptimized {
    @g
    private final Collection<PackageFragmentDescriptor> packageFragments;

    /* JADX WARN: Multi-variable type inference failed */
    public PackageFragmentProviderImpl(@g Collection<? extends PackageFragmentDescriptor> packageFragments) {
        Intrinsics.checkNotNullParameter(packageFragments, "packageFragments");
        this.packageFragments = packageFragments;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProviderOptimized
    public void collectPackageFragments(@g FqName fqName, @g Collection<PackageFragmentDescriptor> packageFragments) {
        Intrinsics.checkNotNullParameter(fqName, "fqName");
        Intrinsics.checkNotNullParameter(packageFragments, "packageFragments");
        for (Object obj : this.packageFragments) {
            if (Intrinsics.areEqual(((PackageFragmentDescriptor) obj).getFqName(), fqName)) {
                packageFragments.add(obj);
            }
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProvider
    @Deprecated(message = "for usages use #packageFragments(FqName) at final point, for impl use #collectPackageFragments(FqName, MutableCollection<PackageFragmentDescriptor>)")
    @g
    public List<PackageFragmentDescriptor> getPackageFragments(@g FqName fqName) {
        Intrinsics.checkNotNullParameter(fqName, "fqName");
        Collection<PackageFragmentDescriptor> collection = this.packageFragments;
        ArrayList arrayList = new ArrayList();
        for (Object obj : collection) {
            if (Intrinsics.areEqual(((PackageFragmentDescriptor) obj).getFqName(), fqName)) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProvider
    @g
    public Collection<FqName> getSubPackagesOf(@g FqName fqName, @g Function1<? super Name, Boolean> nameFilter) {
        Sequence asSequence;
        Sequence map;
        Sequence filter;
        List list;
        Intrinsics.checkNotNullParameter(fqName, "fqName");
        Intrinsics.checkNotNullParameter(nameFilter, "nameFilter");
        asSequence = CollectionsKt___CollectionsKt.asSequence(this.packageFragments);
        map = SequencesKt___SequencesKt.map(asSequence, PackageFragmentProviderImpl$getSubPackagesOf$1.INSTANCE);
        filter = SequencesKt___SequencesKt.filter(map, new PackageFragmentProviderImpl$getSubPackagesOf$2(fqName));
        list = SequencesKt___SequencesKt.toList(filter);
        return list;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProviderOptimized
    public boolean isEmpty(@g FqName fqName) {
        Intrinsics.checkNotNullParameter(fqName, "fqName");
        Collection<PackageFragmentDescriptor> collection = this.packageFragments;
        if ((collection instanceof Collection) && collection.isEmpty()) {
            return true;
        }
        for (PackageFragmentDescriptor packageFragmentDescriptor : collection) {
            if (Intrinsics.areEqual(packageFragmentDescriptor.getFqName(), fqName)) {
                return false;
            }
        }
        return true;
    }
}

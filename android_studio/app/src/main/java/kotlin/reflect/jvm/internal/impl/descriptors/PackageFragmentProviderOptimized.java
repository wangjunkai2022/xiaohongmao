package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.Collection;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import m8.g;

/* compiled from: PackageFragmentProvider.kt */
/* loaded from: classes4.dex */
public interface PackageFragmentProviderOptimized extends PackageFragmentProvider {
    void collectPackageFragments(@g FqName fqName, @g Collection<PackageFragmentDescriptor> collection);

    boolean isEmpty(@g FqName fqName);
}

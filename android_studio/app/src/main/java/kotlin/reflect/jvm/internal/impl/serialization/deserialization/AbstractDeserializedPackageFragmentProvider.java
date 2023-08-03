package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import java.util.Collection;
import java.util.List;
import java.util.Set;
import kotlin.Deprecated;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorWithSource;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProviderOptimized;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.storage.MemoizedFunctionToNullable;
import kotlin.reflect.jvm.internal.impl.storage.StorageManager;
import kotlin.reflect.jvm.internal.impl.utils.CollectionsKt;
import m8.g;
import m8.h;

/* compiled from: AbstractDeserializedPackageFragmentProvider.kt */
/* loaded from: classes4.dex */
public abstract class AbstractDeserializedPackageFragmentProvider implements PackageFragmentProviderOptimized {
    protected DeserializationComponents components;
    @g
    private final KotlinMetadataFinder finder;
    @g
    private final MemoizedFunctionToNullable<FqName, PackageFragmentDescriptor> fragments;
    @g
    private final ModuleDescriptor moduleDescriptor;
    @g
    private final StorageManager storageManager;

    public AbstractDeserializedPackageFragmentProvider(@g StorageManager storageManager, @g KotlinMetadataFinder finder, @g ModuleDescriptor moduleDescriptor) {
        Intrinsics.checkNotNullParameter(storageManager, "storageManager");
        Intrinsics.checkNotNullParameter(finder, "finder");
        Intrinsics.checkNotNullParameter(moduleDescriptor, "moduleDescriptor");
        this.storageManager = storageManager;
        this.finder = finder;
        this.moduleDescriptor = moduleDescriptor;
        this.fragments = storageManager.createMemoizedFunctionWithNullableValues(new AbstractDeserializedPackageFragmentProvider$fragments$1(this));
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProviderOptimized
    public void collectPackageFragments(@g FqName fqName, @g Collection<PackageFragmentDescriptor> packageFragments) {
        Intrinsics.checkNotNullParameter(fqName, "fqName");
        Intrinsics.checkNotNullParameter(packageFragments, "packageFragments");
        CollectionsKt.addIfNotNull(packageFragments, this.fragments.invoke(fqName));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @h
    public abstract DeserializedPackageFragment findPackage(@g FqName fqName);

    /* JADX INFO: Access modifiers changed from: protected */
    @g
    public final DeserializationComponents getComponents() {
        DeserializationComponents deserializationComponents = this.components;
        if (deserializationComponents != null) {
            return deserializationComponents;
        }
        Intrinsics.throwUninitializedPropertyAccessException("components");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @g
    public final KotlinMetadataFinder getFinder() {
        return this.finder;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @g
    public final ModuleDescriptor getModuleDescriptor() {
        return this.moduleDescriptor;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProvider
    @Deprecated(message = "for usages use #packageFragments(FqName) at final point, for impl use #collectPackageFragments(FqName, MutableCollection<PackageFragmentDescriptor>)")
    @g
    public List<PackageFragmentDescriptor> getPackageFragments(@g FqName fqName) {
        List<PackageFragmentDescriptor> listOfNotNull;
        Intrinsics.checkNotNullParameter(fqName, "fqName");
        listOfNotNull = CollectionsKt__CollectionsKt.listOfNotNull(this.fragments.invoke(fqName));
        return listOfNotNull;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @g
    public final StorageManager getStorageManager() {
        return this.storageManager;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProvider
    @g
    public Collection<FqName> getSubPackagesOf(@g FqName fqName, @g Function1<? super Name, Boolean> nameFilter) {
        Set emptySet;
        Intrinsics.checkNotNullParameter(fqName, "fqName");
        Intrinsics.checkNotNullParameter(nameFilter, "nameFilter");
        emptySet = SetsKt__SetsKt.emptySet();
        return emptySet;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProviderOptimized
    public boolean isEmpty(@g FqName fqName) {
        DeclarationDescriptorWithSource findPackage;
        Intrinsics.checkNotNullParameter(fqName, "fqName");
        if (this.fragments.isComputed(fqName)) {
            findPackage = (PackageFragmentDescriptor) this.fragments.invoke(fqName);
        } else {
            findPackage = findPackage(fqName);
        }
        return findPackage == null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void setComponents(@g DeserializationComponents deserializationComponents) {
        Intrinsics.checkNotNullParameter(deserializationComponents, "<set-?>");
        this.components = deserializationComponents;
    }
}

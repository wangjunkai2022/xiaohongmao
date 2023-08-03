package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleCapability;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageViewDescriptor;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.storage.StorageManager;
import m8.g;

/* compiled from: PackageViewDescriptorFactory.kt */
/* loaded from: classes4.dex */
public interface PackageViewDescriptorFactory {
    @g
    public static final Companion Companion = Companion.$$INSTANCE;

    /* compiled from: PackageViewDescriptorFactory.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        @g
        private static final ModuleCapability<PackageViewDescriptorFactory> CAPABILITY = new ModuleCapability<>("PackageViewDescriptorFactory");

        private Companion() {
        }

        @g
        public final ModuleCapability<PackageViewDescriptorFactory> getCAPABILITY() {
            return CAPABILITY;
        }
    }

    /* compiled from: PackageViewDescriptorFactory.kt */
    /* loaded from: classes4.dex */
    public static final class Default implements PackageViewDescriptorFactory {
        @g
        public static final Default INSTANCE = new Default();

        private Default() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.PackageViewDescriptorFactory
        @g
        public PackageViewDescriptor compute(@g ModuleDescriptorImpl module, @g FqName fqName, @g StorageManager storageManager) {
            Intrinsics.checkNotNullParameter(module, "module");
            Intrinsics.checkNotNullParameter(fqName, "fqName");
            Intrinsics.checkNotNullParameter(storageManager, "storageManager");
            return new LazyPackageViewDescriptorImpl(module, fqName, storageManager);
        }
    }

    @g
    PackageViewDescriptor compute(@g ModuleDescriptorImpl moduleDescriptorImpl, @g FqName fqName, @g StorageManager storageManager);
}

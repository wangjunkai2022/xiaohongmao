package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProvider;
import m8.g;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ModuleDescriptorImpl.kt */
/* loaded from: classes4.dex */
public final class ModuleDescriptorImpl$packageFragmentProviderForWholeModuleWithDependencies$2 extends Lambda implements Function0<CompositePackageFragmentProvider> {
    final /* synthetic */ ModuleDescriptorImpl this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ModuleDescriptorImpl$packageFragmentProviderForWholeModuleWithDependencies$2(ModuleDescriptorImpl moduleDescriptorImpl) {
        super(0);
        this.this$0 = moduleDescriptorImpl;
    }

    @Override // kotlin.jvm.functions.Function0
    @g
    public final CompositePackageFragmentProvider invoke() {
        ModuleDependencies moduleDependencies;
        String id;
        int collectionSizeOrDefault;
        PackageFragmentProvider packageFragmentProvider;
        moduleDependencies = this.this$0.dependencies;
        ModuleDescriptorImpl moduleDescriptorImpl = this.this$0;
        if (moduleDependencies != null) {
            List<ModuleDescriptorImpl> allDependencies = moduleDependencies.getAllDependencies();
            this.this$0.assertValid();
            allDependencies.contains(this.this$0);
            for (ModuleDescriptorImpl moduleDescriptorImpl2 : allDependencies) {
                moduleDescriptorImpl2.isInitialized();
            }
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(allDependencies, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            for (ModuleDescriptorImpl moduleDescriptorImpl3 : allDependencies) {
                packageFragmentProvider = moduleDescriptorImpl3.packageFragmentProviderForModuleContent;
                Intrinsics.checkNotNull(packageFragmentProvider);
                arrayList.add(packageFragmentProvider);
            }
            return new CompositePackageFragmentProvider(arrayList, "CompositeProvider@ModuleDescriptor for " + this.this$0.getName());
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Dependencies of module ");
        id = moduleDescriptorImpl.getId();
        sb.append(id);
        sb.append(" were not set before querying module content");
        throw new AssertionError(sb.toString());
    }
}

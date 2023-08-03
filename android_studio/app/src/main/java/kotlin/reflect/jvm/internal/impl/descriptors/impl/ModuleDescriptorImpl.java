package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorVisitor;
import kotlin.reflect.jvm.internal.impl.descriptors.InvalidModuleExceptionKt;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleCapability;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProvider;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageViewDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PackageViewDescriptorFactory;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.platform.TargetPlatform;
import kotlin.reflect.jvm.internal.impl.storage.MemoizedFunctionToNotNull;
import kotlin.reflect.jvm.internal.impl.storage.StorageManager;
import m8.g;
import m8.h;

/* compiled from: ModuleDescriptorImpl.kt */
/* loaded from: classes4.dex */
public final class ModuleDescriptorImpl extends DeclarationDescriptorImpl implements ModuleDescriptor {
    @g
    private final KotlinBuiltIns builtIns;
    @g
    private final Map<ModuleCapability<?>, Object> capabilities;
    @h
    private ModuleDependencies dependencies;
    private boolean isValid;
    @h
    private PackageFragmentProvider packageFragmentProviderForModuleContent;
    @g
    private final Lazy packageFragmentProviderForWholeModuleWithDependencies$delegate;
    @g
    private final PackageViewDescriptorFactory packageViewDescriptorFactory;
    @g
    private final MemoizedFunctionToNotNull<FqName, PackageViewDescriptor> packages;
    @h
    private final TargetPlatform platform;
    @h
    private final Name stableName;
    @g
    private final StorageManager storageManager;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public ModuleDescriptorImpl(@g Name moduleName, @g StorageManager storageManager, @g KotlinBuiltIns builtIns, @h TargetPlatform targetPlatform) {
        this(moduleName, storageManager, builtIns, targetPlatform, null, null, 48, null);
        Intrinsics.checkNotNullParameter(moduleName, "moduleName");
        Intrinsics.checkNotNullParameter(storageManager, "storageManager");
        Intrinsics.checkNotNullParameter(builtIns, "builtIns");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public /* synthetic */ ModuleDescriptorImpl(kotlin.reflect.jvm.internal.impl.name.Name r10, kotlin.reflect.jvm.internal.impl.storage.StorageManager r11, kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns r12, kotlin.reflect.jvm.internal.impl.platform.TargetPlatform r13, java.util.Map r14, kotlin.reflect.jvm.internal.impl.name.Name r15, int r16, kotlin.jvm.internal.DefaultConstructorMarker r17) {
        /*
            r9 = this;
            r0 = r16 & 8
            r1 = 0
            if (r0 == 0) goto L7
            r6 = r1
            goto L8
        L7:
            r6 = r13
        L8:
            r0 = r16 & 16
            if (r0 == 0) goto L12
            java.util.Map r0 = kotlin.collections.MapsKt.emptyMap()
            r7 = r0
            goto L13
        L12:
            r7 = r14
        L13:
            r0 = r16 & 32
            if (r0 == 0) goto L19
            r8 = r1
            goto L1a
        L19:
            r8 = r15
        L1a:
            r2 = r9
            r3 = r10
            r4 = r11
            r5 = r12
            r2.<init>(r3, r4, r5, r6, r7, r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleDescriptorImpl.<init>(kotlin.reflect.jvm.internal.impl.name.Name, kotlin.reflect.jvm.internal.impl.storage.StorageManager, kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns, kotlin.reflect.jvm.internal.impl.platform.TargetPlatform, java.util.Map, kotlin.reflect.jvm.internal.impl.name.Name, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String getId() {
        String name = getName().toString();
        Intrinsics.checkNotNullExpressionValue(name, "name.toString()");
        return name;
    }

    private final CompositePackageFragmentProvider getPackageFragmentProviderForWholeModuleWithDependencies() {
        return (CompositePackageFragmentProvider) this.packageFragmentProviderForWholeModuleWithDependencies$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isInitialized() {
        return this.packageFragmentProviderForModuleContent != null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    @h
    public <R, D> R accept(@g DeclarationDescriptorVisitor<R, D> declarationDescriptorVisitor, D d4) {
        return (R) ModuleDescriptor.DefaultImpls.accept(this, declarationDescriptorVisitor, d4);
    }

    public void assertValid() {
        if (isValid()) {
            return;
        }
        InvalidModuleExceptionKt.moduleInvalidated(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor
    @g
    public KotlinBuiltIns getBuiltIns() {
        return this.builtIns;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor
    @h
    public <T> T getCapability(@g ModuleCapability<T> capability) {
        Intrinsics.checkNotNullParameter(capability, "capability");
        T t9 = (T) this.capabilities.get(capability);
        if (t9 == null) {
            return null;
        }
        return t9;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    @h
    public DeclarationDescriptor getContainingDeclaration() {
        return ModuleDescriptor.DefaultImpls.getContainingDeclaration(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor
    @g
    public List<ModuleDescriptor> getExpectedByModules() {
        ModuleDependencies moduleDependencies = this.dependencies;
        if (moduleDependencies != null) {
            return moduleDependencies.getDirectExpectedByDependencies();
        }
        throw new AssertionError("Dependencies of module " + getId() + " were not set");
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor
    @g
    public PackageViewDescriptor getPackage(@g FqName fqName) {
        Intrinsics.checkNotNullParameter(fqName, "fqName");
        assertValid();
        return this.packages.invoke(fqName);
    }

    @g
    public final PackageFragmentProvider getPackageFragmentProvider() {
        assertValid();
        return getPackageFragmentProviderForWholeModuleWithDependencies();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor
    @g
    public Collection<FqName> getSubPackagesOf(@g FqName fqName, @g Function1<? super Name, Boolean> nameFilter) {
        Intrinsics.checkNotNullParameter(fqName, "fqName");
        Intrinsics.checkNotNullParameter(nameFilter, "nameFilter");
        assertValid();
        return getPackageFragmentProvider().getSubPackagesOf(fqName, nameFilter);
    }

    public final void initialize(@g PackageFragmentProvider providerForModuleContent) {
        Intrinsics.checkNotNullParameter(providerForModuleContent, "providerForModuleContent");
        isInitialized();
        this.packageFragmentProviderForModuleContent = providerForModuleContent;
    }

    public boolean isValid() {
        return this.isValid;
    }

    public final void setDependencies(@g ModuleDependencies dependencies) {
        Intrinsics.checkNotNullParameter(dependencies, "dependencies");
        this.dependencies = dependencies;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor
    public boolean shouldSeeInternalsOf(@g ModuleDescriptor targetModule) {
        boolean contains;
        Intrinsics.checkNotNullParameter(targetModule, "targetModule");
        if (Intrinsics.areEqual(this, targetModule)) {
            return true;
        }
        ModuleDependencies moduleDependencies = this.dependencies;
        Intrinsics.checkNotNull(moduleDependencies);
        contains = CollectionsKt___CollectionsKt.contains(moduleDependencies.getModulesWhoseInternalsAreVisible(), targetModule);
        return contains || getExpectedByModules().contains(targetModule) || targetModule.getExpectedByModules().contains(this);
    }

    public final void setDependencies(@g ModuleDescriptorImpl... descriptors) {
        List<ModuleDescriptorImpl> list;
        Intrinsics.checkNotNullParameter(descriptors, "descriptors");
        list = ArraysKt___ArraysKt.toList(descriptors);
        setDependencies(list);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public ModuleDescriptorImpl(@g Name moduleName, @g StorageManager storageManager, @g KotlinBuiltIns builtIns, @h TargetPlatform targetPlatform, @g Map<ModuleCapability<?>, ? extends Object> capabilities, @h Name name) {
        super(Annotations.Companion.getEMPTY(), moduleName);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(moduleName, "moduleName");
        Intrinsics.checkNotNullParameter(storageManager, "storageManager");
        Intrinsics.checkNotNullParameter(builtIns, "builtIns");
        Intrinsics.checkNotNullParameter(capabilities, "capabilities");
        this.storageManager = storageManager;
        this.builtIns = builtIns;
        this.platform = targetPlatform;
        this.stableName = name;
        if (moduleName.isSpecial()) {
            this.capabilities = capabilities;
            PackageViewDescriptorFactory packageViewDescriptorFactory = (PackageViewDescriptorFactory) getCapability(PackageViewDescriptorFactory.Companion.getCAPABILITY());
            this.packageViewDescriptorFactory = packageViewDescriptorFactory == null ? PackageViewDescriptorFactory.Default.INSTANCE : packageViewDescriptorFactory;
            this.isValid = true;
            this.packages = storageManager.createMemoizedFunction(new ModuleDescriptorImpl$packages$1(this));
            lazy = LazyKt__LazyJVMKt.lazy(new ModuleDescriptorImpl$packageFragmentProviderForWholeModuleWithDependencies$2(this));
            this.packageFragmentProviderForWholeModuleWithDependencies$delegate = lazy;
            return;
        }
        throw new IllegalArgumentException("Module name must be special: " + moduleName);
    }

    public final void setDependencies(@g List<ModuleDescriptorImpl> descriptors) {
        Set<ModuleDescriptorImpl> emptySet;
        Intrinsics.checkNotNullParameter(descriptors, "descriptors");
        emptySet = SetsKt__SetsKt.emptySet();
        setDependencies(descriptors, emptySet);
    }

    public final void setDependencies(@g List<ModuleDescriptorImpl> descriptors, @g Set<ModuleDescriptorImpl> friends) {
        List emptyList;
        Set emptySet;
        Intrinsics.checkNotNullParameter(descriptors, "descriptors");
        Intrinsics.checkNotNullParameter(friends, "friends");
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        emptySet = SetsKt__SetsKt.emptySet();
        setDependencies(new ModuleDependenciesImpl(descriptors, friends, emptyList, emptySet));
    }
}

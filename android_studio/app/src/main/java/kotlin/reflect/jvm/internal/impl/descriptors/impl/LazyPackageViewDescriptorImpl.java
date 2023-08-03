package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorVisitor;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageViewDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.LazyScopeAdapter;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.storage.NotNullLazyValue;
import kotlin.reflect.jvm.internal.impl.storage.StorageKt;
import kotlin.reflect.jvm.internal.impl.storage.StorageManager;
import m8.g;
import m8.h;

/* compiled from: LazyPackageViewDescriptorImpl.kt */
/* loaded from: classes4.dex */
public class LazyPackageViewDescriptorImpl extends DeclarationDescriptorImpl implements PackageViewDescriptor {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(LazyPackageViewDescriptorImpl.class), "fragments", "getFragments()Ljava/util/List;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(LazyPackageViewDescriptorImpl.class), "empty", "getEmpty()Z"))};
    @g
    private final NotNullLazyValue empty$delegate;
    @g
    private final FqName fqName;
    @g
    private final NotNullLazyValue fragments$delegate;
    @g
    private final MemberScope memberScope;
    @g
    private final ModuleDescriptorImpl module;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LazyPackageViewDescriptorImpl(@g ModuleDescriptorImpl module, @g FqName fqName, @g StorageManager storageManager) {
        super(Annotations.Companion.getEMPTY(), fqName.shortNameOrSpecial());
        Intrinsics.checkNotNullParameter(module, "module");
        Intrinsics.checkNotNullParameter(fqName, "fqName");
        Intrinsics.checkNotNullParameter(storageManager, "storageManager");
        this.module = module;
        this.fqName = fqName;
        this.fragments$delegate = storageManager.createLazyValue(new LazyPackageViewDescriptorImpl$fragments$2(this));
        this.empty$delegate = storageManager.createLazyValue(new LazyPackageViewDescriptorImpl$empty$2(this));
        this.memberScope = new LazyScopeAdapter(storageManager, new LazyPackageViewDescriptorImpl$memberScope$1(this));
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    public <R, D> R accept(@g DeclarationDescriptorVisitor<R, D> visitor, D d4) {
        Intrinsics.checkNotNullParameter(visitor, "visitor");
        return visitor.visitPackageViewDescriptor(this, d4);
    }

    public boolean equals(@h Object obj) {
        PackageViewDescriptor packageViewDescriptor = obj instanceof PackageViewDescriptor ? (PackageViewDescriptor) obj : null;
        return packageViewDescriptor != null && Intrinsics.areEqual(getFqName(), packageViewDescriptor.getFqName()) && Intrinsics.areEqual(getModule(), packageViewDescriptor.getModule());
    }

    protected final boolean getEmpty() {
        return ((Boolean) StorageKt.getValue(this.empty$delegate, this, $$delegatedProperties[1])).booleanValue();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.PackageViewDescriptor
    @g
    public FqName getFqName() {
        return this.fqName;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.PackageViewDescriptor
    @g
    public List<PackageFragmentDescriptor> getFragments() {
        return (List) StorageKt.getValue(this.fragments$delegate, this, $$delegatedProperties[0]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.PackageViewDescriptor
    @g
    public MemberScope getMemberScope() {
        return this.memberScope;
    }

    public int hashCode() {
        return (getModule().hashCode() * 31) + getFqName().hashCode();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.PackageViewDescriptor
    public boolean isEmpty() {
        return getEmpty();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    @h
    public PackageViewDescriptor getContainingDeclaration() {
        if (getFqName().isRoot()) {
            return null;
        }
        ModuleDescriptorImpl module = getModule();
        FqName parent = getFqName().parent();
        Intrinsics.checkNotNullExpressionValue(parent, "fqName.parent()");
        return module.getPackage(parent);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.PackageViewDescriptor
    @g
    public ModuleDescriptorImpl getModule() {
        return this.module;
    }
}

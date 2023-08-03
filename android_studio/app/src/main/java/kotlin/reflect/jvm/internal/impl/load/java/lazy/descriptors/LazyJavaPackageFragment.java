package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PackageFragmentDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.ContextKt;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaAnnotationsKt;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaResolverContext;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaClass;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaPackage;
import kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass;
import kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryPackageSourceElement;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.storage.NotNullLazyValue;
import kotlin.reflect.jvm.internal.impl.storage.StorageKt;
import kotlin.reflect.jvm.internal.impl.storage.StorageManager;
import m8.g;
import m8.h;

/* compiled from: LazyJavaPackageFragment.kt */
/* loaded from: classes4.dex */
public final class LazyJavaPackageFragment extends PackageFragmentDescriptorImpl {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(LazyJavaPackageFragment.class), "binaryClasses", "getBinaryClasses$descriptors_jvm()Ljava/util/Map;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(LazyJavaPackageFragment.class), "partToFacade", "getPartToFacade()Ljava/util/HashMap;"))};
    @g
    private final Annotations annotations;
    @g
    private final NotNullLazyValue binaryClasses$delegate;
    @g

    /* renamed from: c  reason: collision with root package name */
    private final LazyJavaResolverContext f84760c;
    @g
    private final JavaPackage jPackage;
    @g
    private final NotNullLazyValue partToFacade$delegate;
    @g
    private final JvmPackageScope scope;
    @g
    private final NotNullLazyValue<List<FqName>> subPackages;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LazyJavaPackageFragment(@g LazyJavaResolverContext outerContext, @g JavaPackage jPackage) {
        super(outerContext.getModule(), jPackage.getFqName());
        List emptyList;
        Intrinsics.checkNotNullParameter(outerContext, "outerContext");
        Intrinsics.checkNotNullParameter(jPackage, "jPackage");
        this.jPackage = jPackage;
        LazyJavaResolverContext childForClassOrPackage$default = ContextKt.childForClassOrPackage$default(outerContext, this, null, 0, 6, null);
        this.f84760c = childForClassOrPackage$default;
        this.binaryClasses$delegate = childForClassOrPackage$default.getStorageManager().createLazyValue(new LazyJavaPackageFragment$binaryClasses$2(this));
        this.scope = new JvmPackageScope(childForClassOrPackage$default, jPackage, this);
        StorageManager storageManager = childForClassOrPackage$default.getStorageManager();
        LazyJavaPackageFragment$subPackages$1 lazyJavaPackageFragment$subPackages$1 = new LazyJavaPackageFragment$subPackages$1(this);
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.subPackages = storageManager.createRecursionTolerantLazyValue(lazyJavaPackageFragment$subPackages$1, emptyList);
        this.annotations = childForClassOrPackage$default.getComponents().getJavaTypeEnhancementState().getDisabledDefaultAnnotations() ? Annotations.Companion.getEMPTY() : LazyJavaAnnotationsKt.resolveAnnotations(childForClassOrPackage$default, jPackage);
        this.partToFacade$delegate = childForClassOrPackage$default.getStorageManager().createLazyValue(new LazyJavaPackageFragment$partToFacade$2(this));
    }

    @h
    public final ClassDescriptor findClassifierByJavaClass$descriptors_jvm(@g JavaClass jClass) {
        Intrinsics.checkNotNullParameter(jClass, "jClass");
        return this.scope.getJavaScope$descriptors_jvm().findClassifierByJavaClass$descriptors_jvm(jClass);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotatedImpl, kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotated
    @g
    public Annotations getAnnotations() {
        return this.annotations;
    }

    @g
    public final Map<String, KotlinJvmBinaryClass> getBinaryClasses$descriptors_jvm() {
        return (Map) StorageKt.getValue(this.binaryClasses$delegate, this, $$delegatedProperties[0]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.PackageFragmentDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorNonRootImpl, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorWithSource
    @g
    public SourceElement getSource() {
        return new KotlinJvmBinaryPackageSourceElement(this);
    }

    @g
    public final List<FqName> getSubPackageFqNames$descriptors_jvm() {
        return this.subPackages.invoke();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.PackageFragmentDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorImpl
    @g
    public String toString() {
        return "Lazy Java package fragment: " + getFqName() + " of module " + this.f84760c.getComponents().getModule();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentDescriptor
    @g
    public JvmPackageScope getMemberScope() {
        return this.scope;
    }
}

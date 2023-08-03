package kotlin.reflect.jvm.internal.impl.builtins.jvm;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Set;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.SetsKt__SetsJVMKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.builtins.BuiltInsPackageFragment;
import kotlin.reflect.jvm.internal.impl.builtins.StandardNames;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.deserialization.ClassDescriptorFactory;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ClassDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.FqNameUnsafe;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.storage.NotNullLazyValue;
import kotlin.reflect.jvm.internal.impl.storage.StorageKt;
import kotlin.reflect.jvm.internal.impl.storage.StorageManager;
import m8.g;
import m8.h;

/* compiled from: JvmBuiltInClassDescriptorFactory.kt */
/* loaded from: classes4.dex */
public final class JvmBuiltInClassDescriptorFactory implements ClassDescriptorFactory {
    @g
    private static final ClassId CLONEABLE_CLASS_ID;
    @g
    private static final Name CLONEABLE_NAME;
    @g
    private final NotNullLazyValue cloneable$delegate;
    @g
    private final Function1<ModuleDescriptor, DeclarationDescriptor> computeContainingDeclaration;
    @g
    private final ModuleDescriptor moduleDescriptor;
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(JvmBuiltInClassDescriptorFactory.class), "cloneable", "getCloneable()Lorg/jetbrains/kotlin/descriptors/impl/ClassDescriptorImpl;"))};
    @g
    public static final Companion Companion = new Companion(null);
    @g
    private static final FqName KOTLIN_FQ_NAME = StandardNames.BUILT_INS_PACKAGE_FQ_NAME;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: JvmBuiltInClassDescriptorFactory.kt */
    /* renamed from: kotlin.reflect.jvm.internal.impl.builtins.jvm.JvmBuiltInClassDescriptorFactory$1  reason: invalid class name */
    /* loaded from: classes4.dex */
    public static final class AnonymousClass1 extends Lambda implements Function1<ModuleDescriptor, BuiltInsPackageFragment> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        AnonymousClass1() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        @g
        public final BuiltInsPackageFragment invoke(@g ModuleDescriptor module) {
            Object first;
            Intrinsics.checkNotNullParameter(module, "module");
            List<PackageFragmentDescriptor> fragments = module.getPackage(JvmBuiltInClassDescriptorFactory.KOTLIN_FQ_NAME).getFragments();
            ArrayList arrayList = new ArrayList();
            for (Object obj : fragments) {
                if (obj instanceof BuiltInsPackageFragment) {
                    arrayList.add(obj);
                }
            }
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) arrayList);
            return (BuiltInsPackageFragment) first;
        }
    }

    /* compiled from: JvmBuiltInClassDescriptorFactory.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @g
        public final ClassId getCLONEABLE_CLASS_ID() {
            return JvmBuiltInClassDescriptorFactory.CLONEABLE_CLASS_ID;
        }
    }

    static {
        FqNameUnsafe fqNameUnsafe = StandardNames.FqNames.cloneable;
        Name shortName = fqNameUnsafe.shortName();
        Intrinsics.checkNotNullExpressionValue(shortName, "cloneable.shortName()");
        CLONEABLE_NAME = shortName;
        ClassId classId = ClassId.topLevel(fqNameUnsafe.toSafe());
        Intrinsics.checkNotNullExpressionValue(classId, "topLevel(StandardNames.FqNames.cloneable.toSafe())");
        CLONEABLE_CLASS_ID = classId;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public JvmBuiltInClassDescriptorFactory(@g StorageManager storageManager, @g ModuleDescriptor moduleDescriptor, @g Function1<? super ModuleDescriptor, ? extends DeclarationDescriptor> computeContainingDeclaration) {
        Intrinsics.checkNotNullParameter(storageManager, "storageManager");
        Intrinsics.checkNotNullParameter(moduleDescriptor, "moduleDescriptor");
        Intrinsics.checkNotNullParameter(computeContainingDeclaration, "computeContainingDeclaration");
        this.moduleDescriptor = moduleDescriptor;
        this.computeContainingDeclaration = computeContainingDeclaration;
        this.cloneable$delegate = storageManager.createLazyValue(new JvmBuiltInClassDescriptorFactory$cloneable$2(this, storageManager));
    }

    private final ClassDescriptorImpl getCloneable() {
        return (ClassDescriptorImpl) StorageKt.getValue(this.cloneable$delegate, this, $$delegatedProperties[0]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.deserialization.ClassDescriptorFactory
    @h
    public ClassDescriptor createClass(@g ClassId classId) {
        Intrinsics.checkNotNullParameter(classId, "classId");
        if (Intrinsics.areEqual(classId, CLONEABLE_CLASS_ID)) {
            return getCloneable();
        }
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.deserialization.ClassDescriptorFactory
    @g
    public Collection<ClassDescriptor> getAllContributedClassesIfPossible(@g FqName packageFqName) {
        Set emptySet;
        Set of;
        Intrinsics.checkNotNullParameter(packageFqName, "packageFqName");
        if (Intrinsics.areEqual(packageFqName, KOTLIN_FQ_NAME)) {
            of = SetsKt__SetsJVMKt.setOf(getCloneable());
            return of;
        }
        emptySet = SetsKt__SetsKt.emptySet();
        return emptySet;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.deserialization.ClassDescriptorFactory
    public boolean shouldCreateClass(@g FqName packageFqName, @g Name name) {
        Intrinsics.checkNotNullParameter(packageFqName, "packageFqName");
        Intrinsics.checkNotNullParameter(name, "name");
        return Intrinsics.areEqual(name, CLONEABLE_NAME) && Intrinsics.areEqual(packageFqName, KOTLIN_FQ_NAME);
    }

    public /* synthetic */ JvmBuiltInClassDescriptorFactory(StorageManager storageManager, ModuleDescriptor moduleDescriptor, Function1 function1, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(storageManager, moduleDescriptor, (i4 & 4) != 0 ? AnonymousClass1.INSTANCE : function1);
    }
}

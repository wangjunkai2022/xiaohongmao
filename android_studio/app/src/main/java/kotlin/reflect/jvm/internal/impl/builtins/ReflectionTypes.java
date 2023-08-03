package kotlin.reflect.jvm.internal.impl.builtins;

import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.builtins.StandardNames;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.FindClassInModuleKt;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.NotFoundClasses;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.StarProjectionImpl;
import kotlin.reflect.jvm.internal.impl.types.TypeAttributes;
import kotlin.reflect.jvm.internal.impl.util.capitalizeDecapitalize.CapitalizeDecapitalizeKt;
import m8.g;
import m8.h;

/* compiled from: ReflectionTypes.kt */
/* loaded from: classes4.dex */
public final class ReflectionTypes {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(ReflectionTypes.class), "kClass", "getKClass()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(ReflectionTypes.class), "kProperty", "getKProperty()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(ReflectionTypes.class), "kProperty0", "getKProperty0()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(ReflectionTypes.class), "kProperty1", "getKProperty1()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(ReflectionTypes.class), "kProperty2", "getKProperty2()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(ReflectionTypes.class), "kMutableProperty0", "getKMutableProperty0()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(ReflectionTypes.class), "kMutableProperty1", "getKMutableProperty1()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(ReflectionTypes.class), "kMutableProperty2", "getKMutableProperty2()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;"))};
    @g
    public static final Companion Companion = new Companion(null);
    @g
    private final ClassLookup kClass$delegate;
    @g
    private final ClassLookup kMutableProperty0$delegate;
    @g
    private final ClassLookup kMutableProperty1$delegate;
    @g
    private final ClassLookup kMutableProperty2$delegate;
    @g
    private final ClassLookup kProperty$delegate;
    @g
    private final ClassLookup kProperty0$delegate;
    @g
    private final ClassLookup kProperty1$delegate;
    @g
    private final ClassLookup kProperty2$delegate;
    @g
    private final Lazy kotlinReflectScope$delegate;
    @g
    private final NotFoundClasses notFoundClasses;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ReflectionTypes.kt */
    /* loaded from: classes4.dex */
    public static final class ClassLookup {
        private final int numberOfTypeParameters;

        public ClassLookup(int i4) {
            this.numberOfTypeParameters = i4;
        }

        @g
        public final ClassDescriptor getValue(@g ReflectionTypes types, @g KProperty<?> property) {
            Intrinsics.checkNotNullParameter(types, "types");
            Intrinsics.checkNotNullParameter(property, "property");
            return types.find(CapitalizeDecapitalizeKt.capitalizeAsciiOnly(property.getName()), this.numberOfTypeParameters);
        }
    }

    /* compiled from: ReflectionTypes.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @h
        public final KotlinType createKPropertyStarType(@g ModuleDescriptor module) {
            Object single;
            List listOf;
            Intrinsics.checkNotNullParameter(module, "module");
            ClassDescriptor findClassAcrossModuleDependencies = FindClassInModuleKt.findClassAcrossModuleDependencies(module, StandardNames.FqNames.kProperty);
            if (findClassAcrossModuleDependencies == null) {
                return null;
            }
            TypeAttributes empty = TypeAttributes.Companion.getEmpty();
            List<TypeParameterDescriptor> parameters = findClassAcrossModuleDependencies.getTypeConstructor().getParameters();
            Intrinsics.checkNotNullExpressionValue(parameters, "kPropertyClass.typeConstructor.parameters");
            single = CollectionsKt___CollectionsKt.single((List<? extends Object>) parameters);
            Intrinsics.checkNotNullExpressionValue(single, "kPropertyClass.typeConstructor.parameters.single()");
            listOf = CollectionsKt__CollectionsJVMKt.listOf(new StarProjectionImpl((TypeParameterDescriptor) single));
            return KotlinTypeFactory.simpleNotNullType(empty, findClassAcrossModuleDependencies, listOf);
        }
    }

    public ReflectionTypes(@g ModuleDescriptor module, @g NotFoundClasses notFoundClasses) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(module, "module");
        Intrinsics.checkNotNullParameter(notFoundClasses, "notFoundClasses");
        this.notFoundClasses = notFoundClasses;
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.PUBLICATION, (Function0) new ReflectionTypes$kotlinReflectScope$2(module));
        this.kotlinReflectScope$delegate = lazy;
        this.kClass$delegate = new ClassLookup(1);
        this.kProperty$delegate = new ClassLookup(1);
        this.kProperty0$delegate = new ClassLookup(1);
        this.kProperty1$delegate = new ClassLookup(2);
        this.kProperty2$delegate = new ClassLookup(3);
        this.kMutableProperty0$delegate = new ClassLookup(1);
        this.kMutableProperty1$delegate = new ClassLookup(2);
        this.kMutableProperty2$delegate = new ClassLookup(3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ClassDescriptor find(String str, int i4) {
        List<Integer> listOf;
        Name identifier = Name.identifier(str);
        Intrinsics.checkNotNullExpressionValue(identifier, "identifier(className)");
        ClassifierDescriptor contributedClassifier = getKotlinReflectScope().getContributedClassifier(identifier, NoLookupLocation.FROM_REFLECTION);
        ClassDescriptor classDescriptor = contributedClassifier instanceof ClassDescriptor ? (ClassDescriptor) contributedClassifier : null;
        if (classDescriptor == null) {
            NotFoundClasses notFoundClasses = this.notFoundClasses;
            ClassId classId = new ClassId(StandardNames.KOTLIN_REFLECT_FQ_NAME, identifier);
            listOf = CollectionsKt__CollectionsJVMKt.listOf(Integer.valueOf(i4));
            return notFoundClasses.getClass(classId, listOf);
        }
        return classDescriptor;
    }

    private final MemberScope getKotlinReflectScope() {
        return (MemberScope) this.kotlinReflectScope$delegate.getValue();
    }

    @g
    public final ClassDescriptor getKClass() {
        return this.kClass$delegate.getValue(this, $$delegatedProperties[0]);
    }
}

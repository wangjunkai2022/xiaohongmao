package kotlin.reflect.jvm.internal.impl.load.kotlin;

import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.ReflectionTypes;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.NotFoundClasses;
import kotlin.reflect.jvm.internal.impl.descriptors.SupertypeLoopChecker;
import kotlin.reflect.jvm.internal.impl.incremental.components.LookupTracker;
import kotlin.reflect.jvm.internal.impl.load.java.AnnotationTypeQualifierResolver;
import kotlin.reflect.jvm.internal.impl.load.java.JavaClassFinder;
import kotlin.reflect.jvm.internal.impl.load.java.JavaClassesTracker;
import kotlin.reflect.jvm.internal.impl.load.java.JavaModuleAnnotationsProvider;
import kotlin.reflect.jvm.internal.impl.load.java.JavaTypeEnhancementState;
import kotlin.reflect.jvm.internal.impl.load.java.components.JavaPropertyInitializerEvaluator;
import kotlin.reflect.jvm.internal.impl.load.java.components.JavaResolverCache;
import kotlin.reflect.jvm.internal.impl.load.java.components.SignaturePropagator;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.JavaResolverComponents;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.JavaResolverSettings;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaPackageFragmentProvider;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.ModuleClassResolver;
import kotlin.reflect.jvm.internal.impl.load.java.sources.JavaSourceElementFactory;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotation;
import kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.JavaTypeEnhancement;
import kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.SignatureEnhancement;
import kotlin.reflect.jvm.internal.impl.load.kotlin.PackagePartProvider;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.resolve.sam.SamConversionResolverImpl;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.ContractDeserializer;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializationConfiguration;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.ErrorReporter;
import kotlin.reflect.jvm.internal.impl.storage.StorageManager;
import kotlin.reflect.jvm.internal.impl.types.DefaultTypeAttributeTranslator;
import kotlin.reflect.jvm.internal.impl.types.checker.NewKotlinTypeChecker;
import kotlin.reflect.jvm.internal.impl.types.checker.NewKotlinTypeCheckerImpl;
import kotlin.reflect.jvm.internal.impl.types.extensions.TypeAttributeTranslators;
import m8.g;
import m8.h;

/* compiled from: DeserializationComponentsForJava.kt */
/* loaded from: classes4.dex */
public final class DeserializationComponentsForJavaKt {
    @g
    public static final DeserializationComponentsForJava makeDeserializationComponentsForJava(@g ModuleDescriptor module, @g StorageManager storageManager, @g NotFoundClasses notFoundClasses, @g LazyJavaPackageFragmentProvider lazyJavaPackageFragmentProvider, @g KotlinClassFinder reflectKotlinClassFinder, @g DeserializedDescriptorResolver deserializedDescriptorResolver, @g ErrorReporter errorReporter) {
        List listOf;
        Intrinsics.checkNotNullParameter(module, "module");
        Intrinsics.checkNotNullParameter(storageManager, "storageManager");
        Intrinsics.checkNotNullParameter(notFoundClasses, "notFoundClasses");
        Intrinsics.checkNotNullParameter(lazyJavaPackageFragmentProvider, "lazyJavaPackageFragmentProvider");
        Intrinsics.checkNotNullParameter(reflectKotlinClassFinder, "reflectKotlinClassFinder");
        Intrinsics.checkNotNullParameter(deserializedDescriptorResolver, "deserializedDescriptorResolver");
        Intrinsics.checkNotNullParameter(errorReporter, "errorReporter");
        JavaClassDataFinder javaClassDataFinder = new JavaClassDataFinder(reflectKotlinClassFinder, deserializedDescriptorResolver);
        BinaryClassAnnotationAndConstantLoaderImpl binaryClassAnnotationAndConstantLoaderImpl = new BinaryClassAnnotationAndConstantLoaderImpl(module, notFoundClasses, storageManager, reflectKotlinClassFinder);
        DeserializationConfiguration.Default r32 = DeserializationConfiguration.Default.INSTANCE;
        LookupTracker.DO_NOTHING do_nothing = LookupTracker.DO_NOTHING.INSTANCE;
        ContractDeserializer contractDeserializer = ContractDeserializer.Companion.getDEFAULT();
        NewKotlinTypeCheckerImpl newKotlinTypeCheckerImpl = NewKotlinTypeChecker.Companion.getDefault();
        listOf = CollectionsKt__CollectionsJVMKt.listOf(DefaultTypeAttributeTranslator.INSTANCE);
        return new DeserializationComponentsForJava(storageManager, module, r32, javaClassDataFinder, binaryClassAnnotationAndConstantLoaderImpl, lazyJavaPackageFragmentProvider, notFoundClasses, errorReporter, do_nothing, contractDeserializer, newKotlinTypeCheckerImpl, new TypeAttributeTranslators(listOf));
    }

    @g
    public static final LazyJavaPackageFragmentProvider makeLazyJavaPackageFragmentProvider(@g JavaClassFinder javaClassFinder, @g ModuleDescriptor module, @g StorageManager storageManager, @g NotFoundClasses notFoundClasses, @g KotlinClassFinder reflectKotlinClassFinder, @g DeserializedDescriptorResolver deserializedDescriptorResolver, @g ErrorReporter errorReporter, @g JavaSourceElementFactory javaSourceElementFactory, @g ModuleClassResolver singleModuleClassResolver, @g PackagePartProvider packagePartProvider) {
        List emptyList;
        Intrinsics.checkNotNullParameter(javaClassFinder, "javaClassFinder");
        Intrinsics.checkNotNullParameter(module, "module");
        Intrinsics.checkNotNullParameter(storageManager, "storageManager");
        Intrinsics.checkNotNullParameter(notFoundClasses, "notFoundClasses");
        Intrinsics.checkNotNullParameter(reflectKotlinClassFinder, "reflectKotlinClassFinder");
        Intrinsics.checkNotNullParameter(deserializedDescriptorResolver, "deserializedDescriptorResolver");
        Intrinsics.checkNotNullParameter(errorReporter, "errorReporter");
        Intrinsics.checkNotNullParameter(javaSourceElementFactory, "javaSourceElementFactory");
        Intrinsics.checkNotNullParameter(singleModuleClassResolver, "singleModuleClassResolver");
        Intrinsics.checkNotNullParameter(packagePartProvider, "packagePartProvider");
        SignaturePropagator DO_NOTHING = SignaturePropagator.DO_NOTHING;
        Intrinsics.checkNotNullExpressionValue(DO_NOTHING, "DO_NOTHING");
        JavaResolverCache EMPTY = JavaResolverCache.EMPTY;
        Intrinsics.checkNotNullExpressionValue(EMPTY, "EMPTY");
        JavaPropertyInitializerEvaluator.DoNothing doNothing = JavaPropertyInitializerEvaluator.DoNothing.INSTANCE;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        SamConversionResolverImpl samConversionResolverImpl = new SamConversionResolverImpl(storageManager, emptyList);
        SupertypeLoopChecker.EMPTY empty = SupertypeLoopChecker.EMPTY.INSTANCE;
        LookupTracker.DO_NOTHING do_nothing = LookupTracker.DO_NOTHING.INSTANCE;
        ReflectionTypes reflectionTypes = new ReflectionTypes(module, notFoundClasses);
        JavaTypeEnhancementState.Companion companion = JavaTypeEnhancementState.Companion;
        AnnotationTypeQualifierResolver annotationTypeQualifierResolver = new AnnotationTypeQualifierResolver(companion.getDEFAULT());
        JavaResolverSettings.Default r32 = JavaResolverSettings.Default.INSTANCE;
        return new LazyJavaPackageFragmentProvider(new JavaResolverComponents(storageManager, javaClassFinder, reflectKotlinClassFinder, deserializedDescriptorResolver, DO_NOTHING, errorReporter, EMPTY, doNothing, samConversionResolverImpl, javaSourceElementFactory, singleModuleClassResolver, packagePartProvider, empty, do_nothing, module, reflectionTypes, annotationTypeQualifierResolver, new SignatureEnhancement(new JavaTypeEnhancement(r32)), JavaClassesTracker.Default.INSTANCE, r32, NewKotlinTypeChecker.Companion.getDefault(), companion.getDEFAULT(), new JavaModuleAnnotationsProvider() { // from class: kotlin.reflect.jvm.internal.impl.load.kotlin.DeserializationComponentsForJavaKt$makeLazyJavaPackageFragmentProvider$javaResolverComponents$1
            @Override // kotlin.reflect.jvm.internal.impl.load.java.JavaModuleAnnotationsProvider
            @h
            public List<JavaAnnotation> getAnnotationsForModuleOwnerOfClass(@g ClassId classId) {
                Intrinsics.checkNotNullParameter(classId, "classId");
                return null;
            }
        }, null, 8388608, null));
    }

    public static /* synthetic */ LazyJavaPackageFragmentProvider makeLazyJavaPackageFragmentProvider$default(JavaClassFinder javaClassFinder, ModuleDescriptor moduleDescriptor, StorageManager storageManager, NotFoundClasses notFoundClasses, KotlinClassFinder kotlinClassFinder, DeserializedDescriptorResolver deserializedDescriptorResolver, ErrorReporter errorReporter, JavaSourceElementFactory javaSourceElementFactory, ModuleClassResolver moduleClassResolver, PackagePartProvider packagePartProvider, int i4, Object obj) {
        return makeLazyJavaPackageFragmentProvider(javaClassFinder, moduleDescriptor, storageManager, notFoundClasses, kotlinClassFinder, deserializedDescriptorResolver, errorReporter, javaSourceElementFactory, moduleClassResolver, (i4 & 512) != 0 ? PackagePartProvider.Empty.INSTANCE : packagePartProvider);
    }
}

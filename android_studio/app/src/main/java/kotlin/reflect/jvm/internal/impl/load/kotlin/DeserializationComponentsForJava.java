package kotlin.reflect.jvm.internal.impl.load.kotlin;

import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.builtins.jvm.JvmBuiltIns;
import kotlin.reflect.jvm.internal.impl.builtins.jvm.JvmBuiltInsCustomizer;
import kotlin.reflect.jvm.internal.impl.builtins.jvm.JvmBuiltInsPackageFragmentProvider;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.NotFoundClasses;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProviderOptimized;
import kotlin.reflect.jvm.internal.impl.descriptors.deserialization.AdditionalClassPartsProvider;
import kotlin.reflect.jvm.internal.impl.descriptors.deserialization.PlatformDependentDeclarationFilter;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.CompositePackageFragmentProvider;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.incremental.components.LookupTracker;
import kotlin.reflect.jvm.internal.impl.load.java.JavaClassFinder;
import kotlin.reflect.jvm.internal.impl.load.java.components.JavaResolverCache;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaPackageFragmentProvider;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.SingleModuleClassResolver;
import kotlin.reflect.jvm.internal.impl.load.java.sources.JavaSourceElementFactory;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmProtoBufUtil;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.JavaDescriptorResolver;
import kotlin.reflect.jvm.internal.impl.resolve.sam.SamConversionResolverImpl;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.ContractDeserializer;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializationComponents;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializationConfiguration;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.ErrorReporter;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.LocalClassifierTypeSettings;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;
import kotlin.reflect.jvm.internal.impl.storage.StorageManager;
import kotlin.reflect.jvm.internal.impl.types.checker.NewKotlinTypeChecker;
import kotlin.reflect.jvm.internal.impl.types.checker.NewKotlinTypeCheckerImpl;
import kotlin.reflect.jvm.internal.impl.types.extensions.TypeAttributeTranslators;
import kotlin.text.Typography;
import m8.g;

/* compiled from: DeserializationComponentsForJava.kt */
/* loaded from: classes4.dex */
public final class DeserializationComponentsForJava {
    @g
    public static final Companion Companion = new Companion(null);
    @g
    private final DeserializationComponents components;

    /* compiled from: DeserializationComponentsForJava.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {

        /* compiled from: DeserializationComponentsForJava.kt */
        /* loaded from: classes4.dex */
        public static final class ModuleData {
            @g
            private final DeserializationComponentsForJava deserializationComponentsForJava;
            @g
            private final DeserializedDescriptorResolver deserializedDescriptorResolver;

            public ModuleData(@g DeserializationComponentsForJava deserializationComponentsForJava, @g DeserializedDescriptorResolver deserializedDescriptorResolver) {
                Intrinsics.checkNotNullParameter(deserializationComponentsForJava, "deserializationComponentsForJava");
                Intrinsics.checkNotNullParameter(deserializedDescriptorResolver, "deserializedDescriptorResolver");
                this.deserializationComponentsForJava = deserializationComponentsForJava;
                this.deserializedDescriptorResolver = deserializedDescriptorResolver;
            }

            @g
            public final DeserializationComponentsForJava getDeserializationComponentsForJava() {
                return this.deserializationComponentsForJava;
            }

            @g
            public final DeserializedDescriptorResolver getDeserializedDescriptorResolver() {
                return this.deserializedDescriptorResolver;
            }
        }

        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @g
        public final ModuleData createModuleData(@g KotlinClassFinder kotlinClassFinder, @g KotlinClassFinder jvmBuiltInsKotlinClassFinder, @g JavaClassFinder javaClassFinder, @g String moduleName, @g ErrorReporter errorReporter, @g JavaSourceElementFactory javaSourceElementFactory) {
            List emptyList;
            List listOf;
            Intrinsics.checkNotNullParameter(kotlinClassFinder, "kotlinClassFinder");
            Intrinsics.checkNotNullParameter(jvmBuiltInsKotlinClassFinder, "jvmBuiltInsKotlinClassFinder");
            Intrinsics.checkNotNullParameter(javaClassFinder, "javaClassFinder");
            Intrinsics.checkNotNullParameter(moduleName, "moduleName");
            Intrinsics.checkNotNullParameter(errorReporter, "errorReporter");
            Intrinsics.checkNotNullParameter(javaSourceElementFactory, "javaSourceElementFactory");
            LockBasedStorageManager lockBasedStorageManager = new LockBasedStorageManager("DeserializationComponentsForJava.ModuleData");
            JvmBuiltIns jvmBuiltIns = new JvmBuiltIns(lockBasedStorageManager, JvmBuiltIns.Kind.FROM_DEPENDENCIES);
            Name special = Name.special(Typography.less + moduleName + Typography.greater);
            Intrinsics.checkNotNullExpressionValue(special, "special(\"<$moduleName>\")");
            ModuleDescriptorImpl moduleDescriptorImpl = new ModuleDescriptorImpl(special, lockBasedStorageManager, jvmBuiltIns, null, null, null, 56, null);
            jvmBuiltIns.setBuiltInsModule(moduleDescriptorImpl);
            jvmBuiltIns.initialize(moduleDescriptorImpl, true);
            DeserializedDescriptorResolver deserializedDescriptorResolver = new DeserializedDescriptorResolver();
            SingleModuleClassResolver singleModuleClassResolver = new SingleModuleClassResolver();
            NotFoundClasses notFoundClasses = new NotFoundClasses(lockBasedStorageManager, moduleDescriptorImpl);
            LazyJavaPackageFragmentProvider makeLazyJavaPackageFragmentProvider$default = DeserializationComponentsForJavaKt.makeLazyJavaPackageFragmentProvider$default(javaClassFinder, moduleDescriptorImpl, lockBasedStorageManager, notFoundClasses, kotlinClassFinder, deserializedDescriptorResolver, errorReporter, javaSourceElementFactory, singleModuleClassResolver, null, 512, null);
            DeserializationComponentsForJava makeDeserializationComponentsForJava = DeserializationComponentsForJavaKt.makeDeserializationComponentsForJava(moduleDescriptorImpl, lockBasedStorageManager, notFoundClasses, makeLazyJavaPackageFragmentProvider$default, kotlinClassFinder, deserializedDescriptorResolver, errorReporter);
            deserializedDescriptorResolver.setComponents(makeDeserializationComponentsForJava);
            JavaResolverCache EMPTY = JavaResolverCache.EMPTY;
            Intrinsics.checkNotNullExpressionValue(EMPTY, "EMPTY");
            JavaDescriptorResolver javaDescriptorResolver = new JavaDescriptorResolver(makeLazyJavaPackageFragmentProvider$default, EMPTY);
            singleModuleClassResolver.setResolver(javaDescriptorResolver);
            JvmBuiltInsCustomizer customizer = jvmBuiltIns.getCustomizer();
            JvmBuiltInsCustomizer customizer2 = jvmBuiltIns.getCustomizer();
            DeserializationConfiguration.Default r9 = DeserializationConfiguration.Default.INSTANCE;
            NewKotlinTypeCheckerImpl newKotlinTypeCheckerImpl = NewKotlinTypeChecker.Companion.getDefault();
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            JvmBuiltInsPackageFragmentProvider jvmBuiltInsPackageFragmentProvider = new JvmBuiltInsPackageFragmentProvider(lockBasedStorageManager, jvmBuiltInsKotlinClassFinder, moduleDescriptorImpl, notFoundClasses, customizer, customizer2, r9, newKotlinTypeCheckerImpl, new SamConversionResolverImpl(lockBasedStorageManager, emptyList));
            moduleDescriptorImpl.setDependencies(moduleDescriptorImpl);
            listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new PackageFragmentProviderOptimized[]{javaDescriptorResolver.getPackageFragmentProvider(), jvmBuiltInsPackageFragmentProvider});
            moduleDescriptorImpl.initialize(new CompositePackageFragmentProvider(listOf, "CompositeProvider@RuntimeModuleData for " + moduleDescriptorImpl));
            return new ModuleData(makeDeserializationComponentsForJava, deserializedDescriptorResolver);
        }
    }

    public DeserializationComponentsForJava(@g StorageManager storageManager, @g ModuleDescriptor moduleDescriptor, @g DeserializationConfiguration configuration, @g JavaClassDataFinder classDataFinder, @g BinaryClassAnnotationAndConstantLoaderImpl annotationAndConstantLoader, @g LazyJavaPackageFragmentProvider packageFragmentProvider, @g NotFoundClasses notFoundClasses, @g ErrorReporter errorReporter, @g LookupTracker lookupTracker, @g ContractDeserializer contractDeserializer, @g NewKotlinTypeChecker kotlinTypeChecker, @g TypeAttributeTranslators typeAttributeTranslators) {
        List emptyList;
        AdditionalClassPartsProvider additionalClassPartsProvider;
        List emptyList2;
        Intrinsics.checkNotNullParameter(storageManager, "storageManager");
        Intrinsics.checkNotNullParameter(moduleDescriptor, "moduleDescriptor");
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        Intrinsics.checkNotNullParameter(classDataFinder, "classDataFinder");
        Intrinsics.checkNotNullParameter(annotationAndConstantLoader, "annotationAndConstantLoader");
        Intrinsics.checkNotNullParameter(packageFragmentProvider, "packageFragmentProvider");
        Intrinsics.checkNotNullParameter(notFoundClasses, "notFoundClasses");
        Intrinsics.checkNotNullParameter(errorReporter, "errorReporter");
        Intrinsics.checkNotNullParameter(lookupTracker, "lookupTracker");
        Intrinsics.checkNotNullParameter(contractDeserializer, "contractDeserializer");
        Intrinsics.checkNotNullParameter(kotlinTypeChecker, "kotlinTypeChecker");
        Intrinsics.checkNotNullParameter(typeAttributeTranslators, "typeAttributeTranslators");
        KotlinBuiltIns builtIns = moduleDescriptor.getBuiltIns();
        JvmBuiltIns jvmBuiltIns = builtIns instanceof JvmBuiltIns ? (JvmBuiltIns) builtIns : null;
        LocalClassifierTypeSettings.Default r10 = LocalClassifierTypeSettings.Default.INSTANCE;
        JavaFlexibleTypeDeserializer javaFlexibleTypeDeserializer = JavaFlexibleTypeDeserializer.INSTANCE;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        AdditionalClassPartsProvider additionalClassPartsProvider2 = (jvmBuiltIns == null || (additionalClassPartsProvider = jvmBuiltIns.getCustomizer()) == null) ? AdditionalClassPartsProvider.None.INSTANCE : additionalClassPartsProvider;
        PlatformDependentDeclarationFilter platformDependentDeclarationFilter = (jvmBuiltIns == null || (platformDependentDeclarationFilter = jvmBuiltIns.getCustomizer()) == null) ? PlatformDependentDeclarationFilter.NoPlatformDependent.INSTANCE : platformDependentDeclarationFilter;
        ExtensionRegistryLite extension_registry = JvmProtoBufUtil.INSTANCE.getEXTENSION_REGISTRY();
        emptyList2 = CollectionsKt__CollectionsKt.emptyList();
        this.components = new DeserializationComponents(storageManager, moduleDescriptor, configuration, classDataFinder, annotationAndConstantLoader, packageFragmentProvider, r10, errorReporter, lookupTracker, javaFlexibleTypeDeserializer, emptyList, notFoundClasses, contractDeserializer, additionalClassPartsProvider2, platformDependentDeclarationFilter, extension_registry, kotlinTypeChecker, new SamConversionResolverImpl(storageManager, emptyList2), null, typeAttributeTranslators.getTranslators(), 262144, null);
    }

    @g
    public final DeserializationComponents getComponents() {
        return this.components;
    }
}

package kotlin.reflect.jvm.internal.impl.load.java.lazy;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.ReflectionTypes;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
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
import kotlin.reflect.jvm.internal.impl.load.java.sources.JavaSourceElementFactory;
import kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.SignatureEnhancement;
import kotlin.reflect.jvm.internal.impl.load.kotlin.DeserializedDescriptorResolver;
import kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinClassFinder;
import kotlin.reflect.jvm.internal.impl.load.kotlin.PackagePartProvider;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.SyntheticJavaPartsProvider;
import kotlin.reflect.jvm.internal.impl.resolve.sam.SamConversionResolver;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.ErrorReporter;
import kotlin.reflect.jvm.internal.impl.storage.StorageManager;
import kotlin.reflect.jvm.internal.impl.types.checker.NewKotlinTypeChecker;
import m8.g;

/* compiled from: context.kt */
/* loaded from: classes4.dex */
public final class JavaResolverComponents {
    @g
    private final AnnotationTypeQualifierResolver annotationTypeQualifierResolver;
    @g
    private final DeserializedDescriptorResolver deserializedDescriptorResolver;
    @g
    private final ErrorReporter errorReporter;
    @g
    private final JavaClassFinder finder;
    @g
    private final JavaClassesTracker javaClassesTracker;
    @g
    private final JavaModuleAnnotationsProvider javaModuleResolver;
    @g
    private final JavaPropertyInitializerEvaluator javaPropertyInitializerEvaluator;
    @g
    private final JavaResolverCache javaResolverCache;
    @g
    private final JavaTypeEnhancementState javaTypeEnhancementState;
    @g
    private final KotlinClassFinder kotlinClassFinder;
    @g
    private final NewKotlinTypeChecker kotlinTypeChecker;
    @g
    private final LookupTracker lookupTracker;
    @g
    private final ModuleDescriptor module;
    @g
    private final ModuleClassResolver moduleClassResolver;
    @g
    private final PackagePartProvider packagePartProvider;
    @g
    private final ReflectionTypes reflectionTypes;
    @g
    private final SamConversionResolver samConversionResolver;
    @g
    private final JavaResolverSettings settings;
    @g
    private final SignatureEnhancement signatureEnhancement;
    @g
    private final SignaturePropagator signaturePropagator;
    @g
    private final JavaSourceElementFactory sourceElementFactory;
    @g
    private final StorageManager storageManager;
    @g
    private final SupertypeLoopChecker supertypeLoopChecker;
    @g
    private final SyntheticJavaPartsProvider syntheticPartsProvider;

    public JavaResolverComponents(@g StorageManager storageManager, @g JavaClassFinder finder, @g KotlinClassFinder kotlinClassFinder, @g DeserializedDescriptorResolver deserializedDescriptorResolver, @g SignaturePropagator signaturePropagator, @g ErrorReporter errorReporter, @g JavaResolverCache javaResolverCache, @g JavaPropertyInitializerEvaluator javaPropertyInitializerEvaluator, @g SamConversionResolver samConversionResolver, @g JavaSourceElementFactory sourceElementFactory, @g ModuleClassResolver moduleClassResolver, @g PackagePartProvider packagePartProvider, @g SupertypeLoopChecker supertypeLoopChecker, @g LookupTracker lookupTracker, @g ModuleDescriptor module, @g ReflectionTypes reflectionTypes, @g AnnotationTypeQualifierResolver annotationTypeQualifierResolver, @g SignatureEnhancement signatureEnhancement, @g JavaClassesTracker javaClassesTracker, @g JavaResolverSettings settings, @g NewKotlinTypeChecker kotlinTypeChecker, @g JavaTypeEnhancementState javaTypeEnhancementState, @g JavaModuleAnnotationsProvider javaModuleResolver, @g SyntheticJavaPartsProvider syntheticPartsProvider) {
        Intrinsics.checkNotNullParameter(storageManager, "storageManager");
        Intrinsics.checkNotNullParameter(finder, "finder");
        Intrinsics.checkNotNullParameter(kotlinClassFinder, "kotlinClassFinder");
        Intrinsics.checkNotNullParameter(deserializedDescriptorResolver, "deserializedDescriptorResolver");
        Intrinsics.checkNotNullParameter(signaturePropagator, "signaturePropagator");
        Intrinsics.checkNotNullParameter(errorReporter, "errorReporter");
        Intrinsics.checkNotNullParameter(javaResolverCache, "javaResolverCache");
        Intrinsics.checkNotNullParameter(javaPropertyInitializerEvaluator, "javaPropertyInitializerEvaluator");
        Intrinsics.checkNotNullParameter(samConversionResolver, "samConversionResolver");
        Intrinsics.checkNotNullParameter(sourceElementFactory, "sourceElementFactory");
        Intrinsics.checkNotNullParameter(moduleClassResolver, "moduleClassResolver");
        Intrinsics.checkNotNullParameter(packagePartProvider, "packagePartProvider");
        Intrinsics.checkNotNullParameter(supertypeLoopChecker, "supertypeLoopChecker");
        Intrinsics.checkNotNullParameter(lookupTracker, "lookupTracker");
        Intrinsics.checkNotNullParameter(module, "module");
        Intrinsics.checkNotNullParameter(reflectionTypes, "reflectionTypes");
        Intrinsics.checkNotNullParameter(annotationTypeQualifierResolver, "annotationTypeQualifierResolver");
        Intrinsics.checkNotNullParameter(signatureEnhancement, "signatureEnhancement");
        Intrinsics.checkNotNullParameter(javaClassesTracker, "javaClassesTracker");
        Intrinsics.checkNotNullParameter(settings, "settings");
        Intrinsics.checkNotNullParameter(kotlinTypeChecker, "kotlinTypeChecker");
        Intrinsics.checkNotNullParameter(javaTypeEnhancementState, "javaTypeEnhancementState");
        Intrinsics.checkNotNullParameter(javaModuleResolver, "javaModuleResolver");
        Intrinsics.checkNotNullParameter(syntheticPartsProvider, "syntheticPartsProvider");
        this.storageManager = storageManager;
        this.finder = finder;
        this.kotlinClassFinder = kotlinClassFinder;
        this.deserializedDescriptorResolver = deserializedDescriptorResolver;
        this.signaturePropagator = signaturePropagator;
        this.errorReporter = errorReporter;
        this.javaResolverCache = javaResolverCache;
        this.javaPropertyInitializerEvaluator = javaPropertyInitializerEvaluator;
        this.samConversionResolver = samConversionResolver;
        this.sourceElementFactory = sourceElementFactory;
        this.moduleClassResolver = moduleClassResolver;
        this.packagePartProvider = packagePartProvider;
        this.supertypeLoopChecker = supertypeLoopChecker;
        this.lookupTracker = lookupTracker;
        this.module = module;
        this.reflectionTypes = reflectionTypes;
        this.annotationTypeQualifierResolver = annotationTypeQualifierResolver;
        this.signatureEnhancement = signatureEnhancement;
        this.javaClassesTracker = javaClassesTracker;
        this.settings = settings;
        this.kotlinTypeChecker = kotlinTypeChecker;
        this.javaTypeEnhancementState = javaTypeEnhancementState;
        this.javaModuleResolver = javaModuleResolver;
        this.syntheticPartsProvider = syntheticPartsProvider;
    }

    @g
    public final AnnotationTypeQualifierResolver getAnnotationTypeQualifierResolver() {
        return this.annotationTypeQualifierResolver;
    }

    @g
    public final DeserializedDescriptorResolver getDeserializedDescriptorResolver() {
        return this.deserializedDescriptorResolver;
    }

    @g
    public final ErrorReporter getErrorReporter() {
        return this.errorReporter;
    }

    @g
    public final JavaClassFinder getFinder() {
        return this.finder;
    }

    @g
    public final JavaClassesTracker getJavaClassesTracker() {
        return this.javaClassesTracker;
    }

    @g
    public final JavaModuleAnnotationsProvider getJavaModuleResolver() {
        return this.javaModuleResolver;
    }

    @g
    public final JavaPropertyInitializerEvaluator getJavaPropertyInitializerEvaluator() {
        return this.javaPropertyInitializerEvaluator;
    }

    @g
    public final JavaResolverCache getJavaResolverCache() {
        return this.javaResolverCache;
    }

    @g
    public final JavaTypeEnhancementState getJavaTypeEnhancementState() {
        return this.javaTypeEnhancementState;
    }

    @g
    public final KotlinClassFinder getKotlinClassFinder() {
        return this.kotlinClassFinder;
    }

    @g
    public final NewKotlinTypeChecker getKotlinTypeChecker() {
        return this.kotlinTypeChecker;
    }

    @g
    public final LookupTracker getLookupTracker() {
        return this.lookupTracker;
    }

    @g
    public final ModuleDescriptor getModule() {
        return this.module;
    }

    @g
    public final ModuleClassResolver getModuleClassResolver() {
        return this.moduleClassResolver;
    }

    @g
    public final PackagePartProvider getPackagePartProvider() {
        return this.packagePartProvider;
    }

    @g
    public final ReflectionTypes getReflectionTypes() {
        return this.reflectionTypes;
    }

    @g
    public final JavaResolverSettings getSettings() {
        return this.settings;
    }

    @g
    public final SignatureEnhancement getSignatureEnhancement() {
        return this.signatureEnhancement;
    }

    @g
    public final SignaturePropagator getSignaturePropagator() {
        return this.signaturePropagator;
    }

    @g
    public final JavaSourceElementFactory getSourceElementFactory() {
        return this.sourceElementFactory;
    }

    @g
    public final StorageManager getStorageManager() {
        return this.storageManager;
    }

    @g
    public final SupertypeLoopChecker getSupertypeLoopChecker() {
        return this.supertypeLoopChecker;
    }

    @g
    public final SyntheticJavaPartsProvider getSyntheticPartsProvider() {
        return this.syntheticPartsProvider;
    }

    @g
    public final JavaResolverComponents replace(@g JavaResolverCache javaResolverCache) {
        Intrinsics.checkNotNullParameter(javaResolverCache, "javaResolverCache");
        return new JavaResolverComponents(this.storageManager, this.finder, this.kotlinClassFinder, this.deserializedDescriptorResolver, this.signaturePropagator, this.errorReporter, javaResolverCache, this.javaPropertyInitializerEvaluator, this.samConversionResolver, this.sourceElementFactory, this.moduleClassResolver, this.packagePartProvider, this.supertypeLoopChecker, this.lookupTracker, this.module, this.reflectionTypes, this.annotationTypeQualifierResolver, this.signatureEnhancement, this.javaClassesTracker, this.settings, this.kotlinTypeChecker, this.javaTypeEnhancementState, this.javaModuleResolver, null, 8388608, null);
    }

    public /* synthetic */ JavaResolverComponents(StorageManager storageManager, JavaClassFinder javaClassFinder, KotlinClassFinder kotlinClassFinder, DeserializedDescriptorResolver deserializedDescriptorResolver, SignaturePropagator signaturePropagator, ErrorReporter errorReporter, JavaResolverCache javaResolverCache, JavaPropertyInitializerEvaluator javaPropertyInitializerEvaluator, SamConversionResolver samConversionResolver, JavaSourceElementFactory javaSourceElementFactory, ModuleClassResolver moduleClassResolver, PackagePartProvider packagePartProvider, SupertypeLoopChecker supertypeLoopChecker, LookupTracker lookupTracker, ModuleDescriptor moduleDescriptor, ReflectionTypes reflectionTypes, AnnotationTypeQualifierResolver annotationTypeQualifierResolver, SignatureEnhancement signatureEnhancement, JavaClassesTracker javaClassesTracker, JavaResolverSettings javaResolverSettings, NewKotlinTypeChecker newKotlinTypeChecker, JavaTypeEnhancementState javaTypeEnhancementState, JavaModuleAnnotationsProvider javaModuleAnnotationsProvider, SyntheticJavaPartsProvider syntheticJavaPartsProvider, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(storageManager, javaClassFinder, kotlinClassFinder, deserializedDescriptorResolver, signaturePropagator, errorReporter, javaResolverCache, javaPropertyInitializerEvaluator, samConversionResolver, javaSourceElementFactory, moduleClassResolver, packagePartProvider, supertypeLoopChecker, lookupTracker, moduleDescriptor, reflectionTypes, annotationTypeQualifierResolver, signatureEnhancement, javaClassesTracker, javaResolverSettings, newKotlinTypeChecker, javaTypeEnhancementState, javaModuleAnnotationsProvider, (i4 & 8388608) != 0 ? SyntheticJavaPartsProvider.Companion.getEMPTY() : syntheticJavaPartsProvider);
    }
}

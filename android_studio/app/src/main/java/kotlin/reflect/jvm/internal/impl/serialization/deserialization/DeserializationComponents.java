package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.NotFoundClasses;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProvider;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.deserialization.AdditionalClassPartsProvider;
import kotlin.reflect.jvm.internal.impl.descriptors.deserialization.ClassDescriptorFactory;
import kotlin.reflect.jvm.internal.impl.descriptors.deserialization.PlatformDependentDeclarationFilter;
import kotlin.reflect.jvm.internal.impl.descriptors.deserialization.PlatformDependentTypeTransformer;
import kotlin.reflect.jvm.internal.impl.incremental.components.LookupTracker;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.BinaryVersion;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.TypeTable;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.VersionRequirementTable;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ConstantValue;
import kotlin.reflect.jvm.internal.impl.resolve.sam.SamConversionResolver;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedContainerSource;
import kotlin.reflect.jvm.internal.impl.storage.StorageManager;
import kotlin.reflect.jvm.internal.impl.types.TypeAttributeTranslator;
import kotlin.reflect.jvm.internal.impl.types.checker.NewKotlinTypeChecker;
import m8.g;
import m8.h;

/* compiled from: context.kt */
/* loaded from: classes4.dex */
public final class DeserializationComponents {
    @g
    private final AdditionalClassPartsProvider additionalClassPartsProvider;
    @g
    private final AnnotationAndConstantLoader<AnnotationDescriptor, ConstantValue<?>> annotationAndConstantLoader;
    @g
    private final ClassDataFinder classDataFinder;
    @g
    private final ClassDeserializer classDeserializer;
    @g
    private final DeserializationConfiguration configuration;
    @g
    private final ContractDeserializer contractDeserializer;
    @g
    private final ErrorReporter errorReporter;
    @g
    private final ExtensionRegistryLite extensionRegistryLite;
    @g
    private final Iterable<ClassDescriptorFactory> fictitiousClassDescriptorFactories;
    @g
    private final FlexibleTypeDeserializer flexibleTypeDeserializer;
    @g
    private final NewKotlinTypeChecker kotlinTypeChecker;
    @g
    private final LocalClassifierTypeSettings localClassifierTypeSettings;
    @g
    private final LookupTracker lookupTracker;
    @g
    private final ModuleDescriptor moduleDescriptor;
    @g
    private final NotFoundClasses notFoundClasses;
    @g
    private final PackageFragmentProvider packageFragmentProvider;
    @g
    private final PlatformDependentDeclarationFilter platformDependentDeclarationFilter;
    @g
    private final PlatformDependentTypeTransformer platformDependentTypeTransformer;
    @g
    private final SamConversionResolver samConversionResolver;
    @g
    private final StorageManager storageManager;
    @g
    private final List<TypeAttributeTranslator> typeAttributeTranslators;

    /* JADX WARN: Multi-variable type inference failed */
    public DeserializationComponents(@g StorageManager storageManager, @g ModuleDescriptor moduleDescriptor, @g DeserializationConfiguration configuration, @g ClassDataFinder classDataFinder, @g AnnotationAndConstantLoader<? extends AnnotationDescriptor, ? extends ConstantValue<?>> annotationAndConstantLoader, @g PackageFragmentProvider packageFragmentProvider, @g LocalClassifierTypeSettings localClassifierTypeSettings, @g ErrorReporter errorReporter, @g LookupTracker lookupTracker, @g FlexibleTypeDeserializer flexibleTypeDeserializer, @g Iterable<? extends ClassDescriptorFactory> fictitiousClassDescriptorFactories, @g NotFoundClasses notFoundClasses, @g ContractDeserializer contractDeserializer, @g AdditionalClassPartsProvider additionalClassPartsProvider, @g PlatformDependentDeclarationFilter platformDependentDeclarationFilter, @g ExtensionRegistryLite extensionRegistryLite, @g NewKotlinTypeChecker kotlinTypeChecker, @g SamConversionResolver samConversionResolver, @g PlatformDependentTypeTransformer platformDependentTypeTransformer, @g List<? extends TypeAttributeTranslator> typeAttributeTranslators) {
        Intrinsics.checkNotNullParameter(storageManager, "storageManager");
        Intrinsics.checkNotNullParameter(moduleDescriptor, "moduleDescriptor");
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        Intrinsics.checkNotNullParameter(classDataFinder, "classDataFinder");
        Intrinsics.checkNotNullParameter(annotationAndConstantLoader, "annotationAndConstantLoader");
        Intrinsics.checkNotNullParameter(packageFragmentProvider, "packageFragmentProvider");
        Intrinsics.checkNotNullParameter(localClassifierTypeSettings, "localClassifierTypeSettings");
        Intrinsics.checkNotNullParameter(errorReporter, "errorReporter");
        Intrinsics.checkNotNullParameter(lookupTracker, "lookupTracker");
        Intrinsics.checkNotNullParameter(flexibleTypeDeserializer, "flexibleTypeDeserializer");
        Intrinsics.checkNotNullParameter(fictitiousClassDescriptorFactories, "fictitiousClassDescriptorFactories");
        Intrinsics.checkNotNullParameter(notFoundClasses, "notFoundClasses");
        Intrinsics.checkNotNullParameter(contractDeserializer, "contractDeserializer");
        Intrinsics.checkNotNullParameter(additionalClassPartsProvider, "additionalClassPartsProvider");
        Intrinsics.checkNotNullParameter(platformDependentDeclarationFilter, "platformDependentDeclarationFilter");
        Intrinsics.checkNotNullParameter(extensionRegistryLite, "extensionRegistryLite");
        Intrinsics.checkNotNullParameter(kotlinTypeChecker, "kotlinTypeChecker");
        Intrinsics.checkNotNullParameter(samConversionResolver, "samConversionResolver");
        Intrinsics.checkNotNullParameter(platformDependentTypeTransformer, "platformDependentTypeTransformer");
        Intrinsics.checkNotNullParameter(typeAttributeTranslators, "typeAttributeTranslators");
        this.storageManager = storageManager;
        this.moduleDescriptor = moduleDescriptor;
        this.configuration = configuration;
        this.classDataFinder = classDataFinder;
        this.annotationAndConstantLoader = annotationAndConstantLoader;
        this.packageFragmentProvider = packageFragmentProvider;
        this.localClassifierTypeSettings = localClassifierTypeSettings;
        this.errorReporter = errorReporter;
        this.lookupTracker = lookupTracker;
        this.flexibleTypeDeserializer = flexibleTypeDeserializer;
        this.fictitiousClassDescriptorFactories = fictitiousClassDescriptorFactories;
        this.notFoundClasses = notFoundClasses;
        this.contractDeserializer = contractDeserializer;
        this.additionalClassPartsProvider = additionalClassPartsProvider;
        this.platformDependentDeclarationFilter = platformDependentDeclarationFilter;
        this.extensionRegistryLite = extensionRegistryLite;
        this.kotlinTypeChecker = kotlinTypeChecker;
        this.samConversionResolver = samConversionResolver;
        this.platformDependentTypeTransformer = platformDependentTypeTransformer;
        this.typeAttributeTranslators = typeAttributeTranslators;
        this.classDeserializer = new ClassDeserializer(this);
    }

    @g
    public final DeserializationContext createContext(@g PackageFragmentDescriptor descriptor, @g NameResolver nameResolver, @g TypeTable typeTable, @g VersionRequirementTable versionRequirementTable, @g BinaryVersion metadataVersion, @h DeserializedContainerSource deserializedContainerSource) {
        List emptyList;
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        Intrinsics.checkNotNullParameter(nameResolver, "nameResolver");
        Intrinsics.checkNotNullParameter(typeTable, "typeTable");
        Intrinsics.checkNotNullParameter(versionRequirementTable, "versionRequirementTable");
        Intrinsics.checkNotNullParameter(metadataVersion, "metadataVersion");
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        return new DeserializationContext(this, nameResolver, descriptor, typeTable, versionRequirementTable, metadataVersion, deserializedContainerSource, null, emptyList);
    }

    @h
    public final ClassDescriptor deserializeClass(@g ClassId classId) {
        Intrinsics.checkNotNullParameter(classId, "classId");
        return ClassDeserializer.deserializeClass$default(this.classDeserializer, classId, null, 2, null);
    }

    @g
    public final AdditionalClassPartsProvider getAdditionalClassPartsProvider() {
        return this.additionalClassPartsProvider;
    }

    @g
    public final AnnotationAndConstantLoader<AnnotationDescriptor, ConstantValue<?>> getAnnotationAndConstantLoader() {
        return this.annotationAndConstantLoader;
    }

    @g
    public final ClassDataFinder getClassDataFinder() {
        return this.classDataFinder;
    }

    @g
    public final ClassDeserializer getClassDeserializer() {
        return this.classDeserializer;
    }

    @g
    public final DeserializationConfiguration getConfiguration() {
        return this.configuration;
    }

    @g
    public final ContractDeserializer getContractDeserializer() {
        return this.contractDeserializer;
    }

    @g
    public final ErrorReporter getErrorReporter() {
        return this.errorReporter;
    }

    @g
    public final ExtensionRegistryLite getExtensionRegistryLite() {
        return this.extensionRegistryLite;
    }

    @g
    public final Iterable<ClassDescriptorFactory> getFictitiousClassDescriptorFactories() {
        return this.fictitiousClassDescriptorFactories;
    }

    @g
    public final FlexibleTypeDeserializer getFlexibleTypeDeserializer() {
        return this.flexibleTypeDeserializer;
    }

    @g
    public final NewKotlinTypeChecker getKotlinTypeChecker() {
        return this.kotlinTypeChecker;
    }

    @g
    public final LocalClassifierTypeSettings getLocalClassifierTypeSettings() {
        return this.localClassifierTypeSettings;
    }

    @g
    public final LookupTracker getLookupTracker() {
        return this.lookupTracker;
    }

    @g
    public final ModuleDescriptor getModuleDescriptor() {
        return this.moduleDescriptor;
    }

    @g
    public final NotFoundClasses getNotFoundClasses() {
        return this.notFoundClasses;
    }

    @g
    public final PackageFragmentProvider getPackageFragmentProvider() {
        return this.packageFragmentProvider;
    }

    @g
    public final PlatformDependentDeclarationFilter getPlatformDependentDeclarationFilter() {
        return this.platformDependentDeclarationFilter;
    }

    @g
    public final PlatformDependentTypeTransformer getPlatformDependentTypeTransformer() {
        return this.platformDependentTypeTransformer;
    }

    @g
    public final StorageManager getStorageManager() {
        return this.storageManager;
    }

    @g
    public final List<TypeAttributeTranslator> getTypeAttributeTranslators() {
        return this.typeAttributeTranslators;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public /* synthetic */ DeserializationComponents(kotlin.reflect.jvm.internal.impl.storage.StorageManager r24, kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor r25, kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializationConfiguration r26, kotlin.reflect.jvm.internal.impl.serialization.deserialization.ClassDataFinder r27, kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotationAndConstantLoader r28, kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProvider r29, kotlin.reflect.jvm.internal.impl.serialization.deserialization.LocalClassifierTypeSettings r30, kotlin.reflect.jvm.internal.impl.serialization.deserialization.ErrorReporter r31, kotlin.reflect.jvm.internal.impl.incremental.components.LookupTracker r32, kotlin.reflect.jvm.internal.impl.serialization.deserialization.FlexibleTypeDeserializer r33, java.lang.Iterable r34, kotlin.reflect.jvm.internal.impl.descriptors.NotFoundClasses r35, kotlin.reflect.jvm.internal.impl.serialization.deserialization.ContractDeserializer r36, kotlin.reflect.jvm.internal.impl.descriptors.deserialization.AdditionalClassPartsProvider r37, kotlin.reflect.jvm.internal.impl.descriptors.deserialization.PlatformDependentDeclarationFilter r38, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite r39, kotlin.reflect.jvm.internal.impl.types.checker.NewKotlinTypeChecker r40, kotlin.reflect.jvm.internal.impl.resolve.sam.SamConversionResolver r41, kotlin.reflect.jvm.internal.impl.descriptors.deserialization.PlatformDependentTypeTransformer r42, java.util.List r43, int r44, kotlin.jvm.internal.DefaultConstructorMarker r45) {
        /*
            r23 = this;
            r0 = r44
            r1 = r0 & 8192(0x2000, float:1.14794E-41)
            if (r1 == 0) goto Lb
            kotlin.reflect.jvm.internal.impl.descriptors.deserialization.AdditionalClassPartsProvider$None r1 = kotlin.reflect.jvm.internal.impl.descriptors.deserialization.AdditionalClassPartsProvider.None.INSTANCE
            r16 = r1
            goto Ld
        Lb:
            r16 = r37
        Ld:
            r1 = r0 & 16384(0x4000, float:2.2959E-41)
            if (r1 == 0) goto L16
            kotlin.reflect.jvm.internal.impl.descriptors.deserialization.PlatformDependentDeclarationFilter$All r1 = kotlin.reflect.jvm.internal.impl.descriptors.deserialization.PlatformDependentDeclarationFilter.All.INSTANCE
            r17 = r1
            goto L18
        L16:
            r17 = r38
        L18:
            r1 = 65536(0x10000, float:9.18355E-41)
            r1 = r1 & r0
            if (r1 == 0) goto L26
            kotlin.reflect.jvm.internal.impl.types.checker.NewKotlinTypeChecker$Companion r1 = kotlin.reflect.jvm.internal.impl.types.checker.NewKotlinTypeChecker.Companion
            kotlin.reflect.jvm.internal.impl.types.checker.NewKotlinTypeCheckerImpl r1 = r1.getDefault()
            r19 = r1
            goto L28
        L26:
            r19 = r40
        L28:
            r1 = 262144(0x40000, float:3.67342E-40)
            r1 = r1 & r0
            if (r1 == 0) goto L32
            kotlin.reflect.jvm.internal.impl.descriptors.deserialization.PlatformDependentTypeTransformer$None r1 = kotlin.reflect.jvm.internal.impl.descriptors.deserialization.PlatformDependentTypeTransformer.None.INSTANCE
            r21 = r1
            goto L34
        L32:
            r21 = r42
        L34:
            r1 = 524288(0x80000, float:7.34684E-40)
            r0 = r0 & r1
            if (r0 == 0) goto L42
            kotlin.reflect.jvm.internal.impl.types.DefaultTypeAttributeTranslator r0 = kotlin.reflect.jvm.internal.impl.types.DefaultTypeAttributeTranslator.INSTANCE
            java.util.List r0 = kotlin.collections.CollectionsKt.listOf(r0)
            r22 = r0
            goto L44
        L42:
            r22 = r43
        L44:
            r2 = r23
            r3 = r24
            r4 = r25
            r5 = r26
            r6 = r27
            r7 = r28
            r8 = r29
            r9 = r30
            r10 = r31
            r11 = r32
            r12 = r33
            r13 = r34
            r14 = r35
            r15 = r36
            r18 = r39
            r20 = r41
            r2.<init>(r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializationComponents.<init>(kotlin.reflect.jvm.internal.impl.storage.StorageManager, kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor, kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializationConfiguration, kotlin.reflect.jvm.internal.impl.serialization.deserialization.ClassDataFinder, kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotationAndConstantLoader, kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProvider, kotlin.reflect.jvm.internal.impl.serialization.deserialization.LocalClassifierTypeSettings, kotlin.reflect.jvm.internal.impl.serialization.deserialization.ErrorReporter, kotlin.reflect.jvm.internal.impl.incremental.components.LookupTracker, kotlin.reflect.jvm.internal.impl.serialization.deserialization.FlexibleTypeDeserializer, java.lang.Iterable, kotlin.reflect.jvm.internal.impl.descriptors.NotFoundClasses, kotlin.reflect.jvm.internal.impl.serialization.deserialization.ContractDeserializer, kotlin.reflect.jvm.internal.impl.descriptors.deserialization.AdditionalClassPartsProvider, kotlin.reflect.jvm.internal.impl.descriptors.deserialization.PlatformDependentDeclarationFilter, kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite, kotlin.reflect.jvm.internal.impl.types.checker.NewKotlinTypeChecker, kotlin.reflect.jvm.internal.impl.resolve.sam.SamConversionResolver, kotlin.reflect.jvm.internal.impl.descriptors.deserialization.PlatformDependentTypeTransformer, java.util.List, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }
}

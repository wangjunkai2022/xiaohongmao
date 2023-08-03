package kotlin.reflect.jvm.internal.impl.serialization.deserialization.builtins;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.BuiltInsLoader;
import kotlin.reflect.jvm.internal.impl.builtins.StandardNames;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.NotFoundClasses;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProvider;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProviderImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.deserialization.AdditionalClassPartsProvider;
import kotlin.reflect.jvm.internal.impl.descriptors.deserialization.ClassDescriptorFactory;
import kotlin.reflect.jvm.internal.impl.descriptors.deserialization.PlatformDependentDeclarationFilter;
import kotlin.reflect.jvm.internal.impl.incremental.components.LookupTracker;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite;
import kotlin.reflect.jvm.internal.impl.resolve.sam.SamConversionResolverImpl;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotationAndConstantLoaderImpl;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.ContractDeserializer;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializationComponents;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializationConfiguration;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializedClassDataFinder;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.ErrorReporter;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.FlexibleTypeDeserializer;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.LocalClassifierTypeSettings;
import kotlin.reflect.jvm.internal.impl.storage.StorageManager;
import m8.g;

/* compiled from: BuiltInsLoaderImpl.kt */
/* loaded from: classes4.dex */
public final class BuiltInsLoaderImpl implements BuiltInsLoader {
    @g
    private final BuiltInsResourceLoader resourceLoader = new BuiltInsResourceLoader();

    @g
    public final PackageFragmentProvider createBuiltInPackageFragmentProvider(@g StorageManager storageManager, @g ModuleDescriptor module, @g Set<FqName> packageFqNames, @g Iterable<? extends ClassDescriptorFactory> classDescriptorFactories, @g PlatformDependentDeclarationFilter platformDependentDeclarationFilter, @g AdditionalClassPartsProvider additionalClassPartsProvider, boolean z9, @g Function1<? super String, ? extends InputStream> loadResource) {
        int collectionSizeOrDefault;
        List emptyList;
        Intrinsics.checkNotNullParameter(storageManager, "storageManager");
        Intrinsics.checkNotNullParameter(module, "module");
        Intrinsics.checkNotNullParameter(packageFqNames, "packageFqNames");
        Intrinsics.checkNotNullParameter(classDescriptorFactories, "classDescriptorFactories");
        Intrinsics.checkNotNullParameter(platformDependentDeclarationFilter, "platformDependentDeclarationFilter");
        Intrinsics.checkNotNullParameter(additionalClassPartsProvider, "additionalClassPartsProvider");
        Intrinsics.checkNotNullParameter(loadResource, "loadResource");
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(packageFqNames, 10);
        ArrayList<BuiltInsPackageFragmentImpl> arrayList = new ArrayList(collectionSizeOrDefault);
        for (FqName fqName : packageFqNames) {
            String builtInsFilePath = BuiltInSerializerProtocol.INSTANCE.getBuiltInsFilePath(fqName);
            InputStream invoke = loadResource.invoke(builtInsFilePath);
            if (invoke != null) {
                arrayList.add(BuiltInsPackageFragmentImpl.Companion.create(fqName, storageManager, module, invoke, z9));
            } else {
                throw new IllegalStateException("Resource not found in classpath: " + builtInsFilePath);
            }
        }
        PackageFragmentProviderImpl packageFragmentProviderImpl = new PackageFragmentProviderImpl(arrayList);
        NotFoundClasses notFoundClasses = new NotFoundClasses(storageManager, module);
        DeserializationConfiguration.Default r32 = DeserializationConfiguration.Default.INSTANCE;
        DeserializedClassDataFinder deserializedClassDataFinder = new DeserializedClassDataFinder(packageFragmentProviderImpl);
        BuiltInSerializerProtocol builtInSerializerProtocol = BuiltInSerializerProtocol.INSTANCE;
        AnnotationAndConstantLoaderImpl annotationAndConstantLoaderImpl = new AnnotationAndConstantLoaderImpl(module, notFoundClasses, builtInSerializerProtocol);
        LocalClassifierTypeSettings.Default r72 = LocalClassifierTypeSettings.Default.INSTANCE;
        ErrorReporter DO_NOTHING = ErrorReporter.DO_NOTHING;
        Intrinsics.checkNotNullExpressionValue(DO_NOTHING, "DO_NOTHING");
        LookupTracker.DO_NOTHING do_nothing = LookupTracker.DO_NOTHING.INSTANCE;
        FlexibleTypeDeserializer.ThrowException throwException = FlexibleTypeDeserializer.ThrowException.INSTANCE;
        ContractDeserializer contractDeserializer = ContractDeserializer.Companion.getDEFAULT();
        ExtensionRegistryLite extensionRegistry = builtInSerializerProtocol.getExtensionRegistry();
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        DeserializationComponents deserializationComponents = new DeserializationComponents(storageManager, module, r32, deserializedClassDataFinder, annotationAndConstantLoaderImpl, packageFragmentProviderImpl, r72, DO_NOTHING, do_nothing, throwException, classDescriptorFactories, notFoundClasses, contractDeserializer, additionalClassPartsProvider, platformDependentDeclarationFilter, extensionRegistry, null, new SamConversionResolverImpl(storageManager, emptyList), null, null, 851968, null);
        for (BuiltInsPackageFragmentImpl builtInsPackageFragmentImpl : arrayList) {
            builtInsPackageFragmentImpl.initialize(deserializationComponents);
        }
        return packageFragmentProviderImpl;
    }

    @Override // kotlin.reflect.jvm.internal.impl.builtins.BuiltInsLoader
    @g
    public PackageFragmentProvider createPackageFragmentProvider(@g StorageManager storageManager, @g ModuleDescriptor builtInsModule, @g Iterable<? extends ClassDescriptorFactory> classDescriptorFactories, @g PlatformDependentDeclarationFilter platformDependentDeclarationFilter, @g AdditionalClassPartsProvider additionalClassPartsProvider, boolean z9) {
        Intrinsics.checkNotNullParameter(storageManager, "storageManager");
        Intrinsics.checkNotNullParameter(builtInsModule, "builtInsModule");
        Intrinsics.checkNotNullParameter(classDescriptorFactories, "classDescriptorFactories");
        Intrinsics.checkNotNullParameter(platformDependentDeclarationFilter, "platformDependentDeclarationFilter");
        Intrinsics.checkNotNullParameter(additionalClassPartsProvider, "additionalClassPartsProvider");
        return createBuiltInPackageFragmentProvider(storageManager, builtInsModule, StandardNames.BUILT_INS_PACKAGE_FQ_NAMES, classDescriptorFactories, platformDependentDeclarationFilter, additionalClassPartsProvider, z9, new BuiltInsLoaderImpl$createPackageFragmentProvider$1(this.resourceLoader));
    }
}

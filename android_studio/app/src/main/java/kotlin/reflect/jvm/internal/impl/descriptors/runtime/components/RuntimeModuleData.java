package kotlin.reflect.jvm.internal.impl.descriptors.runtime.components;

import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.load.kotlin.DeserializationComponentsForJava;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializationComponents;
import m8.g;

/* compiled from: RuntimeModuleData.kt */
/* loaded from: classes4.dex */
public final class RuntimeModuleData {
    @g
    public static final Companion Companion = new Companion(null);
    @g
    private final DeserializationComponents deserialization;
    @g
    private final PackagePartScopeCache packagePartScopeCache;

    /* compiled from: RuntimeModuleData.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @g
        public final RuntimeModuleData create(@g ClassLoader classLoader) {
            Intrinsics.checkNotNullParameter(classLoader, "classLoader");
            ReflectKotlinClassFinder reflectKotlinClassFinder = new ReflectKotlinClassFinder(classLoader);
            DeserializationComponentsForJava.Companion companion = DeserializationComponentsForJava.Companion;
            ClassLoader classLoader2 = Unit.class.getClassLoader();
            Intrinsics.checkNotNullExpressionValue(classLoader2, "Unit::class.java.classLoader");
            ReflectKotlinClassFinder reflectKotlinClassFinder2 = new ReflectKotlinClassFinder(classLoader2);
            ReflectJavaClassFinder reflectJavaClassFinder = new ReflectJavaClassFinder(classLoader);
            DeserializationComponentsForJava.Companion.ModuleData createModuleData = companion.createModuleData(reflectKotlinClassFinder, reflectKotlinClassFinder2, reflectJavaClassFinder, "runtime module for " + classLoader, RuntimeErrorReporter.INSTANCE, RuntimeSourceElementFactory.INSTANCE);
            return new RuntimeModuleData(createModuleData.getDeserializationComponentsForJava().getComponents(), new PackagePartScopeCache(createModuleData.getDeserializedDescriptorResolver(), reflectKotlinClassFinder), null);
        }
    }

    private RuntimeModuleData(DeserializationComponents deserializationComponents, PackagePartScopeCache packagePartScopeCache) {
        this.deserialization = deserializationComponents;
        this.packagePartScopeCache = packagePartScopeCache;
    }

    public /* synthetic */ RuntimeModuleData(DeserializationComponents deserializationComponents, PackagePartScopeCache packagePartScopeCache, DefaultConstructorMarker defaultConstructorMarker) {
        this(deserializationComponents, packagePartScopeCache);
    }

    @g
    public final DeserializationComponents getDeserialization() {
        return this.deserialization;
    }

    @g
    public final ModuleDescriptor getModule() {
        return this.deserialization.getModuleDescriptor();
    }

    @g
    public final PackagePartScopeCache getPackagePartScopeCache() {
        return this.packagePartScopeCache;
    }
}

package kotlin.reflect.jvm.internal.impl.builtins;

import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProvider;
import kotlin.reflect.jvm.internal.impl.descriptors.deserialization.AdditionalClassPartsProvider;
import kotlin.reflect.jvm.internal.impl.descriptors.deserialization.ClassDescriptorFactory;
import kotlin.reflect.jvm.internal.impl.descriptors.deserialization.PlatformDependentDeclarationFilter;
import kotlin.reflect.jvm.internal.impl.storage.StorageManager;
import m8.g;

/* compiled from: BuiltInsLoader.kt */
/* loaded from: classes4.dex */
public interface BuiltInsLoader {
    @g
    public static final Companion Companion = Companion.$$INSTANCE;

    /* compiled from: BuiltInsLoader.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        @g
        private static final Lazy<BuiltInsLoader> Instance$delegate;

        static {
            Lazy<BuiltInsLoader> lazy;
            lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.PUBLICATION, (Function0) BuiltInsLoader$Companion$Instance$2.INSTANCE);
            Instance$delegate = lazy;
        }

        private Companion() {
        }

        @g
        public final BuiltInsLoader getInstance() {
            return Instance$delegate.getValue();
        }
    }

    @g
    PackageFragmentProvider createPackageFragmentProvider(@g StorageManager storageManager, @g ModuleDescriptor moduleDescriptor, @g Iterable<? extends ClassDescriptorFactory> iterable, @g PlatformDependentDeclarationFilter platformDependentDeclarationFilter, @g AdditionalClassPartsProvider additionalClassPartsProvider, boolean z9);
}

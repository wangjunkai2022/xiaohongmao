package kotlin.reflect.jvm.internal.impl.resolve.jvm;

import java.util.Collection;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassConstructorDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.SimpleFunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.name.Name;
import m8.g;

/* compiled from: SyntheticJavaPartsProvider.kt */
/* loaded from: classes4.dex */
public interface SyntheticJavaPartsProvider {
    @g
    public static final Companion Companion = Companion.$$INSTANCE;

    /* compiled from: SyntheticJavaPartsProvider.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        @g
        private static final CompositeSyntheticJavaPartsProvider EMPTY;

        static {
            List emptyList;
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            EMPTY = new CompositeSyntheticJavaPartsProvider(emptyList);
        }

        private Companion() {
        }

        @g
        public final CompositeSyntheticJavaPartsProvider getEMPTY() {
            return EMPTY;
        }
    }

    void generateConstructors(@g ClassDescriptor classDescriptor, @g List<ClassConstructorDescriptor> list);

    void generateMethods(@g ClassDescriptor classDescriptor, @g Name name, @g Collection<SimpleFunctionDescriptor> collection);

    void generateStaticFunctions(@g ClassDescriptor classDescriptor, @g Name name, @g Collection<SimpleFunctionDescriptor> collection);

    @g
    List<Name> getMethodNames(@g ClassDescriptor classDescriptor);

    @g
    List<Name> getStaticFunctionNames(@g ClassDescriptor classDescriptor);
}

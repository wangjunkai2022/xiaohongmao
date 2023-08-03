package kotlin.reflect.jvm.internal.impl.resolve.jvm;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassConstructorDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.SimpleFunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.name.Name;
import m8.g;

/* compiled from: SyntheticJavaPartsProvider.kt */
/* loaded from: classes4.dex */
public final class CompositeSyntheticJavaPartsProvider implements SyntheticJavaPartsProvider {
    @g
    private final List<SyntheticJavaPartsProvider> inner;

    /* JADX WARN: Multi-variable type inference failed */
    public CompositeSyntheticJavaPartsProvider(@g List<? extends SyntheticJavaPartsProvider> inner) {
        Intrinsics.checkNotNullParameter(inner, "inner");
        this.inner = inner;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.jvm.SyntheticJavaPartsProvider
    public void generateConstructors(@g ClassDescriptor thisDescriptor, @g List<ClassConstructorDescriptor> result) {
        Intrinsics.checkNotNullParameter(thisDescriptor, "thisDescriptor");
        Intrinsics.checkNotNullParameter(result, "result");
        for (SyntheticJavaPartsProvider syntheticJavaPartsProvider : this.inner) {
            syntheticJavaPartsProvider.generateConstructors(thisDescriptor, result);
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.jvm.SyntheticJavaPartsProvider
    public void generateMethods(@g ClassDescriptor thisDescriptor, @g Name name, @g Collection<SimpleFunctionDescriptor> result) {
        Intrinsics.checkNotNullParameter(thisDescriptor, "thisDescriptor");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(result, "result");
        for (SyntheticJavaPartsProvider syntheticJavaPartsProvider : this.inner) {
            syntheticJavaPartsProvider.generateMethods(thisDescriptor, name, result);
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.jvm.SyntheticJavaPartsProvider
    public void generateStaticFunctions(@g ClassDescriptor thisDescriptor, @g Name name, @g Collection<SimpleFunctionDescriptor> result) {
        Intrinsics.checkNotNullParameter(thisDescriptor, "thisDescriptor");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(result, "result");
        for (SyntheticJavaPartsProvider syntheticJavaPartsProvider : this.inner) {
            syntheticJavaPartsProvider.generateStaticFunctions(thisDescriptor, name, result);
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.jvm.SyntheticJavaPartsProvider
    @g
    public List<Name> getMethodNames(@g ClassDescriptor thisDescriptor) {
        Intrinsics.checkNotNullParameter(thisDescriptor, "thisDescriptor");
        List<SyntheticJavaPartsProvider> list = this.inner;
        ArrayList arrayList = new ArrayList();
        for (SyntheticJavaPartsProvider syntheticJavaPartsProvider : list) {
            CollectionsKt__MutableCollectionsKt.addAll(arrayList, syntheticJavaPartsProvider.getMethodNames(thisDescriptor));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.jvm.SyntheticJavaPartsProvider
    @g
    public List<Name> getStaticFunctionNames(@g ClassDescriptor thisDescriptor) {
        Intrinsics.checkNotNullParameter(thisDescriptor, "thisDescriptor");
        List<SyntheticJavaPartsProvider> list = this.inner;
        ArrayList arrayList = new ArrayList();
        for (SyntheticJavaPartsProvider syntheticJavaPartsProvider : list) {
            CollectionsKt__MutableCollectionsKt.addAll(arrayList, syntheticJavaPartsProvider.getStaticFunctionNames(thisDescriptor));
        }
        return arrayList;
    }
}

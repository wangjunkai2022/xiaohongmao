package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt__SequencesKt;
import kotlin.sequences.SequencesKt___SequencesKt;
import m8.g;
import m8.h;

/* compiled from: findClassInModule.kt */
/* loaded from: classes4.dex */
public final class FindClassInModuleKt {
    @h
    public static final ClassDescriptor findClassAcrossModuleDependencies(@g ModuleDescriptor moduleDescriptor, @g ClassId classId) {
        Intrinsics.checkNotNullParameter(moduleDescriptor, "<this>");
        Intrinsics.checkNotNullParameter(classId, "classId");
        ClassifierDescriptor findClassifierAcrossModuleDependencies = findClassifierAcrossModuleDependencies(moduleDescriptor, classId);
        if (findClassifierAcrossModuleDependencies instanceof ClassDescriptor) {
            return (ClassDescriptor) findClassifierAcrossModuleDependencies;
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x014b  */
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor findClassifierAcrossModuleDependencies(@m8.g kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor r10, @m8.g kotlin.reflect.jvm.internal.impl.name.ClassId r11) {
        /*
            Method dump skipped, instructions count: 333
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.descriptors.FindClassInModuleKt.findClassifierAcrossModuleDependencies(kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor, kotlin.reflect.jvm.internal.impl.name.ClassId):kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor");
    }

    @g
    public static final ClassDescriptor findNonGenericClassAcrossDependencies(@g ModuleDescriptor moduleDescriptor, @g ClassId classId, @g NotFoundClasses notFoundClasses) {
        Sequence generateSequence;
        Sequence map;
        List<Integer> list;
        Intrinsics.checkNotNullParameter(moduleDescriptor, "<this>");
        Intrinsics.checkNotNullParameter(classId, "classId");
        Intrinsics.checkNotNullParameter(notFoundClasses, "notFoundClasses");
        ClassDescriptor findClassAcrossModuleDependencies = findClassAcrossModuleDependencies(moduleDescriptor, classId);
        if (findClassAcrossModuleDependencies != null) {
            return findClassAcrossModuleDependencies;
        }
        generateSequence = SequencesKt__SequencesKt.generateSequence(classId, FindClassInModuleKt$findNonGenericClassAcrossDependencies$typeParametersCount$1.INSTANCE);
        map = SequencesKt___SequencesKt.map(generateSequence, FindClassInModuleKt$findNonGenericClassAcrossDependencies$typeParametersCount$2.INSTANCE);
        list = SequencesKt___SequencesKt.toList(map);
        return notFoundClasses.getClass(classId, list);
    }

    @h
    public static final TypeAliasDescriptor findTypeAliasAcrossModuleDependencies(@g ModuleDescriptor moduleDescriptor, @g ClassId classId) {
        Intrinsics.checkNotNullParameter(moduleDescriptor, "<this>");
        Intrinsics.checkNotNullParameter(classId, "classId");
        ClassifierDescriptor findClassifierAcrossModuleDependencies = findClassifierAcrossModuleDependencies(moduleDescriptor, classId);
        if (findClassifierAcrossModuleDependencies instanceof TypeAliasDescriptor) {
            return (TypeAliasDescriptor) findClassifierAcrossModuleDependencies;
        }
        return null;
    }
}

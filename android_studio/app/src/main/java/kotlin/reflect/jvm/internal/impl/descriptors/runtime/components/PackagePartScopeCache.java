package kotlin.reflect.jvm.internal.impl.descriptors.runtime.components;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.EmptyPackageFragmentDescriptor;
import kotlin.reflect.jvm.internal.impl.load.kotlin.DeserializedDescriptorResolver;
import kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinClassFinderKt;
import kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass;
import kotlin.reflect.jvm.internal.impl.load.kotlin.header.KotlinClassHeader;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmClassName;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.ChainedMemberScope;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import m8.g;

/* compiled from: PackagePartScopeCache.kt */
/* loaded from: classes4.dex */
public final class PackagePartScopeCache {
    @g
    private final ConcurrentHashMap<ClassId, MemberScope> cache;
    @g
    private final ReflectKotlinClassFinder kotlinClassFinder;
    @g
    private final DeserializedDescriptorResolver resolver;

    public PackagePartScopeCache(@g DeserializedDescriptorResolver resolver, @g ReflectKotlinClassFinder kotlinClassFinder) {
        Intrinsics.checkNotNullParameter(resolver, "resolver");
        Intrinsics.checkNotNullParameter(kotlinClassFinder, "kotlinClassFinder");
        this.resolver = resolver;
        this.kotlinClassFinder = kotlinClassFinder;
        this.cache = new ConcurrentHashMap<>();
    }

    @g
    public final MemberScope getPackagePartScope(@g ReflectKotlinClass fileClass) {
        Collection<KotlinJvmBinaryClass> listOf;
        List list;
        Intrinsics.checkNotNullParameter(fileClass, "fileClass");
        ConcurrentHashMap<ClassId, MemberScope> concurrentHashMap = this.cache;
        ClassId classId = fileClass.getClassId();
        MemberScope memberScope = concurrentHashMap.get(classId);
        if (memberScope == null) {
            FqName packageFqName = fileClass.getClassId().getPackageFqName();
            Intrinsics.checkNotNullExpressionValue(packageFqName, "fileClass.classId.packageFqName");
            if (fileClass.getClassHeader().getKind() == KotlinClassHeader.Kind.MULTIFILE_CLASS) {
                List<String> multifilePartNames = fileClass.getClassHeader().getMultifilePartNames();
                listOf = new ArrayList();
                for (String str : multifilePartNames) {
                    ClassId classId2 = ClassId.topLevel(JvmClassName.byInternalName(str).getFqNameForTopLevelClassMaybeWithDollars());
                    Intrinsics.checkNotNullExpressionValue(classId2, "topLevel(JvmClassName.by…velClassMaybeWithDollars)");
                    KotlinJvmBinaryClass findKotlinClass = KotlinClassFinderKt.findKotlinClass(this.kotlinClassFinder, classId2);
                    if (findKotlinClass != null) {
                        listOf.add(findKotlinClass);
                    }
                }
            } else {
                listOf = CollectionsKt__CollectionsJVMKt.listOf(fileClass);
            }
            EmptyPackageFragmentDescriptor emptyPackageFragmentDescriptor = new EmptyPackageFragmentDescriptor(this.resolver.getComponents().getModuleDescriptor(), packageFqName);
            ArrayList arrayList = new ArrayList();
            for (KotlinJvmBinaryClass kotlinJvmBinaryClass : listOf) {
                MemberScope createKotlinPackagePartScope = this.resolver.createKotlinPackagePartScope(emptyPackageFragmentDescriptor, kotlinJvmBinaryClass);
                if (createKotlinPackagePartScope != null) {
                    arrayList.add(createKotlinPackagePartScope);
                }
            }
            list = CollectionsKt___CollectionsKt.toList(arrayList);
            ChainedMemberScope.Companion companion = ChainedMemberScope.Companion;
            MemberScope create = companion.create("package " + packageFqName + " (" + fileClass + ')', list);
            MemberScope putIfAbsent = concurrentHashMap.putIfAbsent(classId, create);
            memberScope = putIfAbsent == null ? create : putIfAbsent;
        }
        Intrinsics.checkNotNullExpressionValue(memberScope, "cache.getOrPut(fileClass…ileClass)\", scopes)\n    }");
        return memberScope;
    }
}

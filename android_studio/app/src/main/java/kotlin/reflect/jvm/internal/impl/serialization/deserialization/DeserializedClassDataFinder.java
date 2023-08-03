package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProvider;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProviderKt;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import m8.g;
import m8.h;

/* compiled from: DeserializedClassDataFinder.kt */
/* loaded from: classes4.dex */
public final class DeserializedClassDataFinder implements ClassDataFinder {
    @g
    private final PackageFragmentProvider packageFragmentProvider;

    public DeserializedClassDataFinder(@g PackageFragmentProvider packageFragmentProvider) {
        Intrinsics.checkNotNullParameter(packageFragmentProvider, "packageFragmentProvider");
        this.packageFragmentProvider = packageFragmentProvider;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.ClassDataFinder
    @h
    public ClassData findClassData(@g ClassId classId) {
        ClassData findClassData;
        Intrinsics.checkNotNullParameter(classId, "classId");
        PackageFragmentProvider packageFragmentProvider = this.packageFragmentProvider;
        FqName packageFqName = classId.getPackageFqName();
        Intrinsics.checkNotNullExpressionValue(packageFqName, "classId.packageFqName");
        for (PackageFragmentDescriptor packageFragmentDescriptor : PackageFragmentProviderKt.packageFragments(packageFragmentProvider, packageFqName)) {
            if ((packageFragmentDescriptor instanceof DeserializedPackageFragment) && (findClassData = ((DeserializedPackageFragment) packageFragmentDescriptor).getClassDataFinder().findClassData(classId)) != null) {
                return findClassData;
            }
        }
        return null;
    }
}

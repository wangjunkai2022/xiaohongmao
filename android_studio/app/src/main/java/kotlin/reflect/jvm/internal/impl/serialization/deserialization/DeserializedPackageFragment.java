package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PackageFragmentDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope;
import kotlin.reflect.jvm.internal.impl.storage.StorageManager;
import m8.g;

/* compiled from: DeserializedPackageFragment.kt */
/* loaded from: classes4.dex */
public abstract class DeserializedPackageFragment extends PackageFragmentDescriptorImpl {
    @g
    private final StorageManager storageManager;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeserializedPackageFragment(@g FqName fqName, @g StorageManager storageManager, @g ModuleDescriptor module) {
        super(module, fqName);
        Intrinsics.checkNotNullParameter(fqName, "fqName");
        Intrinsics.checkNotNullParameter(storageManager, "storageManager");
        Intrinsics.checkNotNullParameter(module, "module");
        this.storageManager = storageManager;
    }

    @g
    public abstract ClassDataFinder getClassDataFinder();

    public boolean hasTopLevelClass(@g Name name) {
        Intrinsics.checkNotNullParameter(name, "name");
        MemberScope memberScope = getMemberScope();
        return (memberScope instanceof DeserializedMemberScope) && ((DeserializedMemberScope) memberScope).getClassNames$deserialization().contains(name);
    }

    public abstract void initialize(@g DeserializationComponents deserializationComponents);
}

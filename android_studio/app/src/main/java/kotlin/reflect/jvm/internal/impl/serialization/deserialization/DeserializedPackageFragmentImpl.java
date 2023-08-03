package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.BinaryVersion;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolverImpl;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedContainerSource;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedPackageMemberScope;
import kotlin.reflect.jvm.internal.impl.storage.StorageManager;
import m8.g;
import m8.h;

/* compiled from: DeserializedPackageFragmentImpl.kt */
/* loaded from: classes4.dex */
public abstract class DeserializedPackageFragmentImpl extends DeserializedPackageFragment {
    private MemberScope _memberScope;
    @h
    private ProtoBuf.PackageFragment _proto;
    @g
    private final ProtoBasedClassDataFinder classDataFinder;
    @h
    private final DeserializedContainerSource containerSource;
    @g
    private final BinaryVersion metadataVersion;
    @g
    private final NameResolverImpl nameResolver;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeserializedPackageFragmentImpl(@g FqName fqName, @g StorageManager storageManager, @g ModuleDescriptor module, @g ProtoBuf.PackageFragment proto, @g BinaryVersion metadataVersion, @h DeserializedContainerSource deserializedContainerSource) {
        super(fqName, storageManager, module);
        Intrinsics.checkNotNullParameter(fqName, "fqName");
        Intrinsics.checkNotNullParameter(storageManager, "storageManager");
        Intrinsics.checkNotNullParameter(module, "module");
        Intrinsics.checkNotNullParameter(proto, "proto");
        Intrinsics.checkNotNullParameter(metadataVersion, "metadataVersion");
        this.metadataVersion = metadataVersion;
        this.containerSource = deserializedContainerSource;
        ProtoBuf.StringTable strings = proto.getStrings();
        Intrinsics.checkNotNullExpressionValue(strings, "proto.strings");
        ProtoBuf.QualifiedNameTable qualifiedNames = proto.getQualifiedNames();
        Intrinsics.checkNotNullExpressionValue(qualifiedNames, "proto.qualifiedNames");
        NameResolverImpl nameResolverImpl = new NameResolverImpl(strings, qualifiedNames);
        this.nameResolver = nameResolverImpl;
        this.classDataFinder = new ProtoBasedClassDataFinder(proto, nameResolverImpl, metadataVersion, new DeserializedPackageFragmentImpl$classDataFinder$1(this));
        this._proto = proto;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentDescriptor
    @g
    public MemberScope getMemberScope() {
        MemberScope memberScope = this._memberScope;
        if (memberScope == null) {
            Intrinsics.throwUninitializedPropertyAccessException("_memberScope");
            return null;
        }
        return memberScope;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializedPackageFragment
    public void initialize(@g DeserializationComponents components) {
        Intrinsics.checkNotNullParameter(components, "components");
        ProtoBuf.PackageFragment packageFragment = this._proto;
        if (packageFragment != null) {
            this._proto = null;
            ProtoBuf.Package r42 = packageFragment.getPackage();
            Intrinsics.checkNotNullExpressionValue(r42, "proto.`package`");
            NameResolverImpl nameResolverImpl = this.nameResolver;
            BinaryVersion binaryVersion = this.metadataVersion;
            DeserializedContainerSource deserializedContainerSource = this.containerSource;
            this._memberScope = new DeserializedPackageMemberScope(this, r42, nameResolverImpl, binaryVersion, deserializedContainerSource, components, "scope of " + this, new DeserializedPackageFragmentImpl$initialize$1(this));
            return;
        }
        throw new IllegalStateException("Repeated call to DeserializedPackageFragmentImpl::initialize".toString());
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializedPackageFragment
    @g
    public ProtoBasedClassDataFinder getClassDataFinder() {
        return this.classDataFinder;
    }
}

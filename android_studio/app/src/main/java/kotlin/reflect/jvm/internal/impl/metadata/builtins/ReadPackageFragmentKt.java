package kotlin.reflect.jvm.internal.impl.metadata.builtins;

import java.io.InputStream;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf;
import kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite;
import m8.g;

/* compiled from: readPackageFragment.kt */
/* loaded from: classes4.dex */
public final class ReadPackageFragmentKt {
    @g
    public static final Pair<ProtoBuf.PackageFragment, BuiltInsBinaryVersion> readBuiltinsPackageFragment(@g InputStream inputStream) {
        ProtoBuf.PackageFragment packageFragment;
        Intrinsics.checkNotNullParameter(inputStream, "<this>");
        try {
            BuiltInsBinaryVersion readFrom = BuiltInsBinaryVersion.Companion.readFrom(inputStream);
            if (readFrom.isCompatible()) {
                ExtensionRegistryLite newInstance = ExtensionRegistryLite.newInstance();
                BuiltInsProtoBuf.registerAllExtensions(newInstance);
                packageFragment = ProtoBuf.PackageFragment.parseFrom(inputStream, newInstance);
            } else {
                packageFragment = null;
            }
            Pair<ProtoBuf.PackageFragment, BuiltInsBinaryVersion> pair = TuplesKt.to(packageFragment, readFrom);
            CloseableKt.closeFinally(inputStream, null);
            return pair;
        } finally {
        }
    }
}

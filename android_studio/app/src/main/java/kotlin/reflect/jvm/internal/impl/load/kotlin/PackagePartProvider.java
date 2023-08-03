package kotlin.reflect.jvm.internal.impl.load.kotlin;

import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: PackagePartProvider.kt */
/* loaded from: classes4.dex */
public interface PackagePartProvider {

    /* compiled from: PackagePartProvider.kt */
    /* loaded from: classes4.dex */
    public static final class Empty implements PackagePartProvider {
        @g
        public static final Empty INSTANCE = new Empty();

        private Empty() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.PackagePartProvider
        @g
        public List<String> findPackageParts(@g String packageFqName) {
            List<String> emptyList;
            Intrinsics.checkNotNullParameter(packageFqName, "packageFqName");
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
    }

    @g
    List<String> findPackageParts(@g String str);
}

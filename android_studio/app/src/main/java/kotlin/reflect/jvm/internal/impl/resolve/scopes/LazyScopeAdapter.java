package kotlin.reflect.jvm.internal.impl.resolve.scopes;

import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.storage.NotNullLazyValue;
import kotlin.reflect.jvm.internal.impl.storage.StorageManager;
import m8.g;

/* compiled from: LazyScopeAdapter.kt */
/* loaded from: classes4.dex */
public final class LazyScopeAdapter extends AbstractScopeAdapter {
    @g
    private final NotNullLazyValue<MemberScope> lazyScope;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public LazyScopeAdapter(@g Function0<? extends MemberScope> getScope) {
        this(null, getScope, 1, null);
        Intrinsics.checkNotNullParameter(getScope, "getScope");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public /* synthetic */ LazyScopeAdapter(kotlin.reflect.jvm.internal.impl.storage.StorageManager r1, kotlin.jvm.functions.Function0 r2, int r3, kotlin.jvm.internal.DefaultConstructorMarker r4) {
        /*
            r0 = this;
            r3 = r3 & 1
            if (r3 == 0) goto Lb
            kotlin.reflect.jvm.internal.impl.storage.StorageManager r1 = kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager.NO_LOCKS
            java.lang.String r3 = "NO_LOCKS"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r3)
        Lb:
            r0.<init>(r1, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.resolve.scopes.LazyScopeAdapter.<init>(kotlin.reflect.jvm.internal.impl.storage.StorageManager, kotlin.jvm.functions.Function0, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.AbstractScopeAdapter
    @g
    protected MemberScope getWorkerScope() {
        return this.lazyScope.invoke();
    }

    @JvmOverloads
    public LazyScopeAdapter(@g StorageManager storageManager, @g Function0<? extends MemberScope> getScope) {
        Intrinsics.checkNotNullParameter(storageManager, "storageManager");
        Intrinsics.checkNotNullParameter(getScope, "getScope");
        this.lazyScope = storageManager.createLazyValue(new LazyScopeAdapter$lazyScope$1(getScope));
    }
}

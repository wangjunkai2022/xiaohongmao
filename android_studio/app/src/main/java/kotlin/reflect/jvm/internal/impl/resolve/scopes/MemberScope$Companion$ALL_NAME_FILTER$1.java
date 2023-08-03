package kotlin.reflect.jvm.internal.impl.resolve.scopes;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.name.Name;
import m8.g;

/* compiled from: MemberScope.kt */
/* loaded from: classes4.dex */
final class MemberScope$Companion$ALL_NAME_FILTER$1 extends Lambda implements Function1<Name, Boolean> {
    public static final MemberScope$Companion$ALL_NAME_FILTER$1 INSTANCE = new MemberScope$Companion$ALL_NAME_FILTER$1();

    MemberScope$Companion$ALL_NAME_FILTER$1() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    @g
    public final Boolean invoke(@g Name it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Boolean.TRUE;
    }
}

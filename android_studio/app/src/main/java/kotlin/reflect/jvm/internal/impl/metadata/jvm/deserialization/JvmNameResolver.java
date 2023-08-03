package kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization;

import kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf;
import m8.g;

/* compiled from: JvmNameResolver.kt */
/* loaded from: classes4.dex */
public final class JvmNameResolver extends JvmNameResolverBase {
    @g
    private final JvmProtoBuf.StringTableTypes types;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public JvmNameResolver(@m8.g kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf.StringTableTypes r4, @m8.g java.lang.String[] r5) {
        /*
            r3 = this;
            java.lang.String r0 = "types"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
            java.lang.String r0 = "strings"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
            java.util.List r0 = r4.getLocalNameList()
            boolean r1 = r0.isEmpty()
            if (r1 == 0) goto L19
            java.util.Set r0 = kotlin.collections.SetsKt.emptySet()
            goto L22
        L19:
            java.lang.String r1 = ""
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            java.util.Set r0 = kotlin.collections.CollectionsKt.toSet(r0)
        L22:
            java.util.List r1 = r4.getRecordList()
            java.lang.String r2 = "types.recordList"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r2)
            java.util.List r1 = kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmNameResolverKt.toExpandedRecordsList(r1)
            r3.<init>(r5, r0, r1)
            r3.types = r4
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmNameResolver.<init>(kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf$StringTableTypes, java.lang.String[]):void");
    }
}

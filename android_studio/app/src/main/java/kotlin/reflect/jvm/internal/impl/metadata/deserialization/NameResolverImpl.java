package kotlin.reflect.jvm.internal.impl.metadata.deserialization;

import com.fasterxml.jackson.core.e;
import java.util.LinkedList;
import java.util.List;
import kotlin.Triple;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf;
import m8.g;

/* compiled from: NameResolverImpl.kt */
/* loaded from: classes4.dex */
public final class NameResolverImpl implements NameResolver {
    @g
    private final ProtoBuf.QualifiedNameTable qualifiedNames;
    @g
    private final ProtoBuf.StringTable strings;

    /* compiled from: NameResolverImpl.kt */
    /* loaded from: classes4.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ProtoBuf.QualifiedNameTable.QualifiedName.Kind.values().length];
            iArr[ProtoBuf.QualifiedNameTable.QualifiedName.Kind.CLASS.ordinal()] = 1;
            iArr[ProtoBuf.QualifiedNameTable.QualifiedName.Kind.PACKAGE.ordinal()] = 2;
            iArr[ProtoBuf.QualifiedNameTable.QualifiedName.Kind.LOCAL.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public NameResolverImpl(@g ProtoBuf.StringTable strings, @g ProtoBuf.QualifiedNameTable qualifiedNames) {
        Intrinsics.checkNotNullParameter(strings, "strings");
        Intrinsics.checkNotNullParameter(qualifiedNames, "qualifiedNames");
        this.strings = strings;
        this.qualifiedNames = qualifiedNames;
    }

    private final Triple<List<String>, List<String>, Boolean> traverseIds(int i4) {
        LinkedList linkedList = new LinkedList();
        LinkedList linkedList2 = new LinkedList();
        boolean z9 = false;
        while (i4 != -1) {
            ProtoBuf.QualifiedNameTable.QualifiedName qualifiedName = this.qualifiedNames.getQualifiedName(i4);
            String string = this.strings.getString(qualifiedName.getShortName());
            ProtoBuf.QualifiedNameTable.QualifiedName.Kind kind = qualifiedName.getKind();
            Intrinsics.checkNotNull(kind);
            int i10 = WhenMappings.$EnumSwitchMapping$0[kind.ordinal()];
            if (i10 == 1) {
                linkedList2.addFirst(string);
            } else if (i10 == 2) {
                linkedList.addFirst(string);
            } else if (i10 == 3) {
                linkedList2.addFirst(string);
                z9 = true;
            }
            i4 = qualifiedName.getParentQualifiedName();
        }
        return new Triple<>(linkedList, linkedList2, Boolean.valueOf(z9));
    }

    @Override // kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver
    @g
    public String getQualifiedClassName(int i4) {
        String joinToString$default;
        String joinToString$default2;
        Triple<List<String>, List<String>, Boolean> traverseIds = traverseIds(i4);
        List<String> component1 = traverseIds.component1();
        joinToString$default = CollectionsKt___CollectionsKt.joinToString$default(traverseIds.component2(), ".", null, null, 0, null, null, 62, null);
        if (component1.isEmpty()) {
            return joinToString$default;
        }
        StringBuilder sb = new StringBuilder();
        joinToString$default2 = CollectionsKt___CollectionsKt.joinToString$default(component1, "/", null, null, 0, null, null, 62, null);
        sb.append(joinToString$default2);
        sb.append(e.f13819f);
        sb.append(joinToString$default);
        return sb.toString();
    }

    @Override // kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver
    @g
    public String getString(int i4) {
        String string = this.strings.getString(i4);
        Intrinsics.checkNotNullExpressionValue(string, "strings.getString(index)");
        return string;
    }

    @Override // kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver
    public boolean isLocalClassName(int i4) {
        return traverseIds(i4).getThird().booleanValue();
    }
}

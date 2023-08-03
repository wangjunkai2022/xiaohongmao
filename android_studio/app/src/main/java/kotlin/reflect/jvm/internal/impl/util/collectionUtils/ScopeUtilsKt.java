package kotlin.reflect.jvm.internal.impl.util.collectionUtils;

import java.util.Collection;
import java.util.LinkedHashSet;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.utils.SmartList;
import m8.g;
import m8.h;

/* compiled from: scopeUtils.kt */
/* loaded from: classes4.dex */
public final class ScopeUtilsKt {
    /* JADX WARN: Multi-variable type inference failed */
    @h
    public static final <T> Collection<T> concat(@h Collection<? extends T> collection, @g Collection<? extends T> collection2) {
        Intrinsics.checkNotNullParameter(collection2, "collection");
        if (collection2.isEmpty()) {
            return collection;
        }
        if (collection == 0) {
            return collection2;
        }
        if (collection instanceof LinkedHashSet) {
            ((LinkedHashSet) collection).addAll(collection2);
            return collection;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet(collection);
        linkedHashSet.addAll(collection2);
        return linkedHashSet;
    }

    @g
    public static final SmartList<MemberScope> listOfNonEmptyScopes(@g Iterable<? extends MemberScope> scopes) {
        Intrinsics.checkNotNullParameter(scopes, "scopes");
        SmartList<MemberScope> smartList = new SmartList<>();
        for (MemberScope memberScope : scopes) {
            MemberScope memberScope2 = memberScope;
            if ((memberScope2 == null || memberScope2 == MemberScope.Empty.INSTANCE) ? false : true) {
                smartList.add(memberScope);
            }
        }
        return smartList;
    }
}

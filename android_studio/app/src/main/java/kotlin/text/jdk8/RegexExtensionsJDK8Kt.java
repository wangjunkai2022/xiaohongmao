package kotlin.text.jdk8;

import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.MatchGroup;
import kotlin.text.MatchGroupCollection;
import kotlin.text.MatchNamedGroupCollection;
import m8.g;
import m8.h;

/* compiled from: RegexExtensions.kt */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u001a\u0017\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0087\u0002¨\u0006\u0005"}, d2 = {"get", "Lkotlin/text/MatchGroup;", "Lkotlin/text/MatchGroupCollection;", "name", "", "kotlin-stdlib-jdk8"}, k = 2, mv = {1, 7, 1}, pn = "kotlin.text", xi = 48)
@JvmName(name = "RegexExtensionsJDK8Kt")
/* loaded from: classes4.dex */
public final class RegexExtensionsJDK8Kt {
    @SinceKotlin(version = "1.2")
    @h
    public static final MatchGroup get(@g MatchGroupCollection matchGroupCollection, @g String name) {
        Intrinsics.checkNotNullParameter(matchGroupCollection, "<this>");
        Intrinsics.checkNotNullParameter(name, "name");
        MatchNamedGroupCollection matchNamedGroupCollection = matchGroupCollection instanceof MatchNamedGroupCollection ? (MatchNamedGroupCollection) matchGroupCollection : null;
        if (matchNamedGroupCollection != null) {
            return matchNamedGroupCollection.get(name);
        }
        throw new UnsupportedOperationException("Retrieving groups by name is not supported on this platform.");
    }
}

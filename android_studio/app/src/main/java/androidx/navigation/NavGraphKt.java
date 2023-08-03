package androidx.navigation;

import androidx.annotation.IdRes;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: NavGraph.kt */
@Metadata(d1 = {"\u0000&\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\u001a\u0017\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\b\b\u0001\u0010\u0003\u001a\u00020\u0004H\u0086\u0002\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006H\u0086\u0002\u001a\u0017\u0010\u0007\u001a\u00020\b*\u00020\u00022\b\b\u0001\u0010\u0003\u001a\u00020\u0004H\u0086\n\u001a\u0015\u0010\u0007\u001a\u00020\b*\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006H\u0086\n\u001a\u0015\u0010\t\u001a\u00020\n*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\bH\u0086\n\u001a\u0015\u0010\f\u001a\u00020\n*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\bH\u0086\n\u001a\u0015\u0010\f\u001a\u00020\n*\u00020\u00022\u0006\u0010\r\u001a\u00020\u0002H\u0086\n¨\u0006\u000e"}, d2 = {"contains", "", "Landroidx/navigation/NavGraph;", "id", "", "route", "", "get", "Landroidx/navigation/NavDestination;", "minusAssign", "", "node", "plusAssign", "other", "navigation-common_release"}, k = 2, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes.dex */
public final class NavGraphKt {
    public static final boolean contains(@g NavGraph navGraph, @IdRes int i4) {
        Intrinsics.checkNotNullParameter(navGraph, "<this>");
        return navGraph.findNode(i4) != null;
    }

    @g
    public static final NavDestination get(@g NavGraph navGraph, @IdRes int i4) {
        Intrinsics.checkNotNullParameter(navGraph, "<this>");
        NavDestination findNode = navGraph.findNode(i4);
        if (findNode != null) {
            return findNode;
        }
        throw new IllegalArgumentException("No destination for " + i4 + " was found in " + navGraph);
    }

    public static final void minusAssign(@g NavGraph navGraph, @g NavDestination node) {
        Intrinsics.checkNotNullParameter(navGraph, "<this>");
        Intrinsics.checkNotNullParameter(node, "node");
        navGraph.remove(node);
    }

    public static final void plusAssign(@g NavGraph navGraph, @g NavDestination node) {
        Intrinsics.checkNotNullParameter(navGraph, "<this>");
        Intrinsics.checkNotNullParameter(node, "node");
        navGraph.addDestination(node);
    }

    public static final boolean contains(@g NavGraph navGraph, @g String route) {
        Intrinsics.checkNotNullParameter(navGraph, "<this>");
        Intrinsics.checkNotNullParameter(route, "route");
        return navGraph.findNode(route) != null;
    }

    @g
    public static final NavDestination get(@g NavGraph navGraph, @g String route) {
        Intrinsics.checkNotNullParameter(navGraph, "<this>");
        Intrinsics.checkNotNullParameter(route, "route");
        NavDestination findNode = navGraph.findNode(route);
        if (findNode != null) {
            return findNode;
        }
        throw new IllegalArgumentException("No destination for " + route + " was found in " + navGraph);
    }

    public static final void plusAssign(@g NavGraph navGraph, @g NavGraph other) {
        Intrinsics.checkNotNullParameter(navGraph, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        navGraph.addAll(other);
    }
}

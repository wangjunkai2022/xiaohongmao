package androidx.navigation;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.annotation.IdRes;
import androidx.annotation.RestrictTo;
import androidx.collection.SparseArrayCompat;
import androidx.collection.SparseArrayKt;
import androidx.navigation.NavDestination;
import com.alipay.sdk.util.i;
import io.sentry.Session;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt__SequencesKt;
import kotlin.sequences.SequencesKt___SequencesKt;
import kotlin.text.StringsKt__StringsJVMKt;
import m8.g;
import m8.h;

/* compiled from: NavGraph.kt */
@Metadata(d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u001c\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u001e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0002\b\u0007\n\u0002\u0010)\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0016\u0018\u0000 >2\u00020\u00012\b\u0012\u0004\u0012\u00020\u00010\u0002:\u0001>B\u0015\u0012\u000e\u0010\u0003\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00000\u0004¢\u0006\u0002\u0010\u0005J\u000e\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u0000J\u000e\u0010 \u001a\u00020\u001e2\u0006\u0010!\u001a\u00020\u0001J\u001f\u0010\"\u001a\u00020\u001e2\u0012\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00010#\"\u00020\u0001¢\u0006\u0002\u0010$J\u0016\u0010\"\u001a\u00020\u001e2\u000e\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010%J\u0006\u0010&\u001a\u00020\u001eJ\u0013\u0010'\u001a\u00020(2\b\u0010\u001f\u001a\u0004\u0018\u00010)H\u0096\u0002J\u0012\u0010*\u001a\u0004\u0018\u00010\u00012\b\b\u0001\u0010+\u001a\u00020\u0011J\u001c\u0010*\u001a\u0004\u0018\u00010\u00012\b\b\u0001\u0010+\u001a\u00020\u00112\u0006\u0010,\u001a\u00020(H\u0007J\u001a\u0010*\u001a\u0004\u0018\u00010\u00012\u0006\u0010-\u001a\u00020\u00072\u0006\u0010,\u001a\u00020(H\u0007J\u0012\u0010*\u001a\u0004\u0018\u00010\u00012\b\u0010-\u001a\u0004\u0018\u00010\u0007J\b\u0010.\u001a\u00020\u0011H\u0007J\b\u0010/\u001a\u00020\u0011H\u0016J\u000f\u00100\u001a\b\u0012\u0004\u0012\u00020\u000101H\u0086\u0002J\u0012\u00102\u001a\u0004\u0018\u0001032\u0006\u00104\u001a\u000205H\u0017J\u0018\u00106\u001a\u00020\u001e2\u0006\u00107\u001a\u0002082\u0006\u00109\u001a\u00020:H\u0016J\u000e\u0010;\u001a\u00020\u001e2\u0006\u0010!\u001a\u00020\u0001J\u000e\u0010<\u001a\u00020\u001e2\u0006\u0010\u0010\u001a\u00020\u0011J\u000e\u0010<\u001a\u00020\u001e2\u0006\u0010\u0018\u001a\u00020\u0007J\b\u0010=\u001a\u00020\u0007H\u0016R\u0014\u0010\u0006\u001a\u00020\u00078WX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\tR\u0019\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00010\u000b8G¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u000e\u001a\u00020\u00078G¢\u0006\u0006\u001a\u0004\b\u000f\u0010\tR\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R$\u0010\u0013\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u00118G@BX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R(\u0010\u0019\u001a\u0004\u0018\u00010\u00072\b\u0010\u0018\u001a\u0004\u0018\u00010\u0007@BX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\t\"\u0004\b\u001b\u0010\u001c¨\u0006?"}, d2 = {"Landroidx/navigation/NavGraph;", "Landroidx/navigation/NavDestination;", "", "navGraphNavigator", "Landroidx/navigation/Navigator;", "(Landroidx/navigation/Navigator;)V", "displayName", "", "getDisplayName", "()Ljava/lang/String;", "nodes", "Landroidx/collection/SparseArrayCompat;", "getNodes", "()Landroidx/collection/SparseArrayCompat;", "startDestDisplayName", "getStartDestDisplayName", "startDestId", "", "startDestIdName", "startDestinationId", "getStartDestinationId", "()I", "setStartDestinationId", "(I)V", "startDestRoute", "startDestinationRoute", "getStartDestinationRoute", "setStartDestinationRoute", "(Ljava/lang/String;)V", "addAll", "", "other", "addDestination", "node", "addDestinations", "", "([Landroidx/navigation/NavDestination;)V", "", "clear", "equals", "", "", "findNode", "resId", "searchParents", "route", "getStartDestination", "hashCode", "iterator", "", "matchDeepLink", "Landroidx/navigation/NavDestination$DeepLinkMatch;", "navDeepLinkRequest", "Landroidx/navigation/NavDeepLinkRequest;", "onInflate", "context", "Landroid/content/Context;", Session.b.f81849j, "Landroid/util/AttributeSet;", "remove", "setStartDestination", "toString", "Companion", "navigation-common_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes.dex */
public class NavGraph extends NavDestination implements Iterable<NavDestination>, KMappedMarker {
    @g
    public static final Companion Companion = new Companion(null);
    @g
    private final SparseArrayCompat<NavDestination> nodes;
    private int startDestId;
    @h
    private String startDestIdName;
    @h
    private String startDestinationRoute;

    /* compiled from: NavGraph.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\f\u0010\u0003\u001a\u00020\u0004*\u00020\u0005H\u0007¨\u0006\u0006"}, d2 = {"Landroidx/navigation/NavGraph$Companion;", "", "()V", "findStartDestination", "Landroidx/navigation/NavDestination;", "Landroidx/navigation/NavGraph;", "navigation-common_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @g
        public final NavDestination findStartDestination(@g NavGraph navGraph) {
            Sequence generateSequence;
            Object last;
            Intrinsics.checkNotNullParameter(navGraph, "<this>");
            generateSequence = SequencesKt__SequencesKt.generateSequence(navGraph.findNode(navGraph.getStartDestinationId()), NavGraph$Companion$findStartDestination$1.INSTANCE);
            last = SequencesKt___SequencesKt.last(generateSequence);
            return (NavDestination) last;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NavGraph(@g Navigator<? extends NavGraph> navGraphNavigator) {
        super(navGraphNavigator);
        Intrinsics.checkNotNullParameter(navGraphNavigator, "navGraphNavigator");
        this.nodes = new SparseArrayCompat<>();
    }

    @JvmStatic
    @g
    public static final NavDestination findStartDestination(@g NavGraph navGraph) {
        return Companion.findStartDestination(navGraph);
    }

    private final void setStartDestinationId(int i4) {
        if (i4 != getId()) {
            if (this.startDestinationRoute != null) {
                setStartDestinationRoute(null);
            }
            this.startDestId = i4;
            this.startDestIdName = null;
            return;
        }
        throw new IllegalArgumentException(("Start destination " + i4 + " cannot use the same id as the graph " + this).toString());
    }

    private final void setStartDestinationRoute(String str) {
        boolean isBlank;
        int hashCode;
        if (str == null) {
            hashCode = 0;
        } else if (!Intrinsics.areEqual(str, getRoute())) {
            isBlank = StringsKt__StringsJVMKt.isBlank(str);
            if (!isBlank) {
                hashCode = NavDestination.Companion.createRoute(str).hashCode();
            } else {
                throw new IllegalArgumentException("Cannot have an empty start destination route".toString());
            }
        } else {
            throw new IllegalArgumentException(("Start destination " + str + " cannot use the same route as the graph " + this).toString());
        }
        this.startDestId = hashCode;
        this.startDestinationRoute = str;
    }

    public final void addAll(@g NavGraph other) {
        Intrinsics.checkNotNullParameter(other, "other");
        Iterator<NavDestination> it = other.iterator();
        while (it.hasNext()) {
            it.remove();
            addDestination(it.next());
        }
    }

    public final void addDestination(@g NavDestination node) {
        Intrinsics.checkNotNullParameter(node, "node");
        int id = node.getId();
        String route = node.getRoute();
        if ((id == 0 && route == null) ? false : true) {
            if (getRoute() != null && !(!Intrinsics.areEqual(route, getRoute()))) {
                throw new IllegalArgumentException(("Destination " + node + " cannot have the same route as graph " + this).toString());
            }
            if (id != getId()) {
                NavDestination navDestination = this.nodes.get(id);
                if (navDestination == node) {
                    return;
                }
                if (node.getParent() == null) {
                    if (navDestination != null) {
                        navDestination.setParent(null);
                    }
                    node.setParent(this);
                    this.nodes.put(node.getId(), node);
                    return;
                }
                throw new IllegalStateException("Destination already has a parent set. Call NavGraph.remove() to remove the previous parent.".toString());
            }
            throw new IllegalArgumentException(("Destination " + node + " cannot have the same id as graph " + this).toString());
        }
        throw new IllegalArgumentException("Destinations must have an id or route. Call setId(), setRoute(), or include an android:id or app:route in your navigation XML.".toString());
    }

    public final void addDestinations(@g Collection<? extends NavDestination> nodes) {
        Intrinsics.checkNotNullParameter(nodes, "nodes");
        for (NavDestination navDestination : nodes) {
            if (navDestination != null) {
                addDestination(navDestination);
            }
        }
    }

    public final void clear() {
        Iterator<NavDestination> it = iterator();
        while (it.hasNext()) {
            it.next();
            it.remove();
        }
    }

    @Override // androidx.navigation.NavDestination
    public boolean equals(@h Object obj) {
        Sequence asSequence;
        List mutableList;
        if (obj == null || !(obj instanceof NavGraph)) {
            return false;
        }
        asSequence = SequencesKt__SequencesKt.asSequence(SparseArrayKt.valueIterator(this.nodes));
        mutableList = SequencesKt___SequencesKt.toMutableList(asSequence);
        NavGraph navGraph = (NavGraph) obj;
        Iterator valueIterator = SparseArrayKt.valueIterator(navGraph.nodes);
        while (valueIterator.hasNext()) {
            mutableList.remove((NavDestination) valueIterator.next());
        }
        return super.equals(obj) && this.nodes.size() == navGraph.nodes.size() && getStartDestinationId() == navGraph.getStartDestinationId() && mutableList.isEmpty();
    }

    @h
    public final NavDestination findNode(@IdRes int i4) {
        return findNode(i4, true);
    }

    @Override // androidx.navigation.NavDestination
    @g
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public String getDisplayName() {
        return getId() != 0 ? super.getDisplayName() : "the root navigation";
    }

    @g
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public final SparseArrayCompat<NavDestination> getNodes() {
        return this.nodes;
    }

    @g
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public final String getStartDestDisplayName() {
        if (this.startDestIdName == null) {
            String str = this.startDestinationRoute;
            if (str == null) {
                str = String.valueOf(this.startDestId);
            }
            this.startDestIdName = str;
        }
        String str2 = this.startDestIdName;
        Intrinsics.checkNotNull(str2);
        return str2;
    }

    @Deprecated(message = "Use getStartDestinationId instead.", replaceWith = @ReplaceWith(expression = "startDestinationId", imports = {}))
    @IdRes
    public final int getStartDestination() {
        return getStartDestinationId();
    }

    @IdRes
    public final int getStartDestinationId() {
        return this.startDestId;
    }

    @h
    public final String getStartDestinationRoute() {
        return this.startDestinationRoute;
    }

    @Override // androidx.navigation.NavDestination
    public int hashCode() {
        int startDestinationId = getStartDestinationId();
        SparseArrayCompat<NavDestination> sparseArrayCompat = this.nodes;
        int size = sparseArrayCompat.size();
        for (int i4 = 0; i4 < size; i4++) {
            startDestinationId = (((startDestinationId * 31) + sparseArrayCompat.keyAt(i4)) * 31) + sparseArrayCompat.valueAt(i4).hashCode();
        }
        return startDestinationId;
    }

    @Override // java.lang.Iterable
    @g
    public final Iterator<NavDestination> iterator() {
        return new NavGraph$iterator$1(this);
    }

    @Override // androidx.navigation.NavDestination
    @h
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public NavDestination.DeepLinkMatch matchDeepLink(@g NavDeepLinkRequest navDeepLinkRequest) {
        Comparable maxOrNull;
        List listOfNotNull;
        Comparable maxOrNull2;
        Intrinsics.checkNotNullParameter(navDeepLinkRequest, "navDeepLinkRequest");
        NavDestination.DeepLinkMatch matchDeepLink = super.matchDeepLink(navDeepLinkRequest);
        ArrayList arrayList = new ArrayList();
        Iterator<NavDestination> it = iterator();
        while (it.hasNext()) {
            NavDestination.DeepLinkMatch matchDeepLink2 = it.next().matchDeepLink(navDeepLinkRequest);
            if (matchDeepLink2 != null) {
                arrayList.add(matchDeepLink2);
            }
        }
        maxOrNull = CollectionsKt___CollectionsKt.maxOrNull((Iterable<? extends Comparable>) arrayList);
        listOfNotNull = CollectionsKt__CollectionsKt.listOfNotNull((Object[]) new NavDestination.DeepLinkMatch[]{matchDeepLink, (NavDestination.DeepLinkMatch) maxOrNull});
        maxOrNull2 = CollectionsKt___CollectionsKt.maxOrNull((Iterable<? extends Comparable>) listOfNotNull);
        return (NavDestination.DeepLinkMatch) maxOrNull2;
    }

    @Override // androidx.navigation.NavDestination
    public void onInflate(@g Context context, @g AttributeSet attrs) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(attrs, "attrs");
        super.onInflate(context, attrs);
        TypedArray obtainAttributes = context.getResources().obtainAttributes(attrs, androidx.navigation.common.R.styleable.NavGraphNavigator);
        Intrinsics.checkNotNullExpressionValue(obtainAttributes, "context.resources.obtain…vGraphNavigator\n        )");
        setStartDestinationId(obtainAttributes.getResourceId(androidx.navigation.common.R.styleable.NavGraphNavigator_startDestination, 0));
        this.startDestIdName = NavDestination.Companion.getDisplayName(context, this.startDestId);
        Unit unit = Unit.INSTANCE;
        obtainAttributes.recycle();
    }

    public final void remove(@g NavDestination node) {
        Intrinsics.checkNotNullParameter(node, "node");
        int indexOfKey = this.nodes.indexOfKey(node.getId());
        if (indexOfKey >= 0) {
            this.nodes.valueAt(indexOfKey).setParent(null);
            this.nodes.removeAt(indexOfKey);
        }
    }

    public final void setStartDestination(int i4) {
        setStartDestinationId(i4);
    }

    @Override // androidx.navigation.NavDestination
    @g
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        NavDestination findNode = findNode(this.startDestinationRoute);
        if (findNode == null) {
            findNode = findNode(getStartDestinationId());
        }
        sb.append(" startDestination=");
        if (findNode == null) {
            String str = this.startDestinationRoute;
            if (str != null) {
                sb.append(str);
            } else {
                String str2 = this.startDestIdName;
                if (str2 != null) {
                    sb.append(str2);
                } else {
                    sb.append("0x" + Integer.toHexString(this.startDestId));
                }
            }
        } else {
            sb.append("{");
            sb.append(findNode.toString());
            sb.append(i.f6967d);
        }
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "sb.toString()");
        return sb2;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x000f  */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0014 A[ORIG_RETURN, RETURN] */
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final androidx.navigation.NavDestination findNode(@m8.h java.lang.String r3) {
        /*
            r2 = this;
            r0 = 1
            if (r3 == 0) goto Lc
            boolean r1 = kotlin.text.StringsKt.isBlank(r3)
            if (r1 == 0) goto La
            goto Lc
        La:
            r1 = 0
            goto Ld
        Lc:
            r1 = 1
        Ld:
            if (r1 != 0) goto L14
            androidx.navigation.NavDestination r3 = r2.findNode(r3, r0)
            goto L15
        L14:
            r3 = 0
        L15:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.navigation.NavGraph.findNode(java.lang.String):androidx.navigation.NavDestination");
    }

    public final void setStartDestination(@g String startDestRoute) {
        Intrinsics.checkNotNullParameter(startDestRoute, "startDestRoute");
        setStartDestinationRoute(startDestRoute);
    }

    public final void addDestinations(@g NavDestination... nodes) {
        Intrinsics.checkNotNullParameter(nodes, "nodes");
        for (NavDestination navDestination : nodes) {
            addDestination(navDestination);
        }
    }

    @h
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public final NavDestination findNode(@IdRes int i4, boolean z9) {
        NavDestination navDestination = this.nodes.get(i4);
        if (navDestination == null) {
            if (!z9 || getParent() == null) {
                return null;
            }
            NavGraph parent = getParent();
            Intrinsics.checkNotNull(parent);
            return parent.findNode(i4);
        }
        return navDestination;
    }

    @h
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public final NavDestination findNode(@g String route, boolean z9) {
        Intrinsics.checkNotNullParameter(route, "route");
        NavDestination navDestination = this.nodes.get(NavDestination.Companion.createRoute(route).hashCode());
        if (navDestination == null) {
            if (!z9 || getParent() == null) {
                return null;
            }
            NavGraph parent = getParent();
            Intrinsics.checkNotNull(parent);
            return parent.findNode(route);
        }
        return navDestination;
    }
}

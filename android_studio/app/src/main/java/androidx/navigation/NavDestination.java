package androidx.navigation;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.net.Uri;
import android.os.Bundle;
import android.util.AttributeSet;
import androidx.annotation.CallSuper;
import androidx.annotation.IdRes;
import androidx.annotation.RestrictTo;
import androidx.collection.SparseArrayCompat;
import androidx.collection.SparseArrayKt;
import androidx.navigation.NavDeepLink;
import com.alipay.sdk.packet.d;
import io.sentry.Session;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.annotation.AnnotationRetention;
import kotlin.annotation.AnnotationTarget;
import kotlin.collections.ArrayDeque;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt;
import kotlin.text.StringsKt;
import m8.g;
import m8.h;
import org.bouncycastle.jcajce.util.AnnotatedPrivateKey;

/* compiled from: NavDestination.kt */
@Metadata(d1 = {"\u0000\u009e\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\r\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0015\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\b\u0016\u0018\u0000 X2\u00020\u0001:\u0003WXYB\u0017\b\u0016\u0012\u000e\u0010\u0002\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00000\u0003¢\u0006\u0002\u0010\u0004B\r\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0016\u00100\u001a\u0002012\u0006\u00102\u001a\u00020\u00062\u0006\u00103\u001a\u00020\nJ\u000e\u00104\u001a\u0002012\u0006\u00105\u001a\u00020\u0014J\u000e\u00104\u001a\u0002012\u0006\u00106\u001a\u00020\u0006J\u0014\u00107\u001a\u0004\u0018\u0001082\b\u00109\u001a\u0004\u0018\u000108H\u0007J\u0014\u0010:\u001a\u00020;2\n\b\u0002\u0010<\u001a\u0004\u0018\u00010\u0000H\u0007J\u0013\u0010=\u001a\u00020>2\b\u0010?\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0012\u0010@\u001a\u0004\u0018\u00010\r2\b\b\u0001\u0010\u0018\u001a\u00020\u0019J\u0010\u0010A\u001a\u00020>2\u0006\u0010B\u001a\u00020CH\u0016J\u0010\u0010A\u001a\u00020>2\u0006\u0010D\u001a\u00020EH\u0016J\b\u0010F\u001a\u00020\u0019H\u0016J\u0012\u0010G\u001a\u0004\u0018\u00010H2\u0006\u0010I\u001a\u00020EH\u0017J\u0018\u0010J\u001a\u0002012\u0006\u0010K\u001a\u00020L2\u0006\u0010M\u001a\u00020NH\u0017J\u0018\u0010O\u001a\u0002012\b\b\u0001\u0010P\u001a\u00020\u00192\u0006\u0010Q\u001a\u00020\rJ\u001a\u0010O\u001a\u0002012\b\b\u0001\u0010P\u001a\u00020\u00192\b\b\u0001\u0010R\u001a\u00020\u0019J\u0010\u0010S\u001a\u0002012\b\b\u0001\u0010P\u001a\u00020\u0019J\u000e\u0010T\u001a\u0002012\u0006\u00102\u001a\u00020\u0006J\b\u0010U\u001a\u00020>H\u0017J\b\u0010V\u001a\u00020\u0006H\u0016R\u001a\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\n0\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u001d\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\n0\u000f8F¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\u00020\u00068WX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0017R(\u0010\u0018\u001a\u00020\u00192\b\b\u0001\u0010\u0018\u001a\u00020\u00198G@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\u001f\u001a\u0004\u0018\u00010 X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b%\u0010\u0017R(\u0010(\u001a\u0004\u0018\u00010'2\b\u0010&\u001a\u0004\u0018\u00010'@GX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b)\u0010*\"\u0004\b+\u0010,R(\u0010-\u001a\u0004\u0018\u00010\u00062\b\u0010-\u001a\u0004\u0018\u00010\u0006@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b.\u0010\u0017\"\u0004\b/\u0010\u0007¨\u0006Z"}, d2 = {"Landroidx/navigation/NavDestination;", "", "navigator", "Landroidx/navigation/Navigator;", "(Landroidx/navigation/Navigator;)V", "navigatorName", "", "(Ljava/lang/String;)V", "_arguments", "", "Landroidx/navigation/NavArgument;", "actions", "Landroidx/collection/SparseArrayCompat;", "Landroidx/navigation/NavAction;", "arguments", "", "getArguments", "()Ljava/util/Map;", "deepLinks", "", "Landroidx/navigation/NavDeepLink;", "displayName", "getDisplayName", "()Ljava/lang/String;", "id", "", "getId", "()I", "setId", "(I)V", "idName", AnnotatedPrivateKey.LABEL, "", "getLabel", "()Ljava/lang/CharSequence;", "setLabel", "(Ljava/lang/CharSequence;)V", "getNavigatorName", "<set-?>", "Landroidx/navigation/NavGraph;", "parent", "getParent", "()Landroidx/navigation/NavGraph;", "setParent", "(Landroidx/navigation/NavGraph;)V", "route", "getRoute", "setRoute", "addArgument", "", "argumentName", "argument", "addDeepLink", "navDeepLink", "uriPattern", "addInDefaultArgs", "Landroid/os/Bundle;", "args", "buildDeepLinkIds", "", "previousDestination", "equals", "", "other", "getAction", "hasDeepLink", "deepLink", "Landroid/net/Uri;", "deepLinkRequest", "Landroidx/navigation/NavDeepLinkRequest;", "hashCode", "matchDeepLink", "Landroidx/navigation/NavDestination$DeepLinkMatch;", "navDeepLinkRequest", "onInflate", "context", "Landroid/content/Context;", Session.b.f81849j, "Landroid/util/AttributeSet;", "putAction", "actionId", d.f6907q, "destId", "removeAction", "removeArgument", "supportsActions", "toString", "ClassType", "Companion", "DeepLinkMatch", "navigation-common_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes.dex */
public class NavDestination {
    @g
    public static final Companion Companion = new Companion(null);
    @g
    private static final Map<String, Class<?>> classes = new LinkedHashMap();
    @g
    private Map<String, NavArgument> _arguments;
    @g
    private final SparseArrayCompat<NavAction> actions;
    @g
    private final List<NavDeepLink> deepLinks;
    private int id;
    @h
    private String idName;
    @h
    private CharSequence label;
    @g
    private final String navigatorName;
    @h
    private NavGraph parent;
    @h
    private String route;

    /* compiled from: NavDestination.kt */
    @Target({ElementType.TYPE, ElementType.ANNOTATION_TYPE})
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\u0002\u0018\u00002\u00020\u0001B\f\u0012\n\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u0003R\u0013\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u0003¢\u0006\u0006\u001a\u0004\b\u0002\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/navigation/NavDestination$ClassType;", "", "value", "Lkotlin/reflect/KClass;", "()Ljava/lang/Class;", "navigation-common_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    @kotlin.annotation.Target(allowedTargets = {AnnotationTarget.ANNOTATION_CLASS, AnnotationTarget.CLASS})
    @Retention(RetentionPolicy.CLASS)
    @kotlin.annotation.Retention(AnnotationRetention.BINARY)
    /* loaded from: classes.dex */
    public @interface ClassType {
        Class<?> value();
    }

    /* compiled from: NavDestination.kt */
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u000e\u001a\u00020\u00052\b\u0010\u000f\u001a\u0004\u0018\u00010\u0005H\u0007J\u0018\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0007J:\u0010\u0015\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u0001H\u00160\u0006\"\u0004\b\u0000\u0010\u00162\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0017\u001a\u00020\u00052\u0010\u0010\u0018\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u0001H\u00160\u0006H\u0005J:\u0010\u0019\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u0001H\u00160\u0006\"\u0004\b\u0000\u0010\u00162\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0017\u001a\u00020\u00052\u0010\u0010\u0018\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u0001H\u00160\u0006H\u0007R\u001e\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00060\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b*\u00020\t8FX\u0087\u0004¢\u0006\f\u0012\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r¨\u0006\u001a"}, d2 = {"Landroidx/navigation/NavDestination$Companion;", "", "()V", "classes", "", "", "Ljava/lang/Class;", "hierarchy", "Lkotlin/sequences/Sequence;", "Landroidx/navigation/NavDestination;", "getHierarchy$annotations", "(Landroidx/navigation/NavDestination;)V", "getHierarchy", "(Landroidx/navigation/NavDestination;)Lkotlin/sequences/Sequence;", "createRoute", "route", "getDisplayName", "context", "Landroid/content/Context;", "id", "", "parseClassFromName", "C", "name", "expectedClassType", "parseClassFromNameInternal", "navigation-common_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        public static /* synthetic */ void getHierarchy$annotations(NavDestination navDestination) {
        }

        @g
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public final String createRoute(@h String str) {
            if (str != null) {
                return "android-app://androidx.navigation/" + str;
            }
            return "";
        }

        @JvmStatic
        @g
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public final String getDisplayName(@g Context context, int i4) {
            String valueOf;
            Intrinsics.checkNotNullParameter(context, "context");
            if (i4 <= 16777215) {
                return String.valueOf(i4);
            }
            try {
                valueOf = context.getResources().getResourceName(i4);
            } catch (Resources.NotFoundException unused) {
                valueOf = String.valueOf(i4);
            }
            Intrinsics.checkNotNullExpressionValue(valueOf, "try {\n                co….toString()\n            }");
            return valueOf;
        }

        @g
        public final Sequence<NavDestination> getHierarchy(@g NavDestination navDestination) {
            Intrinsics.checkNotNullParameter(navDestination, "<this>");
            return SequencesKt.generateSequence(navDestination, NavDestination$Companion$hierarchy$1.INSTANCE);
        }

        @JvmStatic
        @g
        protected final <C> Class<? extends C> parseClassFromName(@g Context context, @g String name, @g Class<? extends C> expectedClassType) {
            String str;
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(expectedClassType, "expectedClassType");
            if (name.charAt(0) == '.') {
                str = context.getPackageName() + name;
            } else {
                str = name;
            }
            Class<? extends C> cls = (Class) NavDestination.classes.get(str);
            if (cls == null) {
                try {
                    cls = (Class<? extends C>) Class.forName(str, true, context.getClassLoader());
                    NavDestination.classes.put(name, cls);
                } catch (ClassNotFoundException e4) {
                    throw new IllegalArgumentException(e4);
                }
            }
            Intrinsics.checkNotNull(cls);
            if (expectedClassType.isAssignableFrom(cls)) {
                return cls;
            }
            throw new IllegalArgumentException((str + " must be a subclass of " + expectedClassType).toString());
        }

        @JvmStatic
        @g
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public final <C> Class<? extends C> parseClassFromNameInternal(@g Context context, @g String name, @g Class<? extends C> expectedClassType) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(expectedClassType, "expectedClassType");
            return NavDestination.parseClassFromName(context, name, expectedClassType);
        }
    }

    /* compiled from: NavDestination.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ\u0011\u0010\u0010\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u0000H\u0096\u0002R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u000e\u0010\b\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Landroidx/navigation/NavDestination$DeepLinkMatch;", "", "destination", "Landroidx/navigation/NavDestination;", "matchingArgs", "Landroid/os/Bundle;", "isExactDeepLink", "", "hasMatchingAction", "mimeTypeMatchLevel", "", "(Landroidx/navigation/NavDestination;Landroid/os/Bundle;ZZI)V", "getDestination", "()Landroidx/navigation/NavDestination;", "getMatchingArgs", "()Landroid/os/Bundle;", "compareTo", "other", "navigation-common_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes.dex */
    public static final class DeepLinkMatch implements Comparable<DeepLinkMatch> {
        @g
        private final NavDestination destination;
        private final boolean hasMatchingAction;
        private final boolean isExactDeepLink;
        @h
        private final Bundle matchingArgs;
        private final int mimeTypeMatchLevel;

        public DeepLinkMatch(@g NavDestination destination, @h Bundle bundle, boolean z9, boolean z10, int i4) {
            Intrinsics.checkNotNullParameter(destination, "destination");
            this.destination = destination;
            this.matchingArgs = bundle;
            this.isExactDeepLink = z9;
            this.hasMatchingAction = z10;
            this.mimeTypeMatchLevel = i4;
        }

        @g
        public final NavDestination getDestination() {
            return this.destination;
        }

        @h
        public final Bundle getMatchingArgs() {
            return this.matchingArgs;
        }

        @Override // java.lang.Comparable
        public int compareTo(@g DeepLinkMatch other) {
            Intrinsics.checkNotNullParameter(other, "other");
            boolean z9 = this.isExactDeepLink;
            if (!z9 || other.isExactDeepLink) {
                if (z9 || !other.isExactDeepLink) {
                    Bundle bundle = this.matchingArgs;
                    if (bundle == null || other.matchingArgs != null) {
                        if (bundle != null || other.matchingArgs == null) {
                            if (bundle != null) {
                                int size = bundle.size();
                                Bundle bundle2 = other.matchingArgs;
                                Intrinsics.checkNotNull(bundle2);
                                int size2 = size - bundle2.size();
                                if (size2 > 0) {
                                    return 1;
                                }
                                if (size2 < 0) {
                                    return -1;
                                }
                            }
                            boolean z10 = this.hasMatchingAction;
                            if (!z10 || other.hasMatchingAction) {
                                if (z10 || !other.hasMatchingAction) {
                                    return this.mimeTypeMatchLevel - other.mimeTypeMatchLevel;
                                }
                                return -1;
                            }
                            return 1;
                        }
                        return -1;
                    }
                    return 1;
                }
                return -1;
            }
            return 1;
        }
    }

    public NavDestination(@g String navigatorName) {
        Intrinsics.checkNotNullParameter(navigatorName, "navigatorName");
        this.navigatorName = navigatorName;
        this.deepLinks = new ArrayList();
        this.actions = new SparseArrayCompat<>();
        this._arguments = new LinkedHashMap();
    }

    public static /* synthetic */ int[] buildDeepLinkIds$default(NavDestination navDestination, NavDestination navDestination2, int i4, Object obj) {
        if (obj == null) {
            if ((i4 & 1) != 0) {
                navDestination2 = null;
            }
            return navDestination.buildDeepLinkIds(navDestination2);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: buildDeepLinkIds");
    }

    @JvmStatic
    @g
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static final String getDisplayName(@g Context context, int i4) {
        return Companion.getDisplayName(context, i4);
    }

    @g
    public static final Sequence<NavDestination> getHierarchy(@g NavDestination navDestination) {
        return Companion.getHierarchy(navDestination);
    }

    @JvmStatic
    @g
    protected static final <C> Class<? extends C> parseClassFromName(@g Context context, @g String str, @g Class<? extends C> cls) {
        return Companion.parseClassFromName(context, str, cls);
    }

    @JvmStatic
    @g
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static final <C> Class<? extends C> parseClassFromNameInternal(@g Context context, @g String str, @g Class<? extends C> cls) {
        return Companion.parseClassFromNameInternal(context, str, cls);
    }

    public final void addArgument(@g String argumentName, @g NavArgument argument) {
        Intrinsics.checkNotNullParameter(argumentName, "argumentName");
        Intrinsics.checkNotNullParameter(argument, "argument");
        this._arguments.put(argumentName, argument);
    }

    public final void addDeepLink(@g String uriPattern) {
        Intrinsics.checkNotNullParameter(uriPattern, "uriPattern");
        addDeepLink(new NavDeepLink.Builder().setUriPattern(uriPattern).build());
    }

    @h
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public final Bundle addInDefaultArgs(@h Bundle bundle) {
        if (bundle == null) {
            Map<String, NavArgument> map = this._arguments;
            if (map == null || map.isEmpty()) {
                return null;
            }
        }
        Bundle bundle2 = new Bundle();
        for (Map.Entry<String, NavArgument> entry : this._arguments.entrySet()) {
            entry.getValue().putDefaultValue(entry.getKey(), bundle2);
        }
        if (bundle != null) {
            bundle2.putAll(bundle);
            for (Map.Entry<String, NavArgument> entry2 : this._arguments.entrySet()) {
                String key = entry2.getKey();
                NavArgument value = entry2.getValue();
                if (!value.verify(key, bundle2)) {
                    throw new IllegalArgumentException(("Wrong argument type for '" + key + "' in argument bundle. " + value.getType().getName() + " expected.").toString());
                }
            }
        }
        return bundle2;
    }

    @JvmOverloads
    @g
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public final int[] buildDeepLinkIds() {
        return buildDeepLinkIds$default(this, null, 1, null);
    }

    @JvmOverloads
    @g
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public final int[] buildDeepLinkIds(@h NavDestination navDestination) {
        ArrayDeque arrayDeque = new ArrayDeque();
        NavGraph navGraph = this;
        while (true) {
            Intrinsics.checkNotNull(navGraph);
            NavGraph navGraph2 = navGraph.parent;
            if ((navDestination != null ? navDestination.parent : null) != null) {
                NavGraph navGraph3 = navDestination.parent;
                Intrinsics.checkNotNull(navGraph3);
                if (navGraph3.findNode(navGraph.id) == navGraph) {
                    arrayDeque.addFirst(navGraph);
                    break;
                }
            }
            if (navGraph2 == null || navGraph2.getStartDestinationId() != navGraph.id) {
                arrayDeque.addFirst(navGraph);
            }
            if (Intrinsics.areEqual(navGraph2, navDestination) || navGraph2 == null) {
                break;
            }
            navGraph = navGraph2;
        }
        List<NavDestination> list = CollectionsKt.toList(arrayDeque);
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        for (NavDestination navDestination2 : list) {
            arrayList.add(Integer.valueOf(navDestination2.id));
        }
        return CollectionsKt.toIntArray(arrayList);
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0129  */
    /* JADX WARN: Removed duplicated region for block: B:83:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean equals(@m8.h java.lang.Object r9) {
        /*
            Method dump skipped, instructions count: 315
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.navigation.NavDestination.equals(java.lang.Object):boolean");
    }

    @h
    public final NavAction getAction(@IdRes int i4) {
        NavAction navAction = this.actions.isEmpty() ? null : this.actions.get(i4);
        if (navAction == null) {
            NavGraph navGraph = this.parent;
            if (navGraph != null) {
                return navGraph.getAction(i4);
            }
            return null;
        }
        return navAction;
    }

    @g
    public final Map<String, NavArgument> getArguments() {
        return MapsKt.toMap(this._arguments);
    }

    @g
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public String getDisplayName() {
        String str = this.idName;
        return str == null ? String.valueOf(this.id) : str;
    }

    @IdRes
    public final int getId() {
        return this.id;
    }

    @h
    public final CharSequence getLabel() {
        return this.label;
    }

    @g
    public final String getNavigatorName() {
        return this.navigatorName;
    }

    @h
    public final NavGraph getParent() {
        return this.parent;
    }

    @h
    public final String getRoute() {
        return this.route;
    }

    public boolean hasDeepLink(@g Uri deepLink) {
        Intrinsics.checkNotNullParameter(deepLink, "deepLink");
        return hasDeepLink(new NavDeepLinkRequest(deepLink, null, null));
    }

    public int hashCode() {
        Set<String> keySet;
        int i4 = this.id * 31;
        String str = this.route;
        int hashCode = i4 + (str != null ? str.hashCode() : 0);
        for (NavDeepLink navDeepLink : this.deepLinks) {
            int i10 = hashCode * 31;
            String uriPattern = navDeepLink.getUriPattern();
            int hashCode2 = (i10 + (uriPattern != null ? uriPattern.hashCode() : 0)) * 31;
            String action = navDeepLink.getAction();
            int hashCode3 = (hashCode2 + (action != null ? action.hashCode() : 0)) * 31;
            String mimeType = navDeepLink.getMimeType();
            hashCode = hashCode3 + (mimeType != null ? mimeType.hashCode() : 0);
        }
        Iterator valueIterator = SparseArrayKt.valueIterator(this.actions);
        while (valueIterator.hasNext()) {
            NavAction navAction = (NavAction) valueIterator.next();
            int destinationId = ((hashCode * 31) + navAction.getDestinationId()) * 31;
            NavOptions navOptions = navAction.getNavOptions();
            hashCode = destinationId + (navOptions != null ? navOptions.hashCode() : 0);
            Bundle defaultArguments = navAction.getDefaultArguments();
            if (defaultArguments != null && (keySet = defaultArguments.keySet()) != null) {
                Intrinsics.checkNotNullExpressionValue(keySet, "keySet()");
                for (String str2 : keySet) {
                    int i11 = hashCode * 31;
                    Bundle defaultArguments2 = navAction.getDefaultArguments();
                    Intrinsics.checkNotNull(defaultArguments2);
                    Object obj = defaultArguments2.get(str2);
                    hashCode = i11 + (obj != null ? obj.hashCode() : 0);
                }
            }
        }
        for (String str3 : getArguments().keySet()) {
            int hashCode4 = ((hashCode * 31) + str3.hashCode()) * 31;
            NavArgument navArgument = getArguments().get(str3);
            hashCode = hashCode4 + (navArgument != null ? navArgument.hashCode() : 0);
        }
        return hashCode;
    }

    @h
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public DeepLinkMatch matchDeepLink(@g NavDeepLinkRequest navDeepLinkRequest) {
        Intrinsics.checkNotNullParameter(navDeepLinkRequest, "navDeepLinkRequest");
        if (this.deepLinks.isEmpty()) {
            return null;
        }
        DeepLinkMatch deepLinkMatch = null;
        for (NavDeepLink navDeepLink : this.deepLinks) {
            Uri uri = navDeepLinkRequest.getUri();
            Bundle matchingArguments = uri != null ? navDeepLink.getMatchingArguments(uri, getArguments()) : null;
            String action = navDeepLinkRequest.getAction();
            boolean z9 = action != null && Intrinsics.areEqual(action, navDeepLink.getAction());
            String mimeType = navDeepLinkRequest.getMimeType();
            int mimeTypeMatchRating = mimeType != null ? navDeepLink.getMimeTypeMatchRating(mimeType) : -1;
            if (matchingArguments != null || z9 || mimeTypeMatchRating > -1) {
                DeepLinkMatch deepLinkMatch2 = new DeepLinkMatch(this, matchingArguments, navDeepLink.isExactDeepLink(), z9, mimeTypeMatchRating);
                if (deepLinkMatch == null || deepLinkMatch2.compareTo(deepLinkMatch) > 0) {
                    deepLinkMatch = deepLinkMatch2;
                }
            }
        }
        return deepLinkMatch;
    }

    @CallSuper
    public void onInflate(@g Context context, @g AttributeSet attrs) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(attrs, "attrs");
        TypedArray obtainAttributes = context.getResources().obtainAttributes(attrs, androidx.navigation.common.R.styleable.Navigator);
        Intrinsics.checkNotNullExpressionValue(obtainAttributes, "context.resources.obtain…s, R.styleable.Navigator)");
        setRoute(obtainAttributes.getString(androidx.navigation.common.R.styleable.Navigator_route));
        int i4 = androidx.navigation.common.R.styleable.Navigator_android_id;
        if (obtainAttributes.hasValue(i4)) {
            setId(obtainAttributes.getResourceId(i4, 0));
            this.idName = Companion.getDisplayName(context, this.id);
        }
        this.label = obtainAttributes.getText(androidx.navigation.common.R.styleable.Navigator_android_label);
        Unit unit = Unit.INSTANCE;
        obtainAttributes.recycle();
    }

    public final void putAction(@IdRes int i4, @IdRes int i10) {
        putAction(i4, new NavAction(i10, null, null, 6, null));
    }

    public final void removeAction(@IdRes int i4) {
        this.actions.remove(i4);
    }

    public final void removeArgument(@g String argumentName) {
        Intrinsics.checkNotNullParameter(argumentName, "argumentName");
        this._arguments.remove(argumentName);
    }

    public final void setId(@IdRes int i4) {
        this.id = i4;
        this.idName = null;
    }

    public final void setLabel(@h CharSequence charSequence) {
        this.label = charSequence;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public final void setParent(@h NavGraph navGraph) {
        this.parent = navGraph;
    }

    public final void setRoute(@h String str) {
        Object obj;
        if (str == null) {
            setId(0);
        } else if (!StringsKt.isBlank(str)) {
            String createRoute = Companion.createRoute(str);
            setId(createRoute.hashCode());
            addDeepLink(createRoute);
        } else {
            throw new IllegalArgumentException("Cannot have an empty route".toString());
        }
        List<NavDeepLink> list = this.deepLinks;
        Iterator<T> it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (Intrinsics.areEqual(((NavDeepLink) obj).getUriPattern(), Companion.createRoute(this.route))) {
                break;
            }
        }
        TypeIntrinsics.asMutableCollection(list).remove(obj);
        this.route = str;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public boolean supportsActions() {
        return true;
    }

    @g
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append("(");
        String str = this.idName;
        if (str == null) {
            sb.append("0x");
            sb.append(Integer.toHexString(this.id));
        } else {
            sb.append(str);
        }
        sb.append(")");
        String str2 = this.route;
        if (!(str2 == null || StringsKt.isBlank(str2))) {
            sb.append(" route=");
            sb.append(this.route);
        }
        if (this.label != null) {
            sb.append(" label=");
            sb.append(this.label);
        }
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "sb.toString()");
        return sb2;
    }

    public final void addDeepLink(@g NavDeepLink navDeepLink) {
        Intrinsics.checkNotNullParameter(navDeepLink, "navDeepLink");
        Map<String, NavArgument> arguments = getArguments();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<Map.Entry<String, NavArgument>> it = arguments.entrySet().iterator();
        while (true) {
            boolean z9 = true;
            if (!it.hasNext()) {
                break;
            }
            Map.Entry<String, NavArgument> next = it.next();
            NavArgument value = next.getValue();
            if ((value.isNullable() || value.isDefaultValuePresent()) ? false : false) {
                linkedHashMap.put(next.getKey(), next.getValue());
            }
        }
        Set keySet = linkedHashMap.keySet();
        ArrayList arrayList = new ArrayList();
        for (Object obj : keySet) {
            if (!navDeepLink.getArgumentsNames$navigation_common_release().contains((String) obj)) {
                arrayList.add(obj);
            }
        }
        if (arrayList.isEmpty()) {
            this.deepLinks.add(navDeepLink);
            return;
        }
        throw new IllegalArgumentException(("Deep link " + navDeepLink.getUriPattern() + " can't be used to open destination " + this + ".\nFollowing required arguments are missing: " + arrayList).toString());
    }

    public boolean hasDeepLink(@g NavDeepLinkRequest deepLinkRequest) {
        Intrinsics.checkNotNullParameter(deepLinkRequest, "deepLinkRequest");
        return matchDeepLink(deepLinkRequest) != null;
    }

    public final void putAction(@IdRes int i4, @g NavAction action) {
        Intrinsics.checkNotNullParameter(action, "action");
        if (supportsActions()) {
            if (i4 != 0) {
                this.actions.put(i4, action);
                return;
            }
            throw new IllegalArgumentException("Cannot have an action with actionId 0".toString());
        }
        throw new UnsupportedOperationException("Cannot add action " + i4 + " to " + this + " as it does not support actions, indicating that it is a terminal destination in your navigation graph and will never trigger actions.");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public NavDestination(@g Navigator<? extends NavDestination> navigator) {
        this(NavigatorProvider.Companion.getNameForNavigator$navigation_common_release(navigator.getClass()));
        Intrinsics.checkNotNullParameter(navigator, "navigator");
    }
}

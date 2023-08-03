package androidx.navigation;

import android.net.Uri;
import android.os.Bundle;
import androidx.annotation.RestrictTo;
import com.alipay.sdk.packet.d;
import com.qennnsad.aknkaksd.data.repository.f;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Objects;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import m8.g;
import m8.h;

/* compiled from: NavDeepLink.kt */
@Metadata(d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010!\n\u0000\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u0000 F2\u00020\u0001:\u0004EFGHB\u000f\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B%\b\u0000\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\bJ$\u0010)\u001a\u00020\u00122\u0006\u0010\u0002\u001a\u00020\u00032\n\u0010*\u001a\u00060+j\u0002`,2\u0006\u0010-\u001a\u00020\u001cH\u0002J\u0013\u0010.\u001a\u00020\u00122\b\u0010/\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J(\u00100\u001a\u0004\u0018\u0001012\u0006\u00102\u001a\u0002032\u0014\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010504H\u0007J\u0010\u00106\u001a\u0002072\u0006\u0010\u0007\u001a\u00020\u0003H\u0007J\b\u00108\u001a\u000207H\u0016J\u0012\u00109\u001a\u00020\u00122\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003H\u0002J\u0012\u0010:\u001a\u00020\u00122\b\u0010\u0007\u001a\u0004\u0018\u00010\u0003H\u0002J\u0012\u0010;\u001a\u00020\u00122\b\u0010\u0002\u001a\u0004\u0018\u000103H\u0002J\u0015\u0010<\u001a\u00020\u00122\u0006\u0010\u0002\u001a\u000203H\u0000¢\u0006\u0002\b=J\u0015\u0010<\u001a\u00020\u00122\u0006\u0010>\u001a\u00020?H\u0000¢\u0006\u0002\b=J*\u0010@\u001a\u00020\u00122\u0006\u0010A\u001a\u0002012\u0006\u0010B\u001a\u00020\u00032\u0006\u0010C\u001a\u00020\u00032\b\u0010D\u001a\u0004\u0018\u000105H\u0002R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0014\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00030\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00030\u000e8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010R&\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u00128G@@X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u000e\u0010\u0017\u001a\u00020\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\nR\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R\u001d\u0010\u001b\u001a\u0004\u0018\u00010\u001c8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001f\u0010 \u001a\u0004\b\u001d\u0010\u001eR\u001a\u0010!\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020#0\"X\u0082\u0004¢\u0006\u0002\n\u0000R\u001d\u0010$\u001a\u0004\u0018\u00010\u001c8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b&\u0010 \u001a\u0004\b%\u0010\u001eR\u0010\u0010'\u001a\u0004\u0018\u00010\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b(\u0010\n¨\u0006I"}, d2 = {"Landroidx/navigation/NavDeepLink;", "", "uri", "", "(Ljava/lang/String;)V", "uriPattern", d.f6907q, "mimeType", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getAction", "()Ljava/lang/String;", "arguments", "", "argumentsNames", "", "getArgumentsNames$navigation_common_release", "()Ljava/util/List;", "<set-?>", "", "isExactDeepLink", "()Z", "setExactDeepLink$navigation_common_release", "(Z)V", "isParameterizedQuery", "isSingleQueryParamValueOnly", "getMimeType", "mimeTypeFinalRegex", "mimeTypePattern", "Ljava/util/regex/Pattern;", "getMimeTypePattern", "()Ljava/util/regex/Pattern;", "mimeTypePattern$delegate", "Lkotlin/Lazy;", "paramArgMap", "", "Landroidx/navigation/NavDeepLink$ParamQuery;", "pattern", "getPattern", "pattern$delegate", "patternFinalRegex", "getUriPattern", "buildPathRegex", "uriRegex", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "fillInPattern", "equals", "other", "getMatchingArguments", "Landroid/os/Bundle;", "deepLink", "Landroid/net/Uri;", "", "Landroidx/navigation/NavArgument;", "getMimeTypeMatchRating", "", "hashCode", "matchAction", "matchMimeType", "matchUri", "matches", "matches$navigation_common_release", "deepLinkRequest", "Landroidx/navigation/NavDeepLinkRequest;", "parseArgument", "bundle", "name", "value", "argument", "Builder", "Companion", "MimeType", "ParamQuery", "navigation-common_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes.dex */
public final class NavDeepLink {
    @g
    private static final Companion Companion = new Companion(null);
    @Deprecated
    private static final Pattern SCHEME_PATTERN = Pattern.compile("^[a-zA-Z]+[+\\w\\-.]*:");
    @h
    private final String action;
    @g
    private final List<String> arguments;
    private boolean isExactDeepLink;
    private boolean isParameterizedQuery;
    private boolean isSingleQueryParamValueOnly;
    @h
    private final String mimeType;
    @h
    private String mimeTypeFinalRegex;
    @g
    private final Lazy mimeTypePattern$delegate;
    @g
    private final Map<String, ParamQuery> paramArgMap;
    @g
    private final Lazy pattern$delegate;
    @h
    private String patternFinalRegex;
    @h
    private final String uriPattern;

    /* compiled from: NavDeepLink.kt */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \f2\u00020\u0001:\u0001\fB\u0007\b\u0017¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0007\u001a\u00020\bJ\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0004J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0004R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Landroidx/navigation/NavDeepLink$Builder;", "", "()V", d.f6907q, "", "mimeType", "uriPattern", "build", "Landroidx/navigation/NavDeepLink;", "setAction", "setMimeType", "setUriPattern", "Companion", "navigation-common_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Builder {
        @g
        public static final Companion Companion = new Companion(null);
        @h
        private String action;
        @h
        private String mimeType;
        @h
        private String uriPattern;

        /* compiled from: NavDeepLink.kt */
        @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0006H\u0007J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0006H\u0007¨\u0006\u000b"}, d2 = {"Landroidx/navigation/NavDeepLink$Builder$Companion;", "", "()V", "fromAction", "Landroidx/navigation/NavDeepLink$Builder;", d.f6907q, "", "fromMimeType", "mimeType", "fromUriPattern", "uriPattern", "navigation-common_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
        /* loaded from: classes.dex */
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @JvmStatic
            @g
            public final Builder fromAction(@g String action) {
                Intrinsics.checkNotNullParameter(action, "action");
                if (action.length() > 0) {
                    Builder builder = new Builder();
                    builder.setAction(action);
                    return builder;
                }
                throw new IllegalArgumentException("The NavDeepLink cannot have an empty action.".toString());
            }

            @JvmStatic
            @g
            public final Builder fromMimeType(@g String mimeType) {
                Intrinsics.checkNotNullParameter(mimeType, "mimeType");
                Builder builder = new Builder();
                builder.setMimeType(mimeType);
                return builder;
            }

            @JvmStatic
            @g
            public final Builder fromUriPattern(@g String uriPattern) {
                Intrinsics.checkNotNullParameter(uriPattern, "uriPattern");
                Builder builder = new Builder();
                builder.setUriPattern(uriPattern);
                return builder;
            }
        }

        @JvmStatic
        @g
        public static final Builder fromAction(@g String str) {
            return Companion.fromAction(str);
        }

        @JvmStatic
        @g
        public static final Builder fromMimeType(@g String str) {
            return Companion.fromMimeType(str);
        }

        @JvmStatic
        @g
        public static final Builder fromUriPattern(@g String str) {
            return Companion.fromUriPattern(str);
        }

        @g
        public final NavDeepLink build() {
            return new NavDeepLink(this.uriPattern, this.action, this.mimeType);
        }

        @g
        public final Builder setAction(@g String action) {
            Intrinsics.checkNotNullParameter(action, "action");
            if (action.length() > 0) {
                this.action = action;
                return this;
            }
            throw new IllegalArgumentException("The NavDeepLink cannot have an empty action.".toString());
        }

        @g
        public final Builder setMimeType(@g String mimeType) {
            Intrinsics.checkNotNullParameter(mimeType, "mimeType");
            this.mimeType = mimeType;
            return this;
        }

        @g
        public final Builder setUriPattern(@g String uriPattern) {
            Intrinsics.checkNotNullParameter(uriPattern, "uriPattern");
            this.uriPattern = uriPattern;
            return this;
        }
    }

    /* compiled from: NavDeepLink.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0082\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0016\u0010\u0003\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Landroidx/navigation/NavDeepLink$Companion;", "", "()V", "SCHEME_PATTERN", "Ljava/util/regex/Pattern;", "kotlin.jvm.PlatformType", "navigation-common_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes.dex */
    private static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: NavDeepLink.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0002\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0011\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0000H\u0096\u0002R\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\u0004R\u001a\u0010\t\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0007\"\u0004\b\u000b\u0010\u0004¨\u0006\u000f"}, d2 = {"Landroidx/navigation/NavDeepLink$MimeType;", "", "mimeType", "", "(Ljava/lang/String;)V", "subType", "getSubType", "()Ljava/lang/String;", "setSubType", "type", "getType", "setType", "compareTo", "", "other", "navigation-common_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class MimeType implements Comparable<MimeType> {
        @g
        private String subType;
        @g
        private String type;

        public MimeType(@g String mimeType) {
            List emptyList;
            boolean z9;
            Intrinsics.checkNotNullParameter(mimeType, "mimeType");
            List<String> split = new Regex("/").split(mimeType, 0);
            if (!split.isEmpty()) {
                ListIterator<String> listIterator = split.listIterator(split.size());
                while (listIterator.hasPrevious()) {
                    if (listIterator.previous().length() == 0) {
                        z9 = true;
                        continue;
                    } else {
                        z9 = false;
                        continue;
                    }
                    if (!z9) {
                        emptyList = CollectionsKt___CollectionsKt.take(split, listIterator.nextIndex() + 1);
                        break;
                    }
                }
            }
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            this.type = (String) emptyList.get(0);
            this.subType = (String) emptyList.get(1);
        }

        @g
        public final String getSubType() {
            return this.subType;
        }

        @g
        public final String getType() {
            return this.type;
        }

        public final void setSubType(@g String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            this.subType = str;
        }

        public final void setType(@g String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            this.type = str;
        }

        @Override // java.lang.Comparable
        public int compareTo(@g MimeType other) {
            Intrinsics.checkNotNullParameter(other, "other");
            int i4 = Intrinsics.areEqual(this.type, other.type) ? 2 : 0;
            return Intrinsics.areEqual(this.subType, other.subType) ? i4 + 1 : i4;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: NavDeepLink.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0005J\u000e\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u0012J\u0006\u0010\u0013\u001a\u00020\u0012R\u0017\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u001c\u0010\b\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\f¨\u0006\u0014"}, d2 = {"Landroidx/navigation/NavDeepLink$ParamQuery;", "", "()V", "arguments", "", "", "getArguments", "()Ljava/util/List;", "paramRegex", "getParamRegex", "()Ljava/lang/String;", "setParamRegex", "(Ljava/lang/String;)V", "addArgumentName", "", "name", "getArgumentName", "index", "", f.f47745b, "navigation-common_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class ParamQuery {
        @g
        private final List<String> arguments = new ArrayList();
        @h
        private String paramRegex;

        public final void addArgumentName(@g String name) {
            Intrinsics.checkNotNullParameter(name, "name");
            this.arguments.add(name);
        }

        @g
        public final String getArgumentName(int i4) {
            return this.arguments.get(i4);
        }

        @g
        public final List<String> getArguments() {
            return this.arguments;
        }

        @h
        public final String getParamRegex() {
            return this.paramRegex;
        }

        public final void setParamRegex(@h String str) {
            this.paramRegex = str;
        }

        public final int size() {
            return this.arguments.size();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r19v0, types: [androidx.navigation.NavDeepLink] */
    /* JADX WARN: Type inference failed for: r4v17 */
    /* JADX WARN: Type inference failed for: r4v18 */
    /* JADX WARN: Type inference failed for: r4v4, types: [int] */
    public NavDeepLink(@h String str, @h String str2, @h String str3) {
        Lazy lazy;
        Lazy lazy2;
        String replace$default;
        String replace$default2;
        String replace$default3;
        this.uriPattern = str;
        this.action = str2;
        this.mimeType = str3;
        this.arguments = new ArrayList();
        this.paramArgMap = new LinkedHashMap();
        lazy = LazyKt__LazyJVMKt.lazy(new NavDeepLink$pattern$2(this));
        this.pattern$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new NavDeepLink$mimeTypePattern$2(this));
        this.mimeTypePattern$delegate = lazy2;
        if (str != null) {
            Uri parse = Uri.parse(str);
            boolean z9 = true;
            this.isParameterizedQuery = parse.getQuery() != null;
            StringBuilder sb = new StringBuilder("^");
            if (!SCHEME_PATTERN.matcher(str).find()) {
                sb.append("http[s]?://");
            }
            Pattern fillInPattern = Pattern.compile("\\{(.+?)\\}");
            if (this.isParameterizedQuery) {
                Matcher matcher = Pattern.compile("(\\?)").matcher(str);
                if (matcher.find()) {
                    String substring = str.substring(0, matcher.start());
                    Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
                    Intrinsics.checkNotNullExpressionValue(fillInPattern, "fillInPattern");
                    this.isExactDeepLink = buildPathRegex(substring, sb, fillInPattern);
                }
                for (String paramName : parse.getQueryParameterNames()) {
                    StringBuilder sb2 = new StringBuilder();
                    String queryParam = parse.getQueryParameter(paramName);
                    if (queryParam == null) {
                        this.isSingleQueryParamValueOnly = z9;
                        queryParam = paramName;
                    }
                    Matcher matcher2 = fillInPattern.matcher(queryParam);
                    ParamQuery paramQuery = new ParamQuery();
                    int i4 = 0;
                    ?? r42 = z9;
                    while (matcher2.find()) {
                        String group = matcher2.group((int) r42);
                        Objects.requireNonNull(group, "null cannot be cast to non-null type kotlin.String");
                        paramQuery.addArgumentName(group);
                        Intrinsics.checkNotNullExpressionValue(queryParam, "queryParam");
                        String substring2 = queryParam.substring(i4, matcher2.start());
                        Intrinsics.checkNotNullExpressionValue(substring2, "this as java.lang.String…ing(startIndex, endIndex)");
                        sb2.append(Pattern.quote(substring2));
                        sb2.append("(.+?)?");
                        i4 = matcher2.end();
                        r42 = 1;
                    }
                    if (i4 < queryParam.length()) {
                        Intrinsics.checkNotNullExpressionValue(queryParam, "queryParam");
                        String substring3 = queryParam.substring(i4);
                        Intrinsics.checkNotNullExpressionValue(substring3, "this as java.lang.String).substring(startIndex)");
                        sb2.append(Pattern.quote(substring3));
                    }
                    String sb3 = sb2.toString();
                    Intrinsics.checkNotNullExpressionValue(sb3, "argRegex.toString()");
                    replace$default3 = StringsKt__StringsJVMKt.replace$default(sb3, ".*", "\\E.*\\Q", false, 4, (Object) null);
                    paramQuery.setParamRegex(replace$default3);
                    Map<String, ParamQuery> map = this.paramArgMap;
                    Intrinsics.checkNotNullExpressionValue(paramName, "paramName");
                    map.put(paramName, paramQuery);
                    z9 = true;
                }
            } else {
                Intrinsics.checkNotNullExpressionValue(fillInPattern, "fillInPattern");
                this.isExactDeepLink = buildPathRegex(str, sb, fillInPattern);
            }
            String sb4 = sb.toString();
            Intrinsics.checkNotNullExpressionValue(sb4, "uriRegex.toString()");
            replace$default2 = StringsKt__StringsJVMKt.replace$default(sb4, ".*", "\\E.*\\Q", false, 4, (Object) null);
            this.patternFinalRegex = replace$default2;
        }
        if (this.mimeType != null) {
            if (Pattern.compile("^[\\s\\S]+/[\\s\\S]+$").matcher(this.mimeType).matches()) {
                MimeType mimeType = new MimeType(this.mimeType);
                replace$default = StringsKt__StringsJVMKt.replace$default("^(" + mimeType.getType() + "|[*]+)/(" + mimeType.getSubType() + "|[*]+)$", "*|[*]", "[\\s\\S]", false, 4, (Object) null);
                this.mimeTypeFinalRegex = replace$default;
                return;
            }
            throw new IllegalArgumentException(("The given mimeType " + this.mimeType + " does not match to required \"type/subtype\" format").toString());
        }
    }

    private final boolean buildPathRegex(String str, StringBuilder sb, Pattern pattern) {
        boolean contains$default;
        Matcher matcher = pattern.matcher(str);
        contains$default = StringsKt__StringsKt.contains$default((CharSequence) str, (CharSequence) ".*", false, 2, (Object) null);
        boolean z9 = !contains$default;
        int i4 = 0;
        while (matcher.find()) {
            String group = matcher.group(1);
            Objects.requireNonNull(group, "null cannot be cast to non-null type kotlin.String");
            this.arguments.add(group);
            String substring = str.substring(i4, matcher.start());
            Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
            sb.append(Pattern.quote(substring));
            sb.append("([^/]+?)");
            i4 = matcher.end();
            z9 = false;
        }
        if (i4 < str.length()) {
            String substring2 = str.substring(i4);
            Intrinsics.checkNotNullExpressionValue(substring2, "this as java.lang.String).substring(startIndex)");
            sb.append(Pattern.quote(substring2));
        }
        sb.append("($|(\\?(.)*)|(\\#(.)*))");
        return z9;
    }

    private final Pattern getMimeTypePattern() {
        return (Pattern) this.mimeTypePattern$delegate.getValue();
    }

    private final Pattern getPattern() {
        return (Pattern) this.pattern$delegate.getValue();
    }

    private final boolean matchAction(String str) {
        boolean z9 = str == null;
        String str2 = this.action;
        return z9 != (str2 != null) && (str == null || Intrinsics.areEqual(str2, str));
    }

    private final boolean matchMimeType(String str) {
        if ((str == null) != (this.mimeType != null)) {
            if (str == null) {
                return true;
            }
            Pattern mimeTypePattern = getMimeTypePattern();
            Intrinsics.checkNotNull(mimeTypePattern);
            if (mimeTypePattern.matcher(str).matches()) {
                return true;
            }
        }
        return false;
    }

    private final boolean matchUri(Uri uri) {
        if ((uri == null) != (getPattern() != null)) {
            if (uri == null) {
                return true;
            }
            Pattern pattern = getPattern();
            Intrinsics.checkNotNull(pattern);
            if (pattern.matcher(uri.toString()).matches()) {
                return true;
            }
        }
        return false;
    }

    private final boolean parseArgument(Bundle bundle, String str, String str2, NavArgument navArgument) {
        if (navArgument != null) {
            navArgument.getType().parseAndPut(bundle, str, str2);
            return false;
        }
        bundle.putString(str, str2);
        return false;
    }

    public boolean equals(@h Object obj) {
        if (obj == null || !(obj instanceof NavDeepLink)) {
            return false;
        }
        NavDeepLink navDeepLink = (NavDeepLink) obj;
        return Intrinsics.areEqual(this.uriPattern, navDeepLink.uriPattern) && Intrinsics.areEqual(this.action, navDeepLink.action) && Intrinsics.areEqual(this.mimeType, navDeepLink.mimeType);
    }

    @h
    public final String getAction() {
        return this.action;
    }

    @g
    public final List<String> getArgumentsNames$navigation_common_release() {
        List<String> plus;
        List<String> list = this.arguments;
        Collection<ParamQuery> values = this.paramArgMap.values();
        ArrayList arrayList = new ArrayList();
        for (ParamQuery paramQuery : values) {
            CollectionsKt__MutableCollectionsKt.addAll(arrayList, paramQuery.getArguments());
        }
        plus = CollectionsKt___CollectionsKt.plus((Collection) list, (Iterable) arrayList);
        return plus;
    }

    @h
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public final Bundle getMatchingArguments(@g Uri deepLink, @g Map<String, NavArgument> arguments) {
        Matcher matcher;
        String str;
        String substringAfter$default;
        Intrinsics.checkNotNullParameter(deepLink, "deepLink");
        Intrinsics.checkNotNullParameter(arguments, "arguments");
        Pattern pattern = getPattern();
        Matcher matcher2 = pattern != null ? pattern.matcher(deepLink.toString()) : null;
        if (matcher2 != null && matcher2.matches()) {
            Bundle bundle = new Bundle();
            int size = this.arguments.size();
            int i4 = 0;
            while (i4 < size) {
                String str2 = this.arguments.get(i4);
                i4++;
                String value = Uri.decode(matcher2.group(i4));
                NavArgument navArgument = arguments.get(str2);
                try {
                    Intrinsics.checkNotNullExpressionValue(value, "value");
                } catch (IllegalArgumentException unused) {
                }
                if (parseArgument(bundle, str2, value, navArgument)) {
                    return null;
                }
            }
            if (this.isParameterizedQuery) {
                for (String str3 : this.paramArgMap.keySet()) {
                    ParamQuery paramQuery = this.paramArgMap.get(str3);
                    String queryParameter = deepLink.getQueryParameter(str3);
                    if (this.isSingleQueryParamValueOnly) {
                        String uri = deepLink.toString();
                        Intrinsics.checkNotNullExpressionValue(uri, "deepLink.toString()");
                        substringAfter$default = StringsKt__StringsKt.substringAfter$default(uri, '?', (String) null, 2, (Object) null);
                        if (!Intrinsics.areEqual(substringAfter$default, uri)) {
                            queryParameter = substringAfter$default;
                        }
                    }
                    if (queryParameter != null) {
                        Intrinsics.checkNotNull(paramQuery);
                        matcher = Pattern.compile(paramQuery.getParamRegex(), 32).matcher(queryParameter);
                        if (!matcher.matches()) {
                            return null;
                        }
                    } else {
                        matcher = null;
                    }
                    Bundle bundle2 = new Bundle();
                    try {
                        Intrinsics.checkNotNull(paramQuery);
                        int size2 = paramQuery.size();
                        for (int i10 = 0; i10 < size2; i10++) {
                            if (matcher != null) {
                                str = matcher.group(i10 + 1);
                                if (str == null) {
                                    str = "";
                                }
                            } else {
                                str = null;
                            }
                            String argumentName = paramQuery.getArgumentName(i10);
                            NavArgument navArgument2 = arguments.get(argumentName);
                            if (str != null) {
                                if (!Intrinsics.areEqual(str, '{' + argumentName + '}') && parseArgument(bundle2, argumentName, str, navArgument2)) {
                                    return null;
                                }
                            }
                        }
                        bundle.putAll(bundle2);
                    } catch (IllegalArgumentException unused2) {
                    }
                }
            }
            for (Map.Entry<String, NavArgument> entry : arguments.entrySet()) {
                String key = entry.getKey();
                NavArgument value2 = entry.getValue();
                if (((value2 == null || value2.isNullable() || value2.isDefaultValuePresent()) ? false : true) && !bundle.containsKey(key)) {
                    return null;
                }
            }
            return bundle;
        }
        return null;
    }

    @h
    public final String getMimeType() {
        return this.mimeType;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public final int getMimeTypeMatchRating(@g String mimeType) {
        Intrinsics.checkNotNullParameter(mimeType, "mimeType");
        if (this.mimeType != null) {
            Pattern mimeTypePattern = getMimeTypePattern();
            Intrinsics.checkNotNull(mimeTypePattern);
            if (mimeTypePattern.matcher(mimeType).matches()) {
                return new MimeType(this.mimeType).compareTo(new MimeType(mimeType));
            }
        }
        return -1;
    }

    @h
    public final String getUriPattern() {
        return this.uriPattern;
    }

    public int hashCode() {
        String str = this.uriPattern;
        int hashCode = ((str != null ? str.hashCode() : 0) + 0) * 31;
        String str2 = this.action;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.mimeType;
        return hashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public final boolean isExactDeepLink() {
        return this.isExactDeepLink;
    }

    public final boolean matches$navigation_common_release(@g Uri uri) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        return matches$navigation_common_release(new NavDeepLinkRequest(uri, null, null));
    }

    public final void setExactDeepLink$navigation_common_release(boolean z9) {
        this.isExactDeepLink = z9;
    }

    public final boolean matches$navigation_common_release(@g NavDeepLinkRequest deepLinkRequest) {
        Intrinsics.checkNotNullParameter(deepLinkRequest, "deepLinkRequest");
        if (matchUri(deepLinkRequest.getUri()) && matchAction(deepLinkRequest.getAction())) {
            return matchMimeType(deepLinkRequest.getMimeType());
        }
        return false;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public NavDeepLink(@g String uri) {
        this(uri, null, null);
        Intrinsics.checkNotNullParameter(uri, "uri");
    }
}

package androidx.navigation;

import android.content.Intent;
import android.net.Uri;
import androidx.annotation.RestrictTo;
import com.alipay.sdk.packet.d;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import m8.g;
import m8.h;

/* compiled from: NavDeepLinkRequest.kt */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\b\u0016\u0018\u00002\u00020\u0001:\u0001\u0011B%\b\u0017\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0007B\u000f\b\u0017\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\b\u0010\u0010\u001a\u00020\u0005H\u0016R\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\fR\u0016\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0012"}, d2 = {"Landroidx/navigation/NavDeepLinkRequest;", "", "uri", "Landroid/net/Uri;", d.f6907q, "", "mimeType", "(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V", "intent", "Landroid/content/Intent;", "(Landroid/content/Intent;)V", "getAction", "()Ljava/lang/String;", "getMimeType", "getUri", "()Landroid/net/Uri;", "toString", "Builder", "navigation-common_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes.dex */
public class NavDeepLinkRequest {
    @h
    private final String action;
    @h
    private final String mimeType;
    @h
    private final Uri uri;

    /* compiled from: NavDeepLinkRequest.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \r2\u00020\u0001:\u0001\rB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\b\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0004J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\f\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Landroidx/navigation/NavDeepLinkRequest$Builder;", "", "()V", d.f6907q, "", "mimeType", "uri", "Landroid/net/Uri;", "build", "Landroidx/navigation/NavDeepLinkRequest;", "setAction", "setMimeType", "setUri", "Companion", "navigation-common_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Builder {
        @g
        public static final Companion Companion = new Companion(null);
        @h
        private String action;
        @h
        private String mimeType;
        @h
        private Uri uri;

        /* compiled from: NavDeepLinkRequest.kt */
        @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0006H\u0007J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000bH\u0007¨\u0006\f"}, d2 = {"Landroidx/navigation/NavDeepLinkRequest$Builder$Companion;", "", "()V", "fromAction", "Landroidx/navigation/NavDeepLinkRequest$Builder;", d.f6907q, "", "fromMimeType", "mimeType", "fromUri", "uri", "Landroid/net/Uri;", "navigation-common_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
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
                    Builder builder = new Builder(null);
                    builder.setAction(action);
                    return builder;
                }
                throw new IllegalArgumentException("The NavDeepLinkRequest cannot have an empty action.".toString());
            }

            @JvmStatic
            @g
            public final Builder fromMimeType(@g String mimeType) {
                Intrinsics.checkNotNullParameter(mimeType, "mimeType");
                Builder builder = new Builder(null);
                builder.setMimeType(mimeType);
                return builder;
            }

            @JvmStatic
            @g
            public final Builder fromUri(@g Uri uri) {
                Intrinsics.checkNotNullParameter(uri, "uri");
                Builder builder = new Builder(null);
                builder.setUri(uri);
                return builder;
            }
        }

        private Builder() {
        }

        public /* synthetic */ Builder(DefaultConstructorMarker defaultConstructorMarker) {
            this();
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
        public static final Builder fromUri(@g Uri uri) {
            return Companion.fromUri(uri);
        }

        @g
        public final NavDeepLinkRequest build() {
            return new NavDeepLinkRequest(this.uri, this.action, this.mimeType);
        }

        @g
        public final Builder setAction(@g String action) {
            Intrinsics.checkNotNullParameter(action, "action");
            if (action.length() > 0) {
                this.action = action;
                return this;
            }
            throw new IllegalArgumentException("The NavDeepLinkRequest cannot have an empty action.".toString());
        }

        @g
        public final Builder setMimeType(@g String mimeType) {
            Intrinsics.checkNotNullParameter(mimeType, "mimeType");
            if (new Regex("^[-\\w*.]+/[-\\w+*.]+$").matches(mimeType)) {
                this.mimeType = mimeType;
                return this;
            }
            throw new IllegalArgumentException(("The given mimeType " + mimeType + " does not match to required \"type/subtype\" format").toString());
        }

        @g
        public final Builder setUri(@g Uri uri) {
            Intrinsics.checkNotNullParameter(uri, "uri");
            this.uri = uri;
            return this;
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public NavDeepLinkRequest(@h Uri uri, @h String str, @h String str2) {
        this.uri = uri;
        this.action = str;
        this.mimeType = str2;
    }

    @h
    public String getAction() {
        return this.action;
    }

    @h
    public String getMimeType() {
        return this.mimeType;
    }

    @h
    public Uri getUri() {
        return this.uri;
    }

    @g
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("NavDeepLinkRequest");
        sb.append("{");
        if (getUri() != null) {
            sb.append(" uri=");
            sb.append(String.valueOf(getUri()));
        }
        if (getAction() != null) {
            sb.append(" action=");
            sb.append(getAction());
        }
        if (getMimeType() != null) {
            sb.append(" mimetype=");
            sb.append(getMimeType());
        }
        sb.append(" }");
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "sb.toString()");
        return sb2;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public NavDeepLinkRequest(@g Intent intent) {
        this(intent.getData(), intent.getAction(), intent.getType());
        Intrinsics.checkNotNullParameter(intent, "intent");
    }
}

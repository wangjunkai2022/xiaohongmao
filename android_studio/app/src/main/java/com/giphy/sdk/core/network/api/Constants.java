package com.giphy.sdk.core.network.api;

import android.net.Uri;
import com.facebook.common.callercontext.ContextChain;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: Constants.kt */
@Metadata(bv = {}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000e\n\u0002\b\n\bÆ\u0002\u0018\u00002\u00020\u0001:\u0002\u001c\u0003B\t\b\u0002¢\u0006\u0004\b\u001a\u0010\u001bR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\r\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u0017\u0010\u000f\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\u0005\u0010\n\u001a\u0004\b\u000e\u0010\fR\u001f\u0010\u0012\u001a\n \u0010*\u0004\u0018\u00010\b0\b8\u0006¢\u0006\f\n\u0004\b\u000e\u0010\n\u001a\u0004\b\u0011\u0010\fR\u001a\u0010\u0017\u001a\u00020\u00138\u0006X\u0086D¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0003\u0010\u0016R\u001a\u0010\u0018\u001a\u00020\u00138\u0006X\u0086D¢\u0006\f\n\u0004\b\u0011\u0010\u0015\u001a\u0004\b\u0014\u0010\u0016R\u001a\u0010\u0019\u001a\u00020\u00138\u0006X\u0086D¢\u0006\f\n\u0004\b\u000b\u0010\u0015\u001a\u0004\b\t\u0010\u0016¨\u0006\u001d"}, d2 = {"Lcom/giphy/sdk/core/network/api/Constants;", "", "Lcom/giphy/sdk/core/network/api/Constants$Environment;", "a", "Lcom/giphy/sdk/core/network/api/Constants$Environment;", "c", "()Lcom/giphy/sdk/core/network/api/Constants$Environment;", "ENVIRONMENT", "Landroid/net/Uri;", "b", "Landroid/net/Uri;", "g", "()Landroid/net/Uri;", "SERVER_URL", "d", "MOBILE_API_URL", "kotlin.jvm.PlatformType", "f", "PINGBACK_SERVER_URL", "", "e", "Ljava/lang/String;", "()Ljava/lang/String;", "API_KEY", "PINGBACK_ID", "CONTENT_TYPE", "<init>", "()V", "Environment", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class Constants {
    @g

    /* renamed from: b  reason: collision with root package name */
    private static final Uri f16916b;
    @g

    /* renamed from: c  reason: collision with root package name */
    private static final Uri f16917c;

    /* renamed from: d  reason: collision with root package name */
    private static final Uri f16918d;
    @g

    /* renamed from: e  reason: collision with root package name */
    private static final String f16919e;
    @g

    /* renamed from: f  reason: collision with root package name */
    private static final String f16920f;
    @g

    /* renamed from: g  reason: collision with root package name */
    private static final String f16921g;
    @g

    /* renamed from: h  reason: collision with root package name */
    public static final Constants f16922h = new Constants();
    @g

    /* renamed from: a  reason: collision with root package name */
    private static final Environment f16915a = Environment.PROD;

    /* compiled from: Constants.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/giphy/sdk/core/network/api/Constants$Environment;", "", "(Ljava/lang/String;I)V", "DEV", "PROD", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public enum Environment {
        DEV,
        PROD
    }

    /* compiled from: Constants.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0019\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0019\u0010\u001aR\u001a\u0010\u0007\u001a\u00020\u00028\u0006X\u0086D¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u001a\u0010\n\u001a\u00020\u00028\u0006X\u0086D¢\u0006\f\n\u0004\b\b\u0010\u0004\u001a\u0004\b\t\u0010\u0006R\u001a\u0010\r\u001a\u00020\u00028\u0006X\u0086D¢\u0006\f\n\u0004\b\u000b\u0010\u0004\u001a\u0004\b\f\u0010\u0006R\u001a\u0010\u000f\u001a\u00020\u00028\u0006X\u0086D¢\u0006\f\n\u0004\b\u000e\u0010\u0004\u001a\u0004\b\b\u0010\u0006R\u001a\u0010\u0012\u001a\u00020\u00028\u0006X\u0086D¢\u0006\f\n\u0004\b\u0010\u0010\u0004\u001a\u0004\b\u0011\u0010\u0006R\u001a\u0010\u0014\u001a\u00020\u00028\u0006X\u0086D¢\u0006\f\n\u0004\b\u0013\u0010\u0004\u001a\u0004\b\u000e\u0010\u0006R\u001a\u0010\u0015\u001a\u00020\u00028\u0006X\u0086D¢\u0006\f\n\u0004\b\u0011\u0010\u0004\u001a\u0004\b\u0010\u0010\u0006R\u001a\u0010\u0016\u001a\u00020\u00028\u0006X\u0086D¢\u0006\f\n\u0004\b\u0005\u0010\u0004\u001a\u0004\b\u000b\u0010\u0006R\u001a\u0010\u0017\u001a\u00020\u00028\u0006X\u0086D¢\u0006\f\n\u0004\b\t\u0010\u0004\u001a\u0004\b\u0013\u0010\u0006R\u001a\u0010\u0018\u001a\u00020\u00028\u0006X\u0086D¢\u0006\f\n\u0004\b\f\u0010\u0004\u001a\u0004\b\u0003\u0010\u0006¨\u0006\u001b"}, d2 = {"Lcom/giphy/sdk/core/network/api/Constants$a;", "", "", "a", "Ljava/lang/String;", "h", "()Ljava/lang/String;", "SEARCH", "b", ContextChain.TAG_INFRA, "TRENDING", "c", "j", "TRENDING_SEARCHES", "d", "CHANNELS_SEARCH", "e", "g", "RANDOM", "f", "GIF_BY_ID", "GIF_BY_IDS", "EMOJI", e2.a.f62208b, "ANIMATE", "<init>", "()V", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class a {
        @g

        /* renamed from: k  reason: collision with root package name */
        public static final a f16934k = new a();
        @g

        /* renamed from: a  reason: collision with root package name */
        private static final String f16924a = "v1/%s/search";
        @g

        /* renamed from: b  reason: collision with root package name */
        private static final String f16925b = "v1/%s/trending";
        @g

        /* renamed from: c  reason: collision with root package name */
        private static final String f16926c = "v1/trending/searches";
        @g

        /* renamed from: d  reason: collision with root package name */
        private static final String f16927d = "v1/channels/search";
        @g

        /* renamed from: e  reason: collision with root package name */
        private static final String f16928e = "v1/%s/random";
        @g

        /* renamed from: f  reason: collision with root package name */
        private static final String f16929f = "v1/gifs/%s";
        @g

        /* renamed from: g  reason: collision with root package name */
        private static final String f16930g = "v1/gifs";
        @g

        /* renamed from: h  reason: collision with root package name */
        private static final String f16931h = "v1/emoji";
        @g

        /* renamed from: i  reason: collision with root package name */
        private static final String f16932i = "v2/pingback";
        @g

        /* renamed from: j  reason: collision with root package name */
        private static final String f16933j = "v1/text/animate";

        private a() {
        }

        @g
        public final String a() {
            return f16933j;
        }

        @g
        public final String b() {
            return f16927d;
        }

        @g
        public final String c() {
            return f16931h;
        }

        @g
        public final String d() {
            return f16929f;
        }

        @g
        public final String e() {
            return f16930g;
        }

        @g
        public final String f() {
            return f16932i;
        }

        @g
        public final String g() {
            return f16928e;
        }

        @g
        public final String h() {
            return f16924a;
        }

        @g
        public final String i() {
            return f16925b;
        }

        @g
        public final String j() {
            return f16926c;
        }
    }

    static {
        Uri parse = Uri.parse("https://api.giphy.com");
        Intrinsics.checkNotNullExpressionValue(parse, "Uri.parse(\"https://api.giphy.com\")");
        f16916b = parse;
        Uri parse2 = Uri.parse("https://x.giphy.com");
        Intrinsics.checkNotNullExpressionValue(parse2, "Uri.parse(\"https://x.giphy.com\")");
        f16917c = parse2;
        f16918d = Uri.parse("https://pingback.giphy.com");
        f16919e = GPHApiClient.f16935d;
        f16920f = "pingback_id";
        f16921g = "Content-Type";
    }

    private Constants() {
    }

    @g
    public final String a() {
        return f16919e;
    }

    @g
    public final String b() {
        return f16921g;
    }

    @g
    public final Environment c() {
        return f16915a;
    }

    @g
    public final Uri d() {
        return f16917c;
    }

    @g
    public final String e() {
        return f16920f;
    }

    public final Uri f() {
        return f16918d;
    }

    @g
    public final Uri g() {
        return f16916b;
    }
}

package com.qennnsad.aknkaksd.util;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.text.TextUtils;
import android.webkit.URLUtil;
import android.webkit.WebView;
import android.widget.Toast;
import com.qennnsad.aknkaksd.data.bean.ConfigBean;
import com.qennnsad.aknkaksd.data.bean.HostBean;
import com.qennnsad.aknkaksd.data.repository.dns.DnsResolver;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;

/* compiled from: NetworkUtility.kt */
@u7.f
@Metadata(bv = {}, d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u0000 \u00152\u00020\u0001:\u0001!B\u001b\b\u0007\u0012\b\b\u0001\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010$\u001a\u00020#¢\u0006\u0004\b%\u0010&J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u000e\u0010\u000b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tJ\u0012\u0010\u000f\u001a\u00020\u000e*\u00020\f2\u0006\u0010\r\u001a\u00020\tJ\u0018\u0010\u0011\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\t2\b\u0010\u0010\u001a\u0004\u0018\u00010\tJ\b\u0010\u0012\u001a\u0004\u0018\u00010\tJ\b\u0010\u0013\u001a\u0004\u0018\u00010\tJ\b\u0010\u0014\u001a\u0004\u0018\u00010\tJ\b\u0010\u0015\u001a\u0004\u0018\u00010\tJ\u0006\u0010\u0016\u001a\u00020\u0004J\u000e\u0010\u0017\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\tJ\u000e\u0010\u0018\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\tJ\u000e\u0010\u0019\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\tJ\u0010\u0010\u001a\u001a\u00020\u00042\b\u0010\r\u001a\u0004\u0018\u00010\tJ\"\u0010\u001e\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u00062\u0012\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u000e0\u001bJ\u001e\u0010 \u001a\u00020\t2\u0006\u0010\r\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\t2\u0006\u0010\u001f\u001a\u00020\tR\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010\"¨\u0006'"}, d2 = {"Lcom/qennnsad/aknkaksd/util/t0;", "", "", "g", "", "l", "Landroid/content/Context;", "context", "p", "", "ip", "o", "Landroid/webkit/WebView;", "url", "", "q", "key", "t", "b", "d", "e", "c", "n", "m", "j", "f", "k", "Lkotlin/Function1;", "Lcom/qennnsad/aknkaksd/data/repository/dns/DnsResolver$ForcedDnsResolutionHost;", "onSelected", "v", "value", "u", "a", "Landroid/content/Context;", "Lg5/a;", "localDataManager", "<init>", "(Landroid/content/Context;Lg5/a;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class t0 {
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    public static final a f55038c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    public static final String f55039d = "https://api.moonscap.com";
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    public static final String f55040e = "https://static.moonscap.com";
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    public static final String f55041f = "https://api.placeholder.com/OpenAPI/";
    @JvmField
    @m8.g

    /* renamed from: g  reason: collision with root package name */
    public static final String f55042g;
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final Context f55043a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final g5.a f55044b;

    /* compiled from: NetworkUtility.kt */
    @Metadata(bv = {}, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u001a\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u0004H\u0007J\f\u0010\t\u001a\u00020\b*\u00020\u0007H\u0007J\u0014\u0010\u000b\u001a\u00020\u0004*\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0002H\u0007R\u0014\u0010\f\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0014\u0010\u000e\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000e\u0010\rR\u0014\u0010\u000f\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000f\u0010\rR\u0014\u0010\u0010\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0010\u0010\r¨\u0006\u0013"}, d2 = {"Lcom/qennnsad/aknkaksd/util/t0$a;", "", "", "url", "", "withTrailingSlash", "b", "Landroid/app/Activity;", "", "e", "Landroid/content/Context;", "d", "DEFAULT_API_PATH", "Ljava/lang/String;", "DEFAULT_DOMAIN", "HOST_NON_CHINA", "STATIC_NON_CHINA", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ String c(a aVar, String str, boolean z9, int i4, Object obj) {
            if ((i4 & 2) != 0) {
                z9 = false;
            }
            return aVar.b(str, z9);
        }

        @JvmStatic
        @JvmOverloads
        @m8.g
        public final String a(@m8.g String url) {
            Intrinsics.checkNotNullParameter(url, "url");
            return c(this, url, false, 2, null);
        }

        @JvmStatic
        @JvmOverloads
        @m8.g
        public final String b(@m8.g String url, boolean z9) {
            boolean endsWith$default;
            String substringBeforeLast$default;
            Intrinsics.checkNotNullParameter(url, "url");
            endsWith$default = StringsKt__StringsJVMKt.endsWith$default(url, "/", false, 2, null);
            String it = new URL(url).getPath();
            if (endsWith$default && z9) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
                return it;
            } else if (endsWith$default && !z9) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
                substringBeforeLast$default = StringsKt__StringsKt.substringBeforeLast$default(it, "/", (String) null, 2, (Object) null);
                return substringBeforeLast$default;
            } else if (!endsWith$default && z9) {
                return it + com.fasterxml.jackson.core.e.f13819f;
            } else {
                Intrinsics.checkNotNullExpressionValue(it, "URL(url).path.let {\n    …         it\n            }");
                return it;
            }
        }

        @JvmStatic
        public final boolean d(@m8.g Context context, @m8.g String url) {
            boolean startsWith$default;
            boolean startsWith$default2;
            Uri parse;
            boolean startsWith$default3;
            Intrinsics.checkNotNullParameter(context, "<this>");
            Intrinsics.checkNotNullParameter(url, "url");
            if (TextUtils.isEmpty(url)) {
                return false;
            }
            startsWith$default = StringsKt__StringsJVMKt.startsWith$default(url, com.qennnsad.aknkaksd.e.f48517i, false, 2, null);
            Uri parse2 = Uri.parse(url);
            if (!startsWith$default) {
                startsWith$default2 = StringsKt__StringsJVMKt.startsWith$default(url, c5.j.f4022b, false, 2, null);
                if (!startsWith$default2) {
                    startsWith$default3 = StringsKt__StringsJVMKt.startsWith$default(url, c5.j.f4021a, false, 2, null);
                    if (!startsWith$default3) {
                        parse = Uri.parse(c5.j.f4021a + url);
                        parse2 = parse;
                    }
                }
                parse = Uri.parse(url);
                parse2 = parse;
            }
            Intent intent = new Intent();
            intent.setAction("android.intent.action.VIEW");
            intent.setData(parse2);
            if (intent.resolveActivity(context.getPackageManager()) != null) {
                try {
                    context.startActivity(intent);
                    return true;
                } catch (ActivityNotFoundException unused) {
                }
            }
            return false;
        }

        @JvmStatic
        public final void e(@m8.g Activity activity) {
            Intrinsics.checkNotNullParameter(activity, "<this>");
            Intent intent = new Intent("/");
            intent.setComponent(new ComponentName("com.android.settings", "com.android.settings.WirelessSettings"));
            intent.setAction("android.intent.action.VIEW");
            activity.startActivityForResult(intent, 0);
        }
    }

    static {
        a aVar = new a(null);
        f55038c = aVar;
        f55042g = a.c(aVar, "https://api.placeholder.com/OpenAPI/", false, 2, null);
    }

    @u7.a
    public t0(@m6.b @m8.g Context context, @m8.g g5.a localDataManager) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(localDataManager, "localDataManager");
        this.f55043a = context;
        this.f55044b = localDataManager;
    }

    private final int g() {
        NetworkInfo activeNetworkInfo;
        Object systemService = this.f55043a.getSystemService("connectivity");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
        ConnectivityManager connectivityManager = (ConnectivityManager) systemService;
        if (connectivityManager.getActiveNetworkInfo() == null || (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) == null) {
            return -1;
        }
        return activeNetworkInfo.getType();
    }

    @JvmStatic
    @JvmOverloads
    @m8.g
    public static final String h(@m8.g String str) {
        return f55038c.a(str);
    }

    @JvmStatic
    @JvmOverloads
    @m8.g
    public static final String i(@m8.g String str, boolean z9) {
        return f55038c.b(str, z9);
    }

    @JvmStatic
    public static final boolean r(@m8.g Context context, @m8.g String str) {
        return f55038c.d(context, str);
    }

    @JvmStatic
    public static final void s(@m8.g Activity activity) {
        f55038c.e(activity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w(Context c10, Function1 onSelected, DialogInterface dialogInterface, int i4) {
        Intrinsics.checkNotNullParameter(c10, "$c");
        Intrinsics.checkNotNullParameter(onSelected, "$onSelected");
        DnsResolver.ForcedDnsResolutionHost forcedDnsResolutionHost = DnsResolver.ForcedDnsResolutionHost.values()[i4];
        Toast.makeText(c10, "Selected: " + forcedDnsResolutionHost.getHostName(), 1).show();
        onSelected.invoke(forcedDnsResolutionHost);
        dialogInterface.dismiss();
    }

    @m8.h
    public final String b() {
        if (n()) {
            return "https://api." + this.f55044b.B();
        }
        return null;
    }

    @m8.h
    public final String c() {
        if (n()) {
            return "wss://" + this.f55044b.B() + "/ws";
        }
        return null;
    }

    @m8.h
    public final String d() {
        if (n()) {
            return "https://static." + this.f55044b.B();
        }
        return null;
    }

    @m8.h
    public final String e() {
        if (n()) {
            return "https://web." + this.f55044b.B();
        }
        return null;
    }

    @m8.g
    public final String f(@m8.g String url) {
        List split$default;
        Intrinsics.checkNotNullParameter(url, "url");
        split$default = StringsKt__StringsKt.split$default((CharSequence) url, new String[]{"/"}, false, 0, 6, (Object) null);
        return split$default.size() >= 3 ? (String) split$default.get(2) : "";
    }

    public final boolean j(@m8.g String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        return URLUtil.isDataUrl(url);
    }

    public final boolean k(@m8.h String str) {
        boolean z9;
        boolean endsWith$default;
        Iterator<String> it = com.konstantinschubert.writeinterceptingwebview.e.f44085b.iterator();
        do {
            z9 = false;
            if (!it.hasNext()) {
                return false;
            }
            String type = it.next();
            if (str != null) {
                Intrinsics.checkNotNullExpressionValue(type, "type");
                endsWith$default = StringsKt__StringsJVMKt.endsWith$default(str, type, false, 2, null);
                if (endsWith$default) {
                    z9 = true;
                    continue;
                } else {
                    continue;
                }
            }
        } while (!z9);
        return true;
    }

    public final boolean l() {
        Object systemService = this.f55043a.getSystemService("connectivity");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) systemService).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    public final boolean m(@m8.g String url) {
        boolean startsWith$default;
        String replace$default;
        boolean startsWith$default2;
        HostBean host;
        Intrinsics.checkNotNullParameter(url, "url");
        ConfigBean e4 = this.f55044b.e();
        String str = (e4 == null || (host = e4.getHost()) == null || (r0 = host.getWeb()) == null) ? "" : "";
        if (str.length() > 0) {
            startsWith$default = StringsKt__StringsJVMKt.startsWith$default(url, str, false, 2, null);
            if (startsWith$default) {
                return true;
            }
            replace$default = StringsKt__StringsJVMKt.replace$default(str, "https", "http", false, 4, (Object) null);
            startsWith$default2 = StringsKt__StringsJVMKt.startsWith$default(url, replace$default, false, 2, null);
            if (startsWith$default2) {
                return true;
            }
        }
        return false;
    }

    public final boolean n() {
        return this.f55044b.i() == DnsResolver.ForcedServerType.TEST;
    }

    public final boolean o(@m8.g String ip) {
        Intrinsics.checkNotNullParameter(ip, "ip");
        return new Regex("^((0|1\\d?\\d?|2[0-4]?\\d?|25[0-5]?|[3-9]\\d?)\\.){3}(0|1\\d?\\d?|2[0-4]?\\d?|25[0-5]?|[3-9]\\d?)$").matches(ip);
    }

    public final boolean p(@m8.g Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return g() == 1;
    }

    public final void q(@m8.g WebView webView, @m8.g String url) {
        Intrinsics.checkNotNullParameter(webView, "<this>");
        Intrinsics.checkNotNullParameter(url, "url");
        webView.loadUrl(url);
    }

    @m8.g
    public final String t(@m8.g String url, @m8.h String str) {
        boolean contains$default;
        Intrinsics.checkNotNullParameter(url, "url");
        if (str == null) {
            String uri = Uri.parse(url).buildUpon().clearQuery().build().toString();
            Intrinsics.checkNotNullExpressionValue(uri, "parse(url).buildUpon().c…uery().build().toString()");
            return uri;
        }
        contains$default = StringsKt__StringsKt.contains$default((CharSequence) url, (CharSequence) str, false, 2, (Object) null);
        if (contains$default) {
            Uri parse = Uri.parse(url);
            Set<String> queryParameterNames = parse.getQueryParameterNames();
            Uri.Builder clearQuery = parse.buildUpon().clearQuery();
            for (String str2 : queryParameterNames) {
                if (!Intrinsics.areEqual(str2, str)) {
                    clearQuery.appendQueryParameter(str2, parse.getQueryParameter(str2));
                }
            }
            String uri2 = clearQuery.build().toString();
            Intrinsics.checkNotNullExpressionValue(uri2, "newUri.build().toString()");
            return uri2;
        }
        return url;
    }

    @m8.g
    public final String u(@m8.g String url, @m8.g String key, @m8.g String value) {
        boolean contains$default;
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        contains$default = StringsKt__StringsKt.contains$default((CharSequence) url, (CharSequence) (key + '='), false, 2, (Object) null);
        if (contains$default) {
            return url;
        }
        String uri = Uri.parse(url).buildUpon().appendQueryParameter(key, value).build().toString();
        Intrinsics.checkNotNullExpressionValue(uri, "parse(url)\n            .…      .build().toString()");
        return uri;
    }

    public final void v(@m8.g final Context c10, @m8.g final Function1<? super DnsResolver.ForcedDnsResolutionHost, Unit> onSelected) {
        Intrinsics.checkNotNullParameter(c10, "c");
        Intrinsics.checkNotNullParameter(onSelected, "onSelected");
        DnsResolver.ForcedDnsResolutionHost[] values = DnsResolver.ForcedDnsResolutionHost.values();
        ArrayList arrayList = new ArrayList(values.length);
        for (DnsResolver.ForcedDnsResolutionHost forcedDnsResolutionHost : values) {
            arrayList.add(forcedDnsResolutionHost.getHostName());
        }
        Object[] array = arrayList.toArray(new String[0]);
        Intrinsics.checkNotNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        new AlertDialog.Builder(c10).setTitle("Select SRV Domain:").setItems((String[]) array, new DialogInterface.OnClickListener() { // from class: com.qennnsad.aknkaksd.util.s0
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i4) {
                t0.w(c10, onSelected, dialogInterface, i4);
            }
        }).create().show();
    }
}

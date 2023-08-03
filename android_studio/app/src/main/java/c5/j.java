package c5;

import com.qennnsad.aknkaksd.data.interceptor.WebViewInterceptedError;
import com.qennnsad.aknkaksd.util.o0;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import okhttp3.Response;

/* compiled from: WebViewInterceptedError.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0010\u000b\n\u0002\b\u0003\u001a\n\u0010\u0002\u001a\u00020\u0001*\u00020\u0000\u001a\u0014\u0010\u0006\u001a\u00020\u0003*\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¨\u0006\u0007"}, d2 = {"Lokhttp3/Response;", "Lcom/qennnsad/aknkaksd/data/interceptor/WebViewInterceptedError;", "b", "", "", "isHttps", "a", "app_pron_playerRelease"}, k = 2, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class j {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    public static final String f4021a = "http://";
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    public static final String f4022b = "https://";

    private static final String a(String str, boolean z9) {
        boolean startsWith$default;
        boolean startsWith$default2;
        String str2 = f4022b;
        startsWith$default = StringsKt__StringsJVMKt.startsWith$default(str, f4022b, false, 2, null);
        if (startsWith$default) {
            str = StringsKt__StringsJVMKt.replaceFirst$default(str, f4022b, "", false, 4, (Object) null);
        } else {
            startsWith$default2 = StringsKt__StringsJVMKt.startsWith$default(str, f4021a, false, 2, null);
            if (startsWith$default2) {
                str = StringsKt__StringsJVMKt.replaceFirst$default(str, f4021a, "", false, 4, (Object) null);
            }
        }
        if (!z9) {
            str2 = f4021a;
        }
        return str2 + str;
    }

    @m8.g
    public static final WebViewInterceptedError b(@m8.g Response response) {
        boolean startsWith$default;
        Intrinsics.checkNotNullParameter(response, "<this>");
        String host = response.request().url().host();
        String header$default = Response.header$default(response, com.google.common.net.b.f34636m0, null, 2, null);
        o0.a("WebViewInterceptedError", "authority:" + host);
        o0.a("WebViewInterceptedError", "location:" + header$default);
        if (header$default != null) {
            startsWith$default = StringsKt__StringsJVMKt.startsWith$default(header$default, "http", false, 2, null);
            if (startsWith$default) {
                return new WebViewInterceptedError(response.code(), response.message(), a(header$default, response.request().isHttps()));
            }
        }
        return new WebViewInterceptedError(response.code(), response.message(), a(host + header$default, response.request().isHttps()));
    }
}

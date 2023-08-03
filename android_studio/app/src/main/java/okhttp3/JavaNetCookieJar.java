package okhttp3;

import com.google.common.net.b;
import java.io.IOException;
import java.net.CookieHandler;
import java.net.URI;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import m8.g;
import okhttp3.Cookie;
import okhttp3.internal.Internal;
import okhttp3.internal.Util;
import okhttp3.internal.platform.Platform;

/* compiled from: JavaNetCookieJar.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u001e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0002J\u0016\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\b\u001a\u00020\tH\u0016J\u001e\u0010\r\u001a\u00020\u000e2\u0006\u0010\b\u001a\u00020\t2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lokhttp3/JavaNetCookieJar;", "Lokhttp3/CookieJar;", "cookieHandler", "Ljava/net/CookieHandler;", "(Ljava/net/CookieHandler;)V", "decodeHeaderAsJavaNetCookies", "", "Lokhttp3/Cookie;", "url", "Lokhttp3/HttpUrl;", "header", "", "loadForRequest", "saveFromResponse", "", "cookies", "okhttp-urlconnection"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes4.dex */
public final class JavaNetCookieJar implements CookieJar {
    private final CookieHandler cookieHandler;

    public JavaNetCookieJar(@g CookieHandler cookieHandler) {
        Intrinsics.checkNotNullParameter(cookieHandler, "cookieHandler");
        this.cookieHandler = cookieHandler;
    }

    private final List<Cookie> decodeHeaderAsJavaNetCookies(HttpUrl httpUrl, String str) {
        boolean startsWith$default;
        boolean startsWith$default2;
        boolean endsWith$default;
        ArrayList arrayList = new ArrayList();
        int length = str.length();
        int i4 = 0;
        while (i4 < length) {
            int delimiterOffset = Util.delimiterOffset(str, ";,", i4, length);
            int delimiterOffset2 = Util.delimiterOffset(str, '=', i4, delimiterOffset);
            String trimSubstring = Util.trimSubstring(str, i4, delimiterOffset2);
            startsWith$default = StringsKt__StringsJVMKt.startsWith$default(trimSubstring, "$", false, 2, null);
            if (!startsWith$default) {
                String trimSubstring2 = delimiterOffset2 < delimiterOffset ? Util.trimSubstring(str, delimiterOffset2 + 1, delimiterOffset) : "";
                startsWith$default2 = StringsKt__StringsJVMKt.startsWith$default(trimSubstring2, "\"", false, 2, null);
                if (startsWith$default2) {
                    endsWith$default = StringsKt__StringsJVMKt.endsWith$default(trimSubstring2, "\"", false, 2, null);
                    if (endsWith$default) {
                        trimSubstring2 = trimSubstring2.substring(1, trimSubstring2.length() - 1);
                        Intrinsics.checkNotNullExpressionValue(trimSubstring2, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                    }
                }
                arrayList.add(new Cookie.Builder().name(trimSubstring).value(trimSubstring2).domain(httpUrl.host()).build());
            }
            i4 = delimiterOffset + 1;
        }
        return arrayList;
    }

    @Override // okhttp3.CookieJar
    @g
    public List<Cookie> loadForRequest(@g HttpUrl url) {
        List<Cookie> emptyList;
        Map<String, List<String>> emptyMap;
        List<Cookie> emptyList2;
        boolean equals;
        boolean equals2;
        Intrinsics.checkNotNullParameter(url, "url");
        try {
            CookieHandler cookieHandler = this.cookieHandler;
            URI uri = url.uri();
            emptyMap = MapsKt__MapsKt.emptyMap();
            Map<String, List<String>> cookieHeaders = cookieHandler.get(uri, emptyMap);
            ArrayList arrayList = null;
            Intrinsics.checkNotNullExpressionValue(cookieHeaders, "cookieHeaders");
            for (Map.Entry<String, List<String>> entry : cookieHeaders.entrySet()) {
                String key = entry.getKey();
                List<String> value = entry.getValue();
                equals = StringsKt__StringsJVMKt.equals(b.f34641p, key, true);
                if (!equals) {
                    equals2 = StringsKt__StringsJVMKt.equals("Cookie2", key, true);
                    if (equals2) {
                    }
                }
                Intrinsics.checkNotNullExpressionValue(value, "value");
                if (!value.isEmpty()) {
                    for (String header : value) {
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                        }
                        Intrinsics.checkNotNullExpressionValue(header, "header");
                        arrayList.addAll(decodeHeaderAsJavaNetCookies(url, header));
                    }
                }
            }
            if (arrayList != null) {
                List<Cookie> unmodifiableList = Collections.unmodifiableList(arrayList);
                Intrinsics.checkNotNullExpressionValue(unmodifiableList, "Collections.unmodifiableList(cookies)");
                return unmodifiableList;
            }
            emptyList2 = CollectionsKt__CollectionsKt.emptyList();
            return emptyList2;
        } catch (IOException e4) {
            Platform platform = Platform.Companion.get();
            StringBuilder sb = new StringBuilder();
            sb.append("Loading cookies failed for ");
            HttpUrl resolve = url.resolve("/...");
            Intrinsics.checkNotNull(resolve);
            sb.append(resolve);
            platform.log(sb.toString(), 5, e4);
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
    }

    @Override // okhttp3.CookieJar
    public void saveFromResponse(@g HttpUrl url, @g List<Cookie> cookies) {
        Map<String, List<String>> mapOf;
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(cookies, "cookies");
        ArrayList arrayList = new ArrayList();
        for (Cookie cookie : cookies) {
            arrayList.add(Internal.cookieToString(cookie, true));
        }
        mapOf = MapsKt__MapsJVMKt.mapOf(TuplesKt.to(b.f34656w0, arrayList));
        try {
            this.cookieHandler.put(url.uri(), mapOf);
        } catch (IOException e4) {
            Platform platform = Platform.Companion.get();
            StringBuilder sb = new StringBuilder();
            sb.append("Saving cookies failed for ");
            HttpUrl resolve = url.resolve("/...");
            Intrinsics.checkNotNull(resolve);
            sb.append(resolve);
            platform.log(sb.toString(), 5, e4);
        }
    }
}

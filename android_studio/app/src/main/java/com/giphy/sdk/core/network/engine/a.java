package com.giphy.sdk.core.network.engine;

import android.net.Uri;
import android.util.Log;
import androidx.exifinterface.media.ExifInterface;
import com.giphy.sdk.core.models.Meta;
import com.giphy.sdk.core.models.json.BooleanDeserializer;
import com.giphy.sdk.core.models.json.DateDeserializer;
import com.giphy.sdk.core.models.json.DateSerializer;
import com.giphy.sdk.core.models.json.IntDeserializer;
import com.giphy.sdk.core.models.json.MainAdapterFactory;
import com.giphy.sdk.core.network.api.GPHApiClient;
import com.giphy.sdk.core.network.response.ErrorResponse;
import com.giphy.sdk.core.threading.a;
import com.google.android.exoplayer2.text.ttml.d;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonParseException;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.InterruptedIOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.nio.charset.Charset;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.zip.GZIPInputStream;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.io.TextStreamsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.StringsKt__StringsJVMKt;
import m8.g;
import m8.h;

/* compiled from: DefaultNetworkSession.kt */
@Metadata(bv = {}, d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\b\u0000\u0018\u0000  2\u00020\u0001:\u0001\u0018B\t\b\u0016¢\u0006\u0004\b%\u0010&B\u0019\b\u0016\u0012\u0006\u0010\"\u001a\u00020\u0019\u0012\u0006\u0010$\u001a\u00020\u001c¢\u0006\u0004\b%\u0010'J5\u0010\t\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00022\b\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0006\u001a\u00020\u00052\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007H\u0002¢\u0006\u0004\b\t\u0010\nJh\u0010\u0015\u001a\b\u0012\u0004\u0012\u00028\u00000\u0014\"\u0004\b\u0000\u0010\u00022\u0006\u0010\f\u001a\u00020\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0010\u001a\u00020\u000f2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u00072\u0014\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\r\u0018\u00010\u00112\u0014\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\r\u0018\u00010\u0011H\u0016Jr\u0010\u0018\u001a\b\u0012\u0004\u0012\u00028\u00000\u0014\"\u0004\b\u0000\u0010\u00022\u0006\u0010\f\u001a\u00020\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0010\u001a\u00020\u000f2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u00072\u0014\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\r\u0018\u00010\u00112\u0014\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\r\u0018\u00010\u00112\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0016R\u0014\u0010\u001b\u001a\u00020\u00198\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u001aR\u0014\u0010\u001f\u001a\u00020\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0014\u0010\"\u001a\u00020\u00198VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b \u0010!R\u0014\u0010$\u001a\u00020\u001c8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001d\u0010#¨\u0006("}, d2 = {"Lcom/giphy/sdk/core/network/engine/a;", "Lcom/giphy/sdk/core/network/engine/b;", ExifInterface.GPS_DIRECTION_TRUE, "Ljava/net/URL;", "url", "Ljava/net/HttpURLConnection;", "connection", "Ljava/lang/Class;", "responseClass", "g", "(Ljava/net/URL;Ljava/net/HttpURLConnection;Ljava/lang/Class;)Ljava/lang/Object;", "Landroid/net/Uri;", "serverUrl", "", "path", "Lcom/giphy/sdk/core/network/api/GPHApiClient$HTTPMethod;", "method", "", "queryStrings", "headers", "Lcom/giphy/sdk/core/threading/a;", "c", "", "requestBody", "a", "Ljava/util/concurrent/ExecutorService;", "Ljava/util/concurrent/ExecutorService;", "networkRequestExecutor1", "Ljava/util/concurrent/Executor;", "b", "Ljava/util/concurrent/Executor;", "completionExecutor1", "d", "()Ljava/util/concurrent/ExecutorService;", "networkRequestExecutor", "()Ljava/util/concurrent/Executor;", "completionExecutor", "<init>", "()V", "(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/Executor;)V", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class a implements com.giphy.sdk.core.network.engine.b {

    /* renamed from: a  reason: collision with root package name */
    private final ExecutorService f16957a;

    /* renamed from: b  reason: collision with root package name */
    private final Executor f16958b;
    @g

    /* renamed from: d  reason: collision with root package name */
    public static final C0132a f16956d = new C0132a(null);

    /* renamed from: c  reason: collision with root package name */
    private static final Gson f16955c = new GsonBuilder().registerTypeHierarchyAdapter(Date.class, new DateDeserializer()).registerTypeHierarchyAdapter(Date.class, new DateSerializer()).registerTypeHierarchyAdapter(Boolean.TYPE, new BooleanDeserializer()).registerTypeHierarchyAdapter(Integer.TYPE, new IntDeserializer()).registerTypeAdapterFactory(new MainAdapterFactory()).create();

    /* compiled from: DefaultNetworkSession.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\b\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\b\u0010\tR\u001f\u0010\u0004\u001a\n \u0003*\u0004\u0018\u00010\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\n"}, d2 = {"Lcom/giphy/sdk/core/network/engine/a$a;", "", "Lcom/google/gson/Gson;", "kotlin.jvm.PlatformType", "GSON_INSTANCE", "Lcom/google/gson/Gson;", "a", "()Lcom/google/gson/Gson;", "<init>", "()V", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
    /* renamed from: com.giphy.sdk.core.network.engine.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0132a {
        private C0132a() {
        }

        public final Gson a() {
            return a.f16955c;
        }

        public /* synthetic */ C0132a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DefaultNetworkSession.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0004\n\u0002\b\u0005\u0010\u0000\u001a\n \u0002*\u0004\u0018\u0001H\u0001H\u0001\"\u0004\b\u0000\u0010\u0001H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"<anonymous>", ExifInterface.GPS_DIRECTION_TRUE, "kotlin.jvm.PlatformType", "call", "()Ljava/lang/Object;"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class b<V> implements Callable<T> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Uri f16960b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f16961c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ Map f16962d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ GPHApiClient.HTTPMethod f16963e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ Map f16964f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ Object f16965g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ Class f16966h;

        b(Uri uri, String str, Map map, GPHApiClient.HTTPMethod hTTPMethod, Map map2, Object obj, Class cls) {
            this.f16960b = uri;
            this.f16961c = str;
            this.f16962d = map;
            this.f16963e = hTTPMethod;
            this.f16964f = map2;
            this.f16965g = obj;
            this.f16966h = cls;
        }

        /* JADX WARN: Type inference failed for: r0v12, types: [T, java.lang.Object] */
        @Override // java.util.concurrent.Callable
        public final T call() {
            Throwable th;
            HttpURLConnection httpURLConnection;
            URL url = null;
            try {
                Uri.Builder buildUpon = this.f16960b.buildUpon();
                String str = this.f16961c;
                if (str != null) {
                    buildUpon.appendEncodedPath(str);
                }
                Map map = this.f16962d;
                if (map != null) {
                    for (Map.Entry entry : map.entrySet()) {
                        buildUpon.appendQueryParameter((String) entry.getKey(), (String) entry.getValue());
                    }
                }
                URL url2 = new URL(buildUpon.build().toString());
                try {
                    URLConnection openConnection = url2.openConnection();
                    if (openConnection != null) {
                        httpURLConnection = (HttpURLConnection) openConnection;
                        try {
                            httpURLConnection.setRequestMethod(this.f16963e.name());
                            Map map2 = this.f16964f;
                            if (map2 != null) {
                                for (Map.Entry entry2 : map2.entrySet()) {
                                    httpURLConnection.setRequestProperty((String) entry2.getKey(), (String) entry2.getValue());
                                }
                            }
                            if (this.f16963e == GPHApiClient.HTTPMethod.POST) {
                                httpURLConnection.setDoOutput(true);
                                httpURLConnection.connect();
                                if (this.f16965g != null) {
                                    String json = a.f16956d.a().toJson(this.f16965g);
                                    Intrinsics.checkNotNullExpressionValue(json, "GSON_INSTANCE.toJson(requestBody)");
                                    Charset forName = Charset.forName("UTF-8");
                                    Intrinsics.checkNotNullExpressionValue(forName, "Charset.forName(charsetName)");
                                    if (json != null) {
                                        byte[] bytes = json.getBytes(forName);
                                        Intrinsics.checkNotNullExpressionValue(bytes, "(this as java.lang.String).getBytes(charset)");
                                        httpURLConnection.getOutputStream().write(bytes);
                                    } else {
                                        throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
                                    }
                                }
                            } else {
                                httpURLConnection.connect();
                            }
                            ?? g4 = a.this.g(url2, httpURLConnection, this.f16966h);
                            httpURLConnection.disconnect();
                            return g4;
                        } catch (Throwable th2) {
                            th = th2;
                            url = url2;
                            try {
                                if (!(th instanceof InterruptedIOException) && !(th instanceof InterruptedException)) {
                                    String name = com.giphy.sdk.core.network.engine.b.class.getName();
                                    StringBuilder sb = new StringBuilder();
                                    sb.append("Unable to perform network request for url=");
                                    Intrinsics.checkNotNull(url);
                                    sb.append(url);
                                    Log.e(name, sb.toString(), th);
                                }
                                throw th;
                            } catch (Throwable th3) {
                                if (httpURLConnection != null) {
                                    httpURLConnection.disconnect();
                                }
                                throw th3;
                            }
                        }
                    }
                    throw new NullPointerException("null cannot be cast to non-null type java.net.HttpURLConnection");
                } catch (Throwable th4) {
                    httpURLConnection = null;
                    url = url2;
                    th = th4;
                }
            } catch (Throwable th5) {
                th = th5;
                httpURLConnection = null;
            }
        }
    }

    public a() {
        a.C0133a c0133a = com.giphy.sdk.core.threading.a.f16973j;
        this.f16957a = c0133a.c();
        this.f16958b = c0133a.b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v3, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v7 */
    public final <T> T g(URL url, HttpURLConnection httpURLConnection, Class<T> cls) throws IOException, ApiException {
        InputStream errorStream;
        String str;
        boolean startsWith$default;
        String str2;
        boolean startsWith$default2;
        InputStream bVar;
        int responseCode = httpURLConnection.getResponseCode();
        boolean z9 = responseCode == 200 || responseCode == 201 || responseCode == 202;
        Map<String, List<String>> headerFields = httpURLConnection.getHeaderFields();
        if (z9) {
            errorStream = httpURLConnection.getInputStream();
            str = "connection.inputStream";
        } else {
            errorStream = httpURLConnection.getErrorStream();
            str = "connection.errorStream";
        }
        Intrinsics.checkNotNullExpressionValue(errorStream, str);
        if (headerFields.containsKey("Content-Encoding")) {
            List<String> list = headerFields.get("Content-Encoding");
            Intrinsics.checkNotNull(list);
            List<String> list2 = list;
            Thread currentThread = Thread.currentThread();
            Intrinsics.checkNotNullExpressionValue(currentThread, "Thread.currentThread()");
            if (!currentThread.isInterrupted()) {
                if (list2.contains("gzip")) {
                    bVar = new GZIPInputStream(errorStream);
                } else if (list2.contains(d.f25734t)) {
                    bVar = new org.brotli.dec.b(errorStream);
                }
                errorStream = bVar;
            } else {
                throw new InterruptedIOException();
            }
        }
        try {
            Intrinsics.checkNotNull(errorStream);
            InputStreamReader inputStreamReader = new InputStreamReader(errorStream, Charsets.UTF_8);
            String readText = TextStreamsKt.readText(inputStreamReader instanceof BufferedReader ? (BufferedReader) inputStreamReader : new BufferedReader(inputStreamReader, 8192));
            String str3 = (T) readText;
            Unit unit = Unit.INSTANCE;
            CloseableKt.closeFinally(errorStream, null);
            if (z9) {
                if (Intrinsics.areEqual(cls, String.class)) {
                    return str3;
                }
                try {
                    startsWith$default2 = StringsKt__StringsJVMKt.startsWith$default(str3, "{", false, 2, null);
                    String str4 = str3;
                    if (!startsWith$default2) {
                        str4 = (T) "{}";
                    }
                    return (T) f16955c.fromJson(str4, (Class<Object>) cls);
                } catch (JsonParseException unused) {
                    return cls.newInstance();
                }
            }
            try {
                startsWith$default = StringsKt__StringsJVMKt.startsWith$default(str3, "{", false, 2, null);
                String str5 = str3;
                if (!startsWith$default) {
                    str5 = (T) ("{\"error\": \"" + ((String) str3) + "\"}");
                }
                str2 = str5;
            } catch (JsonParseException e4) {
                e = e4;
            }
            try {
                ErrorResponse errorResponse = (ErrorResponse) f16955c.fromJson(str2, (Class<Object>) ErrorResponse.class);
                if (errorResponse.getMeta() == null) {
                    errorResponse.setMeta(new Meta(responseCode, errorResponse.getMessage(), null, 4, null));
                }
                Intrinsics.checkNotNullExpressionValue(errorResponse, "errorResponse");
                throw new ApiException(errorResponse);
            } catch (JsonParseException e10) {
                str3 = (T) str2;
                e = e10;
                throw new ApiException("Unable to parse server error response : " + url + " : " + str3 + " : " + e.getMessage(), new ErrorResponse(responseCode, str3));
            }
        } finally {
        }
    }

    @Override // com.giphy.sdk.core.network.engine.b
    @g
    public <T> com.giphy.sdk.core.threading.a<T> a(@g Uri serverUrl, @h String str, @g GPHApiClient.HTTPMethod method, @g Class<T> responseClass, @h Map<String, String> map, @h Map<String, String> map2, @h Object obj) {
        Intrinsics.checkNotNullParameter(serverUrl, "serverUrl");
        Intrinsics.checkNotNullParameter(method, "method");
        Intrinsics.checkNotNullParameter(responseClass, "responseClass");
        return new com.giphy.sdk.core.threading.a<>(new b(serverUrl, str, map, method, map2, obj, responseClass), d(), b());
    }

    @Override // com.giphy.sdk.core.network.engine.b
    @g
    public Executor b() {
        return this.f16958b;
    }

    @Override // com.giphy.sdk.core.network.engine.b
    @g
    public <T> com.giphy.sdk.core.threading.a<T> c(@g Uri serverUrl, @h String str, @g GPHApiClient.HTTPMethod method, @g Class<T> responseClass, @h Map<String, String> map, @h Map<String, String> map2) {
        Intrinsics.checkNotNullParameter(serverUrl, "serverUrl");
        Intrinsics.checkNotNullParameter(method, "method");
        Intrinsics.checkNotNullParameter(responseClass, "responseClass");
        return a(serverUrl, str, method, responseClass, map, map2, null);
    }

    @Override // com.giphy.sdk.core.network.engine.b
    @g
    public ExecutorService d() {
        return this.f16957a;
    }

    public a(@g ExecutorService networkRequestExecutor, @g Executor completionExecutor) {
        Intrinsics.checkNotNullParameter(networkRequestExecutor, "networkRequestExecutor");
        Intrinsics.checkNotNullParameter(completionExecutor, "completionExecutor");
        this.f16957a = networkRequestExecutor;
        this.f16958b = completionExecutor;
    }
}

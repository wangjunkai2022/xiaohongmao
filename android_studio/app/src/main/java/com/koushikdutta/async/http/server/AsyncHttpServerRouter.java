package com.koushikdutta.async.http.server;

import android.content.Context;
import android.content.res.AssetManager;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.exoplayer2.util.a0;
import com.koushikdutta.async.Util;
import com.koushikdutta.async.callback.CompletedCallback;
import com.koushikdutta.async.future.Future;
import com.koushikdutta.async.future.SimpleFuture;
import com.koushikdutta.async.http.AsyncHttpGet;
import com.koushikdutta.async.http.AsyncHttpHead;
import com.koushikdutta.async.http.AsyncHttpPost;
import com.koushikdutta.async.http.WebSocket;
import com.koushikdutta.async.http.WebSocketImpl;
import com.koushikdutta.async.http.body.StringBody;
import com.koushikdutta.async.http.server.AsyncHttpServer;
import com.koushikdutta.async.util.StreamUtility;
import io.sentry.instrumentation.file.h;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.Map;
import java.util.jar.Attributes;
import java.util.jar.Manifest;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.ZipFile;

/* loaded from: classes3.dex */
public class AsyncHttpServerRouter implements RouteMatcher {

    /* renamed from: c  reason: collision with root package name */
    static Hashtable<String, String> f45009c = new Hashtable<>();

    /* renamed from: d  reason: collision with root package name */
    static Hashtable<String, Future<Manifest>> f45010d = new Hashtable<>();

    /* renamed from: a  reason: collision with root package name */
    final ArrayList<RouteInfo> f45011a = new ArrayList<>();

    /* renamed from: b  reason: collision with root package name */
    private Callback f45012b;

    /* loaded from: classes3.dex */
    public static class Asset {

        /* renamed from: a  reason: collision with root package name */
        public int f45019a;

        /* renamed from: b  reason: collision with root package name */
        public InputStream f45020b;

        /* renamed from: c  reason: collision with root package name */
        public String f45021c;

        public Asset(int i4, InputStream inputStream, String str) {
            this.f45019a = i4;
            this.f45020b = inputStream;
            this.f45021c = str;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public abstract class AsyncHttpServerRequestImpl extends com.koushikdutta.async.http.server.AsyncHttpServerRequestImpl {

        /* renamed from: p  reason: collision with root package name */
        Matcher f45022p;

        /* JADX INFO: Access modifiers changed from: package-private */
        public AsyncHttpServerRequestImpl() {
        }

        @Override // com.koushikdutta.async.http.server.AsyncHttpServerRequest
        public Matcher C() {
            return this.f45022p;
        }

        @Override // com.koushikdutta.async.http.server.AsyncHttpServerRequest
        public void m0(Matcher matcher) {
            this.f45022p = matcher;
        }
    }

    /* loaded from: classes3.dex */
    class Callback implements HttpServerRequestCallback, RouteMatcher {
        Callback() {
        }

        @Override // com.koushikdutta.async.http.server.RouteMatcher
        public RouteMatch a(String str, String str2) {
            return AsyncHttpServerRouter.this.a(str, str2);
        }

        @Override // com.koushikdutta.async.http.server.HttpServerRequestCallback
        public void b(AsyncHttpServerRequest asyncHttpServerRequest, AsyncHttpServerResponse asyncHttpServerResponse) {
            RouteMatch a10 = a(asyncHttpServerRequest.getMethod(), asyncHttpServerRequest.getPath());
            if (a10 == null) {
                asyncHttpServerResponse.h(404);
                asyncHttpServerResponse.j();
                return;
            }
            a10.f45032d.b(asyncHttpServerRequest, asyncHttpServerResponse);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class RouteInfo {

        /* renamed from: a  reason: collision with root package name */
        String f45025a;

        /* renamed from: b  reason: collision with root package name */
        Pattern f45026b;

        /* renamed from: c  reason: collision with root package name */
        HttpServerRequestCallback f45027c;

        /* renamed from: d  reason: collision with root package name */
        AsyncHttpRequestBodyProvider f45028d;

        private RouteInfo() {
        }
    }

    /* loaded from: classes3.dex */
    public static class RouteMatch {

        /* renamed from: a  reason: collision with root package name */
        public final String f45029a;

        /* renamed from: b  reason: collision with root package name */
        public final String f45030b;

        /* renamed from: c  reason: collision with root package name */
        public final Matcher f45031c;

        /* renamed from: d  reason: collision with root package name */
        public final HttpServerRequestCallback f45032d;

        /* renamed from: e  reason: collision with root package name */
        public final AsyncHttpRequestBodyProvider f45033e;

        private RouteMatch(String str, String str2, Matcher matcher, HttpServerRequestCallback httpServerRequestCallback, AsyncHttpRequestBodyProvider asyncHttpRequestBodyProvider) {
            this.f45029a = str;
            this.f45030b = str2;
            this.f45031c = matcher;
            this.f45032d = httpServerRequestCallback;
            this.f45033e = asyncHttpRequestBodyProvider;
        }
    }

    public AsyncHttpServerRouter() {
        f45009c.put("js", "application/javascript");
        f45009c.put("json", "application/json");
        f45009c.put("png", "image/png");
        f45009c.put("jpg", a0.F0);
        f45009c.put("jpeg", a0.F0);
        f45009c.put("html", "text/html");
        f45009c.put("css", "text/css");
        f45009c.put("mp4", a0.f27441f);
        f45009c.put("mov", "video/quicktime");
        f45009c.put("wmv", "video/x-ms-wmv");
        f45009c.put("txt", StringBody.f44760c);
        this.f45012b = new Callback();
    }

    public static WebSocket h(String str, AsyncHttpServerRequest asyncHttpServerRequest, AsyncHttpServerResponse asyncHttpServerResponse) {
        String g4 = asyncHttpServerRequest.d().g(com.google.common.net.b.f34639o);
        boolean z9 = false;
        if (g4 != null) {
            String[] split = g4.split(",");
            int length = split.length;
            int i4 = 0;
            while (true) {
                if (i4 >= length) {
                    break;
                } else if (com.google.common.net.b.L.equalsIgnoreCase(split[i4].trim())) {
                    z9 = true;
                    break;
                } else {
                    i4++;
                }
            }
        }
        if ("websocket".equalsIgnoreCase(asyncHttpServerRequest.d().g(com.google.common.net.b.L)) && z9 && TextUtils.equals(str, asyncHttpServerRequest.d().g("Sec-WebSocket-Protocol"))) {
            return new WebSocketImpl(asyncHttpServerRequest, asyncHttpServerResponse);
        }
        return null;
    }

    static synchronized Manifest l(Context context) {
        ZipFile zipFile;
        Throwable th;
        synchronized (AsyncHttpServerRouter.class) {
            Future<Manifest> future = f45010d.get(context.getPackageName());
            if (future != null) {
                return future.E();
            }
            SimpleFuture simpleFuture = new SimpleFuture();
            try {
                zipFile = new ZipFile(context.getPackageResourcePath());
            } catch (Exception e4) {
                e = e4;
                zipFile = null;
            } catch (Throwable th2) {
                zipFile = null;
                th = th2;
                StreamUtility.a(zipFile);
                f45010d.put(context.getPackageName(), simpleFuture);
                throw th;
            }
            try {
                try {
                    Manifest manifest = new Manifest(zipFile.getInputStream(zipFile.getEntry("META-INF/MANIFEST.MF")));
                    simpleFuture.e0(manifest);
                    StreamUtility.a(zipFile);
                    f45010d.put(context.getPackageName(), simpleFuture);
                    return manifest;
                } catch (Throwable th3) {
                    th = th3;
                    StreamUtility.a(zipFile);
                    f45010d.put(context.getPackageName(), simpleFuture);
                    throw th;
                }
            } catch (Exception e10) {
                e = e10;
                simpleFuture.b0(e);
                StreamUtility.a(zipFile);
                f45010d.put(context.getPackageName(), simpleFuture);
                return null;
            }
        }
    }

    public static Asset n(Context context, String str) {
        return o(context.getAssets(), str);
    }

    public static Asset o(AssetManager assetManager, String str) {
        try {
            InputStream open = assetManager.open(str);
            return new Asset(open.available(), open, str);
        } catch (IOException unused) {
            String[] strArr = {"/index.htm", "/index.html", "index.htm", "index.html", ".htm", ".html"};
            for (int i4 = 0; i4 < 6; i4++) {
                String str2 = strArr[i4];
                try {
                    InputStream open2 = assetManager.open(str + str2);
                    int available = open2.available();
                    return new Asset(available, open2, str + str2);
                } catch (IOException unused2) {
                }
            }
            return null;
        }
    }

    public static String q(String str) {
        return y(str);
    }

    static boolean r(Context context, AsyncHttpServerRequest asyncHttpServerRequest, AsyncHttpServerResponse asyncHttpServerResponse, String str) {
        Manifest l10 = l(context);
        if (l10 == null) {
            return false;
        }
        try {
            Map<String, Attributes> entries = l10.getEntries();
            String value = entries.get("assets/" + str).getValue("SHA-256-Digest");
            if (TextUtils.isEmpty(value)) {
                return false;
            }
            String format = String.format("\"%s\"", value);
            asyncHttpServerResponse.d().n(com.google.common.net.b.f34628i0, format);
            return TextUtils.equals(asyncHttpServerRequest.d().g(com.google.common.net.b.f34661z), format);
        } catch (Exception e4) {
            Log.w(AsyncHttpServerRouter.class.getSimpleName(), "Error getting ETag for apk asset", e4);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void s(AssetManager assetManager, String str, Context context, AsyncHttpServerRequest asyncHttpServerRequest, final AsyncHttpServerResponse asyncHttpServerResponse) {
        String replaceAll = asyncHttpServerRequest.C().replaceAll("");
        final Asset o9 = o(assetManager, str + replaceAll);
        if (o9 != null && o9.f45020b != null) {
            if (r(context, asyncHttpServerRequest, asyncHttpServerResponse, o9.f45021c)) {
                StreamUtility.a(o9.f45020b);
                asyncHttpServerResponse.h(304);
                asyncHttpServerResponse.j();
                return;
            }
            asyncHttpServerResponse.d().n(com.google.common.net.b.f34609b, String.valueOf(o9.f45019a));
            asyncHttpServerResponse.d().a("Content-Type", q(o9.f45021c));
            asyncHttpServerResponse.h(200);
            Util.h(o9.f45020b, o9.f45019a, asyncHttpServerResponse, new CompletedCallback() { // from class: com.koushikdutta.async.http.server.i
                @Override // com.koushikdutta.async.callback.CompletedCallback
                public final void g(Exception exc) {
                    AsyncHttpServerRouter.u(AsyncHttpServerResponse.this, o9, exc);
                }
            });
            return;
        }
        asyncHttpServerResponse.h(404);
        asyncHttpServerResponse.j();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void t(AssetManager assetManager, String str, Context context, AsyncHttpServerRequest asyncHttpServerRequest, AsyncHttpServerResponse asyncHttpServerResponse) {
        InputStream inputStream;
        String replaceAll = asyncHttpServerRequest.C().replaceAll("");
        Asset o9 = o(assetManager, str + replaceAll);
        if (o9 != null && (inputStream = o9.f45020b) != null) {
            StreamUtility.a(inputStream);
            if (r(context, asyncHttpServerRequest, asyncHttpServerResponse, o9.f45021c)) {
                asyncHttpServerResponse.h(304);
            } else {
                asyncHttpServerResponse.d().n(com.google.common.net.b.f34609b, String.valueOf(o9.f45019a));
                asyncHttpServerResponse.d().a("Content-Type", q(o9.f45021c));
                asyncHttpServerResponse.h(200);
            }
            asyncHttpServerResponse.j();
            return;
        }
        asyncHttpServerResponse.h(404);
        asyncHttpServerResponse.j();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void u(AsyncHttpServerResponse asyncHttpServerResponse, Asset asset, Exception exc) {
        asyncHttpServerResponse.j();
        StreamUtility.a(asset.f45020b);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void v(String str, AsyncHttpServer.WebSocketRequestCallback webSocketRequestCallback, AsyncHttpServerRequest asyncHttpServerRequest, AsyncHttpServerResponse asyncHttpServerResponse) {
        WebSocket h4 = h(str, asyncHttpServerRequest, asyncHttpServerResponse);
        if (h4 == null) {
            asyncHttpServerResponse.h(404);
            asyncHttpServerResponse.j();
            return;
        }
        webSocketRequestCallback.a(h4, asyncHttpServerRequest);
    }

    public static String y(String str) {
        int lastIndexOf = str.lastIndexOf(".");
        if (lastIndexOf != -1) {
            String str2 = f45009c.get(str.substring(lastIndexOf + 1));
            if (str2 != null) {
                return str2;
            }
            return null;
        }
        return null;
    }

    public void A(String str, final String str2, final AsyncHttpServer.WebSocketRequestCallback webSocketRequestCallback) {
        m(str, new HttpServerRequestCallback() { // from class: com.koushikdutta.async.http.server.l
            @Override // com.koushikdutta.async.http.server.HttpServerRequestCallback
            public final void b(AsyncHttpServerRequest asyncHttpServerRequest, AsyncHttpServerResponse asyncHttpServerResponse) {
                AsyncHttpServerRouter.v(str2, webSocketRequestCallback, asyncHttpServerRequest, asyncHttpServerResponse);
            }
        });
    }

    @Override // com.koushikdutta.async.http.server.RouteMatcher
    public RouteMatch a(String str, String str2) {
        synchronized (this.f45011a) {
            Iterator<RouteInfo> it = this.f45011a.iterator();
            while (it.hasNext()) {
                RouteInfo next = it.next();
                if (TextUtils.equals(str, next.f45025a) || next.f45025a == null) {
                    Matcher matcher = next.f45026b.matcher(str2);
                    if (matcher.matches()) {
                        HttpServerRequestCallback httpServerRequestCallback = next.f45027c;
                        if (httpServerRequestCallback instanceof RouteMatcher) {
                            return ((RouteMatcher) next.f45027c).a(str, matcher.group(1));
                        }
                        return new RouteMatch(str, str2, matcher, httpServerRequestCallback, next.f45028d);
                    }
                }
            }
            return null;
        }
    }

    public void f(String str, String str2, HttpServerRequestCallback httpServerRequestCallback) {
        g(str, str2, httpServerRequestCallback, null);
    }

    public void g(String str, String str2, HttpServerRequestCallback httpServerRequestCallback, AsyncHttpRequestBodyProvider asyncHttpRequestBodyProvider) {
        RouteInfo routeInfo = new RouteInfo();
        routeInfo.f45026b = Pattern.compile("^" + str2);
        routeInfo.f45027c = httpServerRequestCallback;
        routeInfo.f45025a = str;
        routeInfo.f45028d = asyncHttpRequestBodyProvider;
        synchronized (this.f45011a) {
            this.f45011a.add(routeInfo);
        }
    }

    public void i(final Context context, String str, final String str2) {
        final AssetManager assets = context.getAssets();
        f(AsyncHttpGet.f44554o, str, new HttpServerRequestCallback() { // from class: com.koushikdutta.async.http.server.j
            @Override // com.koushikdutta.async.http.server.HttpServerRequestCallback
            public final void b(AsyncHttpServerRequest asyncHttpServerRequest, AsyncHttpServerResponse asyncHttpServerResponse) {
                AsyncHttpServerRouter.s(assets, str2, context, asyncHttpServerRequest, asyncHttpServerResponse);
            }
        });
        f(AsyncHttpHead.f44555o, str, new HttpServerRequestCallback() { // from class: com.koushikdutta.async.http.server.k
            @Override // com.koushikdutta.async.http.server.HttpServerRequestCallback
            public final void b(AsyncHttpServerRequest asyncHttpServerRequest, AsyncHttpServerResponse asyncHttpServerResponse) {
                AsyncHttpServerRouter.t(assets, str2, context, asyncHttpServerRequest, asyncHttpServerResponse);
            }
        });
    }

    public void j(String str, File file) {
        k(str, file, false);
    }

    public void k(String str, final File file, final boolean z9) {
        f(AsyncHttpGet.f44554o, str, new HttpServerRequestCallback() { // from class: com.koushikdutta.async.http.server.AsyncHttpServerRouter.1
            @Override // com.koushikdutta.async.http.server.HttpServerRequestCallback
            public void b(AsyncHttpServerRequest asyncHttpServerRequest, final AsyncHttpServerResponse asyncHttpServerResponse) {
                File[] listFiles;
                File file2 = new File(file, asyncHttpServerRequest.C().replaceAll(""));
                if (file2.isDirectory() && z9) {
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    for (File file3 : file2.listFiles()) {
                        if (file3.isDirectory()) {
                            arrayList.add(file3);
                        } else {
                            arrayList2.add(file3);
                        }
                    }
                    Comparator<File> comparator = new Comparator<File>() { // from class: com.koushikdutta.async.http.server.AsyncHttpServerRouter.1.1
                        @Override // java.util.Comparator
                        /* renamed from: a */
                        public int compare(File file4, File file5) {
                            return file4.getName().compareTo(file5.getName());
                        }
                    };
                    Collections.sort(arrayList, comparator);
                    Collections.sort(arrayList2, comparator);
                    arrayList2.addAll(0, arrayList);
                    StringBuilder sb = new StringBuilder();
                    Iterator it = arrayList2.iterator();
                    while (it.hasNext()) {
                        File file4 = (File) it.next();
                        sb.append(String.format("<div><a href='%s'>%s</a></div>", new File(asyncHttpServerRequest.getPath(), file4.getName()).getAbsolutePath(), file4.getName()));
                    }
                    asyncHttpServerResponse.send(sb.toString());
                } else if (!file2.isFile()) {
                    asyncHttpServerResponse.h(404);
                    asyncHttpServerResponse.j();
                } else {
                    try {
                        FileInputStream a10 = h.b.a(new FileInputStream(file2), file2);
                        asyncHttpServerResponse.h(200);
                        Util.h(a10, a10.available(), asyncHttpServerResponse, new CompletedCallback() { // from class: com.koushikdutta.async.http.server.AsyncHttpServerRouter.1.2
                            @Override // com.koushikdutta.async.callback.CompletedCallback
                            public void g(Exception exc) {
                                asyncHttpServerResponse.j();
                            }
                        });
                    } catch (IOException unused) {
                        asyncHttpServerResponse.h(404);
                        asyncHttpServerResponse.j();
                    }
                }
            }
        });
    }

    public void m(String str, HttpServerRequestCallback httpServerRequestCallback) {
        f(AsyncHttpGet.f44554o, str, httpServerRequestCallback);
    }

    public HttpServerRequestCallback p() {
        return this.f45012b;
    }

    public void w(String str, HttpServerRequestCallback httpServerRequestCallback) {
        f(AsyncHttpPost.f44556o, str, httpServerRequestCallback);
    }

    public void x(String str, String str2) {
        for (int i4 = 0; i4 < this.f45011a.size(); i4++) {
            RouteInfo routeInfo = this.f45011a.get(i4);
            if (TextUtils.equals(routeInfo.f45025a, str) && str2.equals(routeInfo.f45026b.toString())) {
                this.f45011a.remove(i4);
                return;
            }
        }
    }

    public void z(String str, AsyncHttpServer.WebSocketRequestCallback webSocketRequestCallback) {
        A(str, null, webSocketRequestCallback);
    }
}

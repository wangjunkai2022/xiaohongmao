package com.airbnb.lottie.network;

import android.content.Context;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import androidx.core.util.Pair;
import com.airbnb.lottie.f;
import com.airbnb.lottie.g;
import com.airbnb.lottie.n;
import com.airbnb.lottie.utils.d;
import com.koushikdutta.async.http.AsyncHttpGet;
import io.sentry.instrumentation.file.h;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.zip.ZipInputStream;

/* compiled from: NetworkFetcher.java */
/* loaded from: classes.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private final Context f4609a;

    /* renamed from: b  reason: collision with root package name */
    private final String f4610b;

    /* renamed from: c  reason: collision with root package name */
    private final a f4611c;

    private b(Context context, String str) {
        Context applicationContext = context.getApplicationContext();
        this.f4609a = applicationContext;
        this.f4610b = str;
        this.f4611c = new a(applicationContext, str);
    }

    @Nullable
    @WorkerThread
    private f a() {
        n<f> h4;
        Pair<FileExtension, InputStream> a10 = this.f4611c.a();
        if (a10 == null) {
            return null;
        }
        FileExtension fileExtension = a10.first;
        InputStream inputStream = a10.second;
        if (fileExtension == FileExtension.ZIP) {
            h4 = g.u(new ZipInputStream(inputStream), this.f4610b);
        } else {
            h4 = g.h(inputStream, this.f4610b);
        }
        if (h4.b() != null) {
            return h4.b();
        }
        return null;
    }

    @WorkerThread
    private n<f> b() {
        try {
            return c();
        } catch (IOException e4) {
            return new n<>(e4);
        }
    }

    @WorkerThread
    private n c() throws IOException {
        d.a("Fetching " + this.f4610b);
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(this.f4610b).openConnection();
        httpURLConnection.setRequestMethod(AsyncHttpGet.f44554o);
        try {
            httpURLConnection.connect();
            if (httpURLConnection.getErrorStream() == null && httpURLConnection.getResponseCode() == 200) {
                n<f> g4 = g(httpURLConnection);
                StringBuilder sb = new StringBuilder();
                sb.append("Completed fetch from network. Success: ");
                sb.append(g4.b() != null);
                d.a(sb.toString());
                return g4;
            }
            String f10 = f(httpURLConnection);
            return new n((Throwable) new IllegalArgumentException("Unable to fetch " + this.f4610b + ". Failed with " + httpURLConnection.getResponseCode() + "\n" + f10));
        } catch (Exception e4) {
            return new n((Throwable) e4);
        } finally {
            httpURLConnection.disconnect();
        }
    }

    public static n<f> e(Context context, String str) {
        return new b(context, str).d();
    }

    private String f(HttpURLConnection httpURLConnection) throws IOException {
        httpURLConnection.getResponseCode();
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getErrorStream()));
        StringBuilder sb = new StringBuilder();
        while (true) {
            try {
                try {
                    String readLine = bufferedReader.readLine();
                    if (readLine != null) {
                        sb.append(readLine);
                        sb.append('\n');
                    } else {
                        try {
                            break;
                        } catch (Exception unused) {
                        }
                    }
                } catch (Throwable th) {
                    try {
                        bufferedReader.close();
                    } catch (Exception unused2) {
                    }
                    throw th;
                }
            } catch (Exception e4) {
                throw e4;
            }
        }
        bufferedReader.close();
        return sb.toString();
    }

    @Nullable
    private n<f> g(HttpURLConnection httpURLConnection) throws IOException {
        FileExtension fileExtension;
        n<f> h4;
        String contentType = httpURLConnection.getContentType();
        if (contentType == null) {
            contentType = "application/json";
        }
        if (contentType.contains("application/zip")) {
            d.a("Handling zip response.");
            fileExtension = FileExtension.ZIP;
            File e4 = this.f4611c.e(httpURLConnection.getInputStream(), fileExtension);
            h4 = g.u(new ZipInputStream(h.b.a(new FileInputStream(e4), e4)), this.f4610b);
        } else {
            d.a("Received json response.");
            fileExtension = FileExtension.JSON;
            File file = new File(this.f4611c.e(httpURLConnection.getInputStream(), fileExtension).getAbsolutePath());
            h4 = g.h(h.b.a(new FileInputStream(file), file), this.f4610b);
        }
        if (h4.b() != null) {
            this.f4611c.d(fileExtension);
        }
        return h4;
    }

    @WorkerThread
    public n<f> d() {
        f a10 = a();
        if (a10 != null) {
            return new n<>(a10);
        }
        d.a("Animation for " + this.f4610b + " not found in cache. Fetching from network.");
        return b();
    }
}

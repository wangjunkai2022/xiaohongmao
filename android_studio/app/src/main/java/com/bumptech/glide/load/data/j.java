package com.bumptech.glide.load.data;

import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.HttpException;
import com.bumptech.glide.load.data.d;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.Map;

/* compiled from: HttpUrlFetcher.java */
/* loaded from: classes.dex */
public class j implements d<InputStream> {

    /* renamed from: g  reason: collision with root package name */
    private static final String f8548g = "HttpUrlFetcher";

    /* renamed from: h  reason: collision with root package name */
    private static final int f8549h = 5;
    @VisibleForTesting

    /* renamed from: i  reason: collision with root package name */
    static final String f8550i = "Location";
    @VisibleForTesting

    /* renamed from: j  reason: collision with root package name */
    static final b f8551j = new a();
    @VisibleForTesting

    /* renamed from: k  reason: collision with root package name */
    static final int f8552k = -1;

    /* renamed from: a  reason: collision with root package name */
    private final com.bumptech.glide.load.model.g f8553a;

    /* renamed from: b  reason: collision with root package name */
    private final int f8554b;

    /* renamed from: c  reason: collision with root package name */
    private final b f8555c;

    /* renamed from: d  reason: collision with root package name */
    private HttpURLConnection f8556d;

    /* renamed from: e  reason: collision with root package name */
    private InputStream f8557e;

    /* renamed from: f  reason: collision with root package name */
    private volatile boolean f8558f;

    /* compiled from: HttpUrlFetcher.java */
    /* loaded from: classes.dex */
    private static class a implements b {
        a() {
        }

        @Override // com.bumptech.glide.load.data.j.b
        public HttpURLConnection a(URL url) throws IOException {
            return (HttpURLConnection) url.openConnection();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: HttpUrlFetcher.java */
    /* loaded from: classes.dex */
    public interface b {
        HttpURLConnection a(URL url) throws IOException;
    }

    public j(com.bumptech.glide.load.model.g gVar, int i4) {
        this(gVar, i4, f8551j);
    }

    private HttpURLConnection c(URL url, Map<String, String> map) throws HttpException {
        try {
            HttpURLConnection a10 = this.f8555c.a(url);
            for (Map.Entry<String, String> entry : map.entrySet()) {
                a10.addRequestProperty(entry.getKey(), entry.getValue());
            }
            a10.setConnectTimeout(this.f8554b);
            a10.setReadTimeout(this.f8554b);
            a10.setUseCaches(false);
            a10.setDoInput(true);
            a10.setInstanceFollowRedirects(false);
            return a10;
        } catch (IOException e4) {
            throw new HttpException("URL.openConnection threw", 0, e4);
        }
    }

    private static int e(HttpURLConnection httpURLConnection) {
        try {
            return httpURLConnection.getResponseCode();
        } catch (IOException e4) {
            if (Log.isLoggable(f8548g, 3)) {
                Log.d(f8548g, "Failed to get a response code", e4);
                return -1;
            }
            return -1;
        }
    }

    private InputStream f(HttpURLConnection httpURLConnection) throws HttpException {
        try {
            if (TextUtils.isEmpty(httpURLConnection.getContentEncoding())) {
                this.f8557e = com.bumptech.glide.util.c.b(httpURLConnection.getInputStream(), httpURLConnection.getContentLength());
            } else {
                if (Log.isLoggable(f8548g, 3)) {
                    Log.d(f8548g, "Got non empty content encoding: " + httpURLConnection.getContentEncoding());
                }
                this.f8557e = httpURLConnection.getInputStream();
            }
            return this.f8557e;
        } catch (IOException e4) {
            throw new HttpException("Failed to obtain InputStream", e(httpURLConnection), e4);
        }
    }

    private static boolean g(int i4) {
        return i4 / 100 == 2;
    }

    private static boolean h(int i4) {
        return i4 / 100 == 3;
    }

    private InputStream i(URL url, int i4, URL url2, Map<String, String> map) throws HttpException {
        if (i4 < 5) {
            if (url2 != null) {
                try {
                    if (url.toURI().equals(url2.toURI())) {
                        throw new HttpException("In re-direct loop", -1);
                    }
                } catch (URISyntaxException unused) {
                }
            }
            HttpURLConnection c10 = c(url, map);
            this.f8556d = c10;
            try {
                c10.connect();
                this.f8557e = this.f8556d.getInputStream();
                if (this.f8558f) {
                    return null;
                }
                int e4 = e(this.f8556d);
                if (g(e4)) {
                    return f(this.f8556d);
                }
                if (!h(e4)) {
                    if (e4 == -1) {
                        throw new HttpException(e4);
                    }
                    try {
                        throw new HttpException(this.f8556d.getResponseMessage(), e4);
                    } catch (IOException e10) {
                        throw new HttpException("Failed to get a response message", e4, e10);
                    }
                }
                String headerField = this.f8556d.getHeaderField("Location");
                if (!TextUtils.isEmpty(headerField)) {
                    try {
                        URL url3 = new URL(url, headerField);
                        b();
                        return i(url3, i4 + 1, url, map);
                    } catch (MalformedURLException e11) {
                        throw new HttpException("Bad redirect url: " + headerField, e4, e11);
                    }
                }
                throw new HttpException("Received empty or null redirect url", e4);
            } catch (IOException e12) {
                throw new HttpException("Failed to connect or obtain data", e(this.f8556d), e12);
            }
        }
        throw new HttpException("Too many (> 5) redirects!", -1);
    }

    @Override // com.bumptech.glide.load.data.d
    @NonNull
    public Class<InputStream> a() {
        return InputStream.class;
    }

    @Override // com.bumptech.glide.load.data.d
    public void b() {
        InputStream inputStream = this.f8557e;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException unused) {
            }
        }
        HttpURLConnection httpURLConnection = this.f8556d;
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
        this.f8556d = null;
    }

    @Override // com.bumptech.glide.load.data.d
    public void cancel() {
        this.f8558f = true;
    }

    @Override // com.bumptech.glide.load.data.d
    public void d(@NonNull Priority priority, @NonNull d.a<? super InputStream> aVar) {
        StringBuilder sb;
        long b10 = com.bumptech.glide.util.i.b();
        try {
            try {
                aVar.e(i(this.f8553a.i(), 0, null, this.f8553a.e()));
            } catch (IOException e4) {
                if (Log.isLoggable(f8548g, 3)) {
                    Log.d(f8548g, "Failed to load data for url", e4);
                }
                aVar.c(e4);
                if (!Log.isLoggable(f8548g, 2)) {
                    return;
                }
                sb = new StringBuilder();
            }
            if (Log.isLoggable(f8548g, 2)) {
                sb = new StringBuilder();
                sb.append("Finished http url fetcher fetch in ");
                sb.append(com.bumptech.glide.util.i.a(b10));
                Log.v(f8548g, sb.toString());
            }
        } catch (Throwable th) {
            if (Log.isLoggable(f8548g, 2)) {
                Log.v(f8548g, "Finished http url fetcher fetch in " + com.bumptech.glide.util.i.a(b10));
            }
            throw th;
        }
    }

    @Override // com.bumptech.glide.load.data.d
    @NonNull
    public DataSource getDataSource() {
        return DataSource.REMOTE;
    }

    @VisibleForTesting
    j(com.bumptech.glide.load.model.g gVar, int i4, b bVar) {
        this.f8553a = gVar;
        this.f8554b = i4;
        this.f8555c = bVar;
    }
}

package com.koushikdutta.async.http.body;

import com.koushikdutta.async.DataSink;
import com.koushikdutta.async.callback.CompletedCallback;
import com.koushikdutta.async.http.Headers;
import com.koushikdutta.async.http.Multimap;
import com.koushikdutta.async.http.NameValuePair;
import java.io.File;
import java.util.List;
import java.util.Locale;

/* loaded from: classes3.dex */
public class Part {

    /* renamed from: d  reason: collision with root package name */
    public static final String f44752d = "Content-Disposition";

    /* renamed from: a  reason: collision with root package name */
    Headers f44753a;

    /* renamed from: b  reason: collision with root package name */
    Multimap f44754b;

    /* renamed from: c  reason: collision with root package name */
    private long f44755c;

    public Part(Headers headers) {
        this.f44755c = -1L;
        this.f44753a = headers;
        this.f44754b = Multimap.parseSemicolonDelimited(headers.g("Content-Disposition"));
    }

    public String a() {
        return this.f44753a.g("Content-Type");
    }

    public String b() {
        String string = this.f44754b.getString("filename");
        if (string == null) {
            return null;
        }
        return new File(string).getName();
    }

    public String c() {
        return this.f44754b.getString("name");
    }

    public Headers d() {
        return this.f44753a;
    }

    public boolean e() {
        return this.f44754b.containsKey("filename");
    }

    public long f() {
        return this.f44755c;
    }

    public void g(String str) {
        this.f44753a.n("Content-Type", str);
    }

    public void h(DataSink dataSink, CompletedCallback completedCallback) {
    }

    public Part(String str, long j4, List<NameValuePair> list) {
        this.f44755c = j4;
        this.f44753a = new Headers();
        StringBuilder sb = new StringBuilder(String.format(Locale.ENGLISH, "form-data; name=\"%s\"", str));
        if (list != null) {
            for (NameValuePair nameValuePair : list) {
                sb.append(String.format(Locale.ENGLISH, "; %s=\"%s\"", nameValuePair.getName(), nameValuePair.getValue()));
            }
        }
        this.f44753a.n("Content-Disposition", sb.toString());
        this.f44754b = Multimap.parseSemicolonDelimited(this.f44753a.g("Content-Disposition"));
    }
}

package com.posthog.android;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

/* compiled from: ConnectionFactory.java */
/* loaded from: classes3.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private static final int f47471a = 20000;

    /* renamed from: b  reason: collision with root package name */
    private static final int f47472b = 15000;

    /* renamed from: c  reason: collision with root package name */
    static final String f47473c = "posthog-android/2.0.3";

    public HttpURLConnection a(String str) throws IOException {
        HttpURLConnection c10 = c(str + "/batch");
        c10.setRequestProperty("Content-Encoding", "gzip");
        c10.setDoOutput(true);
        return c10;
    }

    public HttpURLConnection b(String str) throws IOException {
        HttpURLConnection c10 = c(str + "/decide/?v=2");
        c10.setRequestProperty("Content-Type", "application/json");
        c10.setRequestProperty(com.google.common.net.b.f34625h, "application/json");
        c10.setDoOutput(true);
        return c10;
    }

    protected HttpURLConnection c(String str) throws IOException {
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            httpURLConnection.setConnectTimeout(15000);
            httpURLConnection.setReadTimeout(20000);
            httpURLConnection.setRequestProperty("Content-Type", "application/json");
            httpURLConnection.setRequestProperty(com.google.common.net.b.M, f47473c);
            httpURLConnection.setDoInput(true);
            return httpURLConnection;
        } catch (MalformedURLException e4) {
            throw new IOException("Attempted to use malformed url: " + str, e4);
        }
    }
}

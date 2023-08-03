package io.sentry.internal.modules;

import io.sentry.SentryLevel;
import io.sentry.o0;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.Charset;
import java.util.Map;
import java.util.TreeMap;
import m8.a;
import m8.g;
import m8.h;

/* compiled from: ModulesLoader.java */
@a.c
/* loaded from: classes4.dex */
public abstract class b implements a {

    /* renamed from: c  reason: collision with root package name */
    private static final Charset f83349c = Charset.forName("UTF-8");

    /* renamed from: d  reason: collision with root package name */
    public static final String f83350d = "sentry-external-modules.txt";
    @g

    /* renamed from: a  reason: collision with root package name */
    protected final o0 f83351a;
    @h

    /* renamed from: b  reason: collision with root package name */
    private Map<String, String> f83352b = null;

    public b(@g o0 o0Var) {
        this.f83351a = o0Var;
    }

    @Override // io.sentry.internal.modules.a
    @h
    public Map<String, String> a() {
        Map<String, String> map = this.f83352b;
        if (map != null) {
            return map;
        }
        Map<String, String> b10 = b();
        this.f83352b = b10;
        return b10;
    }

    protected abstract Map<String, String> b();

    /* JADX INFO: Access modifiers changed from: protected */
    public Map<String, String> c(@g InputStream inputStream) {
        BufferedReader bufferedReader;
        TreeMap treeMap = new TreeMap();
        try {
            bufferedReader = new BufferedReader(new InputStreamReader(inputStream, f83349c));
        } catch (IOException e4) {
            this.f83351a.b(SentryLevel.ERROR, "Error extracting modules.", e4);
        } catch (RuntimeException e10) {
            this.f83351a.a(SentryLevel.ERROR, e10, "%s file is malformed.", f83350d);
        }
        try {
            for (String readLine = bufferedReader.readLine(); readLine != null; readLine = bufferedReader.readLine()) {
                int lastIndexOf = readLine.lastIndexOf(58);
                treeMap.put(readLine.substring(0, lastIndexOf), readLine.substring(lastIndexOf + 1));
            }
            this.f83351a.c(SentryLevel.DEBUG, "Extracted %d modules from resources.", Integer.valueOf(treeMap.size()));
            bufferedReader.close();
            return treeMap;
        } catch (Throwable th) {
            try {
                bufferedReader.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }
}

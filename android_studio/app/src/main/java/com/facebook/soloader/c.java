package com.facebook.soloader;

import android.os.StrictMode;
import android.util.Log;
import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collection;

/* compiled from: DirectorySoSource.java */
/* loaded from: classes.dex */
public class c extends v {

    /* renamed from: l  reason: collision with root package name */
    public static final int f13456l = 1;

    /* renamed from: m  reason: collision with root package name */
    public static final int f13457m = 2;

    /* renamed from: j  reason: collision with root package name */
    protected final File f13458j;

    /* renamed from: k  reason: collision with root package name */
    protected final int f13459k;

    public c(File file, int i4) {
        this.f13458j = file;
        this.f13459k = i4;
    }

    private static String[] h(File file) throws IOException {
        boolean z9 = SoLoader.f13422c;
        if (z9) {
            Api18TraceUtils.a("SoLoader.getElfDependencies[", file.getName(), "]");
        }
        try {
            String[] a10 = MinElf.a(file);
            if (z9) {
                Api18TraceUtils.b();
            }
            return a10;
        } catch (Throwable th) {
            if (SoLoader.f13422c) {
                Api18TraceUtils.b();
            }
            throw th;
        }
    }

    private static void i(File file, int i4, StrictMode.ThreadPolicy threadPolicy) throws IOException {
        String[] h4 = h(file);
        Log.d("SoLoader", "Loading lib dependencies: " + Arrays.toString(h4));
        for (String str : h4) {
            if (!str.startsWith("/")) {
                SoLoader.v(str, i4 | 1, threadPolicy);
            }
        }
    }

    @Override // com.facebook.soloader.v
    public void a(Collection<String> collection) {
        collection.add(this.f13458j.getAbsolutePath());
    }

    @Override // com.facebook.soloader.v
    @r7.h
    public String[] b(String str) throws IOException {
        File file = new File(this.f13458j, str);
        if (file.exists()) {
            return h(file);
        }
        return null;
    }

    @Override // com.facebook.soloader.v
    @r7.h
    public String c(String str) throws IOException {
        File file = new File(this.f13458j, str);
        if (file.exists()) {
            return file.getCanonicalPath();
        }
        return null;
    }

    @Override // com.facebook.soloader.v
    public int e(String str, int i4, StrictMode.ThreadPolicy threadPolicy) throws IOException {
        return j(str, i4, this.f13458j, threadPolicy);
    }

    @Override // com.facebook.soloader.v
    @r7.h
    public File g(String str) throws IOException {
        File file = new File(this.f13458j, str);
        if (file.exists()) {
            return file;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int j(String str, int i4, File file, StrictMode.ThreadPolicy threadPolicy) throws IOException {
        File file2 = new File(file, str);
        if (!file2.exists()) {
            Log.d("SoLoader", str + " not found on " + file.getCanonicalPath());
            return 0;
        }
        Log.d("SoLoader", str + " found on " + file.getCanonicalPath());
        if ((i4 & 1) != 0 && (this.f13459k & 2) != 0) {
            Log.d("SoLoader", str + " loaded implicitly");
            return 2;
        }
        if ((this.f13459k & 1) != 0) {
            i(file2, i4, threadPolicy);
        } else {
            Log.d("SoLoader", "Not resolving dependencies for " + str);
        }
        try {
            SoLoader.f13423d.a(file2.getAbsolutePath(), i4);
            return 1;
        } catch (UnsatisfiedLinkError e4) {
            if (e4.getMessage().contains("bad ELF magic")) {
                Log.d("SoLoader", "Corrupted lib file detected");
                return 3;
            }
            throw e4;
        }
    }

    @Override // com.facebook.soloader.v
    public String toString() {
        String name;
        try {
            name = String.valueOf(this.f13458j.getCanonicalPath());
        } catch (IOException unused) {
            name = this.f13458j.getName();
        }
        return getClass().getName() + "[root = " + name + " flags = " + this.f13459k + ']';
    }
}

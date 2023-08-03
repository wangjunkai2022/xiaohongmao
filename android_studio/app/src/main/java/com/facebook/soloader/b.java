package com.facebook.soloader;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.StrictMode;
import android.util.Log;
import java.io.File;
import java.io.IOException;
import java.util.Collection;

/* compiled from: ApplicationSoSource.java */
/* loaded from: classes.dex */
public class b extends v {

    /* renamed from: j  reason: collision with root package name */
    private Context f13453j;

    /* renamed from: k  reason: collision with root package name */
    private int f13454k;

    /* renamed from: l  reason: collision with root package name */
    private c f13455l;

    public b(Context context, int i4) {
        Context applicationContext = context.getApplicationContext();
        this.f13453j = applicationContext;
        if (applicationContext == null) {
            Log.w("SoLoader", "context.getApplicationContext returned null, holding reference to original context.");
            this.f13453j = context;
        }
        this.f13454k = i4;
        this.f13455l = new c(new File(this.f13453j.getApplicationInfo().nativeLibraryDir), i4);
    }

    public static File i(Context context) {
        return new File(context.getApplicationInfo().nativeLibraryDir);
    }

    @Override // com.facebook.soloader.v
    public void a(Collection<String> collection) {
        this.f13455l.a(collection);
    }

    @Override // com.facebook.soloader.v
    @r7.h
    public String[] b(String str) throws IOException {
        return this.f13455l.b(str);
    }

    @Override // com.facebook.soloader.v
    @r7.h
    public String c(String str) throws IOException {
        return this.f13455l.c(str);
    }

    @Override // com.facebook.soloader.v
    public int e(String str, int i4, StrictMode.ThreadPolicy threadPolicy) throws IOException {
        return this.f13455l.e(str, i4, threadPolicy);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.soloader.v
    public void f(int i4) throws IOException {
        this.f13455l.f(i4);
    }

    @Override // com.facebook.soloader.v
    @r7.h
    public File g(String str) throws IOException {
        return this.f13455l.g(str);
    }

    public boolean h() throws IOException {
        File file = this.f13455l.f13458j;
        Context j4 = j();
        File i4 = i(j4);
        if (file.equals(i4)) {
            return false;
        }
        Log.d("SoLoader", "Native library directory updated from " + file + " to " + i4);
        int i10 = this.f13454k | 1;
        this.f13454k = i10;
        c cVar = new c(i4, i10);
        this.f13455l = cVar;
        cVar.f(this.f13454k);
        this.f13453j = j4;
        return true;
    }

    public Context j() {
        try {
            Context context = this.f13453j;
            return context.createPackageContext(context.getPackageName(), 0);
        } catch (PackageManager.NameNotFoundException e4) {
            throw new RuntimeException(e4);
        }
    }

    @Override // com.facebook.soloader.v
    public String toString() {
        return this.f13455l.toString();
    }
}

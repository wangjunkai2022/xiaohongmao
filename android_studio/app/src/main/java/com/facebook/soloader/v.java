package com.facebook.soloader;

import android.os.StrictMode;
import java.io.File;
import java.io.IOException;
import java.util.Collection;

/* compiled from: SoSource.java */
/* loaded from: classes.dex */
public abstract class v {

    /* renamed from: a  reason: collision with root package name */
    public static final int f13550a = 0;

    /* renamed from: b  reason: collision with root package name */
    public static final int f13551b = 1;

    /* renamed from: c  reason: collision with root package name */
    public static final int f13552c = 2;

    /* renamed from: d  reason: collision with root package name */
    public static final int f13553d = 3;

    /* renamed from: e  reason: collision with root package name */
    public static final int f13554e = 1;
    @Deprecated

    /* renamed from: f  reason: collision with root package name */
    public static final int f13555f = 2;

    /* renamed from: g  reason: collision with root package name */
    public static final int f13556g = 4;

    /* renamed from: h  reason: collision with root package name */
    public static final int f13557h = 1;

    /* renamed from: i  reason: collision with root package name */
    public static final int f13558i = 2;

    public void a(Collection<String> collection) {
    }

    @r7.h
    public String[] b(String str) throws IOException {
        return null;
    }

    @r7.h
    public String c(String str) throws IOException {
        return null;
    }

    public String[] d() {
        return SysUtil.h();
    }

    public abstract int e(String str, int i4, StrictMode.ThreadPolicy threadPolicy) throws IOException;

    /* JADX INFO: Access modifiers changed from: protected */
    public void f(int i4) throws IOException {
    }

    @r7.h
    public abstract File g(String str) throws IOException;

    public String toString() {
        return getClass().getName();
    }
}

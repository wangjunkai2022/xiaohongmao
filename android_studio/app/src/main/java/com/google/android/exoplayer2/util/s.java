package com.google.android.exoplayer2.util;

import java.util.Arrays;

/* compiled from: LibraryLoader.java */
/* loaded from: classes2.dex */
public final class s {

    /* renamed from: d  reason: collision with root package name */
    private static final String f27687d = "LibraryLoader";

    /* renamed from: a  reason: collision with root package name */
    private String[] f27688a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f27689b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f27690c;

    public s(String... strArr) {
        this.f27688a = strArr;
    }

    public synchronized boolean a() {
        if (this.f27689b) {
            return this.f27690c;
        }
        this.f27689b = true;
        try {
            for (String str : this.f27688a) {
                System.loadLibrary(str);
            }
            this.f27690c = true;
        } catch (UnsatisfiedLinkError unused) {
            String valueOf = String.valueOf(Arrays.toString(this.f27688a));
            w.n(f27687d, valueOf.length() != 0 ? "Failed to load ".concat(valueOf) : new String("Failed to load "));
        }
        return this.f27690c;
    }

    public synchronized void b(String... strArr) {
        a.j(!this.f27689b, "Cannot set libraries after loading");
        this.f27688a = strArr;
    }
}

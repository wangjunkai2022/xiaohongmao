package io.sentry.android.core.internal.util;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import m8.a;

/* compiled from: CpuInfoUtils.java */
@a.c
/* loaded from: classes4.dex */
public final class e {

    /* renamed from: b  reason: collision with root package name */
    private static final e f82464b = new e();
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private static final String f82465c = "/sys/devices/system/cpu";
    @m8.g
    @m8.n

    /* renamed from: d  reason: collision with root package name */
    static final String f82466d = "cpufreq/cpuinfo_max_freq";
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final List<Integer> f82467a = new ArrayList();

    private e() {
    }

    public static e b() {
        return f82464b;
    }

    @m8.k
    final void a() {
        this.f82467a.clear();
    }

    @m8.g
    @m8.n
    String c() {
        return f82465c;
    }

    @m8.g
    public List<Integer> d() {
        if (!this.f82467a.isEmpty()) {
            return this.f82467a;
        }
        File[] listFiles = new File(c()).listFiles();
        if (listFiles == null) {
            return new ArrayList();
        }
        for (File file : listFiles) {
            if (file.getName().matches("cpu[0-9]+")) {
                File file2 = new File(file, f82466d);
                if (file2.exists() && file2.canRead()) {
                    try {
                        String b10 = io.sentry.util.c.b(file2);
                        if (b10 != null) {
                            this.f82467a.add(Integer.valueOf((int) (Long.parseLong(b10.trim()) / 1000)));
                        }
                    } catch (IOException | NumberFormatException unused) {
                    }
                }
            }
        }
        return this.f82467a;
    }
}

package com.facebook.common.statfs;

import android.annotation.SuppressLint;
import android.os.Environment;
import android.os.StatFs;
import android.os.SystemClock;
import com.facebook.common.internal.o;
import com.facebook.infer.annotation.Nullsafe;
import java.io.File;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import org.aspectj.lang.c;
import r7.h;
import s7.a;
import s7.d;

@d
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class StatFsHelper {

    /* renamed from: h  reason: collision with root package name */
    public static final int f11024h = 400;

    /* renamed from: i  reason: collision with root package name */
    public static final long f11025i = 419430400;

    /* renamed from: j  reason: collision with root package name */
    public static final int f11026j = 100;

    /* renamed from: k  reason: collision with root package name */
    public static final long f11027k = 104857600;

    /* renamed from: l  reason: collision with root package name */
    public static final long f11028l = 1048576000;

    /* renamed from: m  reason: collision with root package name */
    private static StatFsHelper f11029m;

    /* renamed from: n  reason: collision with root package name */
    private static final long f11030n = TimeUnit.MINUTES.toMillis(2);
    @h

    /* renamed from: b  reason: collision with root package name */
    private volatile File f11032b;
    @h

    /* renamed from: d  reason: collision with root package name */
    private volatile File f11034d;
    @a(c.f91028k)

    /* renamed from: e  reason: collision with root package name */
    private long f11035e;
    @h

    /* renamed from: a  reason: collision with root package name */
    private volatile StatFs f11031a = null;
    @h

    /* renamed from: c  reason: collision with root package name */
    private volatile StatFs f11033c = null;

    /* renamed from: g  reason: collision with root package name */
    private volatile boolean f11037g = false;

    /* renamed from: f  reason: collision with root package name */
    private final Lock f11036f = new ReentrantLock();

    /* loaded from: classes.dex */
    public enum StorageType {
        INTERNAL,
        EXTERNAL
    }

    protected StatFsHelper() {
    }

    protected static StatFs a(String path) {
        return new StatFs(path);
    }

    private void b() {
        if (this.f11037g) {
            return;
        }
        this.f11036f.lock();
        try {
            if (!this.f11037g) {
                this.f11032b = Environment.getDataDirectory();
                this.f11034d = Environment.getExternalStorageDirectory();
                m();
                this.f11037g = true;
            }
        } finally {
            this.f11036f.unlock();
        }
    }

    public static synchronized StatFsHelper e() {
        StatFsHelper statFsHelper;
        synchronized (StatFsHelper.class) {
            if (f11029m == null) {
                f11029m = new StatFsHelper();
            }
            statFsHelper = f11029m;
        }
        return statFsHelper;
    }

    private void j() {
        if (this.f11036f.tryLock()) {
            try {
                if (SystemClock.uptimeMillis() - this.f11035e > f11030n) {
                    m();
                }
            } finally {
                this.f11036f.unlock();
            }
        }
    }

    @a(c.f91028k)
    private void m() {
        this.f11031a = n(this.f11031a, this.f11032b);
        this.f11033c = n(this.f11033c, this.f11034d);
        this.f11035e = SystemClock.uptimeMillis();
    }

    @h
    private StatFs n(@h StatFs statfs, @h File dir) {
        StatFs statFs = null;
        if (dir == null || !dir.exists()) {
            return null;
        }
        try {
            if (statfs == null) {
                statfs = a(dir.getAbsolutePath());
            } else {
                statfs.restat(dir.getAbsolutePath());
            }
            statFs = statfs;
            return statFs;
        } catch (IllegalArgumentException unused) {
            return statFs;
        } catch (Throwable th) {
            throw o.d(th);
        }
    }

    @SuppressLint({"DeprecatedMethod"})
    public long c(StorageType storageType) {
        b();
        j();
        StatFs statFs = storageType == StorageType.INTERNAL ? this.f11031a : this.f11033c;
        if (statFs != null) {
            return statFs.getBlockSizeLong() * statFs.getAvailableBlocksLong();
        }
        return 0L;
    }

    @SuppressLint({"DeprecatedMethod"})
    public long d(StorageType storageType) {
        b();
        j();
        StatFs statFs = storageType == StorageType.INTERNAL ? this.f11031a : this.f11033c;
        if (statFs != null) {
            return statFs.getBlockSizeLong() * statFs.getFreeBlocksLong();
        }
        return -1L;
    }

    @SuppressLint({"DeprecatedMethod"})
    public long f(StorageType storageType) {
        b();
        j();
        StatFs statFs = storageType == StorageType.INTERNAL ? this.f11031a : this.f11033c;
        if (statFs != null) {
            return statFs.getBlockSizeLong() * statFs.getBlockCountLong();
        }
        return -1L;
    }

    public boolean g() {
        return c(StorageType.INTERNAL) > f11028l;
    }

    public boolean h() {
        return c(StorageType.INTERNAL) < f11025i;
    }

    public boolean i() {
        return c(StorageType.INTERNAL) < f11027k;
    }

    public void k() {
        if (this.f11036f.tryLock()) {
            try {
                b();
                m();
            } finally {
                this.f11036f.unlock();
            }
        }
    }

    public boolean l(StorageType storageType, long freeSpaceThreshold) {
        b();
        long c10 = c(storageType);
        return c10 <= 0 || c10 < freeSpaceThreshold;
    }
}

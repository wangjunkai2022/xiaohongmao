package com.facebook.soloader;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Parcel;
import android.os.Process;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import android.util.Log;
import com.facebook.soloader.MinElf;
import java.io.File;
import java.io.FileDescriptor;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.TreeSet;

/* loaded from: classes.dex */
public final class SysUtil {

    /* renamed from: a  reason: collision with root package name */
    private static final String f13448a = "SysUtil";

    /* renamed from: b  reason: collision with root package name */
    private static final byte f13449b = 1;

    @d
    @TargetApi(21)
    /* loaded from: classes.dex */
    private static final class LollipopSysdeps {
        private LollipopSysdeps() {
        }

        @d
        public static void fallocateIfSupported(FileDescriptor fileDescriptor, long j4) throws IOException {
            int i4;
            try {
                Os.posix_fallocate(fileDescriptor, 0L, j4);
            } catch (ErrnoException e4) {
                if (e4.errno != OsConstants.EOPNOTSUPP && (i4 = e4.errno) != OsConstants.ENOSYS && i4 != OsConstants.EINVAL) {
                    throw new IOException(e4.toString(), e4);
                }
            }
        }

        @d
        public static String[] getSupportedAbis() {
            String[] strArr = Build.SUPPORTED_ABIS;
            TreeSet treeSet = new TreeSet();
            try {
                if (is64Bit()) {
                    treeSet.add(MinElf.ISA.AARCH64.toString());
                    treeSet.add(MinElf.ISA.X86_64.toString());
                } else {
                    treeSet.add(MinElf.ISA.ARM.toString());
                    treeSet.add(MinElf.ISA.X86.toString());
                }
                ArrayList arrayList = new ArrayList();
                for (String str : strArr) {
                    if (treeSet.contains(str)) {
                        arrayList.add(str);
                    }
                }
                return (String[]) arrayList.toArray(new String[arrayList.size()]);
            } catch (ErrnoException e4) {
                Log.e(SysUtil.f13448a, String.format("Could not read /proc/self/exe. Falling back to default ABI list: %s. errno: %d Err msg: %s", Arrays.toString(strArr), Integer.valueOf(e4.errno), e4.getMessage()));
                return Build.SUPPORTED_ABIS;
            }
        }

        @d
        public static boolean is64Bit() throws ErrnoException {
            return Os.readlink("/proc/self/exe").contains("64");
        }
    }

    @d
    @TargetApi(23)
    /* loaded from: classes.dex */
    private static final class MarshmallowSysdeps {
        private MarshmallowSysdeps() {
        }

        @d
        public static String[] getSupportedAbis() {
            String[] strArr = Build.SUPPORTED_ABIS;
            TreeSet treeSet = new TreeSet();
            if (is64Bit()) {
                treeSet.add(MinElf.ISA.AARCH64.toString());
                treeSet.add(MinElf.ISA.X86_64.toString());
            } else {
                treeSet.add(MinElf.ISA.ARM.toString());
                treeSet.add(MinElf.ISA.X86.toString());
            }
            ArrayList arrayList = new ArrayList();
            for (String str : strArr) {
                if (treeSet.contains(str)) {
                    arrayList.add(str);
                }
            }
            return (String[]) arrayList.toArray(new String[arrayList.size()]);
        }

        @d
        public static boolean is64Bit() {
            return Process.is64Bit();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(RandomAccessFile randomAccessFile, InputStream inputStream, int i4, byte[] bArr) throws IOException {
        int i10 = 0;
        while (i10 < i4) {
            int read = inputStream.read(bArr, 0, Math.min(bArr.length, i4 - i10));
            if (read == -1) {
                break;
            }
            randomAccessFile.write(bArr, 0, read);
            i10 += read;
        }
        return i10;
    }

    public static void b(File file) throws IOException {
        File parentFile = file.getParentFile();
        if (parentFile != null && !parentFile.canWrite() && !parentFile.setWritable(true)) {
            Log.e(f13448a, "Enable write permission failed: " + parentFile);
        }
        if (file.delete() || !file.exists()) {
            return;
        }
        throw new IOException("Could not delete file " + file);
    }

    public static void c(File file) throws IOException {
        if (file.isDirectory()) {
            File[] listFiles = file.listFiles();
            if (listFiles == null) {
                return;
            }
            for (File file2 : listFiles) {
                c(file2);
            }
        }
        b(file);
    }

    public static void d(FileDescriptor fileDescriptor, long j4) throws IOException {
        LollipopSysdeps.fallocateIfSupported(fileDescriptor, j4);
    }

    public static int e(String[] strArr, String str) {
        for (int i4 = 0; i4 < strArr.length; i4++) {
            if (strArr[i4] != null && str.equals(strArr[i4])) {
                return i4;
            }
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void f(File file) throws IOException {
        if (file.isDirectory()) {
            File[] listFiles = file.listFiles();
            if (listFiles != null) {
                for (File file2 : listFiles) {
                    f(file2);
                }
                return;
            }
            throw new IOException("cannot list directory " + file);
        } else if (!file.getPath().endsWith("_lock")) {
            RandomAccessFile randomAccessFile = new RandomAccessFile(file, "r");
            try {
                randomAccessFile.getFD().sync();
                randomAccessFile.close();
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    try {
                        randomAccessFile.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                    throw th2;
                }
            }
        }
    }

    public static int g(Context context) {
        PackageManager packageManager = context.getPackageManager();
        if (packageManager != null) {
            try {
                return packageManager.getPackageInfo(context.getPackageName(), 0).versionCode;
            } catch (PackageManager.NameNotFoundException | RuntimeException unused) {
            }
        }
        return 0;
    }

    public static String[] h() {
        if (Build.VERSION.SDK_INT >= 23) {
            return MarshmallowSysdeps.getSupportedAbis();
        }
        return LollipopSysdeps.getSupportedAbis();
    }

    @SuppressLint({"CatchGeneralException"})
    public static boolean i() {
        if (Build.VERSION.SDK_INT >= 23) {
            return MarshmallowSysdeps.is64Bit();
        }
        try {
            return LollipopSysdeps.is64Bit();
        } catch (Exception e4) {
            Log.e(f13448a, String.format("Could not read /proc/self/exe. Err msg: %s", e4.getMessage()));
            return false;
        }
    }

    public static byte[] j(File file, Context context) throws IOException {
        File canonicalFile = file.getCanonicalFile();
        Parcel obtain = Parcel.obtain();
        try {
            obtain.writeByte((byte) 1);
            obtain.writeString(canonicalFile.getPath());
            obtain.writeLong(canonicalFile.lastModified());
            obtain.writeInt(g(context));
            return obtain.marshall();
        } finally {
            obtain.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void k(File file) throws IOException {
        if (file.mkdirs() || file.isDirectory()) {
            return;
        }
        throw new IOException("cannot mkdir: " + file);
    }
}

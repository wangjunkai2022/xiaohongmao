package tv.cjump.jni;

import android.os.Build;
import android.os.Environment;
import android.text.TextUtils;
import android.util.Log;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.lang.reflect.Field;

/* loaded from: classes5.dex */
public class DeviceUtils {

    /* renamed from: a  reason: collision with root package name */
    public static final String f93869a = "x86";

    /* renamed from: b  reason: collision with root package name */
    public static final String f93870b = "mips";

    /* renamed from: c  reason: collision with root package name */
    private static ARCH f93871c = ARCH.Unknown;

    /* renamed from: d  reason: collision with root package name */
    private static final int f93872d = 40;

    /* renamed from: e  reason: collision with root package name */
    private static final int f93873e = 3;

    /* renamed from: f  reason: collision with root package name */
    private static final int f93874f = 8;

    /* renamed from: g  reason: collision with root package name */
    private static final int f93875g = 183;

    /* loaded from: classes5.dex */
    public enum ARCH {
        Unknown,
        ARM,
        X86,
        MIPS,
        ARM64
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v12 */
    /* JADX WARN: Type inference failed for: r3v14 */
    /* JADX WARN: Type inference failed for: r3v15 */
    /* JADX WARN: Type inference failed for: r3v16 */
    /* JADX WARN: Type inference failed for: r3v17 */
    public static synchronized ARCH a() {
        RandomAccessFile randomAccessFile;
        ?? r32;
        synchronized (DeviceUtils.class) {
            byte[] bArr = new byte[20];
            File file = new File(Environment.getRootDirectory(), "lib/libc.so");
            if (file.canRead()) {
                RandomAccessFile randomAccessFile2 = null;
                try {
                    try {
                        randomAccessFile = new RandomAccessFile(file, "r");
                    } catch (FileNotFoundException e4) {
                        e = e4;
                    } catch (IOException e10) {
                        e = e10;
                    }
                    try {
                        randomAccessFile.readFully(bArr);
                        r32 = 8;
                        r32 = 8;
                        r32 = 8;
                        r32 = 8;
                        int i4 = bArr[18] | (bArr[19] << 8);
                        if (i4 == 3) {
                            f93871c = ARCH.X86;
                        } else if (i4 == 8) {
                            f93871c = ARCH.MIPS;
                        } else if (i4 == 40) {
                            f93871c = ARCH.ARM;
                        } else if (i4 != f93875g) {
                            StringBuilder sb = new StringBuilder();
                            sb.append("libc.so is unknown arch: ");
                            sb.append(Integer.toHexString(i4));
                            Log.e("NativeBitmapFactory", sb.toString());
                            r32 = sb;
                        } else {
                            f93871c = ARCH.ARM64;
                        }
                    } catch (FileNotFoundException e11) {
                        e = e11;
                        randomAccessFile2 = randomAccessFile;
                        e.printStackTrace();
                        randomAccessFile2 = randomAccessFile2;
                        if (randomAccessFile2 != null) {
                            try {
                                randomAccessFile2.close();
                                randomAccessFile2 = randomAccessFile2;
                            } catch (IOException e12) {
                                e = e12;
                                e.printStackTrace();
                                return f93871c;
                            }
                        }
                        return f93871c;
                    } catch (IOException e13) {
                        e = e13;
                        randomAccessFile2 = randomAccessFile;
                        e.printStackTrace();
                        randomAccessFile2 = randomAccessFile2;
                        if (randomAccessFile2 != null) {
                            try {
                                randomAccessFile2.close();
                                randomAccessFile2 = randomAccessFile2;
                            } catch (IOException e14) {
                                e = e14;
                                e.printStackTrace();
                                return f93871c;
                            }
                        }
                        return f93871c;
                    } catch (Throwable th) {
                        th = th;
                        randomAccessFile2 = randomAccessFile;
                        if (randomAccessFile2 != null) {
                            try {
                                randomAccessFile2.close();
                            } catch (IOException e15) {
                                e15.printStackTrace();
                            }
                        }
                        throw th;
                    }
                    try {
                        randomAccessFile.close();
                        randomAccessFile2 = r32;
                    } catch (IOException e16) {
                        e = e16;
                        e.printStackTrace();
                        return f93871c;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
        }
        return f93871c;
    }

    public static String b() {
        return Build.CPU_ABI;
    }

    public static String c() {
        try {
            Field declaredField = Build.class.getDeclaredField("CPU_ABI2");
            if (declaredField == null) {
                return null;
            }
            Object obj = declaredField.get(null);
            if (obj instanceof String) {
                return (String) obj;
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    public static boolean d() {
        return !l() && ARCH.X86.equals(a());
    }

    public static boolean e() {
        return Build.MANUFACTURER.equalsIgnoreCase("MagicBox") && Build.PRODUCT.equalsIgnoreCase("MagicBox");
    }

    public static boolean f() {
        return Build.MANUFACTURER.equalsIgnoreCase("Xiaomi") && Build.PRODUCT.equalsIgnoreCase("dredd");
    }

    public static boolean g() {
        return f() || e();
    }

    public static boolean h() {
        return (j("armeabi-v7a") || j("armeabi")) && ARCH.ARM.equals(a());
    }

    public static boolean i() {
        return j(f93869a) || ARCH.X86.equals(a());
    }

    public static boolean j(String str) {
        String b10 = b();
        if (TextUtils.isEmpty(b10) || !b10.equalsIgnoreCase(str)) {
            return !TextUtils.isEmpty(c()) && b10.equalsIgnoreCase(str);
        }
        return true;
    }

    public static boolean k() {
        return j(f93870b);
    }

    public static boolean l() {
        return j(f93869a);
    }
}

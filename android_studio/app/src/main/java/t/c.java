package t;

import io.sentry.instrumentation.file.m;
import io.sentry.instrumentation.file.n;
import java.io.File;
import java.io.IOException;

/* loaded from: classes.dex */
public class c {
    public static boolean a(String str) {
        File file = new File(str);
        if (file.exists()) {
            return false;
        }
        return file.mkdirs();
    }

    public static boolean b(String str) {
        File file = new File(str);
        if (!file.exists()) {
            try {
                return file.createNewFile();
            } catch (Exception unused) {
            }
        }
        return false;
    }

    public static long c(String str, String str2) {
        File file = new File(str, str2);
        if (file.exists()) {
            return file.length();
        }
        return 0L;
    }

    public static boolean d(String str) {
        int length;
        if (str != null && (length = str.length()) != 0) {
            for (int i4 = 0; i4 < length; i4++) {
                if (!Character.isWhitespace(str.charAt(i4))) {
                    return false;
                }
            }
        }
        return true;
    }

    public static String e(String str, String str2) {
        m mVar = null;
        try {
            try {
                File file = new File(str, str2);
                if (file.exists()) {
                    char[] cArr = new char[(int) file.length()];
                    m mVar2 = new m(file);
                    try {
                        mVar2.read(cArr);
                        String valueOf = String.valueOf(cArr);
                        try {
                            mVar2.close();
                        } catch (IOException e4) {
                            e4.printStackTrace();
                        }
                        return valueOf;
                    } catch (Exception e10) {
                        e = e10;
                        mVar = mVar2;
                        e.getMessage();
                        try {
                            mVar.close();
                            return "";
                        } catch (IOException e11) {
                            e11.printStackTrace();
                            return "";
                        }
                    } catch (Throwable th) {
                        th = th;
                        mVar = mVar2;
                        try {
                            mVar.close();
                        } catch (IOException e12) {
                            e12.printStackTrace();
                        }
                        throw th;
                    }
                }
                throw null;
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e13) {
            e = e13;
        }
    }

    public static void f(String str, String str2) {
        n nVar;
        Throwable th;
        File file = new File(str);
        n nVar2 = null;
        try {
            nVar = new n(file, false);
            try {
                nVar.write(str2);
                try {
                    nVar.close();
                } catch (IOException unused) {
                }
            } catch (Exception unused2) {
                nVar2 = nVar;
                if (nVar2 != null) {
                    try {
                        nVar2.close();
                    } catch (IOException unused3) {
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (nVar != null) {
                    try {
                        nVar.close();
                    } catch (IOException unused4) {
                    }
                }
                throw th;
            }
        } catch (Exception unused5) {
        } catch (Throwable th3) {
            nVar = null;
            th = th3;
        }
    }
}

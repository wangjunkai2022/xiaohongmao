package y;

import io.sentry.instrumentation.file.h;
import io.sentry.instrumentation.file.n;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;

/* loaded from: classes.dex */
public class a {
    public static boolean a(String str) {
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

    public static String b(String str) {
        StringBuilder sb = new StringBuilder();
        BufferedReader bufferedReader = null;
        try {
            try {
            } catch (IOException unused) {
            } catch (Throwable th) {
                th = th;
            }
        } catch (Throwable unused2) {
        }
        if (new File(str).exists()) {
            BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(h.b.d(new FileInputStream(str), str), "UTF-8"));
            while (true) {
                try {
                    String readLine = bufferedReader2.readLine();
                    if (readLine == null) {
                        break;
                    }
                    sb.append(readLine);
                } catch (IOException unused3) {
                    bufferedReader = bufferedReader2;
                    if (bufferedReader != null) {
                        bufferedReader.close();
                    }
                    return sb.toString();
                } catch (Throwable th2) {
                    th = th2;
                    bufferedReader = bufferedReader2;
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                        } catch (Throwable unused4) {
                        }
                    }
                    throw th;
                }
            }
            bufferedReader2.close();
            return sb.toString();
        }
        return null;
    }

    public static void c(String str, String str2) {
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

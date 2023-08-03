package t;

import io.sentry.instrumentation.file.n;
import java.io.File;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private static String f93746a = "";

    /* renamed from: b  reason: collision with root package name */
    private static String f93747b = "";

    /* renamed from: c  reason: collision with root package name */
    private static String f93748c = "";

    public static String a(Throwable th) {
        if (th != null) {
            StringWriter stringWriter = new StringWriter();
            th.printStackTrace(new PrintWriter(stringWriter));
            return stringWriter.toString();
        }
        return "";
    }

    public static synchronized void b(String str, String str2, String str3) {
        synchronized (d.class) {
            f93746a = str;
            f93747b = str2;
            f93748c = str3;
        }
    }

    public static synchronized void c(Throwable th) {
        synchronized (d.class) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(a(th));
            e(arrayList);
        }
    }

    public static synchronized void d(String str) {
        synchronized (d.class) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(str);
            e(arrayList);
        }
    }

    public static synchronized void e(List<String> list) {
        synchronized (d.class) {
            if (!a.e(f93747b) && !a.e(f93748c)) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append(f93748c);
                Iterator<String> it = list.iterator();
                while (it.hasNext()) {
                    stringBuffer.append(", " + it.next());
                }
                stringBuffer.append("\n");
                try {
                    File file = new File(f93746a);
                    if (!file.exists()) {
                        file.mkdirs();
                    }
                    File file2 = new File(f93746a, f93747b);
                    if (!file2.exists()) {
                        file2.createNewFile();
                    }
                    n nVar = ((long) stringBuffer.length()) + file2.length() <= 51200 ? new n(file2, true) : new n(file2);
                    nVar.write(stringBuffer.toString());
                    nVar.flush();
                    nVar.close();
                } catch (Exception e4) {
                    e4.toString();
                }
            }
        }
    }
}

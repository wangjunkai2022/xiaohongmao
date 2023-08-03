package p0;

import android.util.Log;
import com.facebook.infer.annotation.Nullsafe;
import java.io.PrintWriter;
import java.io.StringWriter;

/* compiled from: FLogDefaultLoggingDelegate.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class b implements c {

    /* renamed from: c  reason: collision with root package name */
    public static final b f93072c = new b();

    /* renamed from: a  reason: collision with root package name */
    private String f93073a = "unknown";

    /* renamed from: b  reason: collision with root package name */
    private int f93074b = 5;

    private b() {
    }

    public static b q() {
        return f93072c;
    }

    private static String r(String msg, Throwable tr) {
        return msg + '\n' + s(tr);
    }

    private static String s(Throwable tr) {
        if (tr == null) {
            return "";
        }
        StringWriter stringWriter = new StringWriter();
        tr.printStackTrace(new PrintWriter(stringWriter));
        return stringWriter.toString();
    }

    private String t(String tag) {
        if (this.f93073a != null) {
            return this.f93073a + ":" + tag;
        }
        return tag;
    }

    private void u(int priority, String tag, String msg) {
        Log.println(priority, t(tag), msg);
    }

    private void v(int priority, String tag, String msg, Throwable tr) {
        Log.println(priority, t(tag), r(msg, tr));
    }

    @Override // p0.c
    public void a(String tag, String msg) {
        u(5, tag, msg);
    }

    @Override // p0.c
    public int b() {
        return this.f93074b;
    }

    @Override // p0.c
    public void c(String tag, String msg) {
        u(6, tag, msg);
    }

    @Override // p0.c
    public void d(String tag, String msg) {
        u(2, tag, msg);
    }

    @Override // p0.c
    public void e(String tag, String msg) {
        u(6, tag, msg);
    }

    @Override // p0.c
    public void f(String tag, String msg) {
        u(3, tag, msg);
    }

    @Override // p0.c
    public void g(String tag, String msg, Throwable tr) {
        v(3, tag, msg, tr);
    }

    @Override // p0.c
    public void h(int priority, String tag, String msg) {
        u(priority, tag, msg);
    }

    @Override // p0.c
    public void i(String tag, String msg, Throwable tr) {
        v(6, tag, msg, tr);
    }

    @Override // p0.c
    public void j(String tag, String msg, Throwable tr) {
        v(5, tag, msg, tr);
    }

    @Override // p0.c
    public void k(String tag, String msg, Throwable tr) {
        v(6, tag, msg, tr);
    }

    @Override // p0.c
    public void l(String tag, String msg, Throwable tr) {
        v(2, tag, msg, tr);
    }

    @Override // p0.c
    public boolean m(int level) {
        return this.f93074b <= level;
    }

    @Override // p0.c
    public void n(int level) {
        this.f93074b = level;
    }

    @Override // p0.c
    public void o(String tag, String msg) {
        u(4, tag, msg);
    }

    @Override // p0.c
    public void p(String tag, String msg, Throwable tr) {
        v(4, tag, msg, tr);
    }

    public void w(String tag) {
        this.f93073a = tag;
    }
}

package q5;

import android.os.Environment;
import io.sentry.instrumentation.file.h;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Collection;
import java.util.Enumeration;
import java.util.Map;
import java.util.Properties;
import java.util.Set;

/* compiled from: BuildProperties.java */
/* loaded from: classes3.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private final Properties f93144a;

    private a() throws IOException {
        Properties properties = new Properties();
        this.f93144a = properties;
        File file = new File(Environment.getRootDirectory(), "build.prop");
        properties.load(h.b.a(new FileInputStream(file), file));
    }

    public static a i() throws IOException {
        return new a();
    }

    public boolean a(Object obj) {
        return this.f93144a.containsKey(obj);
    }

    public boolean b(Object obj) {
        return this.f93144a.containsValue(obj);
    }

    public Set<Map.Entry<Object, Object>> c() {
        return this.f93144a.entrySet();
    }

    public String d(String str) {
        return this.f93144a.getProperty(str);
    }

    public String e(String str, String str2) {
        return this.f93144a.getProperty(str, str2);
    }

    public boolean f() {
        return this.f93144a.isEmpty();
    }

    public Set<Object> g() {
        return this.f93144a.keySet();
    }

    public Enumeration<Object> h() {
        return this.f93144a.keys();
    }

    public int j() {
        return this.f93144a.size();
    }

    public Collection<Object> k() {
        return this.f93144a.values();
    }
}

package com.fasterxml.jackson.core.util;

import com.fasterxml.jackson.core.Version;
import com.fasterxml.jackson.core.n;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;
import java.util.regex.Pattern;

/* compiled from: VersionUtil.java */
/* loaded from: classes.dex */
public class l {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f14309a = Pattern.compile("[-_./;:]");

    protected l() {
    }

    private static final void a(Closeable closeable) {
        try {
            closeable.close();
        } catch (IOException unused) {
        }
    }

    @Deprecated
    public static Version b(ClassLoader classLoader, String str, String str2) {
        InputStream resourceAsStream = classLoader.getResourceAsStream("META-INF/maven/" + str.replaceAll("\\.", "/") + "/" + str2 + "/pom.properties");
        if (resourceAsStream != null) {
            try {
                Properties properties = new Properties();
                properties.load(resourceAsStream);
                return d(properties.getProperty("version"), properties.getProperty("groupId"), properties.getProperty("artifactId"));
            } catch (IOException unused) {
            } finally {
                a(resourceAsStream);
            }
        }
        return Version.unknownVersion();
    }

    @Deprecated
    public static Version c(Class<?> cls) {
        return h(cls);
    }

    public static Version d(String str, String str2, String str3) {
        if (str != null) {
            String trim = str.trim();
            if (trim.length() > 0) {
                String[] split = f14309a.split(trim);
                return new Version(e(split[0]), split.length > 1 ? e(split[1]) : 0, split.length > 2 ? e(split[2]) : 0, split.length > 3 ? split[3] : null, str2, str3);
            }
        }
        return Version.unknownVersion();
    }

    protected static int e(String str) {
        int length = str.length();
        int i4 = 0;
        for (int i10 = 0; i10 < length; i10++) {
            char charAt = str.charAt(i10);
            if (charAt > '9' || charAt < '0') {
                break;
            }
            i4 = (i4 * 10) + (charAt - '0');
        }
        return i4;
    }

    public static final void f() {
        throw new RuntimeException("Internal error: this code path should never get executed");
    }

    public static Version h(Class<?> cls) {
        Version version;
        Object obj;
        try {
            try {
                version = ((n) Class.forName(cls.getPackage().getName() + ".PackageVersion", true, cls.getClassLoader()).getDeclaredConstructor(new Class[0]).newInstance(new Object[0])).version();
            } catch (Exception unused) {
                throw new IllegalArgumentException("Failed to get Versioned out of " + obj);
            }
        } catch (Exception unused2) {
            version = null;
        }
        return version == null ? Version.unknownVersion() : version;
    }

    @Deprecated
    public Version g() {
        return Version.unknownVersion();
    }
}

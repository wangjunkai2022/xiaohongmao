package com.google.common.reflect;

import com.google.common.base.StandardSystemProperty;
import com.google.common.base.a0;
import com.google.common.base.b0;
import com.google.common.base.f0;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.c1;
import com.google.common.collect.f3;
import com.google.common.collect.i3;
import com.google.common.collect.k5;
import com.google.common.collect.n4;
import com.google.common.collect.o4;
import java.io.File;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URISyntaxException;
import java.net.URL;
import java.net.URLClassLoader;
import java.nio.charset.Charset;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.jar.Attributes;
import java.util.jar.JarEntry;
import java.util.jar.JarFile;
import java.util.jar.Manifest;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: ClassPath.java */
@h3.a
/* loaded from: classes2.dex */
public final class b {

    /* renamed from: b  reason: collision with root package name */
    private static final Logger f34933b = Logger.getLogger(b.class.getName());

    /* renamed from: c  reason: collision with root package name */
    private static final b0<C0262b> f34934c = new a();

    /* renamed from: d  reason: collision with root package name */
    private static final f0 f34935d = f0.k(" ").g();

    /* renamed from: e  reason: collision with root package name */
    private static final String f34936e = ".class";

    /* renamed from: a  reason: collision with root package name */
    private final ImmutableSet<d> f34937a;

    /* compiled from: ClassPath.java */
    /* loaded from: classes2.dex */
    static class a implements b0<C0262b> {
        a() {
        }

        @Override // com.google.common.base.b0
        /* renamed from: a */
        public boolean apply(C0262b c0262b) {
            return c0262b.f34938c.indexOf(36) == -1;
        }
    }

    /* compiled from: ClassPath.java */
    @h3.a
    /* renamed from: com.google.common.reflect.b$b  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0262b extends d {

        /* renamed from: c  reason: collision with root package name */
        private final String f34938c;

        C0262b(String str, ClassLoader classLoader) {
            super(str, classLoader);
            this.f34938c = b.e(str);
        }

        public String g() {
            return this.f34938c;
        }

        public String h() {
            return h.b(this.f34938c);
        }

        public String i() {
            int lastIndexOf = this.f34938c.lastIndexOf(36);
            if (lastIndexOf != -1) {
                return com.google.common.base.d.j().V(this.f34938c.substring(lastIndexOf + 1));
            }
            String h4 = h();
            if (h4.isEmpty()) {
                return this.f34938c;
            }
            return this.f34938c.substring(h4.length() + 1);
        }

        public Class<?> j() {
            try {
                return this.f34941b.loadClass(this.f34938c);
            } catch (ClassNotFoundException e4) {
                throw new IllegalStateException(e4);
            }
        }

        @Override // com.google.common.reflect.b.d
        public String toString() {
            return this.f34938c;
        }
    }

    /* compiled from: ClassPath.java */
    @h3.d
    /* loaded from: classes2.dex */
    static final class c extends e {

        /* renamed from: b  reason: collision with root package name */
        private final n4<ClassLoader, String> f34939b = i3.d().g().a();

        c() {
        }

        private void m(File file, ClassLoader classLoader, String str, Set<File> set) throws IOException {
            File[] listFiles = file.listFiles();
            if (listFiles == null) {
                b.f34933b.warning("Cannot read directory " + file);
                return;
            }
            for (File file2 : listFiles) {
                String name = file2.getName();
                if (file2.isDirectory()) {
                    File canonicalFile = file2.getCanonicalFile();
                    if (set.add(canonicalFile)) {
                        m(canonicalFile, classLoader, str + name + "/", set);
                        set.remove(canonicalFile);
                    }
                } else {
                    String str2 = str + name;
                    if (!str2.equals("META-INF/MANIFEST.MF")) {
                        this.f34939b.get((n4<ClassLoader, String>) classLoader).add(str2);
                    }
                }
            }
        }

        @Override // com.google.common.reflect.b.e
        protected void h(ClassLoader classLoader, File file) throws IOException {
            HashSet hashSet = new HashSet();
            hashSet.add(file.getCanonicalFile());
            m(file, classLoader, "", hashSet);
        }

        @Override // com.google.common.reflect.b.e
        protected void k(ClassLoader classLoader, JarFile jarFile) {
            Enumeration<JarEntry> entries = jarFile.entries();
            while (entries.hasMoreElements()) {
                JarEntry nextElement = entries.nextElement();
                if (!nextElement.isDirectory() && !nextElement.getName().equals("META-INF/MANIFEST.MF")) {
                    this.f34939b.get((n4<ClassLoader, String>) classLoader).add(nextElement.getName());
                }
            }
        }

        ImmutableSet<d> l() {
            ImmutableSet.a builder = ImmutableSet.builder();
            for (Map.Entry<ClassLoader, String> entry : this.f34939b.entries()) {
                builder.g(d.d(entry.getValue(), entry.getKey()));
            }
            return builder.e();
        }
    }

    /* compiled from: ClassPath.java */
    @h3.a
    /* loaded from: classes2.dex */
    public static class d {

        /* renamed from: a  reason: collision with root package name */
        private final String f34940a;

        /* renamed from: b  reason: collision with root package name */
        final ClassLoader f34941b;

        d(String str, ClassLoader classLoader) {
            this.f34940a = (String) a0.E(str);
            this.f34941b = (ClassLoader) a0.E(classLoader);
        }

        static d d(String str, ClassLoader classLoader) {
            if (str.endsWith(b.f34936e)) {
                return new C0262b(str, classLoader);
            }
            return new d(str, classLoader);
        }

        public final com.google.common.io.f a() {
            return com.google.common.io.b0.a(e());
        }

        public final com.google.common.io.j b(Charset charset) {
            return com.google.common.io.b0.b(e(), charset);
        }

        public final String c() {
            return this.f34940a;
        }

        public final URL e() {
            URL resource = this.f34941b.getResource(this.f34940a);
            if (resource != null) {
                return resource;
            }
            throw new NoSuchElementException(this.f34940a);
        }

        public boolean equals(Object obj) {
            if (obj instanceof d) {
                d dVar = (d) obj;
                return this.f34940a.equals(dVar.f34940a) && this.f34941b == dVar.f34941b;
            }
            return false;
        }

        public int hashCode() {
            return this.f34940a.hashCode();
        }

        public String toString() {
            return this.f34940a;
        }
    }

    /* compiled from: ClassPath.java */
    /* loaded from: classes2.dex */
    static abstract class e {

        /* renamed from: a  reason: collision with root package name */
        private final Set<File> f34942a = o4.u();

        e() {
        }

        private static ImmutableList<URL> a(ClassLoader classLoader) {
            if (classLoader instanceof URLClassLoader) {
                return ImmutableList.copyOf(((URLClassLoader) classLoader).getURLs());
            }
            if (classLoader.equals(ClassLoader.getSystemClassLoader())) {
                return e();
            }
            return ImmutableList.of();
        }

        @h3.d
        static ImmutableMap<File, ClassLoader> b(ClassLoader classLoader) {
            LinkedHashMap c02 = f3.c0();
            ClassLoader parent = classLoader.getParent();
            if (parent != null) {
                c02.putAll(b(parent));
            }
            k5<URL> it = a(classLoader).iterator();
            while (it.hasNext()) {
                URL next = it.next();
                if (next.getProtocol().equals("file")) {
                    File j4 = b.j(next);
                    if (!c02.containsKey(j4)) {
                        c02.put(j4, classLoader);
                    }
                }
            }
            return ImmutableMap.copyOf((Map) c02);
        }

        @h3.d
        static URL c(File file, String str) throws MalformedURLException {
            return new URL(file.toURI().toURL(), str);
        }

        @h3.d
        static ImmutableSet<File> d(File file, @NullableDecl Manifest manifest) {
            if (manifest == null) {
                return ImmutableSet.of();
            }
            ImmutableSet.a builder = ImmutableSet.builder();
            String value = manifest.getMainAttributes().getValue(Attributes.Name.CLASS_PATH.toString());
            if (value != null) {
                for (String str : b.f34935d.n(value)) {
                    try {
                        URL c10 = c(file, str);
                        if (c10.getProtocol().equals("file")) {
                            builder.g(b.j(c10));
                        }
                    } catch (MalformedURLException unused) {
                        Logger logger = b.f34933b;
                        logger.warning("Invalid Class-Path entry: " + str);
                    }
                }
            }
            return builder.e();
        }

        @h3.d
        static ImmutableList<URL> e() {
            ImmutableList.a builder = ImmutableList.builder();
            for (String str : f0.k(StandardSystemProperty.PATH_SEPARATOR.value()).n(StandardSystemProperty.JAVA_CLASS_PATH.value())) {
                try {
                    try {
                        builder.g(new File(str).toURI().toURL());
                    } catch (SecurityException unused) {
                        builder.g(new URL("file", (String) null, new File(str).getAbsolutePath()));
                    }
                } catch (MalformedURLException e4) {
                    Logger logger = b.f34933b;
                    Level level = Level.WARNING;
                    logger.log(level, "malformed classpath entry: " + str, (Throwable) e4);
                }
            }
            return builder.e();
        }

        private void i(File file, ClassLoader classLoader) throws IOException {
            try {
                if (file.exists()) {
                    if (file.isDirectory()) {
                        h(classLoader, file);
                    } else {
                        j(file, classLoader);
                    }
                }
            } catch (SecurityException e4) {
                Logger logger = b.f34933b;
                logger.warning("Cannot access " + file + ": " + e4);
            }
        }

        private void j(File file, ClassLoader classLoader) throws IOException {
            try {
                JarFile jarFile = new JarFile(file);
                try {
                    k5<File> it = d(file, jarFile.getManifest()).iterator();
                    while (it.hasNext()) {
                        f(it.next(), classLoader);
                    }
                    k(classLoader, jarFile);
                } finally {
                    try {
                        jarFile.close();
                    } catch (IOException unused) {
                    }
                }
            } catch (IOException unused2) {
            }
        }

        @h3.d
        final void f(File file, ClassLoader classLoader) throws IOException {
            if (this.f34942a.add(file.getCanonicalFile())) {
                i(file, classLoader);
            }
        }

        public final void g(ClassLoader classLoader) throws IOException {
            k5<Map.Entry<File, ClassLoader>> it = b(classLoader).entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry<File, ClassLoader> next = it.next();
                f(next.getKey(), next.getValue());
            }
        }

        protected abstract void h(ClassLoader classLoader, File file) throws IOException;

        protected abstract void k(ClassLoader classLoader, JarFile jarFile) throws IOException;
    }

    private b(ImmutableSet<d> immutableSet) {
        this.f34937a = immutableSet;
    }

    public static b c(ClassLoader classLoader) throws IOException {
        c cVar = new c();
        cVar.g(classLoader);
        return new b(cVar.l());
    }

    @h3.d
    static String e(String str) {
        return str.substring(0, str.length() - 6).replace(com.fasterxml.jackson.core.e.f13819f, '.');
    }

    @h3.d
    static File j(URL url) {
        a0.d(url.getProtocol().equals("file"));
        try {
            return new File(url.toURI());
        } catch (URISyntaxException unused) {
            return new File(url.getPath());
        }
    }

    public ImmutableSet<C0262b> d() {
        return c1.s(this.f34937a).o(C0262b.class).J();
    }

    public ImmutableSet<d> f() {
        return this.f34937a;
    }

    public ImmutableSet<C0262b> g() {
        return c1.s(this.f34937a).o(C0262b.class).n(f34934c).J();
    }

    public ImmutableSet<C0262b> h(String str) {
        a0.E(str);
        ImmutableSet.a builder = ImmutableSet.builder();
        k5<C0262b> it = g().iterator();
        while (it.hasNext()) {
            C0262b next = it.next();
            if (next.h().equals(str)) {
                builder.g(next);
            }
        }
        return builder.e();
    }

    public ImmutableSet<C0262b> i(String str) {
        a0.E(str);
        String str2 = str + '.';
        ImmutableSet.a builder = ImmutableSet.builder();
        k5<C0262b> it = g().iterator();
        while (it.hasNext()) {
            C0262b next = it.next();
            if (next.g().startsWith(str2)) {
                builder.g(next);
            }
        }
        return builder.e();
    }
}

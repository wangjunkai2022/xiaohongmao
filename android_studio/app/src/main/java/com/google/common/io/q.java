package com.google.common.io;

import com.google.common.base.Optional;
import com.google.common.base.f0;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.b3;
import com.google.common.collect.j5;
import com.google.common.graph.o0;
import com.google.common.graph.p0;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import io.sentry.instrumentation.file.h;
import io.sentry.instrumentation.file.l;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.RandomAccessFile;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* compiled from: Files.java */
@h3.c
/* loaded from: classes2.dex */
public final class q {

    /* renamed from: a  reason: collision with root package name */
    private static final int f34498a = 10000;

    /* renamed from: b  reason: collision with root package name */
    private static final j5<File> f34499b = new b();

    /* renamed from: c  reason: collision with root package name */
    private static final o0<File> f34500c = new c();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Files.java */
    /* loaded from: classes2.dex */
    public static class a implements t<List<String>> {

        /* renamed from: a  reason: collision with root package name */
        final List<String> f34501a = b3.q();

        a() {
        }

        @Override // com.google.common.io.t
        public boolean b(String str) {
            this.f34501a.add(str);
            return true;
        }

        @Override // com.google.common.io.t
        /* renamed from: c */
        public List<String> a() {
            return this.f34501a;
        }
    }

    /* compiled from: Files.java */
    /* loaded from: classes2.dex */
    static class b extends j5<File> {
        b() {
        }

        @Override // com.google.common.collect.j5
        /* renamed from: h */
        public Iterable<File> b(File file) {
            return q.n(file);
        }

        public String toString() {
            return "Files.fileTreeTraverser()";
        }
    }

    /* compiled from: Files.java */
    /* loaded from: classes2.dex */
    static class c implements o0<File> {
        c() {
        }

        @Override // com.google.common.graph.o0, com.google.common.graph.w
        /* renamed from: M */
        public Iterable<File> b(File file) {
            return q.n(file);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Files.java */
    /* loaded from: classes2.dex */
    public static final class d extends com.google.common.io.e {

        /* renamed from: a  reason: collision with root package name */
        private final File f34502a;

        /* renamed from: b  reason: collision with root package name */
        private final ImmutableSet<FileWriteMode> f34503b;

        /* synthetic */ d(File file, FileWriteMode[] fileWriteModeArr, a aVar) {
            this(file, fileWriteModeArr);
        }

        @Override // com.google.common.io.e
        /* renamed from: f */
        public FileOutputStream c() throws IOException {
            File file = this.f34502a;
            boolean contains = this.f34503b.contains(FileWriteMode.APPEND);
            return l.b.b(new FileOutputStream(file, contains), file, contains);
        }

        public String toString() {
            return "Files.asByteSink(" + this.f34502a + ", " + this.f34503b + ")";
        }

        private d(File file, FileWriteMode... fileWriteModeArr) {
            this.f34502a = (File) com.google.common.base.a0.E(file);
            this.f34503b = ImmutableSet.copyOf(fileWriteModeArr);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: Files.java */
    /* loaded from: classes2.dex */
    public static final class e extends com.google.common.io.f {

        /* renamed from: a  reason: collision with root package name */
        private final File f34504a;

        /* synthetic */ e(File file, a aVar) {
            this(file);
        }

        @Override // com.google.common.io.f
        public byte[] o() throws IOException {
            try {
                FileInputStream fileInputStream = (FileInputStream) m.a().b(m());
                return g.v(fileInputStream, fileInputStream.getChannel().size());
            } finally {
            }
        }

        @Override // com.google.common.io.f
        public long p() throws IOException {
            if (this.f34504a.isFile()) {
                return this.f34504a.length();
            }
            throw new FileNotFoundException(this.f34504a.toString());
        }

        @Override // com.google.common.io.f
        public Optional<Long> q() {
            if (this.f34504a.isFile()) {
                return Optional.of(Long.valueOf(this.f34504a.length()));
            }
            return Optional.absent();
        }

        @Override // com.google.common.io.f
        /* renamed from: t */
        public FileInputStream m() throws IOException {
            File file = this.f34504a;
            return h.b.a(new FileInputStream(file), file);
        }

        public String toString() {
            return "Files.asByteSource(" + this.f34504a + ")";
        }

        private e(File file) {
            this.f34504a = (File) com.google.common.base.a0.E(file);
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: Files.java */
    /* loaded from: classes2.dex */
    private static abstract class f implements com.google.common.base.b0<File> {

        /* renamed from: a  reason: collision with root package name */
        public static final f f34505a;

        /* renamed from: b  reason: collision with root package name */
        public static final f f34506b;

        /* renamed from: c  reason: collision with root package name */
        private static final /* synthetic */ f[] f34507c;

        /* compiled from: Files.java */
        /* loaded from: classes2.dex */
        enum a extends f {
            a(String str, int i4) {
                super(str, i4, null);
            }

            @Override // com.google.common.base.b0
            /* renamed from: a */
            public boolean apply(File file) {
                return file.isDirectory();
            }

            @Override // java.lang.Enum
            public String toString() {
                return "Files.isDirectory()";
            }
        }

        /* compiled from: Files.java */
        /* loaded from: classes2.dex */
        enum b extends f {
            b(String str, int i4) {
                super(str, i4, null);
            }

            @Override // com.google.common.base.b0
            /* renamed from: a */
            public boolean apply(File file) {
                return file.isFile();
            }

            @Override // java.lang.Enum
            public String toString() {
                return "Files.isFile()";
            }
        }

        static {
            a aVar = new a("IS_DIRECTORY", 0);
            f34505a = aVar;
            b bVar = new b("IS_FILE", 1);
            f34506b = bVar;
            f34507c = new f[]{aVar, bVar};
        }

        private f(String str, int i4) {
        }

        public static f valueOf(String str) {
            return (f) Enum.valueOf(f.class, str);
        }

        public static f[] values() {
            return (f[]) f34507c.clone();
        }

        /* synthetic */ f(String str, int i4, a aVar) {
            this(str, i4);
        }
    }

    private q() {
    }

    @h3.a
    public static BufferedWriter A(File file, Charset charset) throws FileNotFoundException {
        com.google.common.base.a0.E(file);
        com.google.common.base.a0.E(charset);
        return new BufferedWriter(new OutputStreamWriter(l.b.a(new FileOutputStream(file), file), charset));
    }

    @h3.a
    @Deprecated
    @CanIgnoreReturnValue
    public static <T> T B(File file, com.google.common.io.d<T> dVar) throws IOException {
        return (T) d(file).n(dVar);
    }

    @h3.a
    @Deprecated
    public static String C(File file, Charset charset) throws IOException {
        return f(file, charset).o();
    }

    @h3.a
    @Deprecated
    @CanIgnoreReturnValue
    public static <T> T D(File file, Charset charset, t<T> tVar) throws IOException {
        return (T) f(file, charset).q(tVar);
    }

    @h3.a
    public static List<String> E(File file, Charset charset) throws IOException {
        return (List) f(file, charset).q(new a());
    }

    @h3.a
    public static String F(String str) {
        com.google.common.base.a0.E(str);
        if (str.length() == 0) {
            return ".";
        }
        Iterable<String> n9 = f0.h(com.fasterxml.jackson.core.e.f13819f).g().n(str);
        ArrayList arrayList = new ArrayList();
        for (String str2 : n9) {
            str2.hashCode();
            if (!str2.equals(".")) {
                if (!str2.equals("..")) {
                    arrayList.add(str2);
                } else if (arrayList.size() > 0 && !((String) arrayList.get(arrayList.size() - 1)).equals("..")) {
                    arrayList.remove(arrayList.size() - 1);
                } else {
                    arrayList.add("..");
                }
            }
        }
        String k10 = com.google.common.base.u.o(com.fasterxml.jackson.core.e.f13819f).k(arrayList);
        if (str.charAt(0) == '/') {
            k10 = "/" + k10;
        }
        while (k10.startsWith("/../")) {
            k10 = k10.substring(3);
        }
        return k10.equals("/..") ? "/" : "".equals(k10) ? "." : k10;
    }

    @h3.a
    public static byte[] G(File file) throws IOException {
        return d(file).o();
    }

    @h3.a
    @Deprecated
    public static String H(File file, Charset charset) throws IOException {
        return f(file, charset).n();
    }

    @h3.a
    public static void I(File file) throws IOException {
        com.google.common.base.a0.E(file);
        if (file.createNewFile() || file.setLastModified(System.currentTimeMillis())) {
            return;
        }
        throw new IOException("Unable to update modification time of " + file);
    }

    @h3.a
    @Deprecated
    public static void J(CharSequence charSequence, File file, Charset charset) throws IOException {
        e(file, charset, new FileWriteMode[0]).c(charSequence);
    }

    @h3.a
    public static void K(byte[] bArr, File file) throws IOException {
        c(file, new FileWriteMode[0]).d(bArr);
    }

    @h3.a
    @Deprecated
    public static void b(CharSequence charSequence, File file, Charset charset) throws IOException {
        e(file, charset, FileWriteMode.APPEND).c(charSequence);
    }

    public static com.google.common.io.e c(File file, FileWriteMode... fileWriteModeArr) {
        return new d(file, fileWriteModeArr, null);
    }

    public static com.google.common.io.f d(File file) {
        return new e(file, null);
    }

    public static i e(File file, Charset charset, FileWriteMode... fileWriteModeArr) {
        return c(file, fileWriteModeArr).a(charset);
    }

    public static j f(File file, Charset charset) {
        return d(file).a(charset);
    }

    @h3.a
    public static void g(File file, File file2) throws IOException {
        com.google.common.base.a0.y(!file.equals(file2), "Source %s and destination %s must be different", file, file2);
        d(file).f(c(file2, new FileWriteMode[0]));
    }

    @h3.a
    public static void h(File file, OutputStream outputStream) throws IOException {
        d(file).g(outputStream);
    }

    @h3.a
    @Deprecated
    public static void i(File file, Charset charset, Appendable appendable) throws IOException {
        f(file, charset).f(appendable);
    }

    @h3.a
    public static void j(File file) throws IOException {
        com.google.common.base.a0.E(file);
        File parentFile = file.getCanonicalFile().getParentFile();
        if (parentFile == null) {
            return;
        }
        parentFile.mkdirs();
        if (parentFile.isDirectory()) {
            return;
        }
        throw new IOException("Unable to create parent directories of " + file);
    }

    @h3.a
    public static File k() {
        File file = new File(System.getProperty("java.io.tmpdir"));
        String str = System.currentTimeMillis() + "-";
        for (int i4 = 0; i4 < 10000; i4++) {
            File file2 = new File(file, str + i4);
            if (file2.mkdir()) {
                return file2;
            }
        }
        throw new IllegalStateException("Failed to create directory within 10000 attempts (tried " + str + "0 to " + str + "9999)");
    }

    @h3.a
    public static boolean l(File file, File file2) throws IOException {
        com.google.common.base.a0.E(file);
        com.google.common.base.a0.E(file2);
        if (file == file2 || file.equals(file2)) {
            return true;
        }
        long length = file.length();
        long length2 = file2.length();
        if (length == 0 || length2 == 0 || length == length2) {
            return d(file).e(d(file2));
        }
        return false;
    }

    @h3.a
    public static p0<File> m() {
        return p0.h(f34500c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Iterable<File> n(File file) {
        File[] listFiles;
        if (file.isDirectory() && (listFiles = file.listFiles()) != null) {
            return Collections.unmodifiableList(Arrays.asList(listFiles));
        }
        return Collections.emptyList();
    }

    @Deprecated
    static j5<File> o() {
        return f34499b;
    }

    @h3.a
    public static String p(String str) {
        com.google.common.base.a0.E(str);
        String name = new File(str).getName();
        int lastIndexOf = name.lastIndexOf(46);
        return lastIndexOf == -1 ? "" : name.substring(lastIndexOf + 1);
    }

    @h3.a
    public static String q(String str) {
        com.google.common.base.a0.E(str);
        String name = new File(str).getName();
        int lastIndexOf = name.lastIndexOf(46);
        return lastIndexOf == -1 ? name : name.substring(0, lastIndexOf);
    }

    @h3.a
    @Deprecated
    public static com.google.common.hash.l r(File file, com.google.common.hash.m mVar) throws IOException {
        return d(file).j(mVar);
    }

    @h3.a
    public static com.google.common.base.b0<File> s() {
        return f.f34505a;
    }

    @h3.a
    public static com.google.common.base.b0<File> t() {
        return f.f34506b;
    }

    @h3.a
    public static MappedByteBuffer u(File file) throws IOException {
        com.google.common.base.a0.E(file);
        return v(file, FileChannel.MapMode.READ_ONLY);
    }

    @h3.a
    public static MappedByteBuffer v(File file, FileChannel.MapMode mapMode) throws IOException {
        return x(file, mapMode, -1L);
    }

    @h3.a
    public static MappedByteBuffer w(File file, FileChannel.MapMode mapMode, long j4) throws IOException {
        com.google.common.base.a0.p(j4 >= 0, "size (%s) may not be negative", j4);
        return x(file, mapMode, j4);
    }

    private static MappedByteBuffer x(File file, FileChannel.MapMode mapMode, long j4) throws IOException {
        com.google.common.base.a0.E(file);
        com.google.common.base.a0.E(mapMode);
        m a10 = m.a();
        try {
            FileChannel fileChannel = (FileChannel) a10.b(((RandomAccessFile) a10.b(new RandomAccessFile(file, mapMode == FileChannel.MapMode.READ_ONLY ? "r" : "rw"))).getChannel());
            if (j4 == -1) {
                j4 = fileChannel.size();
            }
            return fileChannel.map(mapMode, 0L, j4);
        } finally {
        }
    }

    @h3.a
    public static void y(File file, File file2) throws IOException {
        com.google.common.base.a0.E(file);
        com.google.common.base.a0.E(file2);
        com.google.common.base.a0.y(!file.equals(file2), "Source %s and destination %s must be different", file, file2);
        if (file.renameTo(file2)) {
            return;
        }
        g(file, file2);
        if (file.delete()) {
            return;
        }
        if (!file2.delete()) {
            throw new IOException("Unable to delete " + file2);
        }
        throw new IOException("Unable to delete " + file);
    }

    @h3.a
    public static BufferedReader z(File file, Charset charset) throws FileNotFoundException {
        com.google.common.base.a0.E(file);
        com.google.common.base.a0.E(charset);
        return new BufferedReader(new InputStreamReader(h.b.a(new FileInputStream(file), file), charset));
    }
}

package com.bumptech.glide.disklrucache;

import android.annotation.TargetApi;
import android.os.Build;
import android.os.StrictMode;
import com.facebook.cache.disk.a;
import io.sentry.instrumentation.file.h;
import io.sentry.instrumentation.file.l;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.PrintStream;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* compiled from: DiskLruCache.java */
/* loaded from: classes.dex */
public final class a implements Closeable {

    /* renamed from: o  reason: collision with root package name */
    static final String f7169o = "journal";

    /* renamed from: p  reason: collision with root package name */
    static final String f7170p = "journal.tmp";

    /* renamed from: q  reason: collision with root package name */
    static final String f7171q = "journal.bkp";

    /* renamed from: r  reason: collision with root package name */
    static final String f7172r = "libcore.io.DiskLruCache";

    /* renamed from: s  reason: collision with root package name */
    static final String f7173s = "1";

    /* renamed from: t  reason: collision with root package name */
    static final long f7174t = -1;

    /* renamed from: u  reason: collision with root package name */
    private static final String f7175u = "CLEAN";

    /* renamed from: v  reason: collision with root package name */
    private static final String f7176v = "DIRTY";

    /* renamed from: w  reason: collision with root package name */
    private static final String f7177w = "REMOVE";

    /* renamed from: x  reason: collision with root package name */
    private static final String f7178x = "READ";

    /* renamed from: a  reason: collision with root package name */
    private final File f7179a;

    /* renamed from: b  reason: collision with root package name */
    private final File f7180b;

    /* renamed from: c  reason: collision with root package name */
    private final File f7181c;

    /* renamed from: d  reason: collision with root package name */
    private final File f7182d;

    /* renamed from: e  reason: collision with root package name */
    private final int f7183e;

    /* renamed from: f  reason: collision with root package name */
    private long f7184f;

    /* renamed from: g  reason: collision with root package name */
    private final int f7185g;

    /* renamed from: i  reason: collision with root package name */
    private Writer f7187i;

    /* renamed from: k  reason: collision with root package name */
    private int f7189k;

    /* renamed from: h  reason: collision with root package name */
    private long f7186h = 0;

    /* renamed from: j  reason: collision with root package name */
    private final LinkedHashMap<String, d> f7188j = new LinkedHashMap<>(0, 0.75f, true);

    /* renamed from: l  reason: collision with root package name */
    private long f7190l = 0;

    /* renamed from: m  reason: collision with root package name */
    final ThreadPoolExecutor f7191m = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue(), new b(null));

    /* renamed from: n  reason: collision with root package name */
    private final Callable<Void> f7192n = new CallableC0041a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DiskLruCache.java */
    /* renamed from: com.bumptech.glide.disklrucache.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class CallableC0041a implements Callable<Void> {
        CallableC0041a() {
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a */
        public Void call() throws Exception {
            synchronized (a.this) {
                if (a.this.f7187i == null) {
                    return null;
                }
                a.this.q0();
                if (a.this.X()) {
                    a.this.l0();
                    a.this.f7189k = 0;
                }
                return null;
            }
        }
    }

    /* compiled from: DiskLruCache.java */
    /* loaded from: classes.dex */
    private static final class b implements ThreadFactory {
        private b() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public synchronized Thread newThread(Runnable runnable) {
            Thread thread;
            thread = new Thread(runnable, "glide-disk-lru-cache-thread");
            thread.setPriority(1);
            return thread;
        }

        /* synthetic */ b(CallableC0041a callableC0041a) {
            this();
        }
    }

    /* compiled from: DiskLruCache.java */
    /* loaded from: classes.dex */
    public final class c {

        /* renamed from: a  reason: collision with root package name */
        private final d f7194a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean[] f7195b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f7196c;

        /* synthetic */ c(a aVar, d dVar, CallableC0041a callableC0041a) {
            this(dVar);
        }

        private InputStream h(int i4) throws IOException {
            synchronized (a.this) {
                if (this.f7194a.f7203f == this) {
                    if (this.f7194a.f7202e) {
                        try {
                            File j4 = this.f7194a.j(i4);
                            return h.b.a(new FileInputStream(j4), j4);
                        } catch (FileNotFoundException unused) {
                            return null;
                        }
                    }
                    return null;
                }
                throw new IllegalStateException();
            }
        }

        public void a() throws IOException {
            a.this.D(this, false);
        }

        public void b() {
            if (this.f7196c) {
                return;
            }
            try {
                a();
            } catch (IOException unused) {
            }
        }

        public void e() throws IOException {
            a.this.D(this, true);
            this.f7196c = true;
        }

        public File f(int i4) throws IOException {
            File k10;
            synchronized (a.this) {
                if (this.f7194a.f7203f == this) {
                    if (!this.f7194a.f7202e) {
                        this.f7195b[i4] = true;
                    }
                    k10 = this.f7194a.k(i4);
                    a.this.f7179a.mkdirs();
                } else {
                    throw new IllegalStateException();
                }
            }
            return k10;
        }

        public String g(int i4) throws IOException {
            InputStream h4 = h(i4);
            if (h4 != null) {
                return a.W(h4);
            }
            return null;
        }

        public void i(int i4, String str) throws IOException {
            OutputStreamWriter outputStreamWriter;
            OutputStreamWriter outputStreamWriter2 = null;
            try {
                File f10 = f(i4);
                outputStreamWriter = new OutputStreamWriter(l.b.a(new FileOutputStream(f10), f10), com.bumptech.glide.disklrucache.c.f7220b);
            } catch (Throwable th) {
                th = th;
            }
            try {
                outputStreamWriter.write(str);
                com.bumptech.glide.disklrucache.c.a(outputStreamWriter);
            } catch (Throwable th2) {
                th = th2;
                outputStreamWriter2 = outputStreamWriter;
                com.bumptech.glide.disklrucache.c.a(outputStreamWriter2);
                throw th;
            }
        }

        private c(d dVar) {
            this.f7194a = dVar;
            this.f7195b = dVar.f7202e ? null : new boolean[a.this.f7185g];
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DiskLruCache.java */
    /* loaded from: classes.dex */
    public final class d {

        /* renamed from: a  reason: collision with root package name */
        private final String f7198a;

        /* renamed from: b  reason: collision with root package name */
        private final long[] f7199b;

        /* renamed from: c  reason: collision with root package name */
        File[] f7200c;

        /* renamed from: d  reason: collision with root package name */
        File[] f7201d;

        /* renamed from: e  reason: collision with root package name */
        private boolean f7202e;

        /* renamed from: f  reason: collision with root package name */
        private c f7203f;

        /* renamed from: g  reason: collision with root package name */
        private long f7204g;

        /* synthetic */ d(a aVar, String str, CallableC0041a callableC0041a) {
            this(str);
        }

        private IOException m(String[] strArr) throws IOException {
            throw new IOException("unexpected journal line: " + Arrays.toString(strArr));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void n(String[] strArr) throws IOException {
            if (strArr.length == a.this.f7185g) {
                for (int i4 = 0; i4 < strArr.length; i4++) {
                    try {
                        this.f7199b[i4] = Long.parseLong(strArr[i4]);
                    } catch (NumberFormatException unused) {
                        throw m(strArr);
                    }
                }
                return;
            }
            throw m(strArr);
        }

        public File j(int i4) {
            return this.f7200c[i4];
        }

        public File k(int i4) {
            return this.f7201d[i4];
        }

        public String l() throws IOException {
            long[] jArr;
            StringBuilder sb = new StringBuilder();
            for (long j4 : this.f7199b) {
                sb.append(' ');
                sb.append(j4);
            }
            return sb.toString();
        }

        private d(String str) {
            this.f7198a = str;
            this.f7199b = new long[a.this.f7185g];
            this.f7200c = new File[a.this.f7185g];
            this.f7201d = new File[a.this.f7185g];
            StringBuilder sb = new StringBuilder(str);
            sb.append('.');
            int length = sb.length();
            for (int i4 = 0; i4 < a.this.f7185g; i4++) {
                sb.append(i4);
                this.f7200c[i4] = new File(a.this.f7179a, sb.toString());
                sb.append(a.e.J);
                this.f7201d[i4] = new File(a.this.f7179a, sb.toString());
                sb.setLength(length);
            }
        }
    }

    /* compiled from: DiskLruCache.java */
    /* loaded from: classes.dex */
    public final class e {

        /* renamed from: a  reason: collision with root package name */
        private final String f7206a;

        /* renamed from: b  reason: collision with root package name */
        private final long f7207b;

        /* renamed from: c  reason: collision with root package name */
        private final long[] f7208c;

        /* renamed from: d  reason: collision with root package name */
        private final File[] f7209d;

        /* synthetic */ e(a aVar, String str, long j4, File[] fileArr, long[] jArr, CallableC0041a callableC0041a) {
            this(str, j4, fileArr, jArr);
        }

        public c a() throws IOException {
            return a.this.I(this.f7206a, this.f7207b);
        }

        public File b(int i4) {
            return this.f7209d[i4];
        }

        public long c(int i4) {
            return this.f7208c[i4];
        }

        public String d(int i4) throws IOException {
            File file = this.f7209d[i4];
            return a.W(h.b.a(new FileInputStream(file), file));
        }

        private e(String str, long j4, File[] fileArr, long[] jArr) {
            this.f7206a = str;
            this.f7207b = j4;
            this.f7209d = fileArr;
            this.f7208c = jArr;
        }
    }

    private a(File file, int i4, int i10, long j4) {
        this.f7179a = file;
        this.f7183e = i4;
        this.f7180b = new File(file, f7169o);
        this.f7181c = new File(file, f7170p);
        this.f7182d = new File(file, f7171q);
        this.f7185g = i10;
        this.f7184f = j4;
    }

    @TargetApi(26)
    private static void A(Writer writer) throws IOException {
        if (Build.VERSION.SDK_INT < 26) {
            writer.close();
            return;
        }
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitUnbufferedIo().build());
        try {
            writer.close();
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void D(c cVar, boolean z9) throws IOException {
        d dVar = cVar.f7194a;
        if (dVar.f7203f == cVar) {
            if (z9 && !dVar.f7202e) {
                for (int i4 = 0; i4 < this.f7185g; i4++) {
                    if (cVar.f7195b[i4]) {
                        if (!dVar.k(i4).exists()) {
                            cVar.a();
                            return;
                        }
                    } else {
                        cVar.a();
                        throw new IllegalStateException("Newly created entry didn't create value for index " + i4);
                    }
                }
            }
            for (int i10 = 0; i10 < this.f7185g; i10++) {
                File k10 = dVar.k(i10);
                if (z9) {
                    if (k10.exists()) {
                        File j4 = dVar.j(i10);
                        k10.renameTo(j4);
                        long j10 = dVar.f7199b[i10];
                        long length = j4.length();
                        dVar.f7199b[i10] = length;
                        this.f7186h = (this.f7186h - j10) + length;
                    }
                } else {
                    G(k10);
                }
            }
            this.f7189k++;
            dVar.f7203f = null;
            if (dVar.f7202e | z9) {
                dVar.f7202e = true;
                this.f7187i.append((CharSequence) f7175u);
                this.f7187i.append(' ');
                this.f7187i.append((CharSequence) dVar.f7198a);
                this.f7187i.append((CharSequence) dVar.l());
                this.f7187i.append('\n');
                if (z9) {
                    long j11 = this.f7190l;
                    this.f7190l = 1 + j11;
                    dVar.f7204g = j11;
                }
            } else {
                this.f7188j.remove(dVar.f7198a);
                this.f7187i.append((CharSequence) f7177w);
                this.f7187i.append(' ');
                this.f7187i.append((CharSequence) dVar.f7198a);
                this.f7187i.append('\n');
            }
            J(this.f7187i);
            if (this.f7186h > this.f7184f || X()) {
                this.f7191m.submit(this.f7192n);
            }
            return;
        }
        throw new IllegalStateException();
    }

    private static void G(File file) throws IOException {
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized c I(String str, long j4) throws IOException {
        y();
        d dVar = this.f7188j.get(str);
        if (j4 == -1 || (dVar != null && dVar.f7204g == j4)) {
            if (dVar == null) {
                dVar = new d(this, str, null);
                this.f7188j.put(str, dVar);
            } else if (dVar.f7203f != null) {
                return null;
            }
            c cVar = new c(this, dVar, null);
            dVar.f7203f = cVar;
            this.f7187i.append((CharSequence) f7176v);
            this.f7187i.append(' ');
            this.f7187i.append((CharSequence) str);
            this.f7187i.append('\n');
            J(this.f7187i);
            return cVar;
        }
        return null;
    }

    @TargetApi(26)
    private static void J(Writer writer) throws IOException {
        if (Build.VERSION.SDK_INT < 26) {
            writer.flush();
            return;
        }
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitUnbufferedIo().build());
        try {
            writer.flush();
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String W(InputStream inputStream) throws IOException {
        return com.bumptech.glide.disklrucache.c.c(new InputStreamReader(inputStream, com.bumptech.glide.disklrucache.c.f7220b));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean X() {
        int i4 = this.f7189k;
        return i4 >= 2000 && i4 >= this.f7188j.size();
    }

    public static a b0(File file, int i4, int i10, long j4) throws IOException {
        if (j4 > 0) {
            if (i10 > 0) {
                File file2 = new File(file, f7171q);
                if (file2.exists()) {
                    File file3 = new File(file, f7169o);
                    if (file3.exists()) {
                        file2.delete();
                    } else {
                        o0(file2, file3, false);
                    }
                }
                a aVar = new a(file, i4, i10, j4);
                if (aVar.f7180b.exists()) {
                    try {
                        aVar.g0();
                        aVar.d0();
                        return aVar;
                    } catch (IOException e4) {
                        PrintStream printStream = System.out;
                        printStream.println("DiskLruCache " + file + " is corrupt: " + e4.getMessage() + ", removing");
                        aVar.E();
                    }
                }
                file.mkdirs();
                a aVar2 = new a(file, i4, i10, j4);
                aVar2.l0();
                return aVar2;
            }
            throw new IllegalArgumentException("valueCount <= 0");
        }
        throw new IllegalArgumentException("maxSize <= 0");
    }

    private void d0() throws IOException {
        G(this.f7181c);
        Iterator<d> it = this.f7188j.values().iterator();
        while (it.hasNext()) {
            d next = it.next();
            int i4 = 0;
            if (next.f7203f == null) {
                while (i4 < this.f7185g) {
                    this.f7186h += next.f7199b[i4];
                    i4++;
                }
            } else {
                next.f7203f = null;
                while (i4 < this.f7185g) {
                    G(next.j(i4));
                    G(next.k(i4));
                    i4++;
                }
                it.remove();
            }
        }
    }

    private void g0() throws IOException {
        File file = this.f7180b;
        com.bumptech.glide.disklrucache.b bVar = new com.bumptech.glide.disklrucache.b(h.b.a(new FileInputStream(file), file), com.bumptech.glide.disklrucache.c.f7219a);
        try {
            String h4 = bVar.h();
            String h10 = bVar.h();
            String h11 = bVar.h();
            String h12 = bVar.h();
            String h13 = bVar.h();
            if (!f7172r.equals(h4) || !"1".equals(h10) || !Integer.toString(this.f7183e).equals(h11) || !Integer.toString(this.f7185g).equals(h12) || !"".equals(h13)) {
                throw new IOException("unexpected journal header: [" + h4 + ", " + h10 + ", " + h12 + ", " + h13 + "]");
            }
            int i4 = 0;
            while (true) {
                try {
                    h0(bVar.h());
                    i4++;
                } catch (EOFException unused) {
                    this.f7189k = i4 - this.f7188j.size();
                    if (bVar.d()) {
                        l0();
                    } else {
                        File file2 = this.f7180b;
                        this.f7187i = new BufferedWriter(new OutputStreamWriter(l.b.b(new FileOutputStream(file2, true), file2, true), com.bumptech.glide.disklrucache.c.f7219a));
                    }
                    com.bumptech.glide.disklrucache.c.a(bVar);
                    return;
                }
            }
        } catch (Throwable th) {
            com.bumptech.glide.disklrucache.c.a(bVar);
            throw th;
        }
    }

    private void h0(String str) throws IOException {
        String substring;
        int indexOf = str.indexOf(32);
        if (indexOf != -1) {
            int i4 = indexOf + 1;
            int indexOf2 = str.indexOf(32, i4);
            if (indexOf2 == -1) {
                substring = str.substring(i4);
                if (indexOf == 6 && str.startsWith(f7177w)) {
                    this.f7188j.remove(substring);
                    return;
                }
            } else {
                substring = str.substring(i4, indexOf2);
            }
            d dVar = this.f7188j.get(substring);
            if (dVar == null) {
                dVar = new d(this, substring, null);
                this.f7188j.put(substring, dVar);
            }
            if (indexOf2 != -1 && indexOf == 5 && str.startsWith(f7175u)) {
                String[] split = str.substring(indexOf2 + 1).split(" ");
                dVar.f7202e = true;
                dVar.f7203f = null;
                dVar.n(split);
                return;
            } else if (indexOf2 == -1 && indexOf == 5 && str.startsWith(f7176v)) {
                dVar.f7203f = new c(this, dVar, null);
                return;
            } else if (indexOf2 == -1 && indexOf == 4 && str.startsWith(f7178x)) {
                return;
            } else {
                throw new IOException("unexpected journal line: " + str);
            }
        }
        throw new IOException("unexpected journal line: " + str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void l0() throws IOException {
        Writer writer = this.f7187i;
        if (writer != null) {
            A(writer);
        }
        File file = this.f7181c;
        BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(l.b.a(new FileOutputStream(file), file), com.bumptech.glide.disklrucache.c.f7219a));
        bufferedWriter.write(f7172r);
        bufferedWriter.write("\n");
        bufferedWriter.write("1");
        bufferedWriter.write("\n");
        bufferedWriter.write(Integer.toString(this.f7183e));
        bufferedWriter.write("\n");
        bufferedWriter.write(Integer.toString(this.f7185g));
        bufferedWriter.write("\n");
        bufferedWriter.write("\n");
        for (d dVar : this.f7188j.values()) {
            if (dVar.f7203f != null) {
                bufferedWriter.write("DIRTY " + dVar.f7198a + '\n');
            } else {
                bufferedWriter.write("CLEAN " + dVar.f7198a + dVar.l() + '\n');
            }
        }
        A(bufferedWriter);
        if (this.f7180b.exists()) {
            o0(this.f7180b, this.f7182d, true);
        }
        o0(this.f7181c, this.f7180b, false);
        this.f7182d.delete();
        File file2 = this.f7180b;
        this.f7187i = new BufferedWriter(new OutputStreamWriter(l.b.b(new FileOutputStream(file2, true), file2, true), com.bumptech.glide.disklrucache.c.f7219a));
    }

    private static void o0(File file, File file2, boolean z9) throws IOException {
        if (z9) {
            G(file2);
        }
        if (!file.renameTo(file2)) {
            throw new IOException();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q0() throws IOException {
        while (this.f7186h > this.f7184f) {
            n0(this.f7188j.entrySet().iterator().next().getKey());
        }
    }

    private void y() {
        if (this.f7187i == null) {
            throw new IllegalStateException("cache is closed");
        }
    }

    public void E() throws IOException {
        close();
        com.bumptech.glide.disklrucache.c.b(this.f7179a);
    }

    public c H(String str) throws IOException {
        return I(str, -1L);
    }

    public synchronized e K(String str) throws IOException {
        y();
        d dVar = this.f7188j.get(str);
        if (dVar == null) {
            return null;
        }
        if (dVar.f7202e) {
            for (File file : dVar.f7200c) {
                if (!file.exists()) {
                    return null;
                }
            }
            this.f7189k++;
            this.f7187i.append((CharSequence) f7178x);
            this.f7187i.append(' ');
            this.f7187i.append((CharSequence) str);
            this.f7187i.append('\n');
            if (X()) {
                this.f7191m.submit(this.f7192n);
            }
            return new e(this, str, dVar.f7204g, dVar.f7200c, dVar.f7199b, null);
        }
        return null;
    }

    public File L() {
        return this.f7179a;
    }

    public synchronized long M() {
        return this.f7184f;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        if (this.f7187i == null) {
            return;
        }
        Iterator it = new ArrayList(this.f7188j.values()).iterator();
        while (it.hasNext()) {
            d dVar = (d) it.next();
            if (dVar.f7203f != null) {
                dVar.f7203f.a();
            }
        }
        q0();
        A(this.f7187i);
        this.f7187i = null;
    }

    public synchronized void flush() throws IOException {
        y();
        q0();
        J(this.f7187i);
    }

    public synchronized boolean isClosed() {
        return this.f7187i == null;
    }

    public synchronized boolean n0(String str) throws IOException {
        y();
        d dVar = this.f7188j.get(str);
        if (dVar != null && dVar.f7203f == null) {
            for (int i4 = 0; i4 < this.f7185g; i4++) {
                File j4 = dVar.j(i4);
                if (j4.exists() && !j4.delete()) {
                    throw new IOException("failed to delete " + j4);
                }
                this.f7186h -= dVar.f7199b[i4];
                dVar.f7199b[i4] = 0;
            }
            this.f7189k++;
            this.f7187i.append((CharSequence) f7177w);
            this.f7187i.append(' ');
            this.f7187i.append((CharSequence) str);
            this.f7187i.append('\n');
            this.f7188j.remove(str);
            if (X()) {
                this.f7191m.submit(this.f7192n);
            }
            return true;
        }
        return false;
    }

    public synchronized void p0(long j4) {
        this.f7184f = j4;
        this.f7191m.submit(this.f7192n);
    }

    public synchronized long size() {
        return this.f7186h;
    }
}

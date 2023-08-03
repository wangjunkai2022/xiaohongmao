package com.koushikdutta.async.util;

import io.sentry.instrumentation.file.h;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.Provider;
import java.security.Security;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Random;
import java.util.Set;
import shaded.org.apache.commons.codec.digest.f;

/* loaded from: classes3.dex */
public class FileCache {

    /* renamed from: i  reason: collision with root package name */
    private static String f45145i = "MD5";

    /* renamed from: j  reason: collision with root package name */
    static MessageDigest f45146j;

    /* renamed from: a  reason: collision with root package name */
    boolean f45147a;

    /* renamed from: e  reason: collision with root package name */
    File f45151e;

    /* renamed from: f  reason: collision with root package name */
    long f45152f;

    /* renamed from: h  reason: collision with root package name */
    boolean f45154h;

    /* renamed from: b  reason: collision with root package name */
    Random f45148b = new Random();

    /* renamed from: c  reason: collision with root package name */
    long f45149c = 4096;

    /* renamed from: g  reason: collision with root package name */
    Comparator<File> f45153g = new Comparator<File>() { // from class: com.koushikdutta.async.util.FileCache.1
        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(File file, File file2) {
            long lastModified = file.lastModified();
            long lastModified2 = file2.lastModified();
            if (lastModified < lastModified2) {
                return -1;
            }
            return lastModified2 > lastModified ? 1 : 0;
        }
    };

    /* renamed from: d  reason: collision with root package name */
    InternalCache f45150d = new InternalCache();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class CacheEntry {

        /* renamed from: a  reason: collision with root package name */
        final long f45157a;

        public CacheEntry(File file) {
            this.f45157a = file.length();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class InternalCache extends LruCache<String, CacheEntry> {
        public InternalCache() {
            super(FileCache.this.f45152f);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.koushikdutta.async.util.LruCache
        /* renamed from: s */
        public void c(boolean z9, String str, CacheEntry cacheEntry, CacheEntry cacheEntry2) {
            super.c(z9, str, cacheEntry, cacheEntry2);
            if (cacheEntry2 == null && !FileCache.this.f45154h) {
                new File(FileCache.this.f45151e, str).delete();
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.koushikdutta.async.util.LruCache
        /* renamed from: t */
        public long p(String str, CacheEntry cacheEntry) {
            return Math.max(FileCache.this.f45149c, cacheEntry.f45157a);
        }
    }

    /* loaded from: classes3.dex */
    public static class Snapshot {

        /* renamed from: a  reason: collision with root package name */
        FileInputStream[] f45160a;

        /* renamed from: b  reason: collision with root package name */
        long[] f45161b;

        Snapshot(FileInputStream[] fileInputStreamArr, long[] jArr) {
            this.f45160a = fileInputStreamArr;
            this.f45161b = jArr;
        }

        public void a() {
            StreamUtility.a(this.f45160a);
        }

        public long b(int i4) {
            return this.f45161b[i4];
        }
    }

    static {
        try {
            f45146j = MessageDigest.getInstance(f.f93510b);
        } catch (NoSuchAlgorithmException e4) {
            MessageDigest f10 = f();
            f45146j = f10;
            if (f10 == null) {
                throw new RuntimeException(e4);
            }
        }
        try {
            f45146j = (MessageDigest) f45146j.clone();
        } catch (CloneNotSupportedException unused) {
        }
    }

    public FileCache(File file, long j4, boolean z9) {
        this.f45151e = file;
        this.f45152f = j4;
        this.f45147a = z9;
        file.mkdirs();
        c();
    }

    private void c() {
        if (this.f45147a) {
            new Thread() { // from class: com.koushikdutta.async.util.FileCache.2
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    FileCache.this.o();
                }
            }.start();
        } else {
            o();
        }
    }

    private static MessageDigest f() {
        MessageDigest messageDigest;
        if (f.f93510b.equals(f45145i)) {
            for (Provider provider : Security.getProviders()) {
                for (Provider.Service service : provider.getServices()) {
                    String algorithm = service.getAlgorithm();
                    f45145i = algorithm;
                    try {
                        messageDigest = MessageDigest.getInstance(algorithm);
                    } catch (NoSuchAlgorithmException unused) {
                    }
                    if (messageDigest != null) {
                        return messageDigest;
                    }
                }
            }
            return null;
        }
        return null;
    }

    public static void q(File... fileArr) {
        if (fileArr == null) {
            return;
        }
        for (File file : fileArr) {
            file.delete();
        }
    }

    public static synchronized String v(Object... objArr) {
        String bigInteger;
        synchronized (FileCache.class) {
            f45146j.reset();
            for (Object obj : objArr) {
                f45146j.update(obj.toString().getBytes());
            }
            bigInteger = new BigInteger(1, f45146j.digest()).toString(16);
        }
        return bigInteger;
    }

    public void a() {
        q(this.f45151e.listFiles());
        this.f45150d.d();
    }

    public void b(String str, File... fileArr) {
        r(str);
        for (int i4 = 0; i4 < fileArr.length; i4++) {
            File file = fileArr[i4];
            File j4 = j(str, i4);
            if (!file.renameTo(j4)) {
                q(fileArr);
                p(str);
                return;
            }
            p(file.getName());
            this.f45150d.j(k(str, i4), new CacheEntry(j4));
        }
    }

    public boolean d(String str) {
        return j(str, 0).exists();
    }

    public boolean e(String str, int i4) {
        return j(str, i4).exists();
    }

    public FileInputStream g(String str) throws IOException {
        File w9 = w(j(str, 0));
        return h.b.a(new FileInputStream(w9), w9);
    }

    public FileInputStream[] h(String str, int i4) throws IOException {
        FileInputStream[] fileInputStreamArr = new FileInputStream[i4];
        for (int i10 = 0; i10 < i4; i10++) {
            try {
                File w9 = w(j(str, i10));
                fileInputStreamArr[i10] = h.b.a(new FileInputStream(w9), w9);
            } catch (IOException e4) {
                for (int i11 = 0; i11 < i4; i11++) {
                    StreamUtility.a(fileInputStreamArr[i11]);
                }
                p(str);
                throw e4;
            }
        }
        return fileInputStreamArr;
    }

    public File i(String str) {
        return w(j(str, 0));
    }

    File j(String str, int i4) {
        return new File(this.f45151e, k(str, i4));
    }

    String k(String str, int i4) {
        return str + "." + i4;
    }

    public File l() {
        File file;
        do {
            file = new File(this.f45151e, new BigInteger(128, this.f45148b).toString(16));
        } while (file.exists());
        return file;
    }

    public File[] m(int i4) {
        File[] fileArr = new File[i4];
        for (int i10 = 0; i10 < i4; i10++) {
            fileArr[i10] = l();
        }
        return fileArr;
    }

    public Set<String> n() {
        HashSet hashSet = new HashSet();
        File[] listFiles = this.f45151e.listFiles();
        if (listFiles == null) {
            return hashSet;
        }
        for (File file : listFiles) {
            String name = file.getName();
            int lastIndexOf = name.lastIndexOf(46);
            if (lastIndexOf != -1) {
                hashSet.add(name.substring(0, lastIndexOf));
            }
        }
        return hashSet;
    }

    void o() {
        this.f45154h = true;
        try {
            File[] listFiles = this.f45151e.listFiles();
            if (listFiles == null) {
                return;
            }
            ArrayList arrayList = new ArrayList();
            Collections.addAll(arrayList, listFiles);
            Collections.sort(arrayList, this.f45153g);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                File file = (File) it.next();
                String name = file.getName();
                this.f45150d.j(name, new CacheEntry(file));
                this.f45150d.f(name);
            }
        } finally {
            this.f45154h = false;
        }
    }

    public void p(String str) {
        for (int i4 = 0; this.f45150d.l(k(str, i4)) != null; i4++) {
        }
        r(str);
    }

    void r(String str) {
        int i4 = 0;
        while (true) {
            File j4 = j(str, i4);
            if (!j4.exists()) {
                return;
            }
            j4.delete();
            i4++;
        }
    }

    public void s(long j4) {
        this.f45149c = j4;
    }

    public void t(long j4) {
        this.f45150d.n(j4);
        c();
    }

    public long u() {
        return this.f45150d.o();
    }

    public File w(File file) {
        this.f45150d.f(file.getName());
        file.setLastModified(System.currentTimeMillis());
        return file;
    }
}

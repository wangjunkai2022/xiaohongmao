package com.facebook.soloader;

import android.content.Context;
import com.facebook.soloader.x;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/* compiled from: ExtractFromZipSoSource.java */
/* loaded from: classes.dex */
public class n extends x {
    protected final String A;

    /* renamed from: z  reason: collision with root package name */
    protected final File f13533z;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ExtractFromZipSoSource.java */
    /* loaded from: classes.dex */
    public static final class b extends x.b implements Comparable {

        /* renamed from: c  reason: collision with root package name */
        final ZipEntry f13534c;

        /* renamed from: d  reason: collision with root package name */
        final int f13535d;

        b(String str, ZipEntry zipEntry, int i4) {
            super(str, a(zipEntry));
            this.f13534c = zipEntry;
            this.f13535d = i4;
        }

        private static String a(ZipEntry zipEntry) {
            return String.format("pseudo-zip-hash-1-%s-%s-%s-%s", zipEntry.getName(), Long.valueOf(zipEntry.getSize()), Long.valueOf(zipEntry.getCompressedSize()), Long.valueOf(zipEntry.getCrc()));
        }

        @Override // java.lang.Comparable
        public int compareTo(Object obj) {
            return this.f13577a.compareTo(((b) obj).f13577a);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* compiled from: ExtractFromZipSoSource.java */
    /* loaded from: classes.dex */
    public class c extends x.f {
        @r7.h

        /* renamed from: a  reason: collision with root package name */
        private b[] f13536a;

        /* renamed from: b  reason: collision with root package name */
        private final ZipFile f13537b;

        /* renamed from: c  reason: collision with root package name */
        private final x f13538c;

        /* compiled from: ExtractFromZipSoSource.java */
        /* loaded from: classes.dex */
        private final class a extends x.e {

            /* renamed from: a  reason: collision with root package name */
            private int f13540a;

            private a() {
            }

            @Override // com.facebook.soloader.x.e
            public boolean a() {
                c.this.i();
                return this.f13540a < c.this.f13536a.length;
            }

            @Override // com.facebook.soloader.x.e
            public x.d b() throws IOException {
                c.this.i();
                b[] bVarArr = c.this.f13536a;
                int i4 = this.f13540a;
                this.f13540a = i4 + 1;
                b bVar = bVarArr[i4];
                InputStream inputStream = c.this.f13537b.getInputStream(bVar.f13534c);
                try {
                    return new x.d(bVar, inputStream);
                } catch (Throwable th) {
                    if (inputStream != null) {
                        inputStream.close();
                    }
                    throw th;
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public c(x xVar) throws IOException {
            this.f13537b = new ZipFile(n.this.f13533z);
            this.f13538c = xVar;
        }

        @Override // com.facebook.soloader.x.f
        protected final x.c a() throws IOException {
            return new x.c(i());
        }

        @Override // com.facebook.soloader.x.f
        protected final x.e b() throws IOException {
            return new a();
        }

        @Override // com.facebook.soloader.x.f, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.f13537b.close();
        }

        final b[] i() {
            if (this.f13536a == null) {
                LinkedHashSet linkedHashSet = new LinkedHashSet();
                HashMap hashMap = new HashMap();
                Pattern compile = Pattern.compile(n.this.A);
                String[] h4 = SysUtil.h();
                Enumeration<? extends ZipEntry> entries = this.f13537b.entries();
                while (entries.hasMoreElements()) {
                    ZipEntry nextElement = entries.nextElement();
                    Matcher matcher = compile.matcher(nextElement.getName());
                    if (matcher.matches()) {
                        String group = matcher.group(1);
                        String group2 = matcher.group(2);
                        int e4 = SysUtil.e(h4, group);
                        if (e4 >= 0) {
                            linkedHashSet.add(group);
                            b bVar = (b) hashMap.get(group2);
                            if (bVar == null || e4 < bVar.f13535d) {
                                hashMap.put(group2, new b(group2, nextElement, e4));
                            }
                        }
                    }
                }
                this.f13538c.v((String[]) linkedHashSet.toArray(new String[linkedHashSet.size()]));
                b[] bVarArr = (b[]) hashMap.values().toArray(new b[hashMap.size()]);
                Arrays.sort(bVarArr);
                int i4 = 0;
                for (int i10 = 0; i10 < bVarArr.length; i10++) {
                    b bVar2 = bVarArr[i10];
                    if (k(bVar2.f13534c, bVar2.f13577a)) {
                        i4++;
                    } else {
                        bVarArr[i10] = null;
                    }
                }
                b[] bVarArr2 = new b[i4];
                int i11 = 0;
                for (b bVar3 : bVarArr) {
                    if (bVar3 != null) {
                        bVarArr2[i11] = bVar3;
                        i11++;
                    }
                }
                this.f13536a = bVarArr2;
            }
            return this.f13536a;
        }

        protected boolean k(ZipEntry zipEntry, String str) {
            return true;
        }
    }

    public n(Context context, String str, File file, String str2) {
        super(context, str);
        this.f13533z = file;
        this.A = str2;
    }

    @Override // com.facebook.soloader.x
    protected x.f r() throws IOException {
        return new c(this);
    }
}

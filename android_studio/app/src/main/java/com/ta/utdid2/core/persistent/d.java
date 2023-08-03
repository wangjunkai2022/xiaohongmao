package com.ta.utdid2.core.persistent;

import com.ta.utdid2.core.persistent.b;
import io.sentry.instrumentation.file.h;
import io.sentry.instrumentation.file.l;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: TransactionXMLFile.java */
/* loaded from: classes3.dex */
public class d {

    /* renamed from: d  reason: collision with root package name */
    public static final int f55870d = 2;

    /* renamed from: e  reason: collision with root package name */
    public static final int f55871e = 1;

    /* renamed from: f  reason: collision with root package name */
    public static final int f55872f = 0;

    /* renamed from: g  reason: collision with root package name */
    private static final Object f55873g = new Object();

    /* renamed from: b  reason: collision with root package name */
    private File f55875b;

    /* renamed from: a  reason: collision with root package name */
    private final Object f55874a = new Object();

    /* renamed from: c  reason: collision with root package name */
    private HashMap<File, a> f55876c = new HashMap<>();

    /* compiled from: TransactionXMLFile.java */
    /* loaded from: classes3.dex */
    private static final class a implements b {

        /* renamed from: g  reason: collision with root package name */
        private static final Object f55877g = new Object();

        /* renamed from: a  reason: collision with root package name */
        private final File f55878a;

        /* renamed from: b  reason: collision with root package name */
        private final File f55879b;

        /* renamed from: c  reason: collision with root package name */
        private final int f55880c;

        /* renamed from: d  reason: collision with root package name */
        private Map f55881d;

        /* renamed from: e  reason: collision with root package name */
        private boolean f55882e = false;

        /* renamed from: f  reason: collision with root package name */
        private WeakHashMap<b.InterfaceC0475b, Object> f55883f;

        /* compiled from: TransactionXMLFile.java */
        /* renamed from: com.ta.utdid2.core.persistent.d$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public final class C0476a implements b.a {

            /* renamed from: a  reason: collision with root package name */
            private final Map<String, Object> f55884a = new HashMap();

            /* renamed from: b  reason: collision with root package name */
            private boolean f55885b = false;

            public C0476a() {
            }

            @Override // com.ta.utdid2.core.persistent.b.a
            public b.a a(String str, String str2) {
                synchronized (this) {
                    this.f55884a.put(str, str2);
                }
                return this;
            }

            @Override // com.ta.utdid2.core.persistent.b.a
            public b.a b(String str, long j4) {
                synchronized (this) {
                    this.f55884a.put(str, Long.valueOf(j4));
                }
                return this;
            }

            @Override // com.ta.utdid2.core.persistent.b.a
            public b.a c(String str) {
                synchronized (this) {
                    this.f55884a.put(str, this);
                }
                return this;
            }

            @Override // com.ta.utdid2.core.persistent.b.a
            public b.a clear() {
                synchronized (this) {
                    this.f55885b = true;
                }
                return this;
            }

            @Override // com.ta.utdid2.core.persistent.b.a
            public boolean d() {
                boolean z9;
                ArrayList arrayList;
                HashSet<b.InterfaceC0475b> hashSet;
                boolean s9;
                synchronized (d.f55873g) {
                    z9 = a.this.f55883f.size() > 0;
                    arrayList = null;
                    if (z9) {
                        arrayList = new ArrayList();
                        hashSet = new HashSet(a.this.f55883f.keySet());
                    } else {
                        hashSet = null;
                    }
                    synchronized (this) {
                        if (this.f55885b) {
                            a.this.f55881d.clear();
                            this.f55885b = false;
                        }
                        for (Map.Entry<String, Object> entry : this.f55884a.entrySet()) {
                            String key = entry.getKey();
                            Object value = entry.getValue();
                            if (value == this) {
                                a.this.f55881d.remove(key);
                            } else {
                                a.this.f55881d.put(key, value);
                            }
                            if (z9) {
                                arrayList.add(key);
                            }
                        }
                        this.f55884a.clear();
                    }
                    s9 = a.this.s();
                    if (s9) {
                        a.this.r(true);
                    }
                }
                if (z9) {
                    for (int size = arrayList.size() - 1; size >= 0; size--) {
                        String str = (String) arrayList.get(size);
                        for (b.InterfaceC0475b interfaceC0475b : hashSet) {
                            if (interfaceC0475b != null) {
                                interfaceC0475b.a(a.this, str);
                            }
                        }
                    }
                }
                return s9;
            }

            @Override // com.ta.utdid2.core.persistent.b.a
            public b.a e(String str, boolean z9) {
                synchronized (this) {
                    this.f55884a.put(str, Boolean.valueOf(z9));
                }
                return this;
            }

            @Override // com.ta.utdid2.core.persistent.b.a
            public b.a f(String str, int i4) {
                synchronized (this) {
                    this.f55884a.put(str, Integer.valueOf(i4));
                }
                return this;
            }

            @Override // com.ta.utdid2.core.persistent.b.a
            public b.a g(String str, float f10) {
                synchronized (this) {
                    this.f55884a.put(str, Float.valueOf(f10));
                }
                return this;
            }
        }

        a(File file, int i4, Map map) {
            this.f55878a = file;
            this.f55879b = d.f(file);
            this.f55880c = i4;
            this.f55881d = map == null ? new HashMap() : map;
            this.f55883f = new WeakHashMap<>();
        }

        private FileOutputStream o(File file) {
            try {
                return l.b.a(new FileOutputStream(file), file);
            } catch (FileNotFoundException unused) {
                if (file.getParentFile().mkdir()) {
                    try {
                        return l.b.a(new FileOutputStream(file), file);
                    } catch (FileNotFoundException unused2) {
                        return null;
                    }
                }
                return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean s() {
            if (this.f55878a.exists()) {
                if (!this.f55879b.exists()) {
                    if (!this.f55878a.renameTo(this.f55879b)) {
                        return false;
                    }
                } else {
                    this.f55878a.delete();
                }
            }
            try {
                FileOutputStream o9 = o(this.f55878a);
                if (o9 == null) {
                    return false;
                }
                e.j(this.f55881d, o9);
                o9.close();
                this.f55879b.delete();
                return true;
            } catch (IOException | XmlPullParserException unused) {
                if (this.f55878a.exists()) {
                    this.f55878a.delete();
                }
                return false;
            }
        }

        @Override // com.ta.utdid2.core.persistent.b
        public boolean a(String str) {
            boolean containsKey;
            synchronized (this) {
                containsKey = this.f55881d.containsKey(str);
            }
            return containsKey;
        }

        @Override // com.ta.utdid2.core.persistent.b
        public boolean b() {
            return this.f55878a != null && new File(this.f55878a.getAbsolutePath()).exists();
        }

        @Override // com.ta.utdid2.core.persistent.b
        public long c(String str, long j4) {
            synchronized (this) {
                Long l10 = (Long) this.f55881d.get(str);
                if (l10 != null) {
                    j4 = l10.longValue();
                }
            }
            return j4;
        }

        @Override // com.ta.utdid2.core.persistent.b
        public boolean d(String str, boolean z9) {
            synchronized (this) {
                Boolean bool = (Boolean) this.f55881d.get(str);
                if (bool != null) {
                    z9 = bool.booleanValue();
                }
            }
            return z9;
        }

        @Override // com.ta.utdid2.core.persistent.b
        public void e(b.InterfaceC0475b interfaceC0475b) {
            synchronized (this) {
                this.f55883f.remove(interfaceC0475b);
            }
        }

        @Override // com.ta.utdid2.core.persistent.b
        public void f(b.InterfaceC0475b interfaceC0475b) {
            synchronized (this) {
                this.f55883f.put(interfaceC0475b, f55877g);
            }
        }

        @Override // com.ta.utdid2.core.persistent.b
        public int g(String str, int i4) {
            synchronized (this) {
                Integer num = (Integer) this.f55881d.get(str);
                if (num != null) {
                    i4 = num.intValue();
                }
            }
            return i4;
        }

        @Override // com.ta.utdid2.core.persistent.b
        public Map<String, ?> h() {
            HashMap hashMap;
            synchronized (this) {
                hashMap = new HashMap(this.f55881d);
            }
            return hashMap;
        }

        @Override // com.ta.utdid2.core.persistent.b
        public float i(String str, float f10) {
            synchronized (this) {
                Float f11 = (Float) this.f55881d.get(str);
                if (f11 != null) {
                    f10 = f11.floatValue();
                }
            }
            return f10;
        }

        @Override // com.ta.utdid2.core.persistent.b
        public b.a j() {
            return new C0476a();
        }

        @Override // com.ta.utdid2.core.persistent.b
        public String k(String str, String str2) {
            synchronized (this) {
                String str3 = (String) this.f55881d.get(str);
                if (str3 != null) {
                    str2 = str3;
                }
            }
            return str2;
        }

        public boolean p() {
            boolean z9;
            synchronized (this) {
                z9 = this.f55882e;
            }
            return z9;
        }

        public void q(Map map) {
            if (map != null) {
                synchronized (this) {
                    this.f55881d = map;
                }
            }
        }

        public void r(boolean z9) {
            synchronized (this) {
                this.f55882e = z9;
            }
        }
    }

    public d(String str) {
        if (str != null && str.length() > 0) {
            this.f55875b = new File(str);
            return;
        }
        throw new RuntimeException("Directory can not be empty");
    }

    private File d() {
        File file;
        synchronized (this.f55874a) {
            file = this.f55875b;
        }
        return file;
    }

    private File e(String str) {
        File d4 = d();
        return g(d4, str + ".xml");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static File f(File file) {
        return new File(file.getPath() + ".bak");
    }

    private File g(File file, String str) {
        if (str.indexOf(File.separatorChar) < 0) {
            return new File(file, str);
        }
        throw new IllegalArgumentException("File " + str + " contains a path separator");
    }

    public b c(String str, int i4) {
        File e4 = e(str);
        synchronized (f55873g) {
            a aVar = this.f55876c.get(e4);
            if (aVar == null || aVar.p()) {
                File f10 = f(e4);
                if (f10.exists()) {
                    e4.delete();
                    f10.renameTo(e4);
                }
                if (e4.exists()) {
                    e4.canRead();
                }
                HashMap hashMap = null;
                if (e4.exists() && e4.canRead()) {
                    try {
                        try {
                            FileInputStream a10 = h.b.a(new FileInputStream(e4), e4);
                            hashMap = e.a(a10);
                            a10.close();
                        } catch (FileNotFoundException e10) {
                            e10.printStackTrace();
                        } catch (IOException e11) {
                            e11.printStackTrace();
                        } catch (XmlPullParserException unused) {
                            FileInputStream a11 = h.b.a(new FileInputStream(e4), e4);
                            int available = a11.available();
                            byte[] bArr = new byte[available];
                            a11.read(bArr);
                            new String(bArr, 0, available, "UTF-8");
                        } catch (Exception e12) {
                            e12.printStackTrace();
                        }
                    } catch (FileNotFoundException e13) {
                        e13.printStackTrace();
                    } catch (IOException e14) {
                        e14.printStackTrace();
                    }
                }
                synchronized (f55873g) {
                    if (aVar != null) {
                        aVar.q(hashMap);
                    } else {
                        aVar = this.f55876c.get(e4);
                        if (aVar == null) {
                            aVar = new a(e4, i4, hashMap);
                            this.f55876c.put(e4, aVar);
                        }
                    }
                }
                return aVar;
            }
            return aVar;
        }
    }
}

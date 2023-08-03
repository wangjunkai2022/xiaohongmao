package com.tangxiaolv.telegramgallery.Utils;

import com.tangxiaolv.telegramgallery.TL.c;
import com.tangxiaolv.telegramgallery.TL.l;
import com.tangxiaolv.telegramgallery.TL.m;
import com.tangxiaolv.telegramgallery.Utils.c;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Semaphore;

/* compiled from: FileLoader.java */
/* loaded from: classes3.dex */
public class d {

    /* renamed from: n  reason: collision with root package name */
    public static final int f56427n = 0;

    /* renamed from: o  reason: collision with root package name */
    public static final int f56428o = 1;

    /* renamed from: p  reason: collision with root package name */
    public static final int f56429p = 2;

    /* renamed from: q  reason: collision with root package name */
    public static final int f56430q = 3;

    /* renamed from: r  reason: collision with root package name */
    public static final int f56431r = 4;

    /* renamed from: s  reason: collision with root package name */
    private static volatile d f56432s;

    /* renamed from: a  reason: collision with root package name */
    private HashMap<Integer, File> f56433a = null;

    /* renamed from: b  reason: collision with root package name */
    private volatile com.tangxiaolv.telegramgallery.d f56434b = new com.tangxiaolv.telegramgallery.d("fileUploadQueue");

    /* renamed from: c  reason: collision with root package name */
    private LinkedList<com.tangxiaolv.telegramgallery.Utils.c> f56435c = new LinkedList<>();

    /* renamed from: d  reason: collision with root package name */
    private LinkedList<com.tangxiaolv.telegramgallery.Utils.c> f56436d = new LinkedList<>();

    /* renamed from: e  reason: collision with root package name */
    private LinkedList<com.tangxiaolv.telegramgallery.Utils.c> f56437e = new LinkedList<>();

    /* renamed from: f  reason: collision with root package name */
    private ConcurrentHashMap<String, com.tangxiaolv.telegramgallery.Utils.c> f56438f = new ConcurrentHashMap<>();

    /* renamed from: g  reason: collision with root package name */
    private HashMap<String, Long> f56439g = new HashMap<>();

    /* renamed from: h  reason: collision with root package name */
    private f f56440h = null;

    /* renamed from: i  reason: collision with root package name */
    private int f56441i = 0;

    /* renamed from: j  reason: collision with root package name */
    private int f56442j = 0;

    /* renamed from: k  reason: collision with root package name */
    private int f56443k = 0;

    /* renamed from: l  reason: collision with root package name */
    private int f56444l = 0;

    /* renamed from: m  reason: collision with root package name */
    private int f56445m = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FileLoader.java */
    /* loaded from: classes3.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.tangxiaolv.telegramgallery.TL.d f56446a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f56447b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ com.tangxiaolv.telegramgallery.TL.b f56448c;

        a(com.tangxiaolv.telegramgallery.TL.d dVar, String str, com.tangxiaolv.telegramgallery.TL.b bVar) {
            this.f56446a = dVar;
            this.f56447b = str;
            this.f56448c = bVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            String v9;
            com.tangxiaolv.telegramgallery.Utils.c cVar;
            com.tangxiaolv.telegramgallery.TL.d dVar = this.f56446a;
            if (dVar != null) {
                v9 = d.w(dVar, this.f56447b);
            } else {
                com.tangxiaolv.telegramgallery.TL.b bVar = this.f56448c;
                v9 = bVar != null ? d.v(bVar) : null;
            }
            if (v9 == null || (cVar = (com.tangxiaolv.telegramgallery.Utils.c) d.this.f56438f.remove(v9)) == null) {
                return;
            }
            if (this.f56446a != null) {
                d.this.f56437e.remove(cVar);
            } else {
                d.this.f56435c.remove(cVar);
            }
            cVar.i();
        }
    }

    /* compiled from: FileLoader.java */
    /* loaded from: classes3.dex */
    class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Boolean[] f56450a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f56451b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Semaphore f56452c;

        b(Boolean[] boolArr, String str, Semaphore semaphore) {
            this.f56450a = boolArr;
            this.f56451b = str;
            this.f56452c = semaphore;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f56450a[0] = Boolean.valueOf(d.this.f56438f.containsKey(this.f56451b));
            this.f56452c.release();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FileLoader.java */
    /* loaded from: classes3.dex */
    public class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.tangxiaolv.telegramgallery.TL.d f56454a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f56455b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ com.tangxiaolv.telegramgallery.TL.b f56456c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ boolean f56457d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ int f56458e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ boolean f56459f;

        /* compiled from: FileLoader.java */
        /* loaded from: classes3.dex */
        class a implements c.i {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ String f56461a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ int f56462b;

            a(String str, int i4) {
                this.f56461a = str;
                this.f56462b = i4;
            }

            @Override // com.tangxiaolv.telegramgallery.Utils.c.i
            public void a(com.tangxiaolv.telegramgallery.Utils.c cVar, int i4) {
                c cVar2 = c.this;
                d.this.t(cVar2.f56456c, cVar2.f56454a, this.f56461a);
                if (d.this.f56440h != null) {
                    d.this.f56440h.c(this.f56461a, i4);
                }
            }

            @Override // com.tangxiaolv.telegramgallery.Utils.c.i
            public void b(com.tangxiaolv.telegramgallery.Utils.c cVar, File file) {
                if (d.this.f56440h != null) {
                    d.this.f56440h.a(this.f56461a, file, this.f56462b);
                }
                c cVar2 = c.this;
                d.this.t(cVar2.f56456c, cVar2.f56454a, this.f56461a);
            }

            @Override // com.tangxiaolv.telegramgallery.Utils.c.i
            public void c(com.tangxiaolv.telegramgallery.Utils.c cVar, float f10) {
                if (d.this.f56440h != null) {
                    d.this.f56440h.b(this.f56461a, f10);
                }
            }
        }

        c(com.tangxiaolv.telegramgallery.TL.d dVar, String str, com.tangxiaolv.telegramgallery.TL.b bVar, boolean z9, int i4, boolean z10) {
            this.f56454a = dVar;
            this.f56455b = str;
            this.f56456c = bVar;
            this.f56457d = z9;
            this.f56458e = i4;
            this.f56459f = z10;
        }

        @Override // java.lang.Runnable
        public void run() {
            String v9;
            LinkedList linkedList;
            int indexOf;
            com.tangxiaolv.telegramgallery.TL.d dVar = this.f56454a;
            if (dVar != null) {
                v9 = d.w(dVar, this.f56455b);
            } else {
                com.tangxiaolv.telegramgallery.TL.b bVar = this.f56456c;
                v9 = bVar != null ? d.v(bVar) : null;
            }
            if (v9 == null || v9.contains("-2147483648")) {
                return;
            }
            com.tangxiaolv.telegramgallery.Utils.c cVar = (com.tangxiaolv.telegramgallery.Utils.c) d.this.f56438f.get(v9);
            if (cVar != null) {
                if (this.f56457d) {
                    if (this.f56454a != null) {
                        linkedList = d.this.f56437e;
                    } else {
                        linkedList = d.this.f56435c;
                    }
                    if (linkedList == null || (indexOf = linkedList.indexOf(cVar)) == -1) {
                        return;
                    }
                    linkedList.remove(indexOf);
                    linkedList.add(0, cVar);
                    cVar.n(true);
                    return;
                }
                return;
            }
            int i4 = 4;
            File z9 = d.this.z(4);
            com.tangxiaolv.telegramgallery.TL.d dVar2 = this.f56454a;
            if (dVar2 != null) {
                cVar = new com.tangxiaolv.telegramgallery.Utils.c(dVar2, this.f56455b, this.f56458e);
                i4 = 0;
            } else {
                com.tangxiaolv.telegramgallery.TL.b bVar2 = this.f56456c;
                if (bVar2 != null) {
                    cVar = new com.tangxiaolv.telegramgallery.Utils.c(bVar2);
                }
            }
            cVar.o(!this.f56459f ? d.this.z(i4) : z9, z9);
            d.this.f56438f.put(v9, cVar);
            cVar.m(new a(v9, i4));
            int i10 = this.f56457d ? 3 : 1;
            if (i4 == 1) {
                if (d.this.f56442j < i10) {
                    d.g(d.this);
                    cVar.p();
                } else if (this.f56457d) {
                    d.this.f56436d.add(0, cVar);
                } else {
                    d.this.f56436d.add(cVar);
                }
            } else if (this.f56454a != null) {
                if (d.this.f56443k < i10) {
                    d.j(d.this);
                    cVar.p();
                } else if (this.f56457d) {
                    d.this.f56437e.add(0, cVar);
                } else {
                    d.this.f56437e.add(cVar);
                }
            } else if (d.this.f56441i < i10) {
                d.m(d.this);
                cVar.p();
            } else if (this.f56457d) {
                d.this.f56435c.add(0, cVar);
            } else {
                d.this.f56435c.add(cVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FileLoader.java */
    /* renamed from: com.tangxiaolv.telegramgallery.Utils.d$d  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public class RunnableC0486d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f56464a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ com.tangxiaolv.telegramgallery.TL.d f56465b;

        RunnableC0486d(String str, com.tangxiaolv.telegramgallery.TL.d dVar) {
            this.f56464a = str;
            this.f56465b = dVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.tangxiaolv.telegramgallery.Utils.c cVar;
            com.tangxiaolv.telegramgallery.Utils.c cVar2;
            d.this.f56438f.remove(this.f56464a);
            if (this.f56465b != null) {
                d.k(d.this);
                if (d.this.f56437e.isEmpty()) {
                    return;
                }
                if (d.this.f56443k >= (((com.tangxiaolv.telegramgallery.Utils.c) d.this.f56437e.get(0)).k() ? 3 : 1) || (cVar2 = (com.tangxiaolv.telegramgallery.Utils.c) d.this.f56437e.poll()) == null) {
                    return;
                }
                d.j(d.this);
                cVar2.p();
                return;
            }
            d.n(d.this);
            if (d.this.f56435c.isEmpty()) {
                return;
            }
            if (d.this.f56441i >= (((com.tangxiaolv.telegramgallery.Utils.c) d.this.f56435c.get(0)).k() ? 3 : 1) || (cVar = (com.tangxiaolv.telegramgallery.Utils.c) d.this.f56435c.poll()) == null) {
                return;
            }
            d.m(d.this);
            cVar.p();
        }
    }

    /* compiled from: FileLoader.java */
    /* loaded from: classes3.dex */
    class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ArrayList f56467a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f56468b;

        e(ArrayList arrayList, int i4) {
            this.f56467a = arrayList;
            this.f56468b = i4;
        }

        @Override // java.lang.Runnable
        public void run() {
            for (int i4 = 0; i4 < this.f56467a.size(); i4++) {
                File file = (File) this.f56467a.get(i4);
                if (file.exists()) {
                    try {
                        if (!file.delete()) {
                            file.deleteOnExit();
                        }
                    } catch (Exception e4) {
                        e4.printStackTrace();
                    }
                }
                try {
                    File parentFile = file.getParentFile();
                    File file2 = new File(parentFile, "q_" + file.getName());
                    if (file2.exists() && !file2.delete()) {
                        file2.deleteOnExit();
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
            if (this.f56468b == 2) {
                com.tangxiaolv.telegramgallery.Utils.e.T().H();
            }
        }
    }

    /* compiled from: FileLoader.java */
    /* loaded from: classes3.dex */
    public interface f {
        void a(String str, File file, int i4);

        void b(String str, float f10);

        void c(String str, int i4);
    }

    public static String A(com.tangxiaolv.telegramgallery.TL.b bVar) {
        String B = B(bVar);
        int lastIndexOf = B.lastIndexOf(46);
        String substring = lastIndexOf != -1 ? B.substring(lastIndexOf + 1) : null;
        if (substring == null || substring.length() == 0) {
            substring = bVar.f56253h;
        }
        if (substring == null) {
            substring = "";
        }
        return substring.toUpperCase();
    }

    public static String B(com.tangxiaolv.telegramgallery.TL.b bVar) {
        if (bVar != null) {
            String str = bVar.f56252g;
            if (str != null) {
                return str;
            }
            for (int i4 = 0; i4 < bVar.f56260o.size(); i4++) {
                com.tangxiaolv.telegramgallery.TL.c cVar = bVar.f56260o.get(i4);
                if (cVar instanceof c.e) {
                    return cVar.f56276m;
                }
            }
            return "";
        }
        return "";
    }

    public static String C(File file) {
        String name = file.getName();
        try {
            return name.substring(name.lastIndexOf(46) + 1);
        } catch (Exception unused) {
            return "";
        }
    }

    public static d D() {
        d dVar = f56432s;
        if (dVar == null) {
            synchronized (d.class) {
                dVar = f56432s;
                if (dVar == null) {
                    dVar = new d();
                    f56432s = dVar;
                }
            }
        }
        return dVar;
    }

    public static File E(m mVar) {
        return F(mVar, null, false);
    }

    public static File F(m mVar, String str, boolean z9) {
        File file;
        if (z9) {
            file = D().z(4);
        } else if (mVar instanceof com.tangxiaolv.telegramgallery.TL.b) {
            if (((com.tangxiaolv.telegramgallery.TL.b) mVar).f56257l != null) {
                file = D().z(4);
            } else {
                file = D().z(3);
            }
        } else if (mVar instanceof l) {
            l lVar = (l) mVar;
            com.tangxiaolv.telegramgallery.TL.d dVar = lVar.f56347d;
            if (dVar != null && dVar.f56291g == null && ((dVar.f56288d != -2147483648L || dVar.f56289e >= 0) && lVar.f56350g >= 0)) {
                file = D().z(0);
            } else {
                file = D().z(4);
            }
        } else if (mVar instanceof com.tangxiaolv.telegramgallery.TL.d) {
            com.tangxiaolv.telegramgallery.TL.d dVar2 = (com.tangxiaolv.telegramgallery.TL.d) mVar;
            if (dVar2.f56291g == null && (dVar2.f56288d != -2147483648L || dVar2.f56289e >= 0)) {
                file = D().z(0);
            } else {
                file = D().z(4);
            }
        } else {
            file = null;
        }
        if (file == null) {
            return new File("");
        }
        return new File(file, w(mVar, str));
    }

    public static File G(m mVar, boolean z9) {
        return F(mVar, null, z9);
    }

    private void I(com.tangxiaolv.telegramgallery.TL.b bVar, com.tangxiaolv.telegramgallery.TL.d dVar, String str, int i4, boolean z9, boolean z10) {
        this.f56434b.c(new c(dVar, str, bVar, z9, i4, z10));
    }

    static /* synthetic */ int g(d dVar) {
        int i4 = dVar.f56442j;
        dVar.f56442j = i4 + 1;
        return i4;
    }

    static /* synthetic */ int j(d dVar) {
        int i4 = dVar.f56443k;
        dVar.f56443k = i4 + 1;
        return i4;
    }

    static /* synthetic */ int k(d dVar) {
        int i4 = dVar.f56443k;
        dVar.f56443k = i4 - 1;
        return i4;
    }

    static /* synthetic */ int m(d dVar) {
        int i4 = dVar.f56441i;
        dVar.f56441i = i4 + 1;
        return i4;
    }

    static /* synthetic */ int n(d dVar) {
        int i4 = dVar.f56441i;
        dVar.f56441i = i4 - 1;
        return i4;
    }

    private void p(com.tangxiaolv.telegramgallery.TL.b bVar, com.tangxiaolv.telegramgallery.TL.d dVar, String str) {
        if (dVar == null && bVar == null) {
            return;
        }
        this.f56434b.c(new a(dVar, str, bVar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t(com.tangxiaolv.telegramgallery.TL.b bVar, com.tangxiaolv.telegramgallery.TL.d dVar, String str) {
        this.f56434b.c(new RunnableC0486d(str, dVar));
    }

    public static String v(m mVar) {
        return w(mVar, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0065  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String w(com.tangxiaolv.telegramgallery.TL.m r7, java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 226
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tangxiaolv.telegramgallery.Utils.d.w(com.tangxiaolv.telegramgallery.TL.m, java.lang.String):java.lang.String");
    }

    public static l x(ArrayList<l> arrayList, int i4) {
        return y(arrayList, i4, false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0032, code lost:
        if (r5.f56287c != Integer.MIN_VALUE) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x004f, code lost:
        if (r5.f56287c != Integer.MIN_VALUE) goto L39;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.tangxiaolv.telegramgallery.TL.l y(java.util.ArrayList<com.tangxiaolv.telegramgallery.TL.l> r8, int r9, boolean r10) {
        /*
            r0 = 0
            if (r8 == 0) goto L5e
            boolean r1 = r8.isEmpty()
            if (r1 == 0) goto La
            goto L5e
        La:
            r1 = 0
            r2 = 0
        Lc:
            int r3 = r8.size()
            if (r1 >= r3) goto L5e
            java.lang.Object r3 = r8.get(r1)
            com.tangxiaolv.telegramgallery.TL.l r3 = (com.tangxiaolv.telegramgallery.TL.l) r3
            if (r3 != 0) goto L1b
            goto L5b
        L1b:
            r4 = -2147483648(0xffffffff80000000, float:-0.0)
            r5 = 100
            if (r10 == 0) goto L3d
            int r6 = r3.f56349f
            int r7 = r3.f56348e
            if (r6 < r7) goto L28
            r6 = r7
        L28:
            if (r0 == 0) goto L59
            if (r9 <= r5) goto L34
            com.tangxiaolv.telegramgallery.TL.d r5 = r0.f56347d
            if (r5 == 0) goto L34
            int r5 = r5.f56287c
            if (r5 == r4) goto L59
        L34:
            boolean r4 = r3 instanceof com.tangxiaolv.telegramgallery.TL.l.a
            if (r4 != 0) goto L59
            if (r9 <= r2) goto L5b
            if (r2 >= r6) goto L5b
            goto L59
        L3d:
            int r6 = r3.f56348e
            int r7 = r3.f56349f
            if (r6 < r7) goto L44
            goto L45
        L44:
            r6 = r7
        L45:
            if (r0 == 0) goto L59
            if (r9 <= r5) goto L51
            com.tangxiaolv.telegramgallery.TL.d r5 = r0.f56347d
            if (r5 == 0) goto L51
            int r5 = r5.f56287c
            if (r5 == r4) goto L59
        L51:
            boolean r4 = r3 instanceof com.tangxiaolv.telegramgallery.TL.l.a
            if (r4 != 0) goto L59
            if (r6 > r9) goto L5b
            if (r2 >= r6) goto L5b
        L59:
            r0 = r3
            r2 = r6
        L5b:
            int r1 = r1 + 1
            goto Lc
        L5e:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tangxiaolv.telegramgallery.Utils.d.y(java.util.ArrayList, int, boolean):com.tangxiaolv.telegramgallery.TL.l");
    }

    public boolean H(String str) {
        Semaphore semaphore = new Semaphore(0);
        Boolean[] boolArr = new Boolean[1];
        this.f56434b.c(new b(boolArr, str, semaphore));
        try {
            semaphore.acquire();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        return boolArr[0].booleanValue();
    }

    public void J(com.tangxiaolv.telegramgallery.TL.b bVar, boolean z9, boolean z10) {
        I(bVar, null, null, 0, z9, z10 || !(bVar == null || bVar.f56257l == null));
    }

    public void K(com.tangxiaolv.telegramgallery.TL.d dVar, String str, int i4, boolean z9) {
        I(null, dVar, str, i4, true, z9 || i4 == 0 || !(dVar == null || dVar.f56291g == null));
    }

    public void L(l lVar, String str, boolean z9) {
        com.tangxiaolv.telegramgallery.TL.d dVar = lVar.f56347d;
        int i4 = lVar.f56350g;
        I(null, dVar, str, i4, false, z9 || i4 == 0 || dVar.f56291g != null);
    }

    public void M(f fVar) {
        this.f56440h = fVar;
    }

    public void N(HashMap<Integer, File> hashMap) {
        this.f56433a = hashMap;
    }

    public void o(com.tangxiaolv.telegramgallery.TL.b bVar) {
        p(bVar, null, null);
    }

    public void q(com.tangxiaolv.telegramgallery.TL.d dVar, String str) {
        p(null, dVar, str);
    }

    public void r(l lVar) {
        p(null, lVar.f56347d, null);
    }

    public File s(int i4) {
        return this.f56433a.get(Integer.valueOf(i4));
    }

    public void u(ArrayList<File> arrayList, int i4) {
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        this.f56434b.c(new e(arrayList, i4));
    }

    public File z(int i4) {
        File file = this.f56433a.get(Integer.valueOf(i4));
        if (file == null && i4 != 4) {
            file = this.f56433a.get(4);
        }
        try {
            if (!file.isDirectory()) {
                file.mkdirs();
            }
        } catch (Exception unused) {
        }
        return file;
    }
}

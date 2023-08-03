package com.tangxiaolv.telegramgallery.Utils;

import com.tangxiaolv.telegramgallery.TL.d;
import com.tangxiaolv.telegramgallery.TL.h;
import com.tangxiaolv.telegramgallery.TL.n;
import java.io.File;
import java.io.RandomAccessFile;
import java.util.ArrayList;

/* compiled from: FileLoadOperation.java */
/* loaded from: classes3.dex */
public class c {
    private static final int A = 1;
    private static final int B = 2;
    private static final int C = 3;
    private static final int D = 32768;
    private static final int E = 131072;
    private static final int F = 4;
    private static final int G = 2;
    private static final int H = 1048576;

    /* renamed from: z  reason: collision with root package name */
    private static final int f56390z = 0;

    /* renamed from: a  reason: collision with root package name */
    private int f56391a;

    /* renamed from: b  reason: collision with root package name */
    private com.tangxiaolv.telegramgallery.TL.h f56392b;

    /* renamed from: c  reason: collision with root package name */
    private volatile int f56393c;

    /* renamed from: d  reason: collision with root package name */
    private int f56394d;

    /* renamed from: e  reason: collision with root package name */
    private int f56395e;

    /* renamed from: f  reason: collision with root package name */
    private int f56396f;

    /* renamed from: g  reason: collision with root package name */
    private i f56397g;

    /* renamed from: h  reason: collision with root package name */
    private byte[] f56398h;

    /* renamed from: i  reason: collision with root package name */
    private byte[] f56399i;

    /* renamed from: j  reason: collision with root package name */
    private int f56400j;

    /* renamed from: k  reason: collision with root package name */
    private int f56401k;

    /* renamed from: l  reason: collision with root package name */
    private int f56402l;

    /* renamed from: m  reason: collision with root package name */
    private int f56403m;

    /* renamed from: n  reason: collision with root package name */
    private int f56404n;

    /* renamed from: o  reason: collision with root package name */
    private ArrayList<j> f56405o;

    /* renamed from: p  reason: collision with root package name */
    private ArrayList<j> f56406p;

    /* renamed from: q  reason: collision with root package name */
    private File f56407q;

    /* renamed from: r  reason: collision with root package name */
    private File f56408r;

    /* renamed from: s  reason: collision with root package name */
    private File f56409s;

    /* renamed from: t  reason: collision with root package name */
    private String f56410t;

    /* renamed from: u  reason: collision with root package name */
    private RandomAccessFile f56411u;

    /* renamed from: v  reason: collision with root package name */
    private RandomAccessFile f56412v;

    /* renamed from: w  reason: collision with root package name */
    private File f56413w;

    /* renamed from: x  reason: collision with root package name */
    private File f56414x;

    /* renamed from: y  reason: collision with root package name */
    private boolean f56415y;

    /* compiled from: FileLoadOperation.java */
    /* loaded from: classes3.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c.this.f56397g.a(c.this, 0);
        }
    }

    /* compiled from: FileLoadOperation.java */
    /* loaded from: classes3.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c.this.f56397g.a(c.this, 0);
        }
    }

    /* compiled from: FileLoadOperation.java */
    /* renamed from: com.tangxiaolv.telegramgallery.Utils.c$c  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    class RunnableC0485c implements Runnable {
        RunnableC0485c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c.this.f56397g.a(c.this, 0);
        }
    }

    /* compiled from: FileLoadOperation.java */
    /* loaded from: classes3.dex */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c.this.f56397g.a(c.this, 0);
        }
    }

    /* compiled from: FileLoadOperation.java */
    /* loaded from: classes3.dex */
    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c.this.f56397g.a(c.this, 0);
        }
    }

    /* compiled from: FileLoadOperation.java */
    /* loaded from: classes3.dex */
    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (c.this.f56395e == 0 || c.this.f56394d != c.this.f56395e) {
                return;
            }
            try {
                c.this.l();
            } catch (Exception unused) {
                c.this.f56397g.a(c.this, 0);
            }
        }
    }

    /* compiled from: FileLoadOperation.java */
    /* loaded from: classes3.dex */
    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (c.this.f56393c == 3 || c.this.f56393c == 2) {
                return;
            }
            c.this.f56393c = 2;
            c.this.j();
            if (c.this.f56405o != null) {
                for (int i4 = 0; i4 < c.this.f56405o.size(); i4++) {
                    j jVar = (j) c.this.f56405o.get(i4);
                }
            }
            c.this.f56397g.a(c.this, 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FileLoadOperation.java */
    /* loaded from: classes3.dex */
    public class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                c.this.l();
            } catch (Exception unused) {
                c.this.f56397g.a(c.this, 0);
            }
        }
    }

    /* compiled from: FileLoadOperation.java */
    /* loaded from: classes3.dex */
    public interface i {
        void a(c cVar, int i4);

        void b(c cVar, File file);

        void c(c cVar, float f10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: FileLoadOperation.java */
    /* loaded from: classes3.dex */
    public static class j {

        /* renamed from: a  reason: collision with root package name */
        private int f56424a;

        /* renamed from: b  reason: collision with root package name */
        private int f56425b;

        /* renamed from: c  reason: collision with root package name */
        private n f56426c;

        private j() {
        }
    }

    public c(com.tangxiaolv.telegramgallery.TL.d dVar, String str, int i4) {
        this.f56393c = 0;
        if (dVar instanceof d.a) {
            h.b bVar = new h.b();
            this.f56392b = bVar;
            long j4 = dVar.f56288d;
            bVar.f56315c = j4;
            bVar.f56317e = j4;
            bVar.f56316d = dVar.f56290f;
            bVar.f56318f = dVar.f56289e;
            byte[] bArr = new byte[32];
            this.f56399i = bArr;
            System.arraycopy(dVar.f56292h, 0, bArr, 0, bArr.length);
            this.f56398h = dVar.f56291g;
            this.f56391a = dVar.f56287c;
        } else if (dVar instanceof d.b) {
            h.c cVar = new h.c();
            this.f56392b = cVar;
            cVar.f56317e = dVar.f56288d;
            cVar.f56319g = dVar.f56290f;
            cVar.f56318f = dVar.f56289e;
            this.f56391a = dVar.f56287c;
        }
        this.f56395e = i4;
        this.f56410t = str == null ? "jpg" : str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        try {
            RandomAccessFile randomAccessFile = this.f56411u;
            if (randomAccessFile != null) {
                try {
                    randomAccessFile.getChannel().close();
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
                this.f56411u.close();
                this.f56411u = null;
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        try {
            RandomAccessFile randomAccessFile2 = this.f56412v;
            if (randomAccessFile2 != null) {
                randomAccessFile2.close();
                this.f56412v = null;
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        if (this.f56406p != null) {
            for (int i4 = 0; i4 < this.f56406p.size(); i4++) {
                j jVar = this.f56406p.get(i4);
                if (jVar.f56426c != null) {
                    jVar.f56426c.f56357a = false;
                    jVar.f56426c.b();
                }
            }
            this.f56406p.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() throws Exception {
        if (this.f56393c != 1) {
            return;
        }
        this.f56393c = 3;
        j();
        File file = this.f56409s;
        if (file != null) {
            file.delete();
            this.f56409s = null;
        }
        File file2 = this.f56407q;
        if (file2 != null && !file2.renameTo(this.f56408r)) {
            int i4 = this.f56403m + 1;
            this.f56403m = i4;
            if (i4 < 3) {
                this.f56393c = 1;
                com.tangxiaolv.telegramgallery.Utils.i.f56710c.d(new h(), 200L);
                return;
            }
            this.f56408r = this.f56407q;
        }
        this.f56397g.b(this, this.f56408r);
    }

    public void i() {
        com.tangxiaolv.telegramgallery.Utils.i.f56710c.c(new g());
    }

    public boolean k() {
        return this.f56415y;
    }

    public void m(i iVar) {
        this.f56397g = iVar;
    }

    public void n(boolean z9) {
        this.f56415y = z9;
    }

    public void o(File file, File file2) {
        this.f56413w = file;
        this.f56414x = file2;
    }

    public void p() {
        String str;
        String str2;
        int i4;
        if (this.f56393c != 0) {
            return;
        }
        int i10 = this.f56395e;
        this.f56400j = i10 >= 1048576 ? 131072 : 32768;
        this.f56401k = i10 >= 1048576 ? 2 : 4;
        this.f56405o = new ArrayList<>(this.f56401k);
        this.f56406p = new ArrayList<>(this.f56401k - 1);
        this.f56393c = 1;
        com.tangxiaolv.telegramgallery.TL.h hVar = this.f56392b;
        if (hVar == null) {
            j();
            com.tangxiaolv.telegramgallery.Utils.i.f56710c.c(new b());
            return;
        }
        String str3 = null;
        if (hVar.f56317e != 0 && hVar.f56318f != 0) {
            str = this.f56392b.f56317e + "_" + this.f56392b.f56318f + ".temp";
            str2 = this.f56392b.f56317e + "_" + this.f56392b.f56318f + "." + this.f56410t;
            if (this.f56398h != null) {
                str3 = this.f56392b.f56317e + "_" + this.f56392b.f56318f + ".iv";
            }
            int i11 = this.f56391a;
            if (i11 == Integer.MIN_VALUE || this.f56392b.f56317e == -2147483648L || i11 == 0) {
                j();
                com.tangxiaolv.telegramgallery.Utils.i.f56710c.c(new RunnableC0485c());
                return;
            }
        } else {
            str = this.f56391a + "_" + this.f56392b.f56315c + ".temp";
            str2 = this.f56391a + "_" + this.f56392b.f56315c + this.f56410t;
            if (this.f56398h != null) {
                str3 = this.f56391a + "_" + this.f56392b.f56315c + ".iv";
            }
            if (this.f56391a == 0 || this.f56392b.f56315c == 0) {
                j();
                com.tangxiaolv.telegramgallery.Utils.i.f56710c.c(new d());
                return;
            }
        }
        File file = new File(this.f56413w, str2);
        this.f56408r = file;
        if (file.exists() && (i4 = this.f56395e) != 0 && i4 != this.f56408r.length()) {
            this.f56408r.delete();
        }
        if (!this.f56408r.exists()) {
            File file2 = new File(this.f56414x, str);
            this.f56407q = file2;
            if (file2.exists()) {
                int length = (int) this.f56407q.length();
                this.f56394d = length;
                int i12 = this.f56400j;
                int i13 = (length / i12) * i12;
                this.f56394d = i13;
                this.f56404n = i13;
            }
            if (str3 != null) {
                this.f56409s = new File(this.f56414x, str3);
                try {
                    this.f56412v = new RandomAccessFile(this.f56409s, "rws");
                    long length2 = this.f56409s.length();
                    if (length2 > 0 && length2 % 32 == 0) {
                        this.f56412v.read(this.f56399i, 0, 32);
                    } else {
                        this.f56394d = 0;
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                    this.f56394d = 0;
                }
            }
            try {
                RandomAccessFile randomAccessFile = new RandomAccessFile(this.f56407q, "rws");
                this.f56411u = randomAccessFile;
                int i14 = this.f56394d;
                if (i14 != 0) {
                    randomAccessFile.seek(i14);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            if (this.f56411u == null) {
                j();
                com.tangxiaolv.telegramgallery.Utils.i.f56710c.c(new e());
                return;
            }
            com.tangxiaolv.telegramgallery.Utils.i.f56710c.c(new f());
            return;
        }
        try {
            l();
        } catch (Exception unused) {
            this.f56397g.a(this, 0);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0082 A[Catch: Exception -> 0x00bd, TryCatch #0 {Exception -> 0x00bd, blocks: (B:3:0x0006, B:5:0x000a, B:9:0x0045, B:11:0x004d, B:13:0x0051, B:14:0x005a, B:18:0x0067, B:21:0x006e, B:23:0x0079, B:25:0x0082, B:27:0x0086, B:41:0x00ad, B:42:0x00b0, B:43:0x00b5, B:32:0x0095, B:35:0x009e, B:44:0x00ba, B:22:0x0077, B:6:0x002e, B:8:0x0032), top: B:49:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00b5 A[Catch: Exception -> 0x00bd, TryCatch #0 {Exception -> 0x00bd, blocks: (B:3:0x0006, B:5:0x000a, B:9:0x0045, B:11:0x004d, B:13:0x0051, B:14:0x005a, B:18:0x0067, B:21:0x006e, B:23:0x0079, B:25:0x0082, B:27:0x0086, B:41:0x00ad, B:42:0x00b0, B:43:0x00b5, B:32:0x0095, B:35:0x009e, B:44:0x00ba, B:22:0x0077, B:6:0x002e, B:8:0x0032), top: B:49:0x0006 }] */
    /* JADX WARN: Removed duplicated region for block: B:50:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public c(com.tangxiaolv.telegramgallery.TL.b r7) {
        /*
            Method dump skipped, instructions count: 210
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tangxiaolv.telegramgallery.Utils.c.<init>(com.tangxiaolv.telegramgallery.TL.b):void");
    }
}

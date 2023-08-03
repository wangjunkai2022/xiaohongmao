package com.tangxiaolv.telegramgallery.Utils;

import android.app.ActivityManager;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.graphics.drawable.BitmapDrawable;
import android.media.ThumbnailUtils;
import android.os.AsyncTask;
import android.os.Environment;
import android.util.Log;
import com.tangxiaolv.telegramgallery.AnimatedFileDrawable;
import com.tangxiaolv.telegramgallery.TL.d;
import com.tangxiaolv.telegramgallery.TL.l;
import com.tangxiaolv.telegramgallery.Utils.d;
import io.sentry.instrumentation.file.l;
import io.sentry.protocol.y;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.RandomAccessFile;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: ImageLoader.java */
/* loaded from: classes3.dex */
public class e {

    /* renamed from: t  reason: collision with root package name */
    private static byte[] f56470t;

    /* renamed from: u  reason: collision with root package name */
    private static byte[] f56471u;

    /* renamed from: v  reason: collision with root package name */
    private static byte[] f56472v = new byte[12];

    /* renamed from: w  reason: collision with root package name */
    private static byte[] f56473w = new byte[12];

    /* renamed from: x  reason: collision with root package name */
    private static volatile e f56474x;

    /* renamed from: b  reason: collision with root package name */
    private com.tangxiaolv.telegramgallery.l f56476b;

    /* renamed from: a  reason: collision with root package name */
    private HashMap<String, Integer> f56475a = new HashMap<>();

    /* renamed from: c  reason: collision with root package name */
    private HashMap<String, j> f56477c = new HashMap<>();

    /* renamed from: d  reason: collision with root package name */
    private HashMap<String, j> f56478d = new HashMap<>();

    /* renamed from: e  reason: collision with root package name */
    private HashMap<Integer, j> f56479e = new HashMap<>();

    /* renamed from: f  reason: collision with root package name */
    private HashMap<String, n> f56480f = new HashMap<>();

    /* renamed from: g  reason: collision with root package name */
    private HashMap<Integer, String> f56481g = new HashMap<>();

    /* renamed from: h  reason: collision with root package name */
    private LinkedList<m> f56482h = new LinkedList<>();

    /* renamed from: i  reason: collision with root package name */
    private com.tangxiaolv.telegramgallery.d f56483i = new com.tangxiaolv.telegramgallery.d("cacheOutQueue");

    /* renamed from: j  reason: collision with root package name */
    private com.tangxiaolv.telegramgallery.d f56484j = new com.tangxiaolv.telegramgallery.d("cacheThumbOutQueue");

    /* renamed from: k  reason: collision with root package name */
    private com.tangxiaolv.telegramgallery.d f56485k = new com.tangxiaolv.telegramgallery.d("thumbGeneratingQueue");

    /* renamed from: l  reason: collision with root package name */
    private com.tangxiaolv.telegramgallery.d f56486l = new com.tangxiaolv.telegramgallery.d("imageLoadQueue");

    /* renamed from: m  reason: collision with root package name */
    private ConcurrentHashMap<String, Float> f56487m = new ConcurrentHashMap<>();

    /* renamed from: n  reason: collision with root package name */
    private HashMap<String, o> f56488n = new HashMap<>();

    /* renamed from: o  reason: collision with root package name */
    private String f56489o = null;

    /* renamed from: p  reason: collision with root package name */
    private volatile long f56490p = 0;

    /* renamed from: q  reason: collision with root package name */
    private int f56491q = 0;

    /* renamed from: r  reason: collision with root package name */
    private long f56492r = 0;

    /* renamed from: s  reason: collision with root package name */
    private File f56493s = null;

    /* compiled from: ImageLoader.java */
    /* loaded from: classes3.dex */
    class a extends com.tangxiaolv.telegramgallery.l {
        a(int i4) {
            super(i4);
        }

        @Override // com.tangxiaolv.telegramgallery.l
        protected void b(boolean z9, String str, BitmapDrawable bitmapDrawable, BitmapDrawable bitmapDrawable2) {
            if (e.this.f56489o == null || str == null || !e.this.f56489o.equals(str)) {
                Integer num = (Integer) e.this.f56475a.get(str);
                if (num == null || num.intValue() == 0) {
                    Bitmap bitmap = bitmapDrawable.getBitmap();
                    if (bitmap.isRecycled()) {
                        return;
                    }
                    bitmap.recycle();
                }
            }
        }

        @Override // com.tangxiaolv.telegramgallery.l
        protected int k(String str, BitmapDrawable bitmapDrawable) {
            return bitmapDrawable.getBitmap().getByteCount();
        }
    }

    /* compiled from: ImageLoader.java */
    /* loaded from: classes3.dex */
    class b implements d.f {

        /* compiled from: ImageLoader.java */
        /* loaded from: classes3.dex */
        class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ File f56496a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ String f56497b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ int f56498c;

            a(File file, String str, int i4) {
                this.f56496a = file;
                this.f56497b = str;
                this.f56498c = i4;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (com.tangxiaolv.telegramgallery.Utils.g.n().k() && e.this.f56493s != null && this.f56496a != null && ((this.f56497b.endsWith(".mp4") || this.f56497b.endsWith(".jpg")) && this.f56496a.toString().startsWith(e.this.f56493s.toString()))) {
                    com.tangxiaolv.telegramgallery.Utils.a.b(this.f56496a.toString());
                }
                com.tangxiaolv.telegramgallery.Utils.h.b().d(com.tangxiaolv.telegramgallery.Utils.h.B, this.f56497b);
                e.this.M(this.f56497b, this.f56496a, this.f56498c);
            }
        }

        /* compiled from: ImageLoader.java */
        /* renamed from: com.tangxiaolv.telegramgallery.Utils.e$b$b  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        class RunnableC0487b implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ String f56500a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ int f56501b;

            RunnableC0487b(String str, int i4) {
                this.f56500a = str;
                this.f56501b = i4;
            }

            @Override // java.lang.Runnable
            public void run() {
                e.this.L(this.f56500a, this.f56501b);
                com.tangxiaolv.telegramgallery.Utils.h.b().d(com.tangxiaolv.telegramgallery.Utils.h.C, this.f56500a, Integer.valueOf(this.f56501b));
            }
        }

        /* compiled from: ImageLoader.java */
        /* loaded from: classes3.dex */
        class c implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ String f56503a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ float f56504b;

            c(String str, float f10) {
                this.f56503a = str;
                this.f56504b = f10;
            }

            @Override // java.lang.Runnable
            public void run() {
                com.tangxiaolv.telegramgallery.Utils.h.b().d(com.tangxiaolv.telegramgallery.Utils.h.A, this.f56503a, Float.valueOf(this.f56504b));
            }
        }

        b() {
        }

        @Override // com.tangxiaolv.telegramgallery.Utils.d.f
        public void a(String str, File file, int i4) {
            e.this.f56487m.remove(str);
            com.tangxiaolv.telegramgallery.Utils.a.D(new a(file, str, i4));
        }

        @Override // com.tangxiaolv.telegramgallery.Utils.d.f
        public void b(String str, float f10) {
            e.this.f56487m.put(str, Float.valueOf(f10));
            long currentTimeMillis = System.currentTimeMillis();
            if (e.this.f56492r == 0 || e.this.f56492r < currentTimeMillis - 500) {
                e.this.f56492r = currentTimeMillis;
                com.tangxiaolv.telegramgallery.Utils.a.D(new c(str, f10));
            }
        }

        @Override // com.tangxiaolv.telegramgallery.Utils.d.f
        public void c(String str, int i4) {
            e.this.f56487m.remove(str);
            com.tangxiaolv.telegramgallery.Utils.a.D(new RunnableC0487b(str, i4));
        }
    }

    /* compiled from: ImageLoader.java */
    /* loaded from: classes3.dex */
    class c implements Runnable {

        /* compiled from: ImageLoader.java */
        /* loaded from: classes3.dex */
        class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ HashMap f56507a;

            a(HashMap hashMap) {
                this.f56507a = hashMap;
            }

            @Override // java.lang.Runnable
            public void run() {
                com.tangxiaolv.telegramgallery.Utils.d.D().N(this.f56507a);
            }
        }

        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            com.tangxiaolv.telegramgallery.Utils.a.D(new a(e.this.J()));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ImageLoader.java */
    /* loaded from: classes3.dex */
    public class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f56509a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ com.tangxiaolv.telegramgallery.k f56510b;

        d(int i4, com.tangxiaolv.telegramgallery.k kVar) {
            this.f56509a = i4;
            this.f56510b = kVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            int i4;
            j jVar;
            int i10 = this.f56509a;
            int i11 = 2;
            if (i10 == 1) {
                i4 = 0;
                i11 = 1;
            } else {
                i4 = i10 == 2 ? 1 : 0;
            }
            while (i4 < i11) {
                Integer B = this.f56510b.B(i4 == 0);
                if (i4 == 0) {
                    e.this.b0(B);
                }
                if (B != null && (jVar = (j) e.this.f56479e.get(B)) != null) {
                    jVar.b(this.f56510b);
                }
                i4++;
            }
        }
    }

    /* compiled from: ImageLoader.java */
    /* renamed from: com.tangxiaolv.telegramgallery.Utils.e$e  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    class RunnableC0488e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f56512a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f56513b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ com.tangxiaolv.telegramgallery.TL.d f56514c;

        RunnableC0488e(String str, String str2, com.tangxiaolv.telegramgallery.TL.d dVar) {
            this.f56512a = str;
            this.f56513b = str2;
            this.f56514c = dVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            e.this.e0(this.f56512a, this.f56513b, this.f56514c);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ImageLoader.java */
    /* loaded from: classes3.dex */
    public class f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f56516a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f56517b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f56518c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ Integer f56519d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ com.tangxiaolv.telegramgallery.k f56520e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ String f56521f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ boolean f56522g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ com.tangxiaolv.telegramgallery.TL.m f56523h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ boolean f56524i;

        /* renamed from: j  reason: collision with root package name */
        final /* synthetic */ int f56525j;

        /* renamed from: k  reason: collision with root package name */
        final /* synthetic */ String f56526k;

        /* renamed from: l  reason: collision with root package name */
        final /* synthetic */ String f56527l;

        f(int i4, String str, String str2, Integer num, com.tangxiaolv.telegramgallery.k kVar, String str3, boolean z9, com.tangxiaolv.telegramgallery.TL.m mVar, boolean z10, int i10, String str4, String str5) {
            this.f56516a = i4;
            this.f56517b = str;
            this.f56518c = str2;
            this.f56519d = num;
            this.f56520e = kVar;
            this.f56521f = str3;
            this.f56522g = z9;
            this.f56523h = mVar;
            this.f56524i = z10;
            this.f56525j = i10;
            this.f56526k = str4;
            this.f56527l = str5;
        }

        /* JADX WARN: Code restructure failed: missing block: B:42:0x00e2, code lost:
            if (r6.exists() == false) goto L96;
         */
        /* JADX WARN: Removed duplicated region for block: B:104:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:47:0x00ea  */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void run() {
            /*
                Method dump skipped, instructions count: 584
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.tangxiaolv.telegramgallery.Utils.e.f.run():void");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ImageLoader.java */
    /* loaded from: classes3.dex */
    public class g implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f56529a;

        g(String str) {
            this.f56529a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            j jVar = (j) e.this.f56477c.get(this.f56529a);
            if (jVar == null) {
                return;
            }
            m mVar = jVar.f56547k;
            jVar.f56547k = new m(mVar.f56569a, mVar.f56571c);
            e.this.f56482h.add(jVar.f56547k);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ImageLoader.java */
    /* loaded from: classes3.dex */
    public class h implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f56531a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f56532b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ File f56533c;

        h(String str, int i4, File file) {
            this.f56531a = str;
            this.f56532b = i4;
            this.f56533c = file;
        }

        @Override // java.lang.Runnable
        public void run() {
            n nVar = (n) e.this.f56480f.get(this.f56531a);
            if (nVar != null) {
                e.this.O(this.f56532b, this.f56533c, nVar.f56585b, nVar.f56586c);
                e.this.f56480f.remove(this.f56531a);
            }
            j jVar = (j) e.this.f56477c.get(this.f56531a);
            if (jVar == null) {
                return;
            }
            e.this.f56477c.remove(this.f56531a);
            k kVar = null;
            for (int i4 = 0; i4 < jVar.f56549m.size(); i4++) {
                com.tangxiaolv.telegramgallery.k kVar2 = jVar.f56549m.get(i4);
                j jVar2 = (j) e.this.f56478d.get(jVar.f56537a);
                if (jVar2 == null) {
                    jVar2 = new j(e.this, null);
                    jVar2.f56543g = this.f56533c;
                    jVar2.f56537a = jVar.f56537a;
                    jVar2.f56546j = jVar.f56546j;
                    jVar2.f56545i = jVar.f56545i;
                    jVar2.f56540d = jVar.f56540d;
                    kVar = new k(jVar2);
                    jVar2.f56548l = kVar;
                    jVar2.f56539c = jVar.f56539c;
                    jVar2.f56542f = jVar.f56542f;
                    e.this.f56478d.put(jVar2.f56537a, jVar2);
                }
                jVar2.a(kVar2);
            }
            if (kVar != null) {
                if (jVar.f56545i) {
                    e.this.f56484j.c(kVar);
                } else {
                    e.this.f56483i.c(kVar);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ImageLoader.java */
    /* loaded from: classes3.dex */
    public class i implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f56535a;

        i(String str) {
            this.f56535a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            j jVar = (j) e.this.f56477c.get(this.f56535a);
            if (jVar != null) {
                jVar.c(null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ImageLoader.java */
    /* loaded from: classes3.dex */
    public class k implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private Thread f56554a;

        /* renamed from: b  reason: collision with root package name */
        private final Object f56555b = new Object();

        /* renamed from: c  reason: collision with root package name */
        private j f56556c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f56557d;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: ImageLoader.java */
        /* loaded from: classes3.dex */
        public class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ BitmapDrawable f56559a;

            /* compiled from: ImageLoader.java */
            /* renamed from: com.tangxiaolv.telegramgallery.Utils.e$k$a$a  reason: collision with other inner class name */
            /* loaded from: classes3.dex */
            class RunnableC0489a implements Runnable {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ BitmapDrawable f56561a;

                RunnableC0489a(BitmapDrawable bitmapDrawable) {
                    this.f56561a = bitmapDrawable;
                }

                @Override // java.lang.Runnable
                public void run() {
                    k.this.f56556c.c(this.f56561a);
                }
            }

            a(BitmapDrawable bitmapDrawable) {
                this.f56559a = bitmapDrawable;
            }

            @Override // java.lang.Runnable
            public void run() {
                BitmapDrawable bitmapDrawable = this.f56559a;
                if (!(bitmapDrawable instanceof AnimatedFileDrawable)) {
                    if (bitmapDrawable != null) {
                        bitmapDrawable = e.this.f56476b.d(k.this.f56556c.f56537a);
                        if (bitmapDrawable == null) {
                            e.this.f56476b.g(k.this.f56556c.f56537a, this.f56559a);
                            bitmapDrawable = this.f56559a;
                        } else {
                            this.f56559a.getBitmap().recycle();
                        }
                    } else {
                        bitmapDrawable = null;
                    }
                }
                e.this.f56486l.c(new RunnableC0489a(bitmapDrawable));
            }
        }

        public k(j jVar) {
            this.f56556c = jVar;
        }

        private void c(BitmapDrawable bitmapDrawable) {
            com.tangxiaolv.telegramgallery.Utils.a.D(new a(bitmapDrawable));
        }

        public void b() {
            synchronized (this.f56555b) {
                try {
                    this.f56557d = true;
                    Thread thread = this.f56554a;
                    if (thread != null) {
                        thread.interrupt();
                    }
                } catch (Exception unused) {
                }
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:106:0x018c, code lost:
            if (r16.f56556c.f56546j.startsWith("http") == false) goto L215;
         */
        /* JADX WARN: Removed duplicated region for block: B:111:0x0197  */
        /* JADX WARN: Removed duplicated region for block: B:118:0x01be A[Catch: all -> 0x0351, TRY_ENTER, TryCatch #3 {all -> 0x0354, blocks: (B:90:0x0127, B:92:0x012b, B:94:0x0133, B:96:0x0141, B:113:0x019a, B:115:0x01a4, B:116:0x01b2, B:117:0x01bd, B:123:0x01c5, B:125:0x01d3, B:127:0x01dc, B:129:0x01f3, B:133:0x0205, B:136:0x020b, B:137:0x0219, B:139:0x0228, B:99:0x0154, B:101:0x0160, B:103:0x016e, B:105:0x0182, B:118:0x01be, B:120:0x01c2, B:122:0x01c4), top: B:231:0x0127 }] */
        /* JADX WARN: Removed duplicated region for block: B:164:0x027b  */
        /* JADX WARN: Removed duplicated region for block: B:167:0x029d  */
        /* JADX WARN: Removed duplicated region for block: B:169:0x02a0 A[Catch: all -> 0x02f9, TryCatch #5 {all -> 0x02f9, blocks: (B:141:0x0238, B:144:0x024c, B:147:0x0257, B:148:0x0259, B:154:0x0261, B:157:0x0269, B:160:0x026e, B:162:0x0277, B:165:0x027d, B:169:0x02a0, B:171:0x02a4, B:173:0x02b6, B:175:0x02bd, B:178:0x02c5, B:179:0x02ca, B:180:0x02d2, B:183:0x02e6, B:185:0x02f0, B:187:0x02f6, B:189:0x02fb, B:191:0x0301, B:197:0x0318, B:199:0x031f, B:201:0x032b, B:208:0x033d, B:211:0x0346, B:213:0x034a, B:166:0x028d, B:161:0x0273, B:140:0x0235, B:149:0x025a, B:151:0x025e, B:153:0x0260), top: B:233:0x0235 }] */
        /* JADX WARN: Removed duplicated region for block: B:182:0x02e4  */
        /* JADX WARN: Removed duplicated region for block: B:189:0x02fb A[Catch: all -> 0x02f9, TryCatch #5 {all -> 0x02f9, blocks: (B:141:0x0238, B:144:0x024c, B:147:0x0257, B:148:0x0259, B:154:0x0261, B:157:0x0269, B:160:0x026e, B:162:0x0277, B:165:0x027d, B:169:0x02a0, B:171:0x02a4, B:173:0x02b6, B:175:0x02bd, B:178:0x02c5, B:179:0x02ca, B:180:0x02d2, B:183:0x02e6, B:185:0x02f0, B:187:0x02f6, B:189:0x02fb, B:191:0x0301, B:197:0x0318, B:199:0x031f, B:201:0x032b, B:208:0x033d, B:211:0x0346, B:213:0x034a, B:166:0x028d, B:161:0x0273, B:140:0x0235, B:149:0x025a, B:151:0x025e, B:153:0x0260), top: B:233:0x0235 }] */
        /* JADX WARN: Removed duplicated region for block: B:224:0x035a  */
        /* JADX WARN: Removed duplicated region for block: B:44:0x008b A[Catch: all -> 0x011c, TRY_ENTER, TryCatch #9 {all -> 0x011f, blocks: (B:42:0x007f, B:43:0x008a, B:49:0x0092, B:51:0x009d, B:53:0x00af, B:55:0x00b6, B:58:0x00be, B:59:0x00c3, B:60:0x00cb, B:44:0x008b, B:46:0x008f, B:48:0x0091), top: B:236:0x007f }] */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void run() {
            /*
                Method dump skipped, instructions count: 870
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.tangxiaolv.telegramgallery.Utils.e.k.run():void");
        }
    }

    /* compiled from: ImageLoader.java */
    /* loaded from: classes3.dex */
    private class l extends AsyncTask<Void, Void, Boolean> {

        /* renamed from: a  reason: collision with root package name */
        private String f56563a;

        /* renamed from: b  reason: collision with root package name */
        private File f56564b;

        /* renamed from: c  reason: collision with root package name */
        private String f56565c;

        /* renamed from: d  reason: collision with root package name */
        private RandomAccessFile f56566d = null;

        /* renamed from: e  reason: collision with root package name */
        private boolean f56567e = true;

        public l(String str, File file, String str2) {
            this.f56563a = str;
            this.f56564b = file;
            this.f56565c = str2;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Code restructure failed: missing block: B:52:0x00c3, code lost:
            if (r1 == (-1)) goto L34;
         */
        /* JADX WARN: Removed duplicated region for block: B:28:0x008a  */
        /* JADX WARN: Removed duplicated region for block: B:62:0x00d5 A[Catch: all -> 0x00db, TRY_LEAVE, TryCatch #5 {all -> 0x00db, blocks: (B:60:0x00d1, B:62:0x00d5), top: B:83:0x00d1 }] */
        /* JADX WARN: Removed duplicated region for block: B:75:0x00e1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        @Override // android.os.AsyncTask
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public java.lang.Boolean doInBackground(java.lang.Void... r12) {
            /*
                Method dump skipped, instructions count: 238
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.tangxiaolv.telegramgallery.Utils.e.l.doInBackground(java.lang.Void[]):java.lang.Boolean");
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: b */
        public void onPostExecute(Boolean bool) {
        }

        @Override // android.os.AsyncTask
        protected void onCancelled() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ImageLoader.java */
    /* loaded from: classes3.dex */
    public class m extends AsyncTask<Void, Void, Boolean> {

        /* renamed from: a  reason: collision with root package name */
        private j f56569a;

        /* renamed from: c  reason: collision with root package name */
        private int f56571c;

        /* renamed from: d  reason: collision with root package name */
        private long f56572d;

        /* renamed from: b  reason: collision with root package name */
        private RandomAccessFile f56570b = null;

        /* renamed from: e  reason: collision with root package name */
        private boolean f56573e = true;

        /* renamed from: f  reason: collision with root package name */
        private URLConnection f56574f = null;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: ImageLoader.java */
        /* loaded from: classes3.dex */
        public class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ float f56576a;

            /* compiled from: ImageLoader.java */
            /* renamed from: com.tangxiaolv.telegramgallery.Utils.e$m$a$a  reason: collision with other inner class name */
            /* loaded from: classes3.dex */
            class RunnableC0490a implements Runnable {
                RunnableC0490a() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    com.tangxiaolv.telegramgallery.Utils.h.b().d(com.tangxiaolv.telegramgallery.Utils.h.A, m.this.f56569a.f56538b, Float.valueOf(a.this.f56576a));
                }
            }

            a(float f10) {
                this.f56576a = f10;
            }

            @Override // java.lang.Runnable
            public void run() {
                e.this.f56487m.put(m.this.f56569a.f56538b, Float.valueOf(this.f56576a));
                com.tangxiaolv.telegramgallery.Utils.a.D(new RunnableC0490a());
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: ImageLoader.java */
        /* loaded from: classes3.dex */
        public class b implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Boolean f56579a;

            /* compiled from: ImageLoader.java */
            /* loaded from: classes3.dex */
            class a implements Runnable {
                a() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    if (b.this.f56579a.booleanValue()) {
                        com.tangxiaolv.telegramgallery.Utils.h.b().d(com.tangxiaolv.telegramgallery.Utils.h.B, m.this.f56569a.f56538b);
                    } else {
                        com.tangxiaolv.telegramgallery.Utils.h.b().d(com.tangxiaolv.telegramgallery.Utils.h.C, m.this.f56569a.f56538b, 2);
                    }
                }
            }

            b(Boolean bool) {
                this.f56579a = bool;
            }

            @Override // java.lang.Runnable
            public void run() {
                e.this.f56487m.remove(m.this.f56569a.f56538b);
                com.tangxiaolv.telegramgallery.Utils.a.D(new a());
            }
        }

        /* compiled from: ImageLoader.java */
        /* loaded from: classes3.dex */
        class c implements Runnable {

            /* compiled from: ImageLoader.java */
            /* loaded from: classes3.dex */
            class a implements Runnable {
                a() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    com.tangxiaolv.telegramgallery.Utils.h.b().d(com.tangxiaolv.telegramgallery.Utils.h.C, m.this.f56569a.f56538b, 1);
                }
            }

            c() {
            }

            @Override // java.lang.Runnable
            public void run() {
                e.this.f56487m.remove(m.this.f56569a.f56538b);
                com.tangxiaolv.telegramgallery.Utils.a.D(new a());
            }
        }

        public m(j jVar, int i4) {
            this.f56569a = jVar;
            this.f56571c = i4;
        }

        private void e(float f10) {
            long currentTimeMillis = System.currentTimeMillis();
            if (f10 != 1.0f) {
                long j4 = this.f56572d;
                if (j4 != 0 && j4 >= currentTimeMillis - 500) {
                    return;
                }
            }
            this.f56572d = currentTimeMillis;
            com.tangxiaolv.telegramgallery.Utils.i.f56710c.c(new a(f10));
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't wrap try/catch for region: R(13:1|(5:98|99|(1:101)|102|(12:104|106|107|4|(6:6|7|(1:17)|19|(3:23|24|(1:32))|(5:37|38|39|(2:40|(1:72)(3:42|43|(3:45|(3:47|48|49)(1:51)|50)(1:52)))|56))|76|77|(1:79)|(2:91|92)|(1:87)|88|89))|3|4|(0)|76|77|(0)|(0)|(3:83|85|87)|88|89|(1:(0))) */
        /* JADX WARN: Code restructure failed: missing block: B:73:0x010c, code lost:
            if (r5 != (-1)) goto L55;
         */
        /* JADX WARN: Code restructure failed: missing block: B:75:0x0110, code lost:
            if (r8.f56571c == 0) goto L56;
         */
        /* JADX WARN: Code restructure failed: missing block: B:76:0x0112, code lost:
            e(1.0f);
         */
        /* JADX WARN: Code restructure failed: missing block: B:78:0x0118, code lost:
            r2 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:79:0x0119, code lost:
            r0 = r2;
            r2 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:80:0x011c, code lost:
            r2 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:81:0x011d, code lost:
            r0 = r2;
            r2 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:82:0x0120, code lost:
            r0 = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:84:0x0123, code lost:
            r0.printStackTrace();
         */
        /* JADX WARN: Code restructure failed: missing block: B:85:0x0126, code lost:
            r0 = r2;
         */
        /* JADX WARN: Code restructure failed: missing block: B:88:0x012a, code lost:
            r0.printStackTrace();
         */
        /* JADX WARN: Code restructure failed: missing block: B:93:0x0137, code lost:
            r0 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:94:0x0138, code lost:
            r0.printStackTrace();
         */
        /* JADX WARN: Removed duplicated region for block: B:101:0x0147  */
        /* JADX WARN: Removed duplicated region for block: B:108:0x013d A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:110:0x0090 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:91:0x0131 A[Catch: all -> 0x0137, TRY_LEAVE, TryCatch #4 {all -> 0x0137, blocks: (B:89:0x012d, B:91:0x0131), top: B:114:0x012d }] */
        @Override // android.os.AsyncTask
        /* renamed from: c */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public java.lang.Boolean doInBackground(java.lang.Void... r9) {
            /*
                Method dump skipped, instructions count: 352
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.tangxiaolv.telegramgallery.Utils.e.m.doInBackground(java.lang.Void[]):java.lang.Boolean");
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: d */
        public void onPostExecute(Boolean bool) {
            if (!bool.booleanValue() && this.f56573e) {
                e.this.U(this.f56569a.f56538b);
            } else {
                e eVar = e.this;
                j jVar = this.f56569a;
                eVar.M(jVar.f56538b, jVar.f56543g, 0);
            }
            com.tangxiaolv.telegramgallery.Utils.i.f56710c.c(new b(bool));
        }

        @Override // android.os.AsyncTask
        protected void onCancelled() {
            com.tangxiaolv.telegramgallery.Utils.i.f56710c.c(new c());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ImageLoader.java */
    /* loaded from: classes3.dex */
    public class n {

        /* renamed from: a  reason: collision with root package name */
        private int f56584a;

        /* renamed from: b  reason: collision with root package name */
        private com.tangxiaolv.telegramgallery.TL.d f56585b;

        /* renamed from: c  reason: collision with root package name */
        private String f56586c;

        private n() {
        }

        static /* synthetic */ int b(n nVar) {
            int i4 = nVar.f56584a;
            nVar.f56584a = i4 - 1;
            return i4;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ImageLoader.java */
    /* loaded from: classes3.dex */
    public class o implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private File f56588a;

        /* renamed from: b  reason: collision with root package name */
        private int f56589b;

        /* renamed from: c  reason: collision with root package name */
        private com.tangxiaolv.telegramgallery.TL.d f56590c;

        /* renamed from: d  reason: collision with root package name */
        private String f56591d;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: ImageLoader.java */
        /* loaded from: classes3.dex */
        public class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ String f56593a;

            a(String str) {
                this.f56593a = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                e.this.f56488n.remove(this.f56593a);
            }
        }

        /* compiled from: ImageLoader.java */
        /* loaded from: classes3.dex */
        class b implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ String f56595a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ BitmapDrawable f56596b;

            b(String str, BitmapDrawable bitmapDrawable) {
                this.f56595a = str;
                this.f56596b = bitmapDrawable;
            }

            @Override // java.lang.Runnable
            public void run() {
                o.this.c();
                String str = this.f56595a;
                if (o.this.f56591d != null) {
                    str = str + "@" + o.this.f56591d;
                }
                com.tangxiaolv.telegramgallery.Utils.h.b().d(com.tangxiaolv.telegramgallery.Utils.h.f56693v, this.f56596b, str);
                e.this.f56476b.g(str, this.f56596b);
            }
        }

        public o(int i4, File file, com.tangxiaolv.telegramgallery.TL.d dVar, String str) {
            this.f56589b = i4;
            this.f56588a = file;
            this.f56590c = dVar;
            this.f56591d = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void c() {
            com.tangxiaolv.telegramgallery.TL.d dVar = this.f56590c;
            if (dVar == null) {
                return;
            }
            e.this.f56486l.c(new a(com.tangxiaolv.telegramgallery.Utils.d.v(dVar)));
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (this.f56590c == null) {
                    c();
                    return;
                }
                String str = this.f56590c.f56288d + "_" + this.f56590c.f56289e;
                File file = new File(com.tangxiaolv.telegramgallery.Utils.d.D().z(4), "q_" + str + ".jpg");
                if (!file.exists() && this.f56588a.exists()) {
                    Point point = com.tangxiaolv.telegramgallery.Utils.a.f56375d;
                    int min = Math.min((int) com.facebook.imagepipeline.common.e.f12205e, Math.min(point.x, point.y) / 4);
                    int i4 = this.f56589b;
                    Bitmap bitmap = null;
                    if (i4 == 0) {
                        float f10 = min;
                        bitmap = e.X(this.f56588a.toString(), null, f10, f10, false);
                    } else if (i4 == 2) {
                        bitmap = ThumbnailUtils.createVideoThumbnail(this.f56588a.toString(), 1);
                    } else if (i4 == 3) {
                        String lowerCase = this.f56588a.toString().toLowerCase();
                        if (!lowerCase.endsWith(".jpg") && !lowerCase.endsWith(".jpeg") && !lowerCase.endsWith(".png") && !lowerCase.endsWith(".gif")) {
                            c();
                            return;
                        } else {
                            float f11 = min;
                            bitmap = e.X(lowerCase, null, f11, f11, false);
                        }
                    }
                    if (bitmap == null) {
                        c();
                        return;
                    }
                    int width = bitmap.getWidth();
                    int height = bitmap.getHeight();
                    if (width != 0 && height != 0) {
                        float f12 = width;
                        float f13 = min;
                        float f14 = height;
                        float min2 = Math.min(f12 / f13, f14 / f13);
                        Bitmap f15 = com.tangxiaolv.telegramgallery.Utils.b.f(bitmap, (int) (f12 / min2), (int) (f14 / min2), true);
                        if (f15 != bitmap) {
                            bitmap.recycle();
                        }
                        FileOutputStream a10 = l.b.a(new FileOutputStream(file), file);
                        f15.compress(Bitmap.CompressFormat.JPEG, 60, a10);
                        try {
                            a10.close();
                        } catch (Exception e4) {
                            e4.printStackTrace();
                        }
                        com.tangxiaolv.telegramgallery.Utils.a.D(new b(str, new BitmapDrawable(f15)));
                        return;
                    }
                    c();
                    return;
                }
                c();
            } catch (Throwable th) {
                th.printStackTrace();
                c();
            }
        }
    }

    public e() {
        this.f56483i.setPriority(1);
        this.f56484j.setPriority(1);
        this.f56485k.setPriority(1);
        this.f56486l.setPriority(1);
        this.f56476b = new a(Math.min(15, ((ActivityManager) com.tangxiaolv.telegramgallery.e.f56717a.getSystemService("activity")).getMemoryClass() / 7) * 1024 * 1024);
        com.tangxiaolv.telegramgallery.Utils.d.D().M(new b());
        HashMap<Integer, File> hashMap = new HashMap<>();
        File i4 = com.tangxiaolv.telegramgallery.Utils.a.i();
        if (!i4.isDirectory()) {
            try {
                i4.mkdirs();
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
        try {
            new File(i4, ".nomedia").createNewFile();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        hashMap.put(4, i4);
        com.tangxiaolv.telegramgallery.Utils.d.D().N(hashMap);
    }

    private boolean E(File file, File file2, int i4) {
        File file3;
        File file4;
        RandomAccessFile randomAccessFile = null;
        try {
            try {
                if (i4 == 0) {
                    file4 = new File(file, "000000000_999999_temp.jpg");
                    file3 = new File(file2, "000000000_999999.jpg");
                } else if (i4 == 3) {
                    file4 = new File(file, "000000000_999999_temp.doc");
                    file3 = new File(file2, "000000000_999999.doc");
                } else if (i4 == 1) {
                    file4 = new File(file, "000000000_999999_temp.ogg");
                    file3 = new File(file2, "000000000_999999.ogg");
                } else if (i4 == 2) {
                    file4 = new File(file, "000000000_999999_temp.mp4");
                    file3 = new File(file2, "000000000_999999.mp4");
                } else {
                    file3 = null;
                    file4 = null;
                }
                byte[] bArr = new byte[1024];
                file4.createNewFile();
                RandomAccessFile randomAccessFile2 = new RandomAccessFile(file4, "rws");
                try {
                    randomAccessFile2.write(bArr);
                    randomAccessFile2.close();
                    boolean renameTo = file4.renameTo(file3);
                    file4.delete();
                    file3.delete();
                    return renameTo;
                } catch (Exception e4) {
                    e = e4;
                    randomAccessFile = randomAccessFile2;
                    e.printStackTrace();
                    if (randomAccessFile != null) {
                        try {
                            randomAccessFile.close();
                            return false;
                        } catch (Exception e10) {
                            e10.printStackTrace();
                            return false;
                        }
                    }
                    return false;
                } catch (Throwable th) {
                    th = th;
                    randomAccessFile = randomAccessFile2;
                    if (randomAccessFile != null) {
                        try {
                            randomAccessFile.close();
                        } catch (Exception e11) {
                            e11.printStackTrace();
                        }
                    }
                    throw th;
                }
            } catch (Exception e12) {
                e = e12;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private void I(com.tangxiaolv.telegramgallery.k kVar, String str, String str2, String str3, com.tangxiaolv.telegramgallery.TL.m mVar, String str4, String str5, int i4, boolean z9, int i10) {
        if (kVar == null || str2 == null || str == null) {
            return;
        }
        Integer B = kVar.B(i10 != 0);
        if (B == null) {
            B = Integer.valueOf(this.f56491q);
            kVar.p0(B, i10 != 0);
            int i11 = this.f56491q + 1;
            this.f56491q = i11;
            if (i11 == Integer.MAX_VALUE) {
                this.f56491q = 0;
            }
        }
        boolean M = kVar.M();
        kVar.N();
        this.f56486l.c(new f(i10, str2, str, B, kVar, str4, M, mVar, z9, i4, str5, str3));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void L(String str, int i4) {
        if (i4 == 1) {
            return;
        }
        this.f56486l.c(new i(str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void M(String str, File file, int i4) {
        this.f56486l.c(new h(str, i4, file));
    }

    public static void N(com.tangxiaolv.telegramgallery.TL.l lVar) {
        if (lVar == null || lVar.f56351h != null) {
            return;
        }
        try {
            RandomAccessFile randomAccessFile = new RandomAccessFile(com.tangxiaolv.telegramgallery.Utils.d.G(lVar, true), "r");
            if (((int) randomAccessFile.length()) < 20000) {
                byte[] bArr = new byte[(int) randomAccessFile.length()];
                lVar.f56351h = bArr;
                randomAccessFile.readFully(bArr, 0, bArr.length);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void O(int i4, File file, com.tangxiaolv.telegramgallery.TL.d dVar, String str) {
        if ((i4 != 0 && i4 != 2 && i4 != 3) || file == null || dVar == null) {
            return;
        }
        if (this.f56488n.get(com.tangxiaolv.telegramgallery.Utils.d.v(dVar)) == null) {
            this.f56485k.c(new o(i4, file, dVar, str));
        }
    }

    public static String Q(String str, String str2) {
        int lastIndexOf = str.lastIndexOf(46);
        String substring = lastIndexOf != -1 ? str.substring(lastIndexOf + 1) : null;
        return (substring == null || substring.length() == 0 || substring.length() > 4) ? str2 : substring;
    }

    public static e T() {
        e eVar = f56474x;
        if (eVar == null) {
            synchronized (e.class) {
                eVar = f56474x;
                if (eVar == null) {
                    eVar = new e();
                    f56474x = eVar;
                }
            }
        }
        return eVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void U(String str) {
        this.f56486l.c(new g(str));
    }

    /* JADX WARN: Removed duplicated region for block: B:146:0x00e6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:155:0x0147 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:164:0x00ae A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x00e3  */
    /* JADX WARN: Type inference failed for: r2v0, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v2, types: [android.graphics.Bitmap] */
    /* JADX WARN: Type inference failed for: r2v21 */
    /* JADX WARN: Type inference failed for: r2v22 */
    /* JADX WARN: Type inference failed for: r2v23 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:122:0x0177 -> B:154:0x018d). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static android.graphics.Bitmap X(java.lang.String r11, android.net.Uri r12, float r13, float r14, boolean r15) {
        /*
            Method dump skipped, instructions count: 398
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tangxiaolv.telegramgallery.Utils.e.X(java.lang.String, android.net.Uri, float, float, boolean):android.graphics.Bitmap");
    }

    private void Z(String str, String str2) {
        BitmapDrawable d4 = this.f56476b.d(str);
        if (d4 != null) {
            this.f56489o = str;
            this.f56476b.h(str);
            this.f56476b.g(str2, d4);
            this.f56489o = null;
        }
        Integer num = this.f56475a.get(str);
        if (num != null) {
            this.f56475a.put(str2, num);
            this.f56475a.remove(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b0(Integer num) {
        String str = this.f56481g.get(num);
        if (str != null) {
            n nVar = this.f56480f.get(str);
            if (nVar != null) {
                n.b(nVar);
                if (nVar.f56584a == 0) {
                    this.f56480f.remove(str);
                }
            }
            this.f56481g.remove(num);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e0(String str, String str2, com.tangxiaolv.telegramgallery.TL.d dVar) {
        ArrayList<String> e4 = this.f56476b.e(str);
        if (e4 != null) {
            for (int i4 = 0; i4 < e4.size(); i4++) {
                String str3 = e4.get(i4);
                String str4 = str + "@" + str3;
                String str5 = str2 + "@" + str3;
                Z(str4, str5);
                com.tangxiaolv.telegramgallery.Utils.h.b().d(com.tangxiaolv.telegramgallery.Utils.h.f56689r, str4, str5, dVar);
            }
            return;
        }
        Z(str, str2);
        com.tangxiaolv.telegramgallery.Utils.h.b().d(com.tangxiaolv.telegramgallery.Utils.h.f56689r, str, str2, dVar);
    }

    public static com.tangxiaolv.telegramgallery.TL.l f0(Bitmap bitmap, float f10, float f11, int i4, boolean z9) {
        return g0(bitmap, f10, f11, i4, z9, 0, 0);
    }

    public static com.tangxiaolv.telegramgallery.TL.l g0(Bitmap bitmap, float f10, float f11, int i4, boolean z9, int i10, int i11) {
        float f12;
        boolean z10;
        float f13;
        int i12;
        float max;
        if (bitmap == null) {
            return null;
        }
        float width = bitmap.getWidth();
        float height = bitmap.getHeight();
        if (width != 0.0f && height != 0.0f) {
            float max2 = Math.max(width / f10, height / f11);
            if (i10 == 0 || i11 == 0 || (width >= i10 && height >= i11)) {
                f12 = max2;
                z10 = false;
            } else {
                if (i12 >= 0 || height <= i11) {
                    if (width > f13) {
                        float f14 = i11;
                        if (height < f14) {
                            max = height / f14;
                        }
                    }
                    max = Math.max(width / f13, height / i11);
                } else {
                    max = width / f13;
                }
                f12 = max;
                z10 = true;
            }
            int i13 = (int) (width / f12);
            int i14 = (int) (height / f12);
            if (i14 != 0 && i13 != 0) {
                try {
                    return h0(bitmap, i13, i14, width, height, f12, i4, z9, z10);
                } catch (Throwable th) {
                    th.printStackTrace();
                    T().H();
                    System.gc();
                    try {
                        return h0(bitmap, i13, i14, width, height, f12, i4, z9, z10);
                    } catch (Throwable th2) {
                        th2.printStackTrace();
                    }
                }
            }
        }
        return null;
    }

    private static com.tangxiaolv.telegramgallery.TL.l h0(Bitmap bitmap, int i4, int i10, float f10, float f11, float f12, int i11, boolean z9, boolean z10) throws Exception {
        Bitmap f13 = (f12 > 1.0f || z10) ? com.tangxiaolv.telegramgallery.Utils.b.f(bitmap, i4, i10, true) : bitmap;
        d.b bVar = new d.b();
        bVar.f56288d = bitmap.getGenerationId() - 2147483648;
        bVar.f56287c = Integer.MIN_VALUE;
        l.b bVar2 = new l.b();
        bVar2.f56347d = bVar;
        bVar2.f56348e = f13.getWidth();
        int height = f13.getHeight();
        bVar2.f56349f = height;
        int i12 = bVar2.f56348e;
        if (i12 <= 100 && height <= 100) {
            bVar2.f56346c = "s";
        } else if (i12 <= 320 && height <= 320) {
            bVar2.f56346c = "m";
        } else if (i12 <= 800 && height <= 800) {
            bVar2.f56346c = y.b.f83919g;
        } else if (i12 <= 1280 && height <= 1280) {
            bVar2.f56346c = y.b.f83920h;
        } else {
            bVar2.f56346c = "w";
        }
        File file = new File(com.tangxiaolv.telegramgallery.Utils.d.D().z(4), bVar.f56288d + "_" + bVar.f56289e + ".jpg");
        bVar2.f56352i = file.getAbsolutePath();
        FileOutputStream a10 = l.b.a(new FileOutputStream(file), file);
        f13.compress(Bitmap.CompressFormat.JPEG, i11, a10);
        if (z9) {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            f13.compress(Bitmap.CompressFormat.JPEG, i11, byteArrayOutputStream);
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            bVar2.f56351h = byteArray;
            bVar2.f56350g = byteArray.length;
            byteArrayOutputStream.close();
        } else {
            bVar2.f56350g = (int) a10.getChannel().size();
        }
        a10.close();
        if (f13 != bitmap) {
            f13.recycle();
        }
        return bVar2;
    }

    public void F(com.tangxiaolv.telegramgallery.k kVar, int i4) {
        if (kVar == null) {
            return;
        }
        this.f56486l.c(new d(i4, kVar));
    }

    public void G() {
        this.f56483i.c(new c());
    }

    public void H() {
        this.f56476b.c();
    }

    public HashMap<Integer, File> J() {
        HashMap<Integer, File> hashMap = new HashMap<>();
        File i4 = com.tangxiaolv.telegramgallery.Utils.a.i();
        if (!i4.isDirectory()) {
            try {
                i4.mkdirs();
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
        try {
            new File(i4, ".nomedia").createNewFile();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        hashMap.put(4, i4);
        Log.e("tmessages", "cache path = " + i4);
        try {
            if ("mounted".equals(Environment.getExternalStorageState())) {
                File file = new File(Environment.getExternalStorageDirectory(), "Telegram");
                this.f56493s = file;
                file.mkdirs();
                if (this.f56493s.isDirectory()) {
                    try {
                        File file2 = new File(this.f56493s, "Telegram Images");
                        file2.mkdir();
                        if (file2.isDirectory() && E(i4, file2, 0)) {
                            hashMap.put(0, file2);
                            Log.e("tmessages", "image path = " + file2);
                        }
                    } catch (Exception e11) {
                        e11.printStackTrace();
                    }
                    try {
                        File file3 = new File(this.f56493s, "Telegram Video");
                        file3.mkdir();
                        if (file3.isDirectory() && E(i4, file3, 2)) {
                            hashMap.put(2, file3);
                            Log.e("tmessages", "video path = " + file3);
                        }
                    } catch (Exception e12) {
                        e12.printStackTrace();
                    }
                    try {
                        File file4 = new File(this.f56493s, "Telegram Audio");
                        file4.mkdir();
                        if (file4.isDirectory() && E(i4, file4, 1)) {
                            new File(file4, ".nomedia").createNewFile();
                            hashMap.put(1, file4);
                            Log.e("tmessages", "audio path = " + file4);
                        }
                    } catch (Exception e13) {
                        e13.printStackTrace();
                    }
                    try {
                        File file5 = new File(this.f56493s, "Telegram Documents");
                        file5.mkdir();
                        if (file5.isDirectory() && E(i4, file5, 3)) {
                            new File(file5, ".nomedia").createNewFile();
                            hashMap.put(3, file5);
                            Log.e("tmessages", "documents path = " + file5);
                        }
                    } catch (Exception e14) {
                        e14.printStackTrace();
                    }
                }
            } else {
                Log.e("tmessages", "this Android can't rename files");
            }
            com.tangxiaolv.telegramgallery.Utils.g.n().l();
        } catch (Exception e15) {
            e15.printStackTrace();
        }
        return hashMap;
    }

    public boolean K(String str) {
        Integer num = this.f56475a.get(str);
        if (num == null) {
            return true;
        }
        if (num.intValue() == 1) {
            this.f56475a.remove(str);
            return true;
        }
        this.f56475a.put(str, Integer.valueOf(num.intValue() - 1));
        return false;
    }

    public Float P(String str) {
        if (str == null) {
            return null;
        }
        return this.f56487m.get(str);
    }

    public BitmapDrawable R(com.tangxiaolv.telegramgallery.TL.m mVar, String str, String str2) {
        String str3 = null;
        if (mVar == null && str == null) {
            return null;
        }
        if (str != null) {
            str3 = com.tangxiaolv.telegramgallery.Utils.i.a(str);
        } else if (mVar instanceof com.tangxiaolv.telegramgallery.TL.d) {
            com.tangxiaolv.telegramgallery.TL.d dVar = (com.tangxiaolv.telegramgallery.TL.d) mVar;
            str3 = dVar.f56288d + "_" + dVar.f56289e;
        } else if (mVar instanceof com.tangxiaolv.telegramgallery.TL.b) {
            com.tangxiaolv.telegramgallery.TL.b bVar = (com.tangxiaolv.telegramgallery.TL.b) mVar;
            str3 = bVar.f56256k + "_" + bVar.f56248c;
        }
        if (str2 != null) {
            str3 = str3 + "@" + str2;
        }
        return this.f56476b.d(str3);
    }

    public BitmapDrawable S(String str) {
        return this.f56476b.d(str);
    }

    public void V(String str) {
        Integer num = this.f56475a.get(str);
        if (num == null) {
            this.f56475a.put(str, 1);
        } else {
            this.f56475a.put(str, Integer.valueOf(num.intValue() + 1));
        }
    }

    public boolean W(String str) {
        return this.f56476b.d(str) != null;
    }

    /* JADX WARN: Removed duplicated region for block: B:73:0x0150  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x017a  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x01bd  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x01e7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void Y(com.tangxiaolv.telegramgallery.k r23) {
        /*
            Method dump skipped, instructions count: 547
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tangxiaolv.telegramgallery.Utils.e.Y(com.tangxiaolv.telegramgallery.k):void");
    }

    public void a0(BitmapDrawable bitmapDrawable, String str) {
        this.f56476b.g(str, bitmapDrawable);
    }

    public void c0(String str) {
        this.f56475a.remove(str);
        this.f56476b.h(str);
    }

    public void d0(String str, String str2, com.tangxiaolv.telegramgallery.TL.d dVar, boolean z9) {
        if (z9) {
            com.tangxiaolv.telegramgallery.Utils.a.D(new RunnableC0488e(str, str2, dVar));
        } else {
            e0(str, str2, dVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ImageLoader.java */
    /* loaded from: classes3.dex */
    public class j {

        /* renamed from: a  reason: collision with root package name */
        protected String f56537a;

        /* renamed from: b  reason: collision with root package name */
        protected String f56538b;

        /* renamed from: c  reason: collision with root package name */
        protected String f56539c;

        /* renamed from: d  reason: collision with root package name */
        protected String f56540d;

        /* renamed from: e  reason: collision with root package name */
        protected com.tangxiaolv.telegramgallery.TL.m f56541e;

        /* renamed from: f  reason: collision with root package name */
        protected boolean f56542f;

        /* renamed from: g  reason: collision with root package name */
        protected File f56543g;

        /* renamed from: h  reason: collision with root package name */
        protected File f56544h;

        /* renamed from: i  reason: collision with root package name */
        protected boolean f56545i;

        /* renamed from: j  reason: collision with root package name */
        protected String f56546j;

        /* renamed from: k  reason: collision with root package name */
        protected m f56547k;

        /* renamed from: l  reason: collision with root package name */
        protected k f56548l;

        /* renamed from: m  reason: collision with root package name */
        protected ArrayList<com.tangxiaolv.telegramgallery.k> f56549m;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: ImageLoader.java */
        /* loaded from: classes3.dex */
        public class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ BitmapDrawable f56551a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ ArrayList f56552b;

            a(BitmapDrawable bitmapDrawable, ArrayList arrayList) {
                this.f56551a = bitmapDrawable;
                this.f56552b = arrayList;
            }

            @Override // java.lang.Runnable
            public void run() {
                BitmapDrawable bitmapDrawable = this.f56551a;
                if (bitmapDrawable instanceof AnimatedFileDrawable) {
                    AnimatedFileDrawable animatedFileDrawable = (AnimatedFileDrawable) bitmapDrawable;
                    int i4 = 0;
                    boolean z9 = false;
                    while (i4 < this.f56552b.size()) {
                        com.tangxiaolv.telegramgallery.k kVar = (com.tangxiaolv.telegramgallery.k) this.f56552b.get(i4);
                        AnimatedFileDrawable B = i4 == 0 ? animatedFileDrawable : animatedFileDrawable.B();
                        j jVar = j.this;
                        if (kVar.g0(B, jVar.f56537a, jVar.f56545i, false)) {
                            z9 = true;
                        }
                        i4++;
                    }
                    if (z9) {
                        return;
                    }
                    ((AnimatedFileDrawable) this.f56551a).D();
                    return;
                }
                for (int i10 = 0; i10 < this.f56552b.size(); i10++) {
                    BitmapDrawable bitmapDrawable2 = this.f56551a;
                    j jVar2 = j.this;
                    ((com.tangxiaolv.telegramgallery.k) this.f56552b.get(i10)).g0(bitmapDrawable2, jVar2.f56537a, jVar2.f56545i, false);
                }
            }
        }

        private j() {
            this.f56549m = new ArrayList<>();
        }

        public void a(com.tangxiaolv.telegramgallery.k kVar) {
            boolean z9;
            Iterator<com.tangxiaolv.telegramgallery.k> it = this.f56549m.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z9 = false;
                    break;
                } else if (it.next() == kVar) {
                    z9 = true;
                    break;
                }
            }
            if (z9) {
                return;
            }
            this.f56549m.add(kVar);
            e.this.f56479e.put(kVar.B(this.f56545i), this);
        }

        public void b(com.tangxiaolv.telegramgallery.k kVar) {
            int i4 = 0;
            while (i4 < this.f56549m.size()) {
                com.tangxiaolv.telegramgallery.k kVar2 = this.f56549m.get(i4);
                if (kVar2 == null || kVar2 == kVar) {
                    this.f56549m.remove(i4);
                    if (kVar2 != null) {
                        e.this.f56479e.remove(kVar2.B(this.f56545i));
                    }
                    i4--;
                }
                i4++;
            }
            if (this.f56549m.size() == 0) {
                for (int i10 = 0; i10 < this.f56549m.size(); i10++) {
                    e.this.f56479e.remove(this.f56549m.get(i10).B(this.f56545i));
                }
                this.f56549m.clear();
                com.tangxiaolv.telegramgallery.TL.m mVar = this.f56541e;
                if (mVar != null) {
                    if (mVar instanceof com.tangxiaolv.telegramgallery.TL.d) {
                        com.tangxiaolv.telegramgallery.Utils.d.D().q((com.tangxiaolv.telegramgallery.TL.d) this.f56541e, this.f56540d);
                    } else if (mVar instanceof com.tangxiaolv.telegramgallery.TL.b) {
                        com.tangxiaolv.telegramgallery.Utils.d.D().o((com.tangxiaolv.telegramgallery.TL.b) this.f56541e);
                    }
                }
                if (this.f56548l != null) {
                    if (this.f56545i) {
                        e.this.f56484j.a(this.f56548l);
                    } else {
                        e.this.f56483i.a(this.f56548l);
                    }
                    this.f56548l.b();
                    this.f56548l = null;
                }
                if (this.f56547k != null) {
                    e.this.f56482h.remove(this.f56547k);
                    this.f56547k.cancel(true);
                    this.f56547k = null;
                }
                if (this.f56538b != null) {
                    e.this.f56477c.remove(this.f56538b);
                }
                if (this.f56537a != null) {
                    e.this.f56478d.remove(this.f56537a);
                }
            }
        }

        public void c(BitmapDrawable bitmapDrawable) {
            if (bitmapDrawable != null) {
                com.tangxiaolv.telegramgallery.Utils.a.D(new a(bitmapDrawable, new ArrayList(this.f56549m)));
            }
            for (int i4 = 0; i4 < this.f56549m.size(); i4++) {
                e.this.f56479e.remove(this.f56549m.get(i4).B(this.f56545i));
            }
            this.f56549m.clear();
            if (this.f56538b != null) {
                e.this.f56477c.remove(this.f56538b);
            }
            if (this.f56537a != null) {
                e.this.f56478d.remove(this.f56537a);
            }
        }

        /* synthetic */ j(e eVar, a aVar) {
            this();
        }
    }
}

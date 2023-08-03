package com.tangxiaolv.telegramgallery.Utils;

import android.annotation.SuppressLint;
import android.content.SharedPreferences;
import android.database.ContentObserver;
import android.media.AudioRecord;
import android.media.AudioTrack;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.os.Environment;
import android.provider.MediaStore;
import com.google.android.exoplayer2.k2;
import com.tangxiaolv.telegramgallery.Utils.h;
import io.sentry.protocol.Device;
import java.io.File;
import java.lang.ref.WeakReference;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import org.bouncycastle.i18n.MessageBundle;

/* compiled from: MediaController.java */
/* loaded from: classes3.dex */
public class g implements h.c {
    public static final int A = 32;
    public static d B = null;

    /* renamed from: x  reason: collision with root package name */
    public static final int f56603x = 1;

    /* renamed from: y  reason: collision with root package name */
    public static final int f56604y = 2;

    /* renamed from: z  reason: collision with root package name */
    public static final int f56605z = 16;

    /* renamed from: c  reason: collision with root package name */
    public int f56608c;

    /* renamed from: d  reason: collision with root package name */
    public int f56609d;

    /* renamed from: e  reason: collision with root package name */
    public int f56610e;

    /* renamed from: f  reason: collision with root package name */
    private Runnable f56611f;

    /* renamed from: l  reason: collision with root package name */
    private int f56617l;

    /* renamed from: p  reason: collision with root package name */
    private int f56621p;

    /* renamed from: t  reason: collision with root package name */
    private String[] f56625t;

    /* renamed from: u  reason: collision with root package name */
    public static int[] f56600u = new int[3];

    /* renamed from: v  reason: collision with root package name */
    private static final String[] f56601v = {"_id", "bucket_id", "bucket_display_name", "_data", "datetaken", Device.b.f83600k, "_size"};

    /* renamed from: w  reason: collision with root package name */
    private static final String[] f56602w = {"_id", "bucket_id", "bucket_display_name", "_data", "datetaken"};
    private static volatile g C = null;

    /* renamed from: a  reason: collision with root package name */
    private boolean f56606a = true;

    /* renamed from: b  reason: collision with root package name */
    private HashMap<Long, Long> f56607b = new HashMap<>();

    /* renamed from: g  reason: collision with root package name */
    private HashMap<String, ArrayList<WeakReference<InterfaceC0491g>>> f56612g = new HashMap<>();

    /* renamed from: h  reason: collision with root package name */
    private HashMap<Integer, String> f56613h = new HashMap<>();

    /* renamed from: i  reason: collision with root package name */
    private boolean f56614i = false;

    /* renamed from: j  reason: collision with root package name */
    private HashMap<String, InterfaceC0491g> f56615j = new HashMap<>();

    /* renamed from: k  reason: collision with root package name */
    private ArrayList<InterfaceC0491g> f56616k = new ArrayList<>();

    /* renamed from: m  reason: collision with root package name */
    private ArrayList<e> f56618m = new ArrayList<>();

    /* renamed from: n  reason: collision with root package name */
    private final Object f56619n = new Object();

    /* renamed from: o  reason: collision with root package name */
    private ArrayList<ByteBuffer> f56620o = new ArrayList<>();

    /* renamed from: q  reason: collision with root package name */
    private f f56622q = null;

    /* renamed from: r  reason: collision with root package name */
    private j f56623r = null;

    /* renamed from: s  reason: collision with root package name */
    private int f56624s = 0;

    /* compiled from: MediaController.java */
    /* loaded from: classes3.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            com.tangxiaolv.telegramgallery.Utils.h.b().a(g.this, com.tangxiaolv.telegramgallery.Utils.h.C);
            com.tangxiaolv.telegramgallery.Utils.h.b().a(g.this, com.tangxiaolv.telegramgallery.Utils.h.f56680i);
            com.tangxiaolv.telegramgallery.Utils.h.b().a(g.this, com.tangxiaolv.telegramgallery.Utils.h.f56683l);
            com.tangxiaolv.telegramgallery.Utils.h.b().a(g.this, com.tangxiaolv.telegramgallery.Utils.h.B);
            com.tangxiaolv.telegramgallery.Utils.h.b().a(g.this, com.tangxiaolv.telegramgallery.Utils.h.A);
            com.tangxiaolv.telegramgallery.Utils.h.b().a(g.this, com.tangxiaolv.telegramgallery.Utils.h.f56697z);
            com.tangxiaolv.telegramgallery.Utils.h.b().a(g.this, com.tangxiaolv.telegramgallery.Utils.h.f56687p);
            com.tangxiaolv.telegramgallery.Utils.h.b().a(g.this, com.tangxiaolv.telegramgallery.Utils.h.f56690s);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MediaController.java */
    /* loaded from: classes3.dex */
    public class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            com.tangxiaolv.telegramgallery.Utils.h.b().d(com.tangxiaolv.telegramgallery.Utils.h.D, new Object[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MediaController.java */
    /* loaded from: classes3.dex */
    public class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String[] f56628a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f56629b;

        /* compiled from: MediaController.java */
        /* loaded from: classes3.dex */
        class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ d f56630a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ ArrayList f56631b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ Integer f56632c;

            /* renamed from: d  reason: collision with root package name */
            final /* synthetic */ ArrayList f56633d;

            /* renamed from: e  reason: collision with root package name */
            final /* synthetic */ Integer f56634e;

            a(d dVar, ArrayList arrayList, Integer num, ArrayList arrayList2, Integer num2) {
                this.f56630a = dVar;
                this.f56631b = arrayList;
                this.f56632c = num;
                this.f56633d = arrayList2;
                this.f56634e = num2;
            }

            @Override // java.lang.Runnable
            public void run() {
                g.B = this.f56630a;
                com.tangxiaolv.telegramgallery.Utils.h.b().d(com.tangxiaolv.telegramgallery.Utils.h.E, Integer.valueOf(c.this.f56629b), this.f56631b, this.f56632c, this.f56633d, this.f56634e);
            }
        }

        c(String[] strArr, int i4) {
            this.f56628a = strArr;
            this.f56629b = i4;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:118:0x0291  */
        /* JADX WARN: Removed duplicated region for block: B:173:0x02b1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:177:0x01c0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:185:0x0296 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:77:0x019e A[Catch: Exception -> 0x0187, TRY_ENTER, TRY_LEAVE, TryCatch #16 {Exception -> 0x0187, blocks: (B:77:0x019e, B:68:0x0183), top: B:187:0x0065 }] */
        /* JADX WARN: Type inference failed for: r14v10, types: [java.lang.String] */
        /* JADX WARN: Type inference failed for: r14v2 */
        /* JADX WARN: Type inference failed for: r14v7, types: [android.database.Cursor] */
        /* JADX WARN: Type inference failed for: r14v8, types: [android.database.Cursor] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:71:0x0188 -> B:163:0x01a1). Please submit an issue!!! */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void run() {
            /*
                Method dump skipped, instructions count: 747
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.tangxiaolv.telegramgallery.Utils.g.c.run():void");
        }
    }

    /* compiled from: MediaController.java */
    /* loaded from: classes3.dex */
    public static class d {

        /* renamed from: a  reason: collision with root package name */
        public int f56636a;

        /* renamed from: b  reason: collision with root package name */
        public String f56637b;

        /* renamed from: c  reason: collision with root package name */
        public k f56638c;

        /* renamed from: d  reason: collision with root package name */
        public ArrayList<k> f56639d = new ArrayList<>();

        /* renamed from: e  reason: collision with root package name */
        public HashMap<Integer, k> f56640e = new HashMap<>();

        /* renamed from: f  reason: collision with root package name */
        public boolean f56641f;

        public d(int i4, String str, k kVar, boolean z9) {
            this.f56636a = i4;
            this.f56637b = str;
            this.f56638c = kVar;
            this.f56641f = z9;
        }

        public void a(k kVar) {
            if (com.tangxiaolv.telegramgallery.Utils.i.k(kVar.f56658e)) {
                this.f56639d.add(kVar);
                this.f56640e.put(Integer.valueOf(kVar.f56656c), kVar);
            }
        }
    }

    /* compiled from: MediaController.java */
    /* loaded from: classes3.dex */
    private class e {

        /* renamed from: a  reason: collision with root package name */
        ByteBuffer f56642a;

        /* renamed from: b  reason: collision with root package name */
        byte[] f56643b;

        /* renamed from: c  reason: collision with root package name */
        int f56644c;

        /* renamed from: d  reason: collision with root package name */
        int f56645d;

        /* renamed from: e  reason: collision with root package name */
        long f56646e;

        public e(int i4) {
            this.f56642a = ByteBuffer.allocateDirect(i4);
            this.f56643b = new byte[i4];
        }
    }

    /* compiled from: MediaController.java */
    /* loaded from: classes3.dex */
    private class f extends ContentObserver {
        public f() {
            super(null);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z9) {
            super.onChange(z9);
            g.this.q(MediaStore.Images.Media.EXTERNAL_CONTENT_URI);
        }
    }

    /* compiled from: MediaController.java */
    /* renamed from: com.tangxiaolv.telegramgallery.Utils.g$g  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public interface InterfaceC0491g {
        int a();

        void b(String str);

        void c(String str);

        void d(String str, float f10, boolean z9);

        void e(String str, float f10);
    }

    /* compiled from: MediaController.java */
    /* loaded from: classes3.dex */
    private class h extends ContentObserver {

        /* compiled from: MediaController.java */
        /* loaded from: classes3.dex */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                g.this.f56611f = null;
                g.o(0, null);
            }
        }

        public h() {
            super(null);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z9) {
            super.onChange(z9);
            if (g.this.f56611f != null) {
                com.tangxiaolv.telegramgallery.Utils.a.c(g.this.f56611f);
            }
            com.tangxiaolv.telegramgallery.Utils.a.E(g.this.f56611f = new a(), k2.f23783i1);
        }
    }

    /* compiled from: MediaController.java */
    /* loaded from: classes3.dex */
    private class i extends ContentObserver {

        /* compiled from: MediaController.java */
        /* loaded from: classes3.dex */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                g.this.f56611f = null;
                g.o(0, null);
            }
        }

        public i() {
            super(null);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z9) {
            super.onChange(z9);
            if (g.this.f56611f != null) {
                com.tangxiaolv.telegramgallery.Utils.a.c(g.this.f56611f);
            }
            com.tangxiaolv.telegramgallery.Utils.a.E(g.this.f56611f = new a(), k2.f23783i1);
        }
    }

    /* compiled from: MediaController.java */
    /* loaded from: classes3.dex */
    private class j extends ContentObserver {
        public j() {
            super(null);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z9) {
            super.onChange(z9);
            g.this.q(MediaStore.Images.Media.INTERNAL_CONTENT_URI);
        }
    }

    /* compiled from: MediaController.java */
    /* loaded from: classes3.dex */
    public static class k {

        /* renamed from: a  reason: collision with root package name */
        public int f56654a;

        /* renamed from: b  reason: collision with root package name */
        public int f56655b;

        /* renamed from: c  reason: collision with root package name */
        public int f56656c;

        /* renamed from: d  reason: collision with root package name */
        public long f56657d;

        /* renamed from: e  reason: collision with root package name */
        public String f56658e;

        /* renamed from: f  reason: collision with root package name */
        public int f56659f;

        /* renamed from: g  reason: collision with root package name */
        public String f56660g;

        /* renamed from: h  reason: collision with root package name */
        public String f56661h;

        /* renamed from: i  reason: collision with root package name */
        public boolean f56662i;

        /* renamed from: j  reason: collision with root package name */
        public CharSequence f56663j;

        public k(int i4, int i10, long j4, String str, int i11, boolean z9) {
            this.f56655b = i4;
            this.f56656c = i10;
            this.f56657d = j4;
            this.f56658e = str;
            this.f56659f = i11;
            this.f56662i = z9;
        }
    }

    /* compiled from: MediaController.java */
    /* loaded from: classes3.dex */
    public static class l {

        /* renamed from: a  reason: collision with root package name */
        public String f56664a;

        /* renamed from: b  reason: collision with root package name */
        public String f56665b;

        /* renamed from: c  reason: collision with root package name */
        public String f56666c;

        /* renamed from: d  reason: collision with root package name */
        public String f56667d;

        /* renamed from: e  reason: collision with root package name */
        public int f56668e;

        /* renamed from: f  reason: collision with root package name */
        public int f56669f;

        /* renamed from: g  reason: collision with root package name */
        public int f56670g;

        /* renamed from: h  reason: collision with root package name */
        public int f56671h;

        /* renamed from: i  reason: collision with root package name */
        public int f56672i;

        /* renamed from: j  reason: collision with root package name */
        public String f56673j;

        /* renamed from: k  reason: collision with root package name */
        public String f56674k;

        /* renamed from: l  reason: collision with root package name */
        public CharSequence f56675l;

        /* renamed from: m  reason: collision with root package name */
        public com.tangxiaolv.telegramgallery.TL.b f56676m;
    }

    /* compiled from: MediaController.java */
    /* loaded from: classes3.dex */
    private final class m implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public int f56677a = 0;

        private m() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f56677a == g.this.f56624s) {
                try {
                    if (g.this.f56623r != null) {
                        com.tangxiaolv.telegramgallery.e.f56717a.getContentResolver().unregisterContentObserver(g.this.f56623r);
                        g.this.f56623r = null;
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
                try {
                    if (g.this.f56622q != null) {
                        com.tangxiaolv.telegramgallery.e.f56717a.getContentResolver().unregisterContentObserver(g.this.f56622q);
                        g.this.f56622q = null;
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }
    }

    public g() {
        this.f56608c = 0;
        this.f56609d = 0;
        this.f56610e = 0;
        this.f56617l = 0;
        this.f56625t = null;
        try {
            int minBufferSize = AudioRecord.getMinBufferSize(com.google.android.exoplayer2.audio.a.f21097g, 16, 2);
            this.f56621p = minBufferSize;
            if (minBufferSize <= 0) {
                this.f56621p = com.im.freechat.utils.h.f43782b;
            }
            int minBufferSize2 = AudioTrack.getMinBufferSize(48000, 4, 2);
            this.f56617l = minBufferSize2;
            if (minBufferSize2 <= 0) {
                this.f56617l = 3840;
            }
            for (int i4 = 0; i4 < 5; i4++) {
                ByteBuffer allocateDirect = ByteBuffer.allocateDirect(4096);
                allocateDirect.order(ByteOrder.nativeOrder());
                this.f56620o.add(allocateDirect);
            }
            for (int i10 = 0; i10 < 3; i10++) {
                this.f56618m.add(new e(this.f56617l));
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        SharedPreferences sharedPreferences = com.tangxiaolv.telegramgallery.e.f56717a.getSharedPreferences("mainconfig", 0);
        this.f56608c = sharedPreferences.getInt("mobileDataDownloadMask", 51);
        this.f56609d = sharedPreferences.getInt("wifiDownloadMask", 51);
        this.f56610e = sharedPreferences.getInt("roamingDownloadMask", 0);
        com.tangxiaolv.telegramgallery.Utils.a.D(new a());
        this.f56625t = new String[]{"_data", "_display_name", "bucket_display_name", "datetaken", MessageBundle.TITLE_ENTRY, "width", "height"};
        try {
            com.tangxiaolv.telegramgallery.e.f56717a.getContentResolver().registerContentObserver(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, false, new h());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        try {
            com.tangxiaolv.telegramgallery.e.f56717a.getContentResolver().registerContentObserver(MediaStore.Images.Media.INTERNAL_CONTENT_URI, false, new i());
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    public static g n() {
        g gVar = C;
        if (gVar == null) {
            synchronized (g.class) {
                gVar = C;
                if (gVar == null) {
                    gVar = new g();
                    C = gVar;
                }
            }
        }
        return gVar;
    }

    public static void o(int i4, String[] strArr) {
        Thread thread = new Thread(new c(strArr, i4));
        thread.setPriority(1);
        thread.start();
    }

    private void p() {
        this.f56615j.clear();
        Iterator<InterfaceC0491g> it = this.f56616k.iterator();
        while (it.hasNext()) {
            r(it.next());
        }
        this.f56616k.clear();
    }

    @SuppressLint({"NewApi"})
    public static MediaCodecInfo s(String str) {
        int codecCount = MediaCodecList.getCodecCount();
        MediaCodecInfo mediaCodecInfo = null;
        for (int i4 = 0; i4 < codecCount; i4++) {
            MediaCodecInfo codecInfoAt = MediaCodecList.getCodecInfoAt(i4);
            if (codecInfoAt.isEncoder()) {
                for (String str2 : codecInfoAt.getSupportedTypes()) {
                    if (str2.equalsIgnoreCase(str)) {
                        if (!codecInfoAt.getName().equals("OMX.SEC.avc.enc") || codecInfoAt.getName().equals("OMX.SEC.AVC.Encoder")) {
                            return codecInfoAt;
                        }
                        mediaCodecInfo = codecInfoAt;
                    }
                }
                continue;
            }
        }
        return mediaCodecInfo;
    }

    @Override // com.tangxiaolv.telegramgallery.Utils.h.c
    public void h(int i4, Object... objArr) {
        if (i4 == com.tangxiaolv.telegramgallery.Utils.h.C) {
            this.f56614i = true;
            String str = (String) objArr[0];
            ArrayList<WeakReference<InterfaceC0491g>> arrayList = this.f56612g.get(str);
            if (arrayList != null) {
                for (int i10 = 0; i10 < arrayList.size(); i10++) {
                    WeakReference<InterfaceC0491g> weakReference = arrayList.get(i10);
                    if (weakReference.get() != null) {
                        weakReference.get().b(str);
                        this.f56613h.remove(Integer.valueOf(weakReference.get().a()));
                    }
                }
                this.f56612g.remove(str);
            }
            this.f56614i = false;
            p();
        } else if (i4 == com.tangxiaolv.telegramgallery.Utils.h.B) {
            this.f56614i = true;
            String str2 = (String) objArr[0];
            ArrayList<WeakReference<InterfaceC0491g>> arrayList2 = this.f56612g.get(str2);
            if (arrayList2 != null) {
                for (int i11 = 0; i11 < arrayList2.size(); i11++) {
                    WeakReference<InterfaceC0491g> weakReference2 = arrayList2.get(i11);
                    if (weakReference2.get() != null) {
                        weakReference2.get().c(str2);
                        this.f56613h.remove(Integer.valueOf(weakReference2.get().a()));
                    }
                }
                this.f56612g.remove(str2);
            }
            this.f56614i = false;
            p();
        } else if (i4 == com.tangxiaolv.telegramgallery.Utils.h.A) {
            this.f56614i = true;
            String str3 = (String) objArr[0];
            ArrayList<WeakReference<InterfaceC0491g>> arrayList3 = this.f56612g.get(str3);
            if (arrayList3 != null) {
                Float f10 = (Float) objArr[1];
                Iterator<WeakReference<InterfaceC0491g>> it = arrayList3.iterator();
                while (it.hasNext()) {
                    WeakReference<InterfaceC0491g> next = it.next();
                    if (next.get() != null) {
                        next.get().e(str3, f10.floatValue());
                    }
                }
            }
            this.f56614i = false;
            p();
        }
    }

    public boolean k() {
        return this.f56606a;
    }

    public void l() {
        try {
            File file = new File(Environment.getExternalStorageDirectory(), "Telegram");
            File file2 = new File(file, "Telegram Images");
            file2.mkdir();
            File file3 = new File(file, "Telegram Video");
            file3.mkdir();
            if (this.f56606a) {
                if (file2.isDirectory()) {
                    new File(file2, ".nomedia").delete();
                }
                if (file3.isDirectory()) {
                    new File(file3, ".nomedia").delete();
                    return;
                }
                return;
            }
            if (file2.isDirectory()) {
                new File(file2, ".nomedia").createNewFile();
            }
            if (file3.isDirectory()) {
                new File(file3, ".nomedia").createNewFile();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void m() {
        this.f56607b.clear();
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0079, code lost:
        if (r10 != 0) goto L14;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void q(android.net.Uri r14) {
        /*
            r13 = this;
            android.graphics.Point r0 = com.tangxiaolv.telegramgallery.Utils.a.q()     // Catch: java.lang.Exception -> Lbf
            android.app.Application r1 = com.tangxiaolv.telegramgallery.e.f56717a     // Catch: java.lang.Exception -> Lbf
            android.content.ContentResolver r2 = r1.getContentResolver()     // Catch: java.lang.Exception -> Lbf
            java.lang.String[] r4 = r13.f56625t     // Catch: java.lang.Exception -> Lbf
            r5 = 0
            r6 = 0
            java.lang.String r7 = "date_added DESC LIMIT 1"
            r3 = r14
            android.database.Cursor r14 = r2.query(r3, r4, r5, r6, r7)     // Catch: java.lang.Exception -> Lbf
            java.util.ArrayList r1 = new java.util.ArrayList     // Catch: java.lang.Exception -> Lbf
            r1.<init>()     // Catch: java.lang.Exception -> Lbf
            if (r14 == 0) goto Lb0
        L1c:
            boolean r2 = r14.moveToNext()     // Catch: java.lang.Exception -> Lbf
            if (r2 == 0) goto Lad
            r2 = 0
            java.lang.String r2 = r14.getString(r2)     // Catch: java.lang.Exception -> Lbf
            r3 = 1
            java.lang.String r4 = r14.getString(r3)     // Catch: java.lang.Exception -> Lbf
            r5 = 2
            java.lang.String r5 = r14.getString(r5)     // Catch: java.lang.Exception -> Lbf
            r6 = 3
            long r6 = r14.getLong(r6)     // Catch: java.lang.Exception -> Lbf
            r8 = 4
            java.lang.String r8 = r14.getString(r8)     // Catch: java.lang.Exception -> Lbf
            r9 = 5
            int r9 = r14.getInt(r9)     // Catch: java.lang.Exception -> Lbf
            r10 = 6
            int r10 = r14.getInt(r10)     // Catch: java.lang.Exception -> Lbf
            java.lang.String r11 = "screenshot"
            if (r2 == 0) goto L53
            java.lang.String r12 = r2.toLowerCase()     // Catch: java.lang.Exception -> Lbf
            boolean r12 = r12.contains(r11)     // Catch: java.lang.Exception -> Lbf
            if (r12 != 0) goto L77
        L53:
            if (r4 == 0) goto L5f
            java.lang.String r4 = r4.toLowerCase()     // Catch: java.lang.Exception -> Lbf
            boolean r4 = r4.contains(r11)     // Catch: java.lang.Exception -> Lbf
            if (r4 != 0) goto L77
        L5f:
            if (r5 == 0) goto L6b
            java.lang.String r4 = r5.toLowerCase()     // Catch: java.lang.Exception -> Lbf
            boolean r4 = r4.contains(r11)     // Catch: java.lang.Exception -> Lbf
            if (r4 != 0) goto L77
        L6b:
            if (r8 == 0) goto L1c
            java.lang.String r4 = r8.toLowerCase()     // Catch: java.lang.Exception -> Lbf
            boolean r4 = r4.contains(r11)     // Catch: java.lang.Exception -> Lbf
            if (r4 == 0) goto L1c
        L77:
            if (r9 == 0) goto L7b
            if (r10 != 0) goto L89
        L7b:
            android.graphics.BitmapFactory$Options r4 = new android.graphics.BitmapFactory$Options     // Catch: java.lang.Exception -> La4
            r4.<init>()     // Catch: java.lang.Exception -> La4
            r4.inJustDecodeBounds = r3     // Catch: java.lang.Exception -> La4
            android.graphics.BitmapFactory.decodeFile(r2, r4)     // Catch: java.lang.Exception -> La4
            int r9 = r4.outWidth     // Catch: java.lang.Exception -> La4
            int r10 = r4.outHeight     // Catch: java.lang.Exception -> La4
        L89:
            if (r9 <= 0) goto L9b
            if (r10 <= 0) goto L9b
            int r2 = r0.x     // Catch: java.lang.Exception -> La4
            if (r9 != r2) goto L95
            int r3 = r0.y     // Catch: java.lang.Exception -> La4
            if (r10 == r3) goto L9b
        L95:
            if (r10 != r2) goto L1c
            int r2 = r0.y     // Catch: java.lang.Exception -> La4
            if (r9 != r2) goto L1c
        L9b:
            java.lang.Long r2 = java.lang.Long.valueOf(r6)     // Catch: java.lang.Exception -> La4
            r1.add(r2)     // Catch: java.lang.Exception -> La4
            goto L1c
        La4:
            java.lang.Long r2 = java.lang.Long.valueOf(r6)     // Catch: java.lang.Exception -> Lbf
            r1.add(r2)     // Catch: java.lang.Exception -> Lbf
            goto L1c
        Lad:
            r14.close()     // Catch: java.lang.Exception -> Lbf
        Lb0:
            boolean r14 = r1.isEmpty()     // Catch: java.lang.Exception -> Lbf
            if (r14 != 0) goto Lc3
            com.tangxiaolv.telegramgallery.Utils.g$b r14 = new com.tangxiaolv.telegramgallery.Utils.g$b     // Catch: java.lang.Exception -> Lbf
            r14.<init>()     // Catch: java.lang.Exception -> Lbf
            com.tangxiaolv.telegramgallery.Utils.a.D(r14)     // Catch: java.lang.Exception -> Lbf
            goto Lc3
        Lbf:
            r14 = move-exception
            r14.printStackTrace()
        Lc3:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tangxiaolv.telegramgallery.Utils.g.q(android.net.Uri):void");
    }

    public void r(InterfaceC0491g interfaceC0491g) {
        if (this.f56614i) {
            this.f56616k.add(interfaceC0491g);
            return;
        }
        String str = this.f56613h.get(Integer.valueOf(interfaceC0491g.a()));
        if (str != null) {
            ArrayList<WeakReference<InterfaceC0491g>> arrayList = this.f56612g.get(str);
            if (arrayList != null) {
                int i4 = 0;
                while (i4 < arrayList.size()) {
                    WeakReference<InterfaceC0491g> weakReference = arrayList.get(i4);
                    if (weakReference.get() == null || weakReference.get() == interfaceC0491g) {
                        arrayList.remove(i4);
                        i4--;
                    }
                    i4++;
                }
                if (arrayList.isEmpty()) {
                    this.f56612g.remove(str);
                }
            }
            this.f56613h.remove(Integer.valueOf(interfaceC0491g.a()));
        }
    }
}

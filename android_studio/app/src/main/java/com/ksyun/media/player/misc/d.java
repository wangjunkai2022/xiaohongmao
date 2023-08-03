package com.ksyun.media.player.misc;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.ksyun.media.player.KSYMediaPlayer;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* compiled from: KSYListSourceMgr.java */
/* loaded from: classes3.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private static final int f45560a = 12;

    /* renamed from: b  reason: collision with root package name */
    private static final int f45561b = 13;

    /* renamed from: c  reason: collision with root package name */
    private static final int f45562c = 14;

    /* renamed from: h  reason: collision with root package name */
    private WeakReference<KSYMediaPlayer> f45567h;

    /* renamed from: n  reason: collision with root package name */
    private long f45573n;

    /* renamed from: o  reason: collision with root package name */
    private int f45574o;

    /* renamed from: p  reason: collision with root package name */
    private int f45575p;

    /* renamed from: r  reason: collision with root package name */
    private int f45577r;

    /* renamed from: s  reason: collision with root package name */
    private int f45578s;

    /* renamed from: d  reason: collision with root package name */
    private final int f45563d = 10;

    /* renamed from: e  reason: collision with root package name */
    private final String f45564e = "#KSYFILELIST";

    /* renamed from: f  reason: collision with root package name */
    private final String f45565f = "#KSY_DURATION:";

    /* renamed from: g  reason: collision with root package name */
    private final String f45566g = "\r\n";

    /* renamed from: q  reason: collision with root package name */
    private boolean f45576q = false;

    /* renamed from: t  reason: collision with root package name */
    private Handler.Callback f45579t = new Handler.Callback() { // from class: com.ksyun.media.player.misc.d.1
        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            switch (message.what) {
                case 12:
                    d.a(d.this);
                    d.b(d.this);
                    d.this.f45570k.set(message.arg1, (String) message.obj);
                    break;
                case 13:
                    d.a(d.this);
                    break;
                case 14:
                    d.this.c();
                    break;
            }
            if (d.this.f45577r == d.this.f45568i.size()) {
                d.this.c();
                return false;
            }
            return false;
        }
    };

    /* renamed from: i  reason: collision with root package name */
    private List<String> f45568i = new ArrayList();

    /* renamed from: j  reason: collision with root package name */
    private ExecutorService f45569j = Executors.newSingleThreadExecutor();

    /* renamed from: k  reason: collision with root package name */
    private ArrayList<String> f45570k = new ArrayList<>();

    /* renamed from: l  reason: collision with root package name */
    private Handler f45571l = new Handler(Looper.getMainLooper(), this.f45579t);

    /* renamed from: m  reason: collision with root package name */
    private Map<String, String> f45572m = new HashMap();

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: KSYListSourceMgr.java */
    /* loaded from: classes3.dex */
    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            for (int i4 = 0; i4 < d.this.f45568i.size() && !d.this.f45576q; i4++) {
                KSYProbeMediaInfo kSYProbeMediaInfo = new KSYProbeMediaInfo();
                kSYProbeMediaInfo.probeMediaInfo((String) d.this.f45568i.get(i4), d.this.f45574o, d.this.f45572m, true);
                if (System.currentTimeMillis() - d.this.f45573n >= d.this.f45575p) {
                    if (!d.this.f45576q) {
                        d.this.f45576q = true;
                        d.this.f45571l.obtainMessage(14).sendToTarget();
                    }
                } else {
                    long mediaDuration = kSYProbeMediaInfo.getMediaDuration();
                    if (mediaDuration > 0) {
                        d.this.f45571l.obtainMessage(12, i4, 0, String.valueOf(mediaDuration)).sendToTarget();
                    } else {
                        d.this.f45571l.obtainMessage(13, i4, 0).sendToTarget();
                    }
                }
            }
        }
    }

    static /* synthetic */ int a(d dVar) {
        int i4 = dVar.f45577r;
        dVar.f45577r = i4 + 1;
        return i4;
    }

    static /* synthetic */ int b(d dVar) {
        int i4 = dVar.f45578s;
        dVar.f45578s = i4 + 1;
        return i4;
    }

    private void b() {
        this.f45568i.clear();
        this.f45572m.clear();
        this.f45577r = 0;
        this.f45578s = 0;
        this.f45574o = 10;
        this.f45575p = 10000;
        if (!this.f45570k.isEmpty()) {
            this.f45570k.clear();
        }
        this.f45570k = null;
        WeakReference<KSYMediaPlayer> weakReference = this.f45567h;
        if (weakReference != null) {
            weakReference.clear();
        }
        this.f45567h = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        if (this.f45578s <= 0) {
            WeakReference<KSYMediaPlayer> weakReference = this.f45567h;
            if (weakReference == null || weakReference.get() == null) {
                return;
            }
            this.f45567h.get().prepareSourceList(null, false);
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("#KSYFILELIST");
        sb.append("\r\n");
        for (int i4 = 0; i4 < this.f45568i.size(); i4++) {
            long longValue = Long.valueOf(this.f45570k.get(i4)).longValue();
            if (longValue > 0) {
                sb.append("#KSY_DURATION:");
                sb.append(String.valueOf((float) (longValue / 1000)));
                sb.append("\r\n");
                sb.append(this.f45568i.get(i4));
                sb.append("\r\n");
            }
        }
        WeakReference<KSYMediaPlayer> weakReference2 = this.f45567h;
        if (weakReference2 == null || weakReference2.get() == null) {
            return;
        }
        this.f45567h.get().prepareSourceList(sb.toString(), true);
    }

    public void a(List<String> list, Map<String, String> map) {
        b();
        this.f45568i.addAll(list);
        if (map != null) {
            this.f45572m.putAll(map);
        }
    }

    public void a(int i4) {
        if (i4 > 0) {
            this.f45574o = i4;
            this.f45575p = i4 * 1000;
        }
    }

    public void a(KSYMediaPlayer kSYMediaPlayer, long j4) {
        if (this.f45568i.isEmpty()) {
            return;
        }
        this.f45573n = j4;
        this.f45567h = new WeakReference<>(kSYMediaPlayer);
        this.f45570k = new ArrayList<>(Collections.nCopies(this.f45568i.size(), "0"));
        this.f45569j.execute(new a());
    }

    public void a() {
        this.f45576q = true;
        this.f45569j.shutdown();
        this.f45571l.removeCallbacksAndMessages(null);
    }
}

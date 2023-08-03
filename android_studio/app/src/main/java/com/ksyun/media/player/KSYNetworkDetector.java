package com.ksyun.media.player;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.ksyun.media.player.detector.KSYNetworkTrackerConfig;
import com.ksyun.media.player.detector.KSYTrackerRouterInfo;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class KSYNetworkDetector {
    public static final int KSY_NETWORK_DETECTION_EVENT_ERROR = 3;
    public static final int KSY_NETWORK_DETECTION_EVENT_FINISH = 2;
    public static final int KSY_NETWORK_DETECTION_EVENT_ONCE_DONE = 1;
    public static final int KSY_NETWORK_DETECTOR_TYPE_TRACKER = 1;
    public static final int KSY_NETWORK_TRACKER_TYPE_DESTINATION = 1;

    /* renamed from: a  reason: collision with root package name */
    private static final int f45290a = 0;

    /* renamed from: b  reason: collision with root package name */
    private static final int f45291b = 0;

    /* renamed from: d  reason: collision with root package name */
    private static KSYNetworkDetector f45292d;

    /* renamed from: c  reason: collision with root package name */
    private final String f45293c = "router_number";

    /* renamed from: e  reason: collision with root package name */
    private a f45294e;

    /* renamed from: f  reason: collision with root package name */
    private KSYNetworkTrackerConfig f45295f;

    /* renamed from: g  reason: collision with root package name */
    private OnNetworkDetectionEventListener f45296g;

    /* loaded from: classes3.dex */
    public enum KSYDetectorPacketType {
        KSY_DETECTOR_PACKET_TYPE_ICMP,
        KSY_DETECTOR_PACKET_TYPE_UDP,
        KSY_DETECTOR_PACKET_TYPE_TCP
    }

    /* loaded from: classes3.dex */
    public interface OnNetworkDetectionEventListener {
        void onNetworkDetectInfo(int i4, int i10, double d4);
    }

    /* loaded from: classes3.dex */
    private class a extends Handler {

        /* renamed from: b  reason: collision with root package name */
        private WeakReference<KSYNetworkDetector> f45298b;

        public a(KSYNetworkDetector kSYNetworkDetector, Looper looper) {
            super(looper);
            this.f45298b = new WeakReference<>(kSYNetworkDetector);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Object obj = message.obj;
            double parseDouble = obj != null ? Double.parseDouble(obj.toString()) : 0.0d;
            if (KSYNetworkDetector.this.f45296g != null) {
                KSYNetworkDetector.this.f45296g.onNetworkDetectInfo(message.what, message.arg1, parseDouble);
            }
        }
    }

    private KSYNetworkDetector() {
        Looper myLooper = Looper.myLooper();
        if (myLooper != null) {
            this.f45294e = new a(this, myLooper);
        } else {
            Looper mainLooper = Looper.getMainLooper();
            if (mainLooper != null) {
                this.f45294e = new a(this, mainLooper);
            } else {
                this.f45294e = null;
            }
        }
        a();
    }

    private native void _destroy();

    private native int _getStatus();

    private native Bundle _getTrackerConfig();

    private native Bundle _getTrackerDetectResult();

    private native int _open(int i4, Object obj);

    private native void _start(String str, int i4, Object obj);

    private native void _stop();

    private void a() {
        if (TextUtils.isEmpty(KSYLibraryManager.getLocalLibraryPath())) {
            if (e.a("ksylive")) {
                return;
            }
            e.a("ksyplayer");
        } else if (e.a(KSYLibraryManager.getLocalLibraryPath(), "ksylive")) {
        } else {
            e.a(KSYLibraryManager.getLocalLibraryPath(), "ksyplayer");
        }
    }

    public static KSYNetworkDetector getInstance() {
        if (f45292d == null) {
            synchronized (KSYNetworkDetector.class) {
                if (f45292d == null) {
                    f45292d = new KSYNetworkDetector();
                }
            }
        }
        return f45292d;
    }

    private static void postEventFromNative(Object obj, int i4, int i10, double d4, Object obj2) {
        KSYNetworkDetector kSYNetworkDetector;
        if (obj == null || (kSYNetworkDetector = (KSYNetworkDetector) ((WeakReference) obj).get()) == null) {
            return;
        }
        Double valueOf = Double.valueOf(d4);
        a aVar = kSYNetworkDetector.f45294e;
        if (aVar != null) {
            aVar.obtainMessage(i4, i10, 0, valueOf).sendToTarget();
        }
    }

    public void destroy() {
        _destroy();
    }

    public KSYNetworkTrackerConfig getTrackerConfig() {
        KSYNetworkTrackerConfig kSYNetworkTrackerConfig = this.f45295f;
        if (kSYNetworkTrackerConfig != null) {
            return kSYNetworkTrackerConfig;
        }
        Bundle _getTrackerConfig = _getTrackerConfig();
        if (_getTrackerConfig == null) {
            return null;
        }
        KSYNetworkTrackerConfig kSYNetworkTrackerConfig2 = new KSYNetworkTrackerConfig();
        this.f45295f = kSYNetworkTrackerConfig2;
        kSYNetworkTrackerConfig2.parse(_getTrackerConfig);
        return this.f45295f;
    }

    public ArrayList<KSYTrackerRouterInfo> getTrackerDetectResult() {
        int i4;
        Bundle _getTrackerDetectResult = _getTrackerDetectResult();
        if (_getTrackerDetectResult != null && (i4 = _getTrackerDetectResult.getInt("router_number")) > 0) {
            ArrayList<KSYTrackerRouterInfo> arrayList = new ArrayList<>();
            for (int i10 = 0; i10 < i4; i10++) {
                String valueOf = String.valueOf(i10);
                KSYTrackerRouterInfo kSYTrackerRouterInfo = new KSYTrackerRouterInfo();
                if (kSYTrackerRouterInfo.parse(_getTrackerDetectResult.getBundle(valueOf)) >= 0) {
                    arrayList.add(i10, kSYTrackerRouterInfo);
                }
            }
            return arrayList;
        }
        return null;
    }

    public int open(int i4) {
        int i10 = 1;
        if (i4 == 0) {
            i10 = 0;
        } else if (i4 != 1) {
            return -1;
        }
        return _open(i10, new WeakReference(this));
    }

    public void setOnNetworkDetectionEventListener(OnNetworkDetectionEventListener onNetworkDetectionEventListener) {
        this.f45296g = onNetworkDetectionEventListener;
    }

    public int start(String str, KSYNetworkTrackerConfig kSYNetworkTrackerConfig) {
        Bundle bundle;
        if (kSYNetworkTrackerConfig != null) {
            bundle = kSYNetworkTrackerConfig.toBundle();
        } else {
            this.f45295f = getTrackerConfig();
            bundle = kSYNetworkTrackerConfig.toBundle();
        }
        _start(str, 0, bundle);
        return 0;
    }

    public void stop() {
        _stop();
    }
}

package com.ksyun.media.player.detector;

import android.os.Bundle;
import com.ksyun.media.player.KSYNetworkDetector;

/* loaded from: classes3.dex */
public class KSYNetworkTrackerConfig {

    /* renamed from: a  reason: collision with root package name */
    private final String f45455a = "tracker_type";

    /* renamed from: b  reason: collision with root package name */
    private final String f45456b = "tracker_pkt_type";

    /* renamed from: c  reason: collision with root package name */
    private final String f45457c = "tracker_timeout";

    /* renamed from: d  reason: collision with root package name */
    private final String f45458d = "tracker_max_ttl";

    /* renamed from: e  reason: collision with root package name */
    private final String f45459e = "tracker_detect_count";

    /* renamed from: h  reason: collision with root package name */
    private int f45462h = 0;

    /* renamed from: i  reason: collision with root package name */
    private int f45463i = 0;

    /* renamed from: j  reason: collision with root package name */
    private int f45464j = 0;

    /* renamed from: f  reason: collision with root package name */
    private int f45460f = 1;

    /* renamed from: g  reason: collision with root package name */
    private KSYNetworkDetector.KSYDetectorPacketType f45461g = KSYNetworkDetector.KSYDetectorPacketType.KSY_DETECTOR_PACKET_TYPE_ICMP;

    public int getDetectCount() {
        return this.f45464j;
    }

    public int getMaxTimeToLiveCount() {
        return this.f45463i;
    }

    public int getTimeout() {
        return this.f45462h;
    }

    public int getTrackerType() {
        return this.f45460f;
    }

    public void parse(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        int i4 = bundle.getInt("tracker_pkt_type", 0);
        if (i4 < KSYNetworkDetector.KSYDetectorPacketType.values().length) {
            this.f45461g = KSYNetworkDetector.KSYDetectorPacketType.values()[i4];
        }
        this.f45462h = bundle.getInt("tracker_timeout");
        this.f45463i = bundle.getInt("tracker_max_ttl");
        this.f45464j = bundle.getInt("tracker_detect_count");
    }

    public void setDetectCount(int i4) {
        this.f45464j = i4;
    }

    public void setMaxTimeToLiveCount(int i4) {
        this.f45463i = i4;
    }

    public void setTimeout(int i4) {
        this.f45462h = i4;
    }

    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt("tracker_type", this.f45460f);
        bundle.putInt("tracker_pkt_type", this.f45461g.ordinal());
        bundle.putInt("tracker_timeout", this.f45462h);
        bundle.putInt("tracker_max_ttl", this.f45463i);
        bundle.putInt("tracker_detect_count", this.f45464j);
        return bundle;
    }
}

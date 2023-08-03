package com.ksyun.media.player.detector;

import android.os.Bundle;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class KSYTrackerRouterInfo {

    /* renamed from: a  reason: collision with root package name */
    private final String f45465a = "router_ip";

    /* renamed from: b  reason: collision with root package name */
    private final String f45466b = "router_max_delay";

    /* renamed from: c  reason: collision with root package name */
    private final String f45467c = "router_min_delay";

    /* renamed from: d  reason: collision with root package name */
    private final String f45468d = "router_avg_delay";

    /* renamed from: e  reason: collision with root package name */
    private final String f45469e = "router_avg_dev";

    /* renamed from: f  reason: collision with root package name */
    private final String f45470f = "router_pkt_loss";

    /* renamed from: g  reason: collision with root package name */
    private final String f45471g = "router_bandwidth";

    /* renamed from: h  reason: collision with root package name */
    private final String f45472h = "router_pkt_number";

    /* renamed from: i  reason: collision with root package name */
    private ArrayList<String> f45473i;

    /* renamed from: j  reason: collision with root package name */
    private float f45474j;

    /* renamed from: k  reason: collision with root package name */
    private float f45475k;

    /* renamed from: l  reason: collision with root package name */
    private float f45476l;

    /* renamed from: m  reason: collision with root package name */
    private float f45477m;

    /* renamed from: n  reason: collision with root package name */
    private float f45478n;

    /* renamed from: o  reason: collision with root package name */
    private int f45479o;

    /* renamed from: p  reason: collision with root package name */
    private int f45480p;

    public float getAverageDelay() {
        return this.f45476l;
    }

    public float getDelayAverageDeviation() {
        return this.f45477m;
    }

    public float getMaxDelay() {
        return this.f45474j;
    }

    public float getMinDelay() {
        return this.f45475k;
    }

    public float getPacketLossRate() {
        return this.f45478n;
    }

    public ArrayList<String> getRouterIP() {
        return this.f45473i;
    }

    public int parse(Bundle bundle) {
        if (bundle == null) {
            return -1;
        }
        this.f45473i = bundle.getStringArrayList("router_ip");
        this.f45474j = bundle.getFloat("router_max_delay");
        this.f45475k = bundle.getFloat("router_min_delay");
        this.f45476l = bundle.getFloat("router_avg_delay");
        this.f45477m = bundle.getFloat("router_avg_dev");
        this.f45478n = bundle.getFloat("router_pkt_loss");
        this.f45479o = bundle.getInt("router_bandwidth");
        this.f45480p = bundle.getInt("router_pkt_number");
        return 0;
    }
}

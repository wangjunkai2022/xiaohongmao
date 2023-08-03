package com.qennnsad.aknkaksd.util;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import com.qennnsad.aknkaksd.data.bean.register.Node;
import com.qennnsad.aknkaksd.data.bean.register.SenList;
import java.util.List;

/* compiled from: SensorUtils.java */
/* loaded from: classes3.dex */
public class i1 implements SensorEventListener {

    /* renamed from: h  reason: collision with root package name */
    private static final int f54739h = 500;

    /* renamed from: a  reason: collision with root package name */
    private Context f54740a;

    /* renamed from: b  reason: collision with root package name */
    private SensorManager f54741b;

    /* renamed from: c  reason: collision with root package name */
    private long f54742c;

    /* renamed from: d  reason: collision with root package name */
    private float f54743d;

    /* renamed from: e  reason: collision with root package name */
    private float f54744e;

    /* renamed from: f  reason: collision with root package name */
    private float f54745f;

    /* renamed from: g  reason: collision with root package name */
    private SenList f54746g = new SenList();

    public i1(Context context) {
        this.f54741b = null;
        this.f54740a = context;
        this.f54741b = (SensorManager) context.getSystemService("sensor");
    }

    public List<Double> a() {
        return this.f54746g.toList();
    }

    public void b() {
        Sensor defaultSensor = this.f54741b.getDefaultSensor(4);
        if (defaultSensor != null) {
            this.f54741b.registerListener(this, defaultSensor, 3);
        }
    }

    public void c() {
        this.f54743d = 0.0f;
        this.f54744e = 0.0f;
        this.f54745f = 0.0f;
        this.f54741b.unregisterListener(this);
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i4) {
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) {
        long currentTimeMillis = System.currentTimeMillis();
        long j4 = currentTimeMillis - this.f54742c;
        if (j4 < 500) {
            return;
        }
        this.f54742c = currentTimeMillis;
        float[] fArr = sensorEvent.values;
        float f10 = fArr[0];
        float f11 = fArr[1];
        float f12 = fArr[2];
        float f13 = f10 - this.f54743d;
        float f14 = f11 - this.f54744e;
        float f15 = f12 - this.f54745f;
        this.f54743d = f10;
        this.f54744e = f11;
        this.f54745f = f12;
        this.f54746g.add(new Node(Double.valueOf((Math.sqrt(((f13 * f13) + (f14 * f14)) + (f15 * f15)) / j4) * 10000.0d)));
    }
}

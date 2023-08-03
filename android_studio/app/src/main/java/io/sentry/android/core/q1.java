package io.sentry.android.core;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import io.sentry.SentryLevel;
import io.sentry.SentryOptions;
import io.sentry.t5;
import java.io.Closeable;
import java.io.IOException;

/* compiled from: TempSensorBreadcrumbsIntegration.java */
/* loaded from: classes4.dex */
public final class q1 implements io.sentry.z0, Closeable, SensorEventListener {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final Context f82569a;
    @m8.h

    /* renamed from: b  reason: collision with root package name */
    private io.sentry.n0 f82570b;
    @m8.h

    /* renamed from: c  reason: collision with root package name */
    private SentryAndroidOptions f82571c;
    @m8.h
    @m8.k

    /* renamed from: d  reason: collision with root package name */
    SensorManager f82572d;

    public q1(@m8.g Context context) {
        this.f82569a = (Context) io.sentry.util.l.c(context, "Context is required");
    }

    @Override // io.sentry.z0
    public void a(@m8.g io.sentry.n0 n0Var, @m8.g SentryOptions sentryOptions) {
        this.f82570b = (io.sentry.n0) io.sentry.util.l.c(n0Var, "Hub is required");
        SentryAndroidOptions sentryAndroidOptions = (SentryAndroidOptions) io.sentry.util.l.c(sentryOptions instanceof SentryAndroidOptions ? (SentryAndroidOptions) sentryOptions : null, "SentryAndroidOptions is required");
        this.f82571c = sentryAndroidOptions;
        io.sentry.o0 logger = sentryAndroidOptions.getLogger();
        SentryLevel sentryLevel = SentryLevel.DEBUG;
        logger.c(sentryLevel, "enableSystemEventsBreadcrumbs enabled: %s", Boolean.valueOf(this.f82571c.isEnableSystemEventBreadcrumbs()));
        if (this.f82571c.isEnableSystemEventBreadcrumbs()) {
            try {
                SensorManager sensorManager = (SensorManager) this.f82569a.getSystemService("sensor");
                this.f82572d = sensorManager;
                if (sensorManager != null) {
                    Sensor defaultSensor = sensorManager.getDefaultSensor(13);
                    if (defaultSensor != null) {
                        this.f82572d.registerListener(this, defaultSensor, 3);
                        sentryOptions.getLogger().c(sentryLevel, "TempSensorBreadcrumbsIntegration installed.", new Object[0]);
                    } else {
                        this.f82571c.getLogger().c(SentryLevel.INFO, "TYPE_AMBIENT_TEMPERATURE is not available.", new Object[0]);
                    }
                } else {
                    this.f82571c.getLogger().c(SentryLevel.INFO, "SENSOR_SERVICE is not available.", new Object[0]);
                }
            } catch (Throwable th) {
                sentryOptions.getLogger().a(SentryLevel.ERROR, th, "Failed to init. the SENSOR_SERVICE.", new Object[0]);
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        SensorManager sensorManager = this.f82572d;
        if (sensorManager != null) {
            sensorManager.unregisterListener(this);
            this.f82572d = null;
            SentryAndroidOptions sentryAndroidOptions = this.f82571c;
            if (sentryAndroidOptions != null) {
                sentryAndroidOptions.getLogger().c(SentryLevel.DEBUG, "TempSensorBreadcrumbsIntegration removed.", new Object[0]);
            }
        }
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i4) {
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(@m8.g SensorEvent sensorEvent) {
        float[] fArr = sensorEvent.values;
        if (fArr == null || fArr.length == 0 || fArr[0] == 0.0f || this.f82570b == null) {
            return;
        }
        io.sentry.f fVar = new io.sentry.f();
        fVar.y("system");
        fVar.u("device.event");
        fVar.v(com.alipay.sdk.packet.d.f6907q, "TYPE_AMBIENT_TEMPERATURE");
        fVar.v("accuracy", Integer.valueOf(sensorEvent.accuracy));
        fVar.v("timestamp", Long.valueOf(sensorEvent.timestamp));
        fVar.w(SentryLevel.INFO);
        fVar.v("degree", Float.valueOf(sensorEvent.values[0]));
        io.sentry.b0 b0Var = new io.sentry.b0();
        b0Var.m(t5.f83987j, sensorEvent);
        this.f82570b.s(fVar, b0Var);
    }
}

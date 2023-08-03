package com.ksyun.media.streamer.framework;

import a.f0;
import a.g0;
import com.ksyun.media.streamer.framework.AVFrameBase;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public class SrcPin<T extends AVFrameBase> {

    /* renamed from: b  reason: collision with root package name */
    protected List<SinkPin<T>> f46554b = new LinkedList();

    /* renamed from: c  reason: collision with root package name */
    protected Map<SinkPin, Boolean> f46555c = new LinkedHashMap();

    /* renamed from: d  reason: collision with root package name */
    protected Object f46556d;

    public synchronized void connect(@f0 SinkPin<T> sinkPin) {
        if (this.f46554b.contains(sinkPin)) {
            return;
        }
        this.f46554b.add(sinkPin);
        this.f46555c.put(sinkPin, Boolean.FALSE);
        sinkPin.onConnected(this);
    }

    public synchronized void disconnect(boolean z9) {
        disconnect(null, z9);
    }

    public synchronized boolean isConnected() {
        return !this.f46554b.isEmpty();
    }

    public synchronized void onFormatChanged(Object obj) {
        this.f46556d = obj;
        for (SinkPin<T> sinkPin : this.f46554b) {
            sinkPin.onFormatChanged(obj);
            this.f46555c.put(sinkPin, Boolean.TRUE);
        }
    }

    public synchronized void onFrameAvailable(T t9) {
        for (SinkPin<T> sinkPin : this.f46554b) {
            if (!this.f46555c.get(sinkPin).booleanValue()) {
                sinkPin.onFormatChanged(this.f46556d);
                this.f46555c.put(sinkPin, Boolean.TRUE);
            }
            sinkPin.onFrameAvailable(t9);
        }
    }

    public synchronized void disconnect(@g0 SinkPin<T> sinkPin, boolean z9) {
        if (sinkPin != null) {
            sinkPin.onDisconnect(this, z9);
            this.f46554b.remove(sinkPin);
            this.f46555c.remove(sinkPin);
        } else {
            for (SinkPin<T> sinkPin2 : this.f46554b) {
                sinkPin2.onDisconnect(this, z9);
            }
            this.f46554b.clear();
            this.f46555c.clear();
        }
    }
}

package com.ksyun.media.streamer.framework;

import com.ksyun.media.streamer.framework.AVFrameBase;
import java.util.LinkedList;
import java.util.List;

/* loaded from: classes3.dex */
public abstract class SinkPin<T extends AVFrameBase> {
    protected boolean mIsConnected = false;
    protected List<SrcPin<T>> mSrcPins = new LinkedList();

    public boolean isConnected() {
        return this.mIsConnected;
    }

    public synchronized void onConnected() {
        this.mIsConnected = true;
    }

    public synchronized void onDisconnect(boolean z9) {
        this.mIsConnected = false;
    }

    public abstract void onFormatChanged(Object obj);

    public abstract void onFrameAvailable(T t9);

    public synchronized void onConnected(SrcPin<T> srcPin) {
        if (this.mSrcPins.contains(srcPin)) {
            return;
        }
        this.mSrcPins.add(srcPin);
        onConnected();
    }

    public synchronized void onDisconnect(SrcPin<T> srcPin, boolean z9) {
        this.mSrcPins.remove(srcPin);
        if (this.mSrcPins.isEmpty()) {
            onDisconnect(z9);
        }
    }
}

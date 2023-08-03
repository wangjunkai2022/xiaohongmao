package com.ksyun.media.streamer.framework;

import com.ksyun.media.streamer.framework.AVFrameBase;

/* loaded from: classes3.dex */
public class PinAdapter<T extends AVFrameBase> {
    public SrcPin<T> mSrcPin = a();
    public SinkPin<T> mSinkPin = (SinkPin<T>) new SinkPin<T>() { // from class: com.ksyun.media.streamer.framework.PinAdapter.1
        @Override // com.ksyun.media.streamer.framework.SinkPin
        public void onDisconnect(boolean z9) {
            super.onDisconnect(z9);
            PinAdapter.this.onDisconnect(z9);
            if (z9) {
                PinAdapter.this.mSrcPin.disconnect(true);
            }
        }

        @Override // com.ksyun.media.streamer.framework.SinkPin
        public void onFormatChanged(Object obj) {
            PinAdapter.this.mSrcPin.onFormatChanged(obj);
        }

        @Override // com.ksyun.media.streamer.framework.SinkPin
        public void onFrameAvailable(T t9) {
            PinAdapter.this.mSrcPin.onFrameAvailable(t9);
        }
    };

    protected SrcPin<T> a() {
        return new SrcPin<>();
    }

    public void onDisconnect(boolean z9) {
    }
}

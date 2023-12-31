package com.koushikdutta.async.callback;

import com.koushikdutta.async.ByteBufferList;
import com.koushikdutta.async.DataEmitter;

/* loaded from: classes3.dex */
public interface DataCallback {

    /* loaded from: classes3.dex */
    public static class NullDataCallback implements DataCallback {
        @Override // com.koushikdutta.async.callback.DataCallback
        public void s(DataEmitter dataEmitter, ByteBufferList byteBufferList) {
            byteBufferList.O();
        }
    }

    void s(DataEmitter dataEmitter, ByteBufferList byteBufferList);
}

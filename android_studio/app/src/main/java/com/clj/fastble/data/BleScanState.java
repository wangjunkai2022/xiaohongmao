package com.clj.fastble.data;

/* loaded from: classes.dex */
public enum BleScanState {
    STATE_IDLE(-1),
    STATE_SCANNING(1);
    

    /* renamed from: a  reason: collision with root package name */
    private int f9816a;

    BleScanState(int i4) {
        this.f9816a = i4;
    }

    public int getCode() {
        return this.f9816a;
    }
}

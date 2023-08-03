package com.lljjcoder.style.citypickerview.widget;

/* loaded from: classes3.dex */
public abstract class XCallbackListener {
    public void call(Object... objArr) {
        callback(objArr);
    }

    protected abstract void callback(Object... objArr);
}

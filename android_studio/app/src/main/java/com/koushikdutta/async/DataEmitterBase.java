package com.koushikdutta.async;

import com.koushikdutta.async.callback.CompletedCallback;
import com.koushikdutta.async.callback.DataCallback;

/* loaded from: classes3.dex */
public abstract class DataEmitterBase implements DataEmitter {

    /* renamed from: a  reason: collision with root package name */
    private boolean f44246a;

    /* renamed from: b  reason: collision with root package name */
    CompletedCallback f44247b;

    /* renamed from: c  reason: collision with root package name */
    DataCallback f44248c;

    @Override // com.koushikdutta.async.DataEmitter
    public final CompletedCallback B() {
        return this.f44247b;
    }

    @Override // com.koushikdutta.async.DataEmitter
    public final void X(CompletedCallback completedCallback) {
        this.f44247b = completedCallback;
    }

    @Override // com.koushikdutta.async.DataEmitter
    public void b0(DataCallback dataCallback) {
        this.f44248c = dataCallback;
    }

    @Override // com.koushikdutta.async.DataEmitter
    public String n() {
        return null;
    }

    @Override // com.koushikdutta.async.DataEmitter
    public DataCallback r0() {
        return this.f44248c;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void v0(Exception exc) {
        if (this.f44246a) {
            return;
        }
        this.f44246a = true;
        if (B() != null) {
            B().g(exc);
        }
    }
}

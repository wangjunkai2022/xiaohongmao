package com.koushikdutta.async.callback;

/* loaded from: classes3.dex */
public interface CompletedCallback {

    /* loaded from: classes3.dex */
    public static class NullCompletedCallback implements CompletedCallback {
        @Override // com.koushikdutta.async.callback.CompletedCallback
        public void g(Exception exc) {
        }
    }

    void g(Exception exc);
}

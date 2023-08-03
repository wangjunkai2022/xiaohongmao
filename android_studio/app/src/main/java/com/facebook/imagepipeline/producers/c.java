package com.facebook.imagepipeline.producers;

import com.facebook.imagepipeline.producers.w;
import com.facebook.infer.annotation.Nullsafe;
import java.util.Map;

/* compiled from: BaseNetworkFetcher.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public abstract class c<FETCH_STATE extends w> implements l0<FETCH_STATE> {
    @Override // com.facebook.imagepipeline.producers.l0
    public void b(FETCH_STATE fetchState, int byteSize) {
    }

    @Override // com.facebook.imagepipeline.producers.l0
    public boolean c(FETCH_STATE fetchState) {
        return true;
    }

    @Override // com.facebook.imagepipeline.producers.l0
    @r7.h
    public Map<String, String> d(FETCH_STATE fetchState, int byteSize) {
        return null;
    }
}

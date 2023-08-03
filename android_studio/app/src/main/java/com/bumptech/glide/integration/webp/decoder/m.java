package com.bumptech.glide.integration.webp.decoder;

import com.bumptech.glide.load.engine.q;

/* compiled from: WebpDrawableResource.java */
/* loaded from: classes.dex */
public class m extends com.bumptech.glide.load.resource.drawable.c<k> implements q {
    public m(k kVar) {
        super(kVar);
    }

    @Override // com.bumptech.glide.load.engine.u
    public Class<k> a() {
        return k.class;
    }

    @Override // com.bumptech.glide.load.engine.u
    public int getSize() {
        return ((k) this.f9343a).l();
    }

    @Override // com.bumptech.glide.load.resource.drawable.c, com.bumptech.glide.load.engine.q
    public void initialize() {
        ((k) this.f9343a).e().prepareToDraw();
    }

    @Override // com.bumptech.glide.load.engine.u
    public void recycle() {
        ((k) this.f9343a).stop();
        ((k) this.f9343a).o();
    }
}

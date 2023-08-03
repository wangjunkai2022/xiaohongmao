package com.bumptech.glide.load.resource.gif;

import androidx.annotation.NonNull;
import com.bumptech.glide.load.engine.q;

/* compiled from: GifDrawableResource.java */
/* loaded from: classes.dex */
public class e extends com.bumptech.glide.load.resource.drawable.c<c> implements q {
    public e(c cVar) {
        super(cVar);
    }

    @Override // com.bumptech.glide.load.engine.u
    @NonNull
    public Class<c> a() {
        return c.class;
    }

    @Override // com.bumptech.glide.load.engine.u
    public int getSize() {
        return ((c) this.f9343a).j();
    }

    @Override // com.bumptech.glide.load.resource.drawable.c, com.bumptech.glide.load.engine.q
    public void initialize() {
        ((c) this.f9343a).e().prepareToDraw();
    }

    @Override // com.bumptech.glide.load.engine.u
    public void recycle() {
        ((c) this.f9343a).stop();
        ((c) this.f9343a).m();
    }
}

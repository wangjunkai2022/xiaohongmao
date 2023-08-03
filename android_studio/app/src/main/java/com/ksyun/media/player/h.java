package com.ksyun.media.player;

import android.annotation.TargetApi;
import android.graphics.SurfaceTexture;
import android.view.Surface;
import android.view.SurfaceHolder;

/* compiled from: TextureMediaPlayer.java */
@TargetApi(14)
/* loaded from: classes3.dex */
public class h extends g implements IMediaPlayer, c {

    /* renamed from: b  reason: collision with root package name */
    private SurfaceTexture f45529b;

    /* renamed from: c  reason: collision with root package name */
    private d f45530c;

    public h(IMediaPlayer iMediaPlayer) {
        super(iMediaPlayer);
    }

    @Override // com.ksyun.media.player.c
    public void a(SurfaceTexture surfaceTexture) {
        if (this.f45529b == surfaceTexture) {
            return;
        }
        c();
        this.f45529b = surfaceTexture;
        if (surfaceTexture == null) {
            super.setSurface(null);
        } else {
            super.setSurface(new Surface(surfaceTexture));
        }
    }

    public void c() {
        SurfaceTexture surfaceTexture = this.f45529b;
        if (surfaceTexture != null) {
            d dVar = this.f45530c;
            if (dVar != null) {
                dVar.a(surfaceTexture);
            } else {
                surfaceTexture.release();
            }
            this.f45529b = null;
        }
    }

    @Override // com.ksyun.media.player.g, com.ksyun.media.player.IMediaPlayer
    public void release() {
        super.release();
        c();
    }

    @Override // com.ksyun.media.player.g, com.ksyun.media.player.IMediaPlayer
    public void reset() {
        super.reset();
        c();
    }

    @Override // com.ksyun.media.player.g, com.ksyun.media.player.IMediaPlayer
    public void setDisplay(SurfaceHolder surfaceHolder) {
        if (this.f45529b == null) {
            super.setDisplay(surfaceHolder);
        }
    }

    @Override // com.ksyun.media.player.g, com.ksyun.media.player.IMediaPlayer
    public void setSurface(Surface surface) {
        if (this.f45529b == null) {
            super.setSurface(surface);
        }
    }

    @Override // com.ksyun.media.player.c
    public SurfaceTexture a() {
        return this.f45529b;
    }

    @Override // com.ksyun.media.player.c
    public void a(d dVar) {
        this.f45530c = dVar;
    }
}

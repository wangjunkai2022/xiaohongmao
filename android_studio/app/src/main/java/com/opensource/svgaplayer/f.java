package com.opensource.svgaplayer;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.drawable.Drawable;
import android.media.SoundPool;
import android.widget.ImageView;
import com.facebook.common.callercontext.ContextChain;
import kotlin.Metadata;

/* compiled from: SVGADrawable.kt */
@Metadata(bv = {}, d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010.\u001a\u00020*\u0012\u0006\u00102\u001a\u00020/¢\u0006\u0004\b3\u00104B\u0011\b\u0016\u0012\u0006\u0010.\u001a\u00020*¢\u0006\u0004\b3\u00105J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\b\u0010\t\u001a\u00020\u0006H\u0016J\u0012\u0010\f\u001a\u00020\u00042\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016J\u0006\u0010\r\u001a\u00020\u0004J\u0006\u0010\u000e\u001a\u00020\u0004J\u0006\u0010\u000f\u001a\u00020\u0004J\u0006\u0010\u0010\u001a\u00020\u0004R*\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00118\u0006@@X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R*\u0010\u001e\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00068\u0006@@X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\"\u0010%\u001a\u00020\u001f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010 \u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R\u0014\u0010)\u001a\u00020&8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010(R\u0017\u0010.\u001a\u00020*8\u0006¢\u0006\f\n\u0004\b!\u0010+\u001a\u0004\b,\u0010-R\u0017\u00102\u001a\u00020/8\u0006¢\u0006\f\n\u0004\b,\u00100\u001a\u0004\b'\u00101¨\u00066"}, d2 = {"Lcom/opensource/svgaplayer/f;", "Landroid/graphics/drawable/Drawable;", "Landroid/graphics/Canvas;", "canvas", "", "draw", "", "alpha", "setAlpha", "getOpacity", "Landroid/graphics/ColorFilter;", "colorFilter", "setColorFilter", "h", "g", "l", "a", "", "value", "Z", "b", "()Z", ContextChain.TAG_INFRA, "(Z)V", "cleared", "I", "c", "()I", "j", "(I)V", "currentFrame", "Landroid/widget/ImageView$ScaleType;", "Landroid/widget/ImageView$ScaleType;", "e", "()Landroid/widget/ImageView$ScaleType;", "k", "(Landroid/widget/ImageView$ScaleType;)V", "scaleType", "Lcom/opensource/svgaplayer/drawer/b;", "d", "Lcom/opensource/svgaplayer/drawer/b;", "drawer", "Lcom/opensource/svgaplayer/l;", "Lcom/opensource/svgaplayer/l;", "f", "()Lcom/opensource/svgaplayer/l;", "videoItem", "Lcom/opensource/svgaplayer/g;", "Lcom/opensource/svgaplayer/g;", "()Lcom/opensource/svgaplayer/g;", "dynamicItem", "<init>", "(Lcom/opensource/svgaplayer/l;Lcom/opensource/svgaplayer/g;)V", "(Lcom/opensource/svgaplayer/l;)V", a.f47177b}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public final class f extends Drawable {

    /* renamed from: a  reason: collision with root package name */
    private boolean f47238a;

    /* renamed from: b  reason: collision with root package name */
    private int f47239b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private ImageView.ScaleType f47240c;

    /* renamed from: d  reason: collision with root package name */
    private final com.opensource.svgaplayer.drawer.b f47241d;
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final l f47242e;
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    private final g f47243f;

    public f(@m8.g l lVar, @m8.g g gVar) {
        this.f47242e = lVar;
        this.f47243f = gVar;
        this.f47238a = true;
        this.f47240c = ImageView.ScaleType.MATRIX;
        this.f47241d = new com.opensource.svgaplayer.drawer.b(lVar, gVar);
    }

    public final void a() {
        for (t4.a aVar : this.f47242e.m()) {
            Integer c10 = aVar.c();
            if (c10 != null) {
                int intValue = c10.intValue();
                k kVar = k.f47326e;
                if (kVar.g()) {
                    kVar.o(intValue);
                } else {
                    SoundPool r9 = this.f47242e.r();
                    if (r9 != null) {
                        r9.stop(intValue);
                    }
                }
            }
            aVar.h(null);
        }
        this.f47242e.c();
    }

    public final boolean b() {
        return this.f47238a;
    }

    public final int c() {
        return this.f47239b;
    }

    @m8.g
    public final g d() {
        return this.f47243f;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@m8.h Canvas canvas) {
        if (this.f47238a || canvas == null) {
            return;
        }
        this.f47241d.a(canvas, this.f47239b, this.f47240c);
    }

    @m8.g
    public final ImageView.ScaleType e() {
        return this.f47240c;
    }

    @m8.g
    public final l f() {
        return this.f47242e;
    }

    public final void g() {
        for (t4.a aVar : this.f47242e.m()) {
            Integer c10 = aVar.c();
            if (c10 != null) {
                int intValue = c10.intValue();
                k kVar = k.f47326e;
                if (kVar.g()) {
                    kVar.i(intValue);
                } else {
                    SoundPool r9 = this.f47242e.r();
                    if (r9 != null) {
                        r9.pause(intValue);
                    }
                }
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -2;
    }

    public final void h() {
        for (t4.a aVar : this.f47242e.m()) {
            Integer c10 = aVar.c();
            if (c10 != null) {
                int intValue = c10.intValue();
                k kVar = k.f47326e;
                if (kVar.g()) {
                    kVar.l(intValue);
                } else {
                    SoundPool r9 = this.f47242e.r();
                    if (r9 != null) {
                        r9.resume(intValue);
                    }
                }
            }
        }
    }

    public final void i(boolean z9) {
        if (this.f47238a == z9) {
            return;
        }
        this.f47238a = z9;
        invalidateSelf();
    }

    public final void j(int i4) {
        if (this.f47239b == i4) {
            return;
        }
        this.f47239b = i4;
        invalidateSelf();
    }

    public final void k(@m8.g ImageView.ScaleType scaleType) {
        this.f47240c = scaleType;
    }

    public final void l() {
        for (t4.a aVar : this.f47242e.m()) {
            Integer c10 = aVar.c();
            if (c10 != null) {
                int intValue = c10.intValue();
                k kVar = k.f47326e;
                if (kVar.g()) {
                    kVar.o(intValue);
                } else {
                    SoundPool r9 = this.f47242e.r();
                    if (r9 != null) {
                        r9.stop(intValue);
                    }
                }
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i4) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(@m8.h ColorFilter colorFilter) {
    }

    public f(@m8.g l lVar) {
        this(lVar, new g());
    }
}

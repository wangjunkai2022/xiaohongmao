package com.tangxiaolv.telegramgallery.Components;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import com.tangxiaolv.telegramgallery.TL.m;
import com.tangxiaolv.telegramgallery.k;

/* loaded from: classes3.dex */
public class BackupImageView extends View {

    /* renamed from: a  reason: collision with root package name */
    private k f56105a;

    /* renamed from: b  reason: collision with root package name */
    private int f56106b;

    /* renamed from: c  reason: collision with root package name */
    private int f56107c;

    public BackupImageView(Context context) {
        super(context);
        this.f56106b = -1;
        this.f56107c = -1;
        a();
    }

    private void a() {
        this.f56105a = new k(this);
    }

    public void b(m mVar, String str, Bitmap bitmap) {
        h(mVar, null, str, null, bitmap, null, null, null, 0);
    }

    public void c(m mVar, String str, Bitmap bitmap, int i4) {
        h(mVar, null, str, null, bitmap, null, null, null, i4);
    }

    public void d(m mVar, String str, Drawable drawable) {
        h(mVar, null, str, drawable, null, null, null, null, 0);
    }

    public void e(m mVar, String str, Drawable drawable, int i4) {
        h(mVar, null, str, drawable, null, null, null, null, i4);
    }

    public void f(m mVar, String str, com.tangxiaolv.telegramgallery.TL.d dVar, int i4) {
        h(mVar, null, str, null, null, dVar, null, null, i4);
    }

    public void g(m mVar, String str, String str2, Drawable drawable) {
        h(mVar, null, str, drawable, null, null, null, str2, 0);
    }

    public k getImageReceiver() {
        return this.f56105a;
    }

    public void h(m mVar, String str, String str2, Drawable drawable, Bitmap bitmap, com.tangxiaolv.telegramgallery.TL.d dVar, String str3, String str4, int i4) {
        BackupImageView backupImageView;
        BitmapDrawable bitmapDrawable;
        if (bitmap != null) {
            backupImageView = this;
            bitmapDrawable = new BitmapDrawable((Resources) null, bitmap);
        } else {
            backupImageView = this;
            bitmapDrawable = drawable;
        }
        backupImageView.f56105a.c0(mVar, str, str2, bitmapDrawable, dVar, str3, i4, str4, false);
    }

    public void i(String str, String str2, Drawable drawable) {
        h(null, str, str2, drawable, null, null, null, null, 0);
    }

    public void j(int i4, boolean z9) {
        this.f56105a.k0(i4, z9);
    }

    public void k(int i4, int i10) {
        this.f56106b = i4;
        this.f56107c = i10;
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f56105a.O();
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f56105a.P();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.f56106b != -1 && this.f56107c != -1) {
            int height = getHeight();
            int i4 = this.f56107c;
            this.f56105a.h0((getWidth() - this.f56106b) / 2, (height - i4) / 2, this.f56106b, i4);
        } else {
            this.f56105a.h0(0, 0, getWidth(), getHeight());
        }
        this.f56105a.d(canvas);
    }

    public void setAspectFit(boolean z9) {
        this.f56105a.T(z9);
    }

    public void setImageBitmap(Bitmap bitmap) {
        this.f56105a.e0(bitmap);
    }

    public void setImageDrawable(Drawable drawable) {
        this.f56105a.f0(drawable);
    }

    public void setImageResource(int i4) {
        this.f56105a.f0(getResources().getDrawable(i4));
    }

    public void setRoundRadius(int i4) {
        this.f56105a.n0(i4);
    }

    public BackupImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f56106b = -1;
        this.f56107c = -1;
        a();
    }

    public BackupImageView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.f56106b = -1;
        this.f56107c = -1;
        a();
    }
}

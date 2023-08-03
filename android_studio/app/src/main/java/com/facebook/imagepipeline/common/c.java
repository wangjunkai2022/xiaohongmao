package com.facebook.imagepipeline.common;

import android.graphics.Bitmap;
import android.graphics.ColorSpace;
import com.facebook.imagepipeline.common.c;
import com.facebook.infer.annotation.Nullsafe;
import r7.h;

/* compiled from: ImageDecodeOptionsBuilder.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class c<T extends c> {

    /* renamed from: a  reason: collision with root package name */
    private int f12186a = 100;

    /* renamed from: b  reason: collision with root package name */
    private int f12187b = Integer.MAX_VALUE;

    /* renamed from: c  reason: collision with root package name */
    private boolean f12188c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f12189d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f12190e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f12191f;

    /* renamed from: g  reason: collision with root package name */
    private Bitmap.Config f12192g;

    /* renamed from: h  reason: collision with root package name */
    private Bitmap.Config f12193h;
    @h

    /* renamed from: i  reason: collision with root package name */
    private com.facebook.imagepipeline.decoder.b f12194i;
    @h

    /* renamed from: j  reason: collision with root package name */
    private t1.a f12195j;
    @h

    /* renamed from: k  reason: collision with root package name */
    private ColorSpace f12196k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f12197l;

    public c() {
        Bitmap.Config config = Bitmap.Config.ARGB_8888;
        this.f12192g = config;
        this.f12193h = config;
    }

    public T A(boolean useLastFrameForPreview) {
        this.f12189d = useLastFrameForPreview;
        return m();
    }

    public b a() {
        return new b(this);
    }

    public Bitmap.Config b() {
        return this.f12193h;
    }

    public Bitmap.Config c() {
        return this.f12192g;
    }

    @h
    public t1.a d() {
        return this.f12195j;
    }

    @h
    public ColorSpace e() {
        return this.f12196k;
    }

    @h
    public com.facebook.imagepipeline.decoder.b f() {
        return this.f12194i;
    }

    public boolean g() {
        return this.f12190e;
    }

    public boolean h() {
        return this.f12188c;
    }

    public boolean i() {
        return this.f12197l;
    }

    public boolean j() {
        return this.f12191f;
    }

    public int k() {
        return this.f12187b;
    }

    public int l() {
        return this.f12186a;
    }

    protected T m() {
        return this;
    }

    public boolean n() {
        return this.f12189d;
    }

    public T o(Bitmap.Config animatedBitmapConfig) {
        this.f12193h = animatedBitmapConfig;
        return m();
    }

    public T p(Bitmap.Config bitmapConfig) {
        this.f12192g = bitmapConfig;
        return m();
    }

    public T q(@h t1.a bitmapTransformation) {
        this.f12195j = bitmapTransformation;
        return m();
    }

    public T r(ColorSpace colorSpace) {
        this.f12196k = colorSpace;
        return m();
    }

    public T s(@h com.facebook.imagepipeline.decoder.b customImageDecoder) {
        this.f12194i = customImageDecoder;
        return m();
    }

    public T t(boolean decodeAllFrames) {
        this.f12190e = decodeAllFrames;
        return m();
    }

    public T u(boolean decodePreviewFrame) {
        this.f12188c = decodePreviewFrame;
        return m();
    }

    public T v(boolean excludeBitmapConfigFromComparison) {
        this.f12197l = excludeBitmapConfigFromComparison;
        return m();
    }

    public T w(boolean forceStaticImage) {
        this.f12191f = forceStaticImage;
        return m();
    }

    public c x(b options) {
        this.f12186a = options.f12174a;
        this.f12187b = options.f12175b;
        this.f12188c = options.f12176c;
        this.f12189d = options.f12177d;
        this.f12190e = options.f12178e;
        this.f12191f = options.f12179f;
        this.f12192g = options.f12180g;
        this.f12193h = options.f12181h;
        this.f12194i = options.f12182i;
        this.f12195j = options.f12183j;
        this.f12196k = options.f12184k;
        return m();
    }

    public T y(int maxDimensionPx) {
        this.f12187b = maxDimensionPx;
        return m();
    }

    public T z(int intervalMs) {
        this.f12186a = intervalMs;
        return m();
    }
}

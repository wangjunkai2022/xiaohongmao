package com.ksyun.media.streamer.filter.imgtex;

import android.opengl.GLES20;
import android.text.TextUtils;
import com.ksyun.media.streamer.framework.ImgTexFormat;
import com.ksyun.media.streamer.framework.ImgTexFrame;
import com.ksyun.media.streamer.framework.SinkPin;
import com.ksyun.media.streamer.util.CredtpWrapper;
import com.ksyun.media.streamer.util.gles.GLRender;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;

/* loaded from: classes3.dex */
public abstract class ImgEffectFilterBase extends ImgTexFilter {
    public static final int GRADIENT_FACTOR_TYPE_DOWN = 2;
    public static final int GRADIENT_FACTOR_TYPE_UP = 1;
    public static final int GRADIENT_FACTOR_TYPE_UP_DOWN = 3;
    public static final int GRADIENT_TYPE_1 = 1;
    public static final int GRADIENT_TYPE_2 = 2;

    /* renamed from: a  reason: collision with root package name */
    private static final String f46416a = "ImgEffectFilterBase";

    /* renamed from: b  reason: collision with root package name */
    private static final int f46417b = 20;

    /* renamed from: c  reason: collision with root package name */
    private String f46418c;

    /* renamed from: d  reason: collision with root package name */
    private String f46419d;

    /* renamed from: e  reason: collision with root package name */
    private float f46420e;

    /* renamed from: f  reason: collision with root package name */
    private float f46421f;

    /* renamed from: g  reason: collision with root package name */
    private int f46422g;

    /* renamed from: h  reason: collision with root package name */
    private float f46423h;

    /* renamed from: i  reason: collision with root package name */
    private float f46424i;

    /* renamed from: j  reason: collision with root package name */
    private float f46425j;

    /* renamed from: k  reason: collision with root package name */
    private float f46426k;

    /* renamed from: l  reason: collision with root package name */
    private int f46427l;

    /* renamed from: m  reason: collision with root package name */
    private int f46428m;

    /* renamed from: n  reason: collision with root package name */
    private String f46429n;

    /* renamed from: o  reason: collision with root package name */
    private int f46430o;

    /* renamed from: p  reason: collision with root package name */
    private Timer f46431p;

    /* renamed from: q  reason: collision with root package name */
    private TimerTask f46432q;

    /* renamed from: r  reason: collision with root package name */
    private int f46433r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f46434s;

    /* renamed from: t  reason: collision with root package name */
    private Map<Integer, a> f46435t;

    /* loaded from: classes3.dex */
    private class a {

        /* renamed from: b  reason: collision with root package name */
        String f46439b;

        /* renamed from: a  reason: collision with root package name */
        int[] f46438a = {-1};

        /* renamed from: c  reason: collision with root package name */
        int f46440c = -1;

        public a(String str) {
            this.f46439b = str;
        }
    }

    public ImgEffectFilterBase(GLRender gLRender) {
        super(gLRender);
        this.f46418c = "uniform mat4 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n";
        this.f46420e = 0.0f;
        this.f46421f = 1.0f;
        this.f46422g = 30;
        this.f46423h = 1.0f / 30;
        this.f46424i = 1000.0f;
        this.f46425j = 1000.0f / 20.0f;
        this.f46426k = 0.0f;
        this.f46427l = 1;
        this.f46428m = -1;
        this.f46430o = 1;
        int i4 = 0;
        this.f46434s = false;
        init("uniform mat4 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n", this.f46419d);
        this.f46435t = new LinkedHashMap();
        while (i4 < getVSinkPinNum()) {
            Map<Integer, a> map = this.f46435t;
            Integer valueOf = Integer.valueOf(i4);
            StringBuilder sb = new StringBuilder();
            sb.append("vTexture");
            i4++;
            sb.append(String.valueOf(i4));
            map.put(valueOf, new a(sb.toString()));
        }
    }

    static /* synthetic */ int b(ImgEffectFilterBase imgEffectFilterBase) {
        int i4 = imgEffectFilterBase.f46433r;
        imgEffectFilterBase.f46433r = i4 + 1;
        return i4;
    }

    public int getGradientFactorType() {
        return this.f46427l;
    }

    public float getGradientFactorValue() {
        return this.f46426k;
    }

    protected abstract float[] getGradientValue();

    public float getMAXGradientFactorValue() {
        return this.f46421f;
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgTexFilter, com.ksyun.media.streamer.filter.imgtex.ImgFilterBase
    public int getSinkPinNum() {
        return getVSinkPinNum() + 1;
    }

    public SinkPin<ImgTexFrame> getVSinkPin(int i4) {
        return getSinkPin(i4 + 1);
    }

    protected abstract int getVSinkPinNum();

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ksyun.media.streamer.filter.imgtex.ImgTexFilterBase
    public void onDisconnect(boolean z9) {
        super.onDisconnect(z9);
        this.f46426k = this.f46420e;
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgTexFilter, com.ksyun.media.streamer.filter.imgtex.ImgTexFilterBase
    public void onDraw(ImgTexFrame[] imgTexFrameArr) {
        int i4 = 0;
        while (i4 < this.f46435t.size()) {
            int i10 = i4 + 1;
            if (imgTexFrameArr[i10] != null) {
                this.f46435t.get(Integer.valueOf(i4)).f46438a[0] = imgTexFrameArr[i10].textureId;
            }
            i4 = i10;
        }
        super.onDraw(imgTexFrameArr);
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgTexFilter
    public void onDrawArraysAfter() {
        GLES20.glActiveTexture(33986);
        GLES20.glBindTexture(3553, 0);
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgTexFilter
    public void onDrawArraysPre() {
        int i4 = this.f46428m;
        if (i4 >= 0) {
            int i10 = this.f46430o;
            if (i10 == 1) {
                GLES20.glUniform1f(i4, getGradientValue()[0]);
            } else if (i10 == 2) {
                GLES20.glUniform2fv(i4, 1, getGradientValue(), 0);
            }
        }
        for (int i11 = 0; i11 < getVSinkPinNum(); i11++) {
            a aVar = this.f46435t.get(Integer.valueOf(i11));
            if (aVar.f46440c >= 0) {
                GLES20.glActiveTexture(33986);
                GLES20.glBindTexture(3553, aVar.f46438a[0]);
                GLES20.glUniform1i(aVar.f46440c, 2);
            }
        }
        if (this.f46434s) {
            setGradientFactorValue(getGradientFactorValue() + this.f46423h);
            if (this.f46426k > this.f46421f) {
                this.f46426k = this.f46420e;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ksyun.media.streamer.filter.imgtex.ImgTexFilter
    public void onFormatChanged(ImgTexFormat imgTexFormat) {
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgTexFilter
    public void onInitialized() {
        if (!TextUtils.isEmpty(this.f46429n)) {
            try {
                this.f46428m = getUniformLocation(this.f46429n);
            } catch (RuntimeException unused) {
            }
        }
        for (int i4 = 0; i4 < getVSinkPinNum(); i4++) {
            if (!TextUtils.isEmpty(this.f46429n)) {
                try {
                    a aVar = this.f46435t.get(Integer.valueOf(i4));
                    aVar.f46440c = getUniformLocation(aVar.f46439b);
                } catch (RuntimeException unused2) {
                }
            }
        }
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgTexFilter, com.ksyun.media.streamer.filter.imgtex.ImgTexFilterBase
    public void onRelease() {
        super.onRelease();
        for (int i4 = 0; i4 < getVSinkPinNum(); i4++) {
            a aVar = this.f46435t.get(Integer.valueOf(i4));
            if (aVar.f46440c >= 0) {
                GLES20.glDeleteTextures(1, aVar.f46438a, 0);
                aVar.f46438a[0] = -1;
            }
        }
    }

    public void setEffectAuto(boolean z9) {
        this.f46434s = z9;
    }

    public void setFragment(int i4) {
        String a10 = CredtpWrapper.a().a(i4);
        this.f46419d = a10;
        init(this.f46418c, a10);
    }

    public void setGradientFactorFrameCount(int i4) {
        this.f46422g = i4;
        this.f46423h = this.f46421f / i4;
    }

    public void setGradientFactorType(int i4) {
        this.f46427l = i4;
    }

    public void setGradientFactorValue(float f10) {
        this.f46426k = f10;
    }

    public void setGradientName(String str) {
        this.f46429n = str;
    }

    public void setGradientType(int i4) {
        this.f46430o = i4;
    }

    public void setMAXGradientFactorValue(float f10) {
        this.f46421f = f10;
    }

    public void setTimeInfoEffectDuration(long j4) {
        this.f46424i = (float) j4;
        this.f46425j = ((int) j4) / 20;
    }

    public void setVertex(String str) {
        this.f46418c = str;
        init(str, this.f46419d);
    }

    public void startFilterTime() {
        final float f10 = this.f46421f / this.f46425j;
        this.f46433r = 0;
        this.f46432q = new TimerTask() { // from class: com.ksyun.media.streamer.filter.imgtex.ImgEffectFilterBase.1
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                ImgEffectFilterBase imgEffectFilterBase = ImgEffectFilterBase.this;
                imgEffectFilterBase.setGradientFactorValue(imgEffectFilterBase.f46433r * f10);
                ImgEffectFilterBase.b(ImgEffectFilterBase.this);
                if (ImgEffectFilterBase.this.f46433r >= ImgEffectFilterBase.this.f46425j) {
                    ImgEffectFilterBase.this.f46433r = 0;
                }
            }
        };
        Timer timer = new Timer();
        this.f46431p = timer;
        timer.schedule(this.f46432q, 0L, 20L);
    }

    public void stopFilterTime() {
        Timer timer = this.f46431p;
        if (timer != null) {
            timer.cancel();
            this.f46431p = null;
            setGradientFactorValue(0.0f);
            this.f46433r = 0;
        }
    }

    public void setFragment(String str) {
        this.f46419d = str;
        init(this.f46418c, str);
    }
}

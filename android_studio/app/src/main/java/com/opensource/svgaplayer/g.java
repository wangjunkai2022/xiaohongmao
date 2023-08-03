package com.opensource.svgaplayer;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.os.Handler;
import android.text.BoringLayout;
import android.text.StaticLayout;
import android.text.TextPaint;
import androidx.exifinterface.media.ExifInterface;
import com.facebook.common.callercontext.ContextChain;
import com.koushikdutta.async.http.AsyncHttpGet;
import io.sentry.protocol.y;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;

/* compiled from: SVGADynamicEntity.kt */
@Metadata(bv = {}, d1 = {"\u0000|\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u001a\n\u0002\u0010\u0015\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\bS\u0010TJ\u0016\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u0016\u0010\n\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u0004J\u0016\u0010\f\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004J\u001e\u0010\u0010\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0005\u001a\u00020\u0004J\u0016\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0005\u001a\u00020\u0004J\u0016\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00142\u0006\u0010\u0005\u001a\u00020\u0004JF\u0010\u001e\u001a\u00020\u000626\u0010\u001d\u001a2\u0012\u0013\u0012\u00110\u0017¢\u0006\f\b\u0018\u0012\b\b\u0019\u0012\u0004\b\b(\u001a\u0012\u0013\u0012\u00110\u001b¢\u0006\f\b\u0018\u0012\b\b\u0019\u0012\u0004\b\b(\u001c\u0012\u0004\u0012\u00020\u00020\u00162\u0006\u0010\u0005\u001a\u00020\u0004J\u0014\u0010!\u001a\u00020\u00062\f\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00040\u001fJ\u000e\u0010\"\u001a\u00020\u00062\u0006\u0010 \u001a\u00020\u0004Jp\u0010&\u001a\u00020\u00062`\u0010\u001d\u001a\\\u0012\u0013\u0012\u00110\u0017¢\u0006\f\b\u0018\u0012\b\b\u0019\u0012\u0004\b\b(\u001a\u0012\u0013\u0012\u00110\u001b¢\u0006\f\b\u0018\u0012\b\b\u0019\u0012\u0004\b\b(\u001c\u0012\u0013\u0012\u00110\u001b¢\u0006\f\b\u0018\u0012\b\b\u0019\u0012\u0004\b\b($\u0012\u0013\u0012\u00110\u001b¢\u0006\f\b\u0018\u0012\b\b\u0019\u0012\u0004\b\b(%\u0012\u0004\u0012\u00020\u00020#2\u0006\u0010\u0005\u001a\u00020\u0004J\u0006\u0010'\u001a\u00020\u0006R>\u0010/\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00020(j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0002`)8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b'\u0010*\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.R>\u00103\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\b0(j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\b`)8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b0\u0010*\u001a\u0004\b1\u0010,\"\u0004\b2\u0010.R>\u00107\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040(j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004`)8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b4\u0010*\u001a\u0004\b5\u0010,\"\u0004\b6\u0010.R>\u0010;\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u000e0(j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u000e`)8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b8\u0010*\u001a\u0004\b9\u0010,\"\u0004\b:\u0010.R>\u0010>\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00110(j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0011`)8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b+\u0010*\u001a\u0004\b<\u0010,\"\u0004\b=\u0010.R>\u0010A\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00140(j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0014`)8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b?\u0010*\u001a\u0004\b0\u0010,\"\u0004\b@\u0010.R\u009e\u0001\u0010C\u001a~\u0012\u0004\u0012\u00020\u0004\u00124\u00122\u0012\u0013\u0012\u00110\u0017¢\u0006\f\b\u0018\u0012\b\b\u0019\u0012\u0004\b\b(\u001a\u0012\u0013\u0012\u00110\u001b¢\u0006\f\b\u0018\u0012\b\b\u0019\u0012\u0004\b\b(\u001c\u0012\u0004\u0012\u00020\u00020\u00160(j>\u0012\u0004\u0012\u00020\u0004\u00124\u00122\u0012\u0013\u0012\u00110\u0017¢\u0006\f\b\u0018\u0012\b\b\u0019\u0012\u0004\b\b(\u001a\u0012\u0013\u0012\u00110\u001b¢\u0006\f\b\u0018\u0012\b\b\u0019\u0012\u0004\b\b(\u001c\u0012\u0004\u0012\u00020\u00020\u0016`)8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b1\u0010*\u001a\u0004\b4\u0010,\"\u0004\bB\u0010.R>\u0010G\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020D0(j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020D`)8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b<\u0010*\u001a\u0004\bE\u0010,\"\u0004\bF\u0010.R>\u0010J\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020H0(j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020H`)8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b5\u0010*\u001a\u0004\b?\u0010,\"\u0004\bI\u0010.Ró\u0001\u0010L\u001aÒ\u0001\u0012\u0004\u0012\u00020\u0004\u0012^\u0012\\\u0012\u0013\u0012\u00110\u0017¢\u0006\f\b\u0018\u0012\b\b\u0019\u0012\u0004\b\b(\u001a\u0012\u0013\u0012\u00110\u001b¢\u0006\f\b\u0018\u0012\b\b\u0019\u0012\u0004\b\b(\u001c\u0012\u0013\u0012\u00110\u001b¢\u0006\f\b\u0018\u0012\b\b\u0019\u0012\u0004\b\b($\u0012\u0013\u0012\u00110\u001b¢\u0006\f\b\u0018\u0012\b\b\u0019\u0012\u0004\b\b(%\u0012\u0004\u0012\u00020\u00020#0(jh\u0012\u0004\u0012\u00020\u0004\u0012^\u0012\\\u0012\u0013\u0012\u00110\u0017¢\u0006\f\b\u0018\u0012\b\b\u0019\u0012\u0004\b\b(\u001a\u0012\u0013\u0012\u00110\u001b¢\u0006\f\b\u0018\u0012\b\b\u0019\u0012\u0004\b\b(\u001c\u0012\u0013\u0012\u00110\u001b¢\u0006\f\b\u0018\u0012\b\b\u0019\u0012\u0004\b\b($\u0012\u0013\u0012\u00110\u001b¢\u0006\f\b\u0018\u0012\b\b\u0019\u0012\u0004\b\b(%\u0012\u0004\u0012\u00020\u00020#`)8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b9\u0010*\u001a\u0004\b8\u0010,\"\u0004\bK\u0010.R\"\u0010R\u001a\u00020\u00028\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\bE\u0010M\u001a\u0004\bN\u0010O\"\u0004\bP\u0010Q¨\u0006U"}, d2 = {"Lcom/opensource/svgaplayer/g;", "", "", "value", "", "forKey", "", ExifInterface.LONGITUDE_EAST, "Landroid/graphics/Bitmap;", "bitmap", "v", "url", "w", "text", "Landroid/text/TextPaint;", "textPaint", "B", "Landroid/text/StaticLayout;", "layoutText", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "Landroid/text/BoringLayout;", "z", "Lkotlin/Function2;", "Landroid/graphics/Canvas;", "Lkotlin/ParameterName;", "name", "canvas", "", "frameIndex", "drawer", "p", "", "clickKey", "n", "m", "Lkotlin/Function4;", "width", "height", "r", "a", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "Ljava/util/HashMap;", "e", "()Ljava/util/HashMap;", "t", "(Ljava/util/HashMap;)V", "dynamicHidden", "b", "g", y.b.f83919g, "dynamicImage", "c", ContextChain.TAG_INFRA, "C", "dynamicText", "d", "j", "D", "dynamicTextPaint", "h", y.b.f83920h, "dynamicStaticLayoutText", "f", "o", "dynamicBoringLayoutText", "q", "dynamicDrawer", "", "k", "F", "mClickMap", "Lcom/opensource/svgaplayer/b;", "u", "dynamicIClickArea", "s", "dynamicDrawerSized", "Z", "l", "()Z", "G", "(Z)V", "isTextDirty", "<init>", "()V", com.opensource.svgaplayer.a.f47177b}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public final class g {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private HashMap<String, Boolean> f47244a = new HashMap<>();
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private HashMap<String, Bitmap> f47245b = new HashMap<>();
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private HashMap<String, String> f47246c = new HashMap<>();
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private HashMap<String, TextPaint> f47247d = new HashMap<>();
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private HashMap<String, StaticLayout> f47248e = new HashMap<>();
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    private HashMap<String, BoringLayout> f47249f = new HashMap<>();
    @m8.g

    /* renamed from: g  reason: collision with root package name */
    private HashMap<String, Function2<Canvas, Integer, Boolean>> f47250g = new HashMap<>();
    @m8.g

    /* renamed from: h  reason: collision with root package name */
    private HashMap<String, int[]> f47251h = new HashMap<>();
    @m8.g

    /* renamed from: i  reason: collision with root package name */
    private HashMap<String, com.opensource.svgaplayer.b> f47252i = new HashMap<>();
    @m8.g

    /* renamed from: j  reason: collision with root package name */
    private HashMap<String, Function4<Canvas, Integer, Integer, Integer, Boolean>> f47253j = new HashMap<>();

    /* renamed from: k  reason: collision with root package name */
    private boolean f47254k;

    /* compiled from: SVGADynamicEntity.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J0\u0010\n\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0004H\u0016¨\u0006\u000b"}, d2 = {"com/opensource/svgaplayer/g$a", "Lcom/opensource/svgaplayer/b;", "", "key", "", "x0", "y0", "x1", "y1", "", "a", com.opensource.svgaplayer.a.f47177b}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3.dex */
    public static final class a implements com.opensource.svgaplayer.b {
        a() {
        }

        @Override // com.opensource.svgaplayer.b
        public void a(@m8.g String str, int i4, int i10, int i11, int i12) {
            HashMap<String, int[]> k10 = g.this.k();
            if (k10.get(str) == null) {
                k10.put(str, new int[]{i4, i10, i11, i12});
                return;
            }
            int[] iArr = k10.get(str);
            if (iArr != null) {
                iArr[0] = i4;
                iArr[1] = i10;
                iArr[2] = i11;
                iArr[3] = i12;
            }
        }
    }

    /* compiled from: SVGADynamicEntity.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J0\u0010\n\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0004H\u0016¨\u0006\u000b"}, d2 = {"com/opensource/svgaplayer/g$b", "Lcom/opensource/svgaplayer/b;", "", "key", "", "x0", "y0", "x1", "y1", "", "a", com.opensource.svgaplayer.a.f47177b}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3.dex */
    public static final class b implements com.opensource.svgaplayer.b {
        b() {
        }

        @Override // com.opensource.svgaplayer.b
        public void a(@m8.g String str, int i4, int i10, int i11, int i12) {
            HashMap<String, int[]> k10 = g.this.k();
            if (k10.get(str) == null) {
                k10.put(str, new int[]{i4, i10, i11, i12});
                return;
            }
            int[] iArr = k10.get(str);
            if (iArr != null) {
                iArr[0] = i4;
                iArr[1] = i10;
                iArr[2] = i11;
                iArr[3] = i12;
            }
        }
    }

    /* compiled from: SVGADynamicEntity.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "run"}, k = 3, mv = {1, 1, 15})
    /* loaded from: classes3.dex */
    static final class c implements Runnable {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f47258b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Handler f47259c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f47260d;

        /* compiled from: SVGADynamicEntity.kt */
        @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001a\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\b\u0002\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\b\u0004\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002¨\u0006\u0005"}, d2 = {"<anonymous>", "", "run", "com/opensource/svgaplayer/SVGADynamicEntity$setDynamicImage$1$1$1$1$1", "com/opensource/svgaplayer/SVGADynamicEntity$setDynamicImage$1$$special$$inlined$let$lambda$1", "com/opensource/svgaplayer/SVGADynamicEntity$setDynamicImage$1$$special$$inlined$use$lambda$1"}, k = 3, mv = {1, 1, 15})
        /* loaded from: classes3.dex */
        static final class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Bitmap f47261a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ c f47262b;

            a(Bitmap bitmap, c cVar) {
                this.f47261a = bitmap;
                this.f47262b = cVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                c cVar = this.f47262b;
                g.this.v(this.f47261a, cVar.f47260d);
            }
        }

        c(String str, Handler handler, String str2) {
            this.f47258b = str;
            this.f47259c = handler;
            this.f47260d = str2;
        }

        @Override // java.lang.Runnable
        public final void run() {
            URLConnection openConnection = new URL(this.f47258b).openConnection();
            if (!(openConnection instanceof HttpURLConnection)) {
                openConnection = null;
            }
            HttpURLConnection httpURLConnection = (HttpURLConnection) openConnection;
            if (httpURLConnection == null) {
                return;
            }
            try {
                try {
                    httpURLConnection.setConnectTimeout(com.alipay.sdk.data.a.f6866f);
                    httpURLConnection.setRequestMethod(AsyncHttpGet.f44554o);
                    httpURLConnection.connect();
                    InputStream inputStream = httpURLConnection.getInputStream();
                    try {
                        Bitmap decodeStream = BitmapFactory.decodeStream(inputStream);
                        if (decodeStream != null) {
                            this.f47259c.post(new a(decodeStream, this));
                        }
                        CloseableKt.closeFinally(inputStream, null);
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            CloseableKt.closeFinally(inputStream, th);
                            throw th2;
                        }
                    }
                } catch (Exception e4) {
                    e4.printStackTrace();
                    Unit unit = Unit.INSTANCE;
                }
                try {
                    httpURLConnection.disconnect();
                } catch (Throwable unused) {
                }
            } catch (Throwable th3) {
                try {
                    httpURLConnection.disconnect();
                } catch (Throwable unused2) {
                }
                throw th3;
            }
        }
    }

    public final void A(@m8.g StaticLayout staticLayout, @m8.g String str) {
        this.f47254k = true;
        this.f47248e.put(str, staticLayout);
    }

    public final void B(@m8.g String str, @m8.g TextPaint textPaint, @m8.g String str2) {
        this.f47254k = true;
        this.f47246c.put(str2, str);
        this.f47247d.put(str2, textPaint);
    }

    public final void C(@m8.g HashMap<String, String> hashMap) {
        this.f47246c = hashMap;
    }

    public final void D(@m8.g HashMap<String, TextPaint> hashMap) {
        this.f47247d = hashMap;
    }

    public final void E(boolean z9, @m8.g String str) {
        this.f47244a.put(str, Boolean.valueOf(z9));
    }

    public final void F(@m8.g HashMap<String, int[]> hashMap) {
        this.f47251h = hashMap;
    }

    public final void G(boolean z9) {
        this.f47254k = z9;
    }

    public final void a() {
        this.f47254k = true;
        this.f47244a.clear();
        this.f47245b.clear();
        this.f47246c.clear();
        this.f47247d.clear();
        this.f47248e.clear();
        this.f47249f.clear();
        this.f47250g.clear();
        this.f47252i.clear();
        this.f47251h.clear();
        this.f47253j.clear();
    }

    @m8.g
    public final HashMap<String, BoringLayout> b() {
        return this.f47249f;
    }

    @m8.g
    public final HashMap<String, Function2<Canvas, Integer, Boolean>> c() {
        return this.f47250g;
    }

    @m8.g
    public final HashMap<String, Function4<Canvas, Integer, Integer, Integer, Boolean>> d() {
        return this.f47253j;
    }

    @m8.g
    public final HashMap<String, Boolean> e() {
        return this.f47244a;
    }

    @m8.g
    public final HashMap<String, com.opensource.svgaplayer.b> f() {
        return this.f47252i;
    }

    @m8.g
    public final HashMap<String, Bitmap> g() {
        return this.f47245b;
    }

    @m8.g
    public final HashMap<String, StaticLayout> h() {
        return this.f47248e;
    }

    @m8.g
    public final HashMap<String, String> i() {
        return this.f47246c;
    }

    @m8.g
    public final HashMap<String, TextPaint> j() {
        return this.f47247d;
    }

    @m8.g
    public final HashMap<String, int[]> k() {
        return this.f47251h;
    }

    public final boolean l() {
        return this.f47254k;
    }

    public final void m(@m8.g String str) {
        this.f47252i.put(str, new b());
    }

    public final void n(@m8.g List<String> list) {
        for (String str : list) {
            this.f47252i.put(str, new a());
        }
    }

    public final void o(@m8.g HashMap<String, BoringLayout> hashMap) {
        this.f47249f = hashMap;
    }

    public final void p(@m8.g Function2<? super Canvas, ? super Integer, Boolean> function2, @m8.g String str) {
        this.f47250g.put(str, function2);
    }

    public final void q(@m8.g HashMap<String, Function2<Canvas, Integer, Boolean>> hashMap) {
        this.f47250g = hashMap;
    }

    public final void r(@m8.g Function4<? super Canvas, ? super Integer, ? super Integer, ? super Integer, Boolean> function4, @m8.g String str) {
        this.f47253j.put(str, function4);
    }

    public final void s(@m8.g HashMap<String, Function4<Canvas, Integer, Integer, Integer, Boolean>> hashMap) {
        this.f47253j = hashMap;
    }

    public final void t(@m8.g HashMap<String, Boolean> hashMap) {
        this.f47244a = hashMap;
    }

    public final void u(@m8.g HashMap<String, com.opensource.svgaplayer.b> hashMap) {
        this.f47252i = hashMap;
    }

    public final void v(@m8.g Bitmap bitmap, @m8.g String str) {
        this.f47245b.put(str, bitmap);
    }

    public final void w(@m8.g String str, @m8.g String str2) {
        i.f47267i.a().execute(new c(str, new Handler(), str2));
    }

    public final void x(@m8.g HashMap<String, Bitmap> hashMap) {
        this.f47245b = hashMap;
    }

    public final void y(@m8.g HashMap<String, StaticLayout> hashMap) {
        this.f47248e = hashMap;
    }

    public final void z(@m8.g BoringLayout boringLayout, @m8.g String str) {
        this.f47254k = true;
        if (BoringLayout.isBoring(boringLayout.getText(), boringLayout.getPaint()) != null) {
            this.f47249f.put(str, boringLayout);
        }
    }
}

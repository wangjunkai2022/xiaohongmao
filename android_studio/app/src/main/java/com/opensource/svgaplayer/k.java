package com.opensource.svgaplayer;

import android.media.AudioAttributes;
import android.media.SoundPool;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.facebook.common.callercontext.ContextChain;
import io.sentry.g4;
import io.sentry.protocol.t;
import java.io.FileDescriptor;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SVGASoundManager.kt */
@Metadata(bv = {}, d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\r\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010%\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001'B\t\b\u0002¢\u0006\u0004\b1\u00102J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u0018\u0010\b\u001a\n \u0007*\u0004\u0018\u00010\u00060\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0006\u0010\n\u001a\u00020\tJ\u000e\u0010\u000b\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u0004J\u0006\u0010\f\u001a\u00020\tJ\u001a\u0010\u0011\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\r2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000fJ\u000f\u0010\u0012\u001a\u00020\u0002H\u0000¢\u0006\u0004\b\u0012\u0010\u0013J;\u0010\u001c\u001a\u00020\u00042\b\u0010\u0015\u001a\u0004\u0018\u00010\u00142\b\u0010\u0017\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\u0004H\u0000¢\u0006\u0004\b\u001c\u0010\u001dJ\u0017\u0010\u001f\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\u0004H\u0000¢\u0006\u0004\b\u001f\u0010 J\u0017\u0010!\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u0004H\u0000¢\u0006\u0004\b!\u0010\"J\u0017\u0010#\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\u0004H\u0000¢\u0006\u0004\b#\u0010 J\u0017\u0010$\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\u0004H\u0000¢\u0006\u0004\b$\u0010 J\u0017\u0010%\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\u0004H\u0000¢\u0006\u0004\b%\u0010 R\u001c\u0010)\u001a\n \u0007*\u0004\u0018\u00010&0&8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010(R\u0018\u0010,\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010+R \u0010/\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00140-8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010.R\u0016\u0010\u000e\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\b\u00100¨\u00063"}, d2 = {"Lcom/opensource/svgaplayer/k;", "", "", "c", "", "maxStreams", "Landroid/media/SoundPool;", "kotlin.jvm.PlatformType", "d", "", "e", "f", "k", "", "volume", "Lcom/opensource/svgaplayer/l;", "entity", "m", "g", "()Z", "Lcom/opensource/svgaplayer/k$a;", "callBack", "Ljava/io/FileDescriptor;", "fd", "", TypedValues.Cycle.S_WAVE_OFFSET, g4.b.f83241e, t.b.f83857b, "h", "(Lcom/opensource/svgaplayer/k$a;Ljava/io/FileDescriptor;JJI)I", "soundId", "p", "(I)V", "j", "(I)I", "o", "l", ContextChain.TAG_INFRA, "", "a", "Ljava/lang/String;", "TAG", "b", "Landroid/media/SoundPool;", "soundPool", "", "Ljava/util/Map;", "soundCallBackMap", "F", "<init>", "()V", com.opensource.svgaplayer.a.f47177b}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public final class k {

    /* renamed from: b  reason: collision with root package name */
    private static SoundPool f47323b;

    /* renamed from: e  reason: collision with root package name */
    public static final k f47326e = new k();

    /* renamed from: a  reason: collision with root package name */
    private static final String f47322a = k.class.getSimpleName();

    /* renamed from: c  reason: collision with root package name */
    private static final Map<Integer, a> f47324c = new LinkedHashMap();

    /* renamed from: d  reason: collision with root package name */
    private static float f47325d = 1.0f;

    /* compiled from: SVGASoundManager.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\b`\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&J\b\u0010\u0006\u001a\u00020\u0004H&¨\u0006\u0007"}, d2 = {"Lcom/opensource/svgaplayer/k$a;", "", "", "value", "", "a", "onComplete", com.opensource.svgaplayer.a.f47177b}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3.dex */
    public interface a {
        void a(float f10);

        void onComplete();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SVGASoundManager.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\n¢\u0006\u0002\b\b"}, d2 = {"<anonymous>", "", "<anonymous parameter 0>", "Landroid/media/SoundPool;", "kotlin.jvm.PlatformType", "soundId", "", "status", "onLoadComplete"}, k = 3, mv = {1, 1, 15})
    /* loaded from: classes3.dex */
    public static final class b implements SoundPool.OnLoadCompleteListener {

        /* renamed from: a  reason: collision with root package name */
        public static final b f47327a = new b();

        b() {
        }

        @Override // android.media.SoundPool.OnLoadCompleteListener
        public final void onLoadComplete(SoundPool soundPool, int i4, int i10) {
            a aVar;
            v4.c cVar = v4.c.f94196b;
            k kVar = k.f47326e;
            String TAG = k.f47322a;
            Intrinsics.checkExpressionValueIsNotNull(TAG, "TAG");
            cVar.a(TAG, "SoundPool onLoadComplete soundId=" + i4 + " status=" + i10);
            if (i10 == 0 && k.f47324c.containsKey(Integer.valueOf(i4)) && (aVar = (a) k.f47324c.get(Integer.valueOf(i4))) != null) {
                aVar.onComplete();
            }
        }
    }

    private k() {
    }

    private final boolean c() {
        boolean g4 = g();
        if (!g4) {
            v4.c cVar = v4.c.f94196b;
            String TAG = f47322a;
            Intrinsics.checkExpressionValueIsNotNull(TAG, "TAG");
            cVar.c(TAG, "soundPool is null, you need call init() !!!");
        }
        return g4;
    }

    private final SoundPool d(int i4) {
        return new SoundPool.Builder().setAudioAttributes(new AudioAttributes.Builder().setUsage(1).build()).setMaxStreams(i4).build();
    }

    public static /* synthetic */ void n(k kVar, float f10, l lVar, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            lVar = null;
        }
        kVar.m(f10, lVar);
    }

    public final void e() {
        f(20);
    }

    public final void f(int i4) {
        v4.c cVar = v4.c.f94196b;
        String TAG = f47322a;
        Intrinsics.checkExpressionValueIsNotNull(TAG, "TAG");
        cVar.a(TAG, "**************** init **************** " + i4);
        if (f47323b != null) {
            return;
        }
        SoundPool d4 = d(i4);
        f47323b = d4;
        if (d4 != null) {
            d4.setOnLoadCompleteListener(b.f47327a);
        }
    }

    public final boolean g() {
        return f47323b != null;
    }

    public final int h(@m8.h a aVar, @m8.h FileDescriptor fileDescriptor, long j4, long j10, int i4) {
        if (c()) {
            SoundPool soundPool = f47323b;
            if (soundPool == null) {
                Intrinsics.throwNpe();
            }
            int load = soundPool.load(fileDescriptor, j4, j10, i4);
            v4.c cVar = v4.c.f94196b;
            String TAG = f47322a;
            Intrinsics.checkExpressionValueIsNotNull(TAG, "TAG");
            cVar.a(TAG, "load soundId=" + load + " callBack=" + aVar);
            if (aVar != null) {
                Map<Integer, a> map = f47324c;
                if (!map.containsKey(Integer.valueOf(load))) {
                    map.put(Integer.valueOf(load), aVar);
                }
            }
            return load;
        }
        return -1;
    }

    public final void i(int i4) {
        if (c()) {
            v4.c cVar = v4.c.f94196b;
            String TAG = f47322a;
            Intrinsics.checkExpressionValueIsNotNull(TAG, "TAG");
            cVar.a(TAG, "pause soundId=" + i4);
            SoundPool soundPool = f47323b;
            if (soundPool == null) {
                Intrinsics.throwNpe();
            }
            soundPool.pause(i4);
        }
    }

    public final int j(int i4) {
        if (c()) {
            v4.c cVar = v4.c.f94196b;
            String TAG = f47322a;
            Intrinsics.checkExpressionValueIsNotNull(TAG, "TAG");
            cVar.a(TAG, "play soundId=" + i4);
            SoundPool soundPool = f47323b;
            if (soundPool == null) {
                Intrinsics.throwNpe();
            }
            float f10 = f47325d;
            return soundPool.play(i4, f10, f10, 1, 0, 1.0f);
        }
        return -1;
    }

    public final void k() {
        v4.c cVar = v4.c.f94196b;
        String TAG = f47322a;
        Intrinsics.checkExpressionValueIsNotNull(TAG, "TAG");
        cVar.a(TAG, "**************** release ****************");
        Map<Integer, a> map = f47324c;
        if (!map.isEmpty()) {
            map.clear();
        }
    }

    public final void l(int i4) {
        if (c()) {
            v4.c cVar = v4.c.f94196b;
            String TAG = f47322a;
            Intrinsics.checkExpressionValueIsNotNull(TAG, "TAG");
            cVar.a(TAG, "stop soundId=" + i4);
            SoundPool soundPool = f47323b;
            if (soundPool == null) {
                Intrinsics.throwNpe();
            }
            soundPool.resume(i4);
        }
    }

    public final void m(float f10, @m8.h l lVar) {
        Integer c10;
        if (c()) {
            if (f10 < 0.0f || f10 > 1.0f) {
                v4.c cVar = v4.c.f94196b;
                String TAG = f47322a;
                Intrinsics.checkExpressionValueIsNotNull(TAG, "TAG");
                cVar.c(TAG, "The volume level is in the range of 0 to 1 ");
            } else if (lVar == null) {
                f47325d = f10;
                for (Map.Entry<Integer, a> entry : f47324c.entrySet()) {
                    entry.getValue().a(f10);
                }
            } else {
                SoundPool soundPool = f47323b;
                if (soundPool != null) {
                    Iterator<T> it = lVar.m().iterator();
                    while (it.hasNext() && (c10 = ((t4.a) it.next()).c()) != null) {
                        soundPool.setVolume(c10.intValue(), f10, f10);
                    }
                }
            }
        }
    }

    public final void o(int i4) {
        if (c()) {
            v4.c cVar = v4.c.f94196b;
            String TAG = f47322a;
            Intrinsics.checkExpressionValueIsNotNull(TAG, "TAG");
            cVar.a(TAG, "stop soundId=" + i4);
            SoundPool soundPool = f47323b;
            if (soundPool == null) {
                Intrinsics.throwNpe();
            }
            soundPool.stop(i4);
        }
    }

    public final void p(int i4) {
        if (c()) {
            v4.c cVar = v4.c.f94196b;
            String TAG = f47322a;
            Intrinsics.checkExpressionValueIsNotNull(TAG, "TAG");
            cVar.a(TAG, "unload soundId=" + i4);
            SoundPool soundPool = f47323b;
            if (soundPool == null) {
                Intrinsics.throwNpe();
            }
            soundPool.unload(i4);
            f47324c.remove(Integer.valueOf(i4));
        }
    }
}

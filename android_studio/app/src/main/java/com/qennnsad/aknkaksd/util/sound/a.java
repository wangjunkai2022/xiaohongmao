package com.qennnsad.aknkaksd.util.sound;

import android.media.AudioAttributes;
import android.media.SoundPool;
import com.didi.live.spring.R;
import com.qennnsad.aknkaksd.BaseBeautyApplication;
import com.qennnsad.aknkaksd.util.o0;

/* compiled from: SoundUtils.java */
/* loaded from: classes3.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static a f55033a;

    /* renamed from: b  reason: collision with root package name */
    private static SoundPool f55034b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SoundUtils.java */
    /* renamed from: com.qennnsad.aknkaksd.util.sound.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public class C0465a implements SoundPool.OnLoadCompleteListener {
        C0465a() {
        }

        @Override // android.media.SoundPool.OnLoadCompleteListener
        public void onLoadComplete(SoundPool soundPool, int i4, int i10) {
            o0.g("蓝牙", "onLoadComplete:--sampleId:" + i4 + "--status:" + i10);
        }
    }

    private a() {
        b();
    }

    public static synchronized a a() {
        a aVar;
        synchronized (a.class) {
            if (f55033a == null) {
                f55033a = new a();
            }
            aVar = f55033a;
        }
        return aVar;
    }

    private void b() {
        SoundPool.Builder builder = new SoundPool.Builder();
        builder.setMaxStreams(3);
        AudioAttributes.Builder builder2 = new AudioAttributes.Builder();
        builder2.setLegacyStreamType(3);
        builder.setAudioAttributes(builder2.build());
        SoundPool build = builder.build();
        f55034b = build;
        build.load(BaseBeautyApplication.getContextInstance(), R.raw.ufo_sound, 1);
        f55034b.load(BaseBeautyApplication.getContextInstance(), R.raw.ding1, 1);
        f55034b.load(BaseBeautyApplication.getContextInstance(), R.raw.ding2, 1);
        f55034b.load(BaseBeautyApplication.getContextInstance(), R.raw.ding3, 1);
        f55034b.load(BaseBeautyApplication.getContextInstance(), R.raw.ding4, 1);
        f55034b.load(BaseBeautyApplication.getContextInstance(), R.raw.ding5, 1);
        f55034b.setOnLoadCompleteListener(new C0465a());
    }

    public void c(int i4) {
        o0.g("蓝牙", "play_rawid:" + i4);
        SoundPool soundPool = f55034b;
        if (soundPool == null || i4 == 0 || i4 > 5) {
            return;
        }
        soundPool.play(i4 + 1, 1.0f, 1.0f, 0, 0, 1.0f);
    }

    public void d() {
        o0.g("SoundUtils", "play_login");
        if (f55034b == null) {
            return;
        }
        o0.g("SoundUtils", "play_login---");
        f55034b.play(1, 1.0f, 1.0f, 0, 0, 1.0f);
    }

    public void e() {
        SoundPool soundPool = f55034b;
        if (soundPool == null) {
            return;
        }
        soundPool.release();
    }
}

package com.google.android.exoplayer2.audio;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioTrack;
import android.net.Uri;
import android.provider.Settings;
import androidx.annotation.DoNotInline;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.util.z0;
import com.google.common.collect.ImmutableList;
import java.util.Arrays;

/* compiled from: AudioCapabilities.java */
/* loaded from: classes2.dex */
public final class f {

    /* renamed from: c  reason: collision with root package name */
    private static final int f21201c = 8;

    /* renamed from: d  reason: collision with root package name */
    private static final int f21202d = 48000;

    /* renamed from: e  reason: collision with root package name */
    public static final f f21203e = new f(new int[]{2}, 8);

    /* renamed from: f  reason: collision with root package name */
    private static final f f21204f = new f(new int[]{2, 5, 6}, 8);

    /* renamed from: g  reason: collision with root package name */
    private static final int[] f21205g = {5, 6, 18, 17, 14, 7, 8};

    /* renamed from: h  reason: collision with root package name */
    private static final String f21206h = "external_surround_sound_enabled";

    /* renamed from: a  reason: collision with root package name */
    private final int[] f21207a;

    /* renamed from: b  reason: collision with root package name */
    private final int f21208b;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AudioCapabilities.java */
    @RequiresApi(29)
    /* loaded from: classes2.dex */
    public static final class a {
        private a() {
        }

        @DoNotInline
        public static int[] a() {
            int[] iArr;
            ImmutableList.a builder = ImmutableList.builder();
            for (int i4 : f.f21205g) {
                if (AudioTrack.isDirectPlaybackSupported(new AudioFormat.Builder().setChannelMask(12).setEncoding(i4).setSampleRate(48000).build(), new AudioAttributes.Builder().setUsage(1).setContentType(3).setFlags(0).build())) {
                    builder.g(Integer.valueOf(i4));
                }
            }
            builder.g(2);
            return com.google.common.primitives.f.B(builder.e());
        }
    }

    public f(@Nullable int[] iArr, int i4) {
        if (iArr != null) {
            int[] copyOf = Arrays.copyOf(iArr, iArr.length);
            this.f21207a = copyOf;
            Arrays.sort(copyOf);
        } else {
            this.f21207a = new int[0];
        }
        this.f21208b = i4;
    }

    private static boolean b() {
        if (z0.f27743a >= 17) {
            String str = z0.f27745c;
            if ("Amazon".equals(str) || "Xiaomi".equals(str)) {
                return true;
            }
        }
        return false;
    }

    public static f c(Context context) {
        return d(context, context.registerReceiver(null, new IntentFilter("android.media.action.HDMI_AUDIO_PLUG")));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SuppressLint({"InlinedApi"})
    public static f d(Context context, @Nullable Intent intent) {
        if (b() && Settings.Global.getInt(context.getContentResolver(), f21206h, 0) == 1) {
            return f21204f;
        }
        if (z0.f27743a >= 29) {
            return new f(a.a(), 8);
        }
        if (intent != null && intent.getIntExtra("android.media.extra.AUDIO_PLUG_STATE", 0) != 0) {
            return new f(intent.getIntArrayExtra("android.media.extra.ENCODINGS"), intent.getIntExtra("android.media.extra.MAX_CHANNEL_COUNT", 8));
        }
        return f21203e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public static Uri e() {
        if (b()) {
            return Settings.Global.getUriFor(f21206h);
        }
        return null;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof f) {
            f fVar = (f) obj;
            return Arrays.equals(this.f21207a, fVar.f21207a) && this.f21208b == fVar.f21208b;
        }
        return false;
    }

    public int f() {
        return this.f21208b;
    }

    public boolean g(int i4) {
        return Arrays.binarySearch(this.f21207a, i4) >= 0;
    }

    public int hashCode() {
        return this.f21208b + (Arrays.hashCode(this.f21207a) * 31);
    }

    public String toString() {
        int i4 = this.f21208b;
        String arrays = Arrays.toString(this.f21207a);
        StringBuilder sb = new StringBuilder(String.valueOf(arrays).length() + 67);
        sb.append("AudioCapabilities[maxChannelCount=");
        sb.append(i4);
        sb.append(", supportedEncodings=");
        sb.append(arrays);
        sb.append("]");
        return sb.toString();
    }
}

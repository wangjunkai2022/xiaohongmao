package com.google.android.exoplayer2;

import android.os.Bundle;
import android.os.RemoteException;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.h;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes2.dex */
public final class ExoPlaybackException extends Exception implements h {
    public static final h.a<ExoPlaybackException> CREATOR = p.f24472a;
    public static final int TYPE_REMOTE = 3;
    public static final int TYPE_RENDERER = 1;
    public static final int TYPE_SOURCE = 0;
    public static final int TYPE_UNEXPECTED = 2;

    /* renamed from: c  reason: collision with root package name */
    private static final int f20667c = 0;

    /* renamed from: d  reason: collision with root package name */
    private static final int f20668d = 1;

    /* renamed from: e  reason: collision with root package name */
    private static final int f20669e = 2;

    /* renamed from: f  reason: collision with root package name */
    private static final int f20670f = 3;

    /* renamed from: g  reason: collision with root package name */
    private static final int f20671g = 4;

    /* renamed from: h  reason: collision with root package name */
    private static final int f20672h = 5;

    /* renamed from: i  reason: collision with root package name */
    private static final int f20673i = 6;

    /* renamed from: j  reason: collision with root package name */
    private static final int f20674j = 7;

    /* renamed from: k  reason: collision with root package name */
    private static final int f20675k = 8;

    /* renamed from: l  reason: collision with root package name */
    private static final int f20676l = 9;

    /* renamed from: a  reason: collision with root package name */
    final boolean f20677a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final Throwable f20678b;
    @Nullable
    public final com.google.android.exoplayer2.source.x mediaPeriodId;
    @Nullable
    public final Format rendererFormat;
    public final int rendererFormatSupport;
    public final int rendererIndex;
    @Nullable
    public final String rendererName;
    public final long timestampMs;
    public final int type;

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface a {
    }

    private ExoPlaybackException(int i4, Throwable th) {
        this(i4, th, null, null, -1, null, 4, false);
    }

    private static RemoteException c(@Nullable String str) {
        return new RemoteException(str);
    }

    public static ExoPlaybackException createForRemote(String str) {
        return new ExoPlaybackException(3, str);
    }

    public static ExoPlaybackException createForRenderer(Exception exc) {
        return new ExoPlaybackException(1, exc, null, null, -1, null, 4, false);
    }

    public static ExoPlaybackException createForSource(IOException iOException) {
        return new ExoPlaybackException(0, iOException);
    }

    public static ExoPlaybackException createForUnexpected(RuntimeException runtimeException) {
        return new ExoPlaybackException(2, runtimeException);
    }

    private static Throwable d(Class<?> cls, @Nullable String str) throws Exception {
        return (Throwable) cls.getConstructor(String.class).newInstance(str);
    }

    private static String e(int i4, @Nullable String str, @Nullable String str2, int i10, @Nullable Format format, int i11) {
        String str3;
        if (i4 == 0) {
            str3 = "Source error";
        } else if (i4 != 1) {
            str3 = i4 != 3 ? "Unexpected runtime error" : "Remote error";
        } else {
            String valueOf = String.valueOf(format);
            String b10 = i.b(i11);
            StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 53 + valueOf.length() + String.valueOf(b10).length());
            sb.append(str2);
            sb.append(" error, index=");
            sb.append(i10);
            sb.append(", format=");
            sb.append(valueOf);
            sb.append(", format_supported=");
            sb.append(b10);
            str3 = sb.toString();
        }
        if (TextUtils.isEmpty(str)) {
            return str3;
        }
        String valueOf2 = String.valueOf(str3);
        StringBuilder sb2 = new StringBuilder(valueOf2.length() + 2 + String.valueOf(str).length());
        sb2.append(valueOf2);
        sb2.append(": ");
        sb2.append(str);
        return sb2.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ExoPlaybackException h(Bundle bundle) {
        int i4 = bundle.getInt(i(1), 2);
        String string = bundle.getString(i(2));
        int i10 = bundle.getInt(i(3), -1);
        Format format = (Format) bundle.getParcelable(i(4));
        int i11 = bundle.getInt(i(5), 4);
        long j4 = bundle.getLong(i(6), SystemClock.elapsedRealtime());
        boolean z9 = bundle.getBoolean(i(7), false);
        String string2 = bundle.getString(i(0));
        if (string2 == null) {
            string2 = e(i4, null, string, i10, format, i11);
        }
        String str = string2;
        String string3 = bundle.getString(i(8));
        String string4 = bundle.getString(i(9));
        Throwable th = null;
        if (!TextUtils.isEmpty(string3)) {
            try {
                Class<?> cls = Class.forName(string3, true, ExoPlaybackException.class.getClassLoader());
                if (Throwable.class.isAssignableFrom(cls)) {
                    th = d(cls, string4);
                }
            } catch (Throwable unused) {
                th = c(string4);
            }
        }
        return new ExoPlaybackException(str, th, i4, string, i10, format, i11, null, j4, z9);
    }

    private static String i(int i4) {
        return Integer.toString(i4, 36);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @CheckResult
    public ExoPlaybackException b(@Nullable com.google.android.exoplayer2.source.x xVar) {
        return new ExoPlaybackException((String) com.google.android.exoplayer2.util.z0.k(getMessage()), this.f20678b, this.type, this.rendererName, this.rendererIndex, this.rendererFormat, this.rendererFormatSupport, xVar, this.timestampMs, this.f20677a);
    }

    public Exception getRendererException() {
        com.google.android.exoplayer2.util.a.i(this.type == 1);
        return (Exception) com.google.android.exoplayer2.util.a.g(this.f20678b);
    }

    public IOException getSourceException() {
        com.google.android.exoplayer2.util.a.i(this.type == 0);
        return (IOException) com.google.android.exoplayer2.util.a.g(this.f20678b);
    }

    public RuntimeException getUnexpectedException() {
        com.google.android.exoplayer2.util.a.i(this.type == 2);
        return (RuntimeException) com.google.android.exoplayer2.util.a.g(this.f20678b);
    }

    @Override // com.google.android.exoplayer2.h
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putString(i(0), getMessage());
        bundle.putInt(i(1), this.type);
        bundle.putString(i(2), this.rendererName);
        bundle.putInt(i(3), this.rendererIndex);
        bundle.putParcelable(i(4), this.rendererFormat);
        bundle.putInt(i(5), this.rendererFormatSupport);
        bundle.putLong(i(6), this.timestampMs);
        bundle.putBoolean(i(7), this.f20677a);
        if (this.f20678b != null) {
            bundle.putString(i(8), this.f20678b.getClass().getName());
            bundle.putString(i(9), this.f20678b.getMessage());
        }
        return bundle;
    }

    private ExoPlaybackException(int i4, String str) {
        this(i4, null, str, null, -1, null, 4, false);
    }

    public static ExoPlaybackException createForRenderer(Throwable th, String str, int i4, @Nullable Format format, int i10) {
        return createForRenderer(th, str, i4, format, i10, false);
    }

    private ExoPlaybackException(int i4, @Nullable Throwable th, @Nullable String str, @Nullable String str2, int i10, @Nullable Format format, int i11, boolean z9) {
        this(e(i4, str, str2, i10, format, i11), th, i4, str2, i10, format, i11, null, SystemClock.elapsedRealtime(), z9);
    }

    public static ExoPlaybackException createForRenderer(Throwable th, String str, int i4, @Nullable Format format, int i10, boolean z9) {
        return new ExoPlaybackException(1, th, null, str, i4, format, format == null ? 4 : i10, z9);
    }

    private ExoPlaybackException(String str, @Nullable Throwable th, int i4, @Nullable String str2, int i10, @Nullable Format format, int i11, @Nullable com.google.android.exoplayer2.source.x xVar, long j4, boolean z9) {
        super(str, th);
        boolean z10 = true;
        if (z9 && i4 != 1) {
            z10 = false;
        }
        com.google.android.exoplayer2.util.a.a(z10);
        this.type = i4;
        this.f20678b = th;
        this.rendererName = str2;
        this.rendererIndex = i10;
        this.rendererFormat = format;
        this.rendererFormatSupport = i11;
        this.mediaPeriodId = xVar;
        this.timestampMs = j4;
        this.f20677a = z9;
    }
}

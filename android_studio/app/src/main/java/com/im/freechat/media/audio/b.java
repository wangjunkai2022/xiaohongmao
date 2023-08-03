package com.im.freechat.media.audio;

import android.media.MediaRecorder;
import android.os.SystemClock;
import android.util.Log;
import com.facebook.common.callercontext.ContextChain;
import java.io.File;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import m8.g;
import m8.h;

/* compiled from: AudioRecordImpl.kt */
@Metadata(bv = {}, d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0010\u001a\u00020\r\u0012\u0006\u0010\u0012\u001a\u00020\u0004\u0012\u0006\u0010\u0013\u001a\u00020\u0004¢\u0006\u0004\b0\u00101J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0004H\u0016J\u0010\u0010\b\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0010\u0010\u000b\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\tH\u0016J\b\u0010\f\u001a\u00020\u0002H\u0016R\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0012\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u0011R\u0014\u0010\u0013\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0011R\u0014\u0010\u0017\u001a\u00020\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0016\u0010\u001b\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR,\u0010!\u001a\u001a\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00020\u001f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010 R\u0016\u0010$\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010#RD\u0010*\u001a$\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0002\u0018\u00010%8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b&\u0010'\u001a\u0004\b\u000e\u0010(\"\u0004\b\u001c\u0010)R*\u0010/\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010+8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010,\u001a\u0004\b\u0015\u0010-\"\u0004\b\u0019\u0010.¨\u00062"}, d2 = {"Lcom/im/freechat/media/audio/b;", "Lcom/im/freechat/media/audio/c;", "", "j", "", "c", "Ljava/io/File;", "outputFile", "b", "", "isCancel", "g", "release", "Landroid/media/MediaRecorder;", "a", "Landroid/media/MediaRecorder;", "mediaRecorder", "I", "maxDuration", "minAudioDuration", "", "d", "Ljava/lang/String;", "TAG", "", "e", "J", "mStartTime", "f", "Ljava/io/File;", "currentAudioFile", "Lkotlin/Function3;", "Lkotlin/jvm/functions/Function3;", "durationListener", "h", "Z", "isRecording", "Lkotlin/Function4;", ContextChain.TAG_INFRA, "Lkotlin/jvm/functions/Function4;", "()Lkotlin/jvm/functions/Function4;", "(Lkotlin/jvm/functions/Function4;)V", "stopCallback", "Lkotlin/Function0;", "Lkotlin/jvm/functions/Function0;", "()Lkotlin/jvm/functions/Function0;", "(Lkotlin/jvm/functions/Function0;)V", "maxTimeReachedCallback", "<init>", "(Landroid/media/MediaRecorder;II)V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class b implements c {
    @g

    /* renamed from: a  reason: collision with root package name */
    private final MediaRecorder f41956a;

    /* renamed from: b  reason: collision with root package name */
    private final int f41957b;

    /* renamed from: c  reason: collision with root package name */
    private final int f41958c;
    @g

    /* renamed from: d  reason: collision with root package name */
    private final String f41959d;

    /* renamed from: e  reason: collision with root package name */
    private long f41960e;
    @h

    /* renamed from: f  reason: collision with root package name */
    private File f41961f;
    @g

    /* renamed from: g  reason: collision with root package name */
    private final Function3<MediaRecorder, Integer, Integer, Unit> f41962g;

    /* renamed from: h  reason: collision with root package name */
    private volatile boolean f41963h;
    @h

    /* renamed from: i  reason: collision with root package name */
    private Function4<? super Boolean, ? super Integer, ? super File, ? super Integer, Unit> f41964i;
    @h

    /* renamed from: j  reason: collision with root package name */
    private Function0<Unit> f41965j;

    /* compiled from: AudioRecordImpl.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0006\u0010\u0007"}, d2 = {"Landroid/media/MediaRecorder;", "<anonymous parameter 0>", "", "what", "<anonymous parameter 2>", "", "a", "(Landroid/media/MediaRecorder;II)V"}, k = 3, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    static final class a extends Lambda implements Function3<MediaRecorder, Integer, Integer, Unit> {
        a() {
            super(3);
        }

        public final void a(@g MediaRecorder mediaRecorder, int i4, int i10) {
            Intrinsics.checkNotNullParameter(mediaRecorder, "<anonymous parameter 0>");
            if (i4 == 800) {
                b.this.g(false);
                Function0<Unit> d4 = b.this.d();
                if (d4 != null) {
                    d4.invoke();
                }
            }
        }

        @Override // kotlin.jvm.functions.Function3
        public /* bridge */ /* synthetic */ Unit invoke(MediaRecorder mediaRecorder, Integer num, Integer num2) {
            a(mediaRecorder, num.intValue(), num2.intValue());
            return Unit.INSTANCE;
        }
    }

    public b(@g MediaRecorder mediaRecorder, int i4, int i10) {
        Intrinsics.checkNotNullParameter(mediaRecorder, "mediaRecorder");
        this.f41956a = mediaRecorder;
        this.f41957b = i4;
        this.f41958c = i10;
        String simpleName = b.class.getSimpleName();
        Intrinsics.checkNotNullExpressionValue(simpleName, "this.javaClass.simpleName");
        this.f41959d = simpleName;
        this.f41962g = new a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(Function3 tmp0, MediaRecorder mediaRecorder, int i4, int i10) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(mediaRecorder, Integer.valueOf(i4), Integer.valueOf(i10));
    }

    private final void j() {
        try {
            this.f41956a.stop();
            this.f41956a.reset();
        } catch (Exception unused) {
            Log.e(this.f41959d, "Recorder stop failure. File may be corrupted");
        }
    }

    @Override // com.im.freechat.media.audio.c
    @h
    public Function4<Boolean, Integer, File, Integer, Unit> a() {
        return this.f41964i;
    }

    @Override // com.im.freechat.media.audio.c
    public void b(@g File outputFile) {
        Intrinsics.checkNotNullParameter(outputFile, "outputFile");
        if (this.f41963h) {
            return;
        }
        try {
            this.f41956a.reset();
        } catch (Exception unused) {
            Log.d(this.f41959d, "reset failed");
        }
        File parentFile = outputFile.getParentFile();
        if (parentFile != null) {
            parentFile.mkdirs();
        }
        try {
            MediaRecorder mediaRecorder = this.f41956a;
            mediaRecorder.setAudioSource(1);
            mediaRecorder.setOutputFormat(2);
            mediaRecorder.setAudioEncoder(3);
            mediaRecorder.setMaxDuration(this.f41957b);
            mediaRecorder.setOutputFile(outputFile.getAbsolutePath());
            final Function3<MediaRecorder, Integer, Integer, Unit> function3 = this.f41962g;
            mediaRecorder.setOnInfoListener(new MediaRecorder.OnInfoListener() { // from class: com.im.freechat.media.audio.a
                @Override // android.media.MediaRecorder.OnInfoListener
                public final void onInfo(MediaRecorder mediaRecorder2, int i4, int i10) {
                    b.i(Function3.this, mediaRecorder2, i4, i10);
                }
            });
            try {
                mediaRecorder.prepare();
                mediaRecorder.start();
                this.f41960e = SystemClock.elapsedRealtime();
                this.f41961f = outputFile;
            } catch (IOException unused2) {
                Log.w(this.f41959d, "start record failed !");
            }
        } catch (Exception unused3) {
            Log.w(this.f41959d, "set audio source failed !");
        }
    }

    @Override // com.im.freechat.media.audio.c
    public int c() {
        return this.f41958c;
    }

    @Override // com.im.freechat.media.audio.c
    @h
    public Function0<Unit> d() {
        return this.f41965j;
    }

    @Override // com.im.freechat.media.audio.c
    public void e(@h Function0<Unit> function0) {
        this.f41965j = function0;
    }

    @Override // com.im.freechat.media.audio.c
    public void f(@h Function4<? super Boolean, ? super Integer, ? super File, ? super Integer, Unit> function4) {
        this.f41964i = function4;
    }

    @Override // com.im.freechat.media.audio.c
    public void g(boolean z9) {
        this.f41963h = false;
        j();
        long elapsedRealtime = SystemClock.elapsedRealtime() - this.f41960e;
        if (z9) {
            File file = this.f41961f;
            if (file != null) {
                file.delete();
            }
            Function4<Boolean, Integer, File, Integer, Unit> a10 = a();
            if (a10 != null) {
                a10.invoke(Boolean.FALSE, 2, null, Integer.valueOf((int) (elapsedRealtime / 1000)));
            }
        } else if (elapsedRealtime < this.f41958c) {
            Function4<Boolean, Integer, File, Integer, Unit> a11 = a();
            if (a11 != null) {
                a11.invoke(Boolean.FALSE, 1, null, Integer.valueOf((int) (elapsedRealtime / 1000)));
            }
        } else if (this.f41961f != null) {
            Function4<Boolean, Integer, File, Integer, Unit> a12 = a();
            if (a12 != null) {
                a12.invoke(Boolean.TRUE, 0, this.f41961f, Integer.valueOf((int) (elapsedRealtime / 1000)));
            }
        } else {
            throw new IllegalStateException("currentAudioFile is null".toString());
        }
    }

    @Override // com.im.freechat.media.audio.c
    public void release() {
        f(null);
        e(null);
        j();
        this.f41956a.release();
    }
}

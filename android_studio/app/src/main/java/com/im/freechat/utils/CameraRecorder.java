package com.im.freechat.utils;

import android.content.Context;
import android.hardware.Camera;
import android.media.CamcorderProfile;
import android.media.MediaRecorder;
import android.net.Uri;
import android.os.SystemClock;
import android.util.Log;
import android.view.SurfaceHolder;
import android.view.ViewGroup;
import androidx.exifinterface.media.ExifInterface;
import androidx.lifecycle.MutableLiveData;
import com.facebook.common.callercontext.ContextChain;
import io.sentry.protocol.t;
import io.sentry.protocol.y;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: CameraRecorder.kt */
@Metadata(bv = {}, d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\t\u0018\u00002\u00020\u0001:\u0001NB\u000f\u0012\u0006\u0010\u001d\u001a\u00020\u0018¢\u0006\u0004\bL\u0010MJ\n\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002J\n\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002J\b\u0010\u0007\u001a\u00020\u0006H\u0002J\b\u0010\b\u001a\u00020\u0006H\u0002J\b\u0010\t\u001a\u00020\u0006H\u0002J\u0006\u0010\n\u001a\u00020\u0006J\u000e\u0010\r\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u000bJ\u0006\u0010\u000f\u001a\u00020\u000eJ\u0006\u0010\u0010\u001a\u00020\u0006J\u0006\u0010\u0011\u001a\u00020\u0006J\u0014\u0010\u0014\u001a\u00020\u00062\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00060\u0012J\u0006\u0010\u0015\u001a\u00020\u000eJ\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016R\u0017\u0010\u001d\u001a\u00020\u00188\u0006¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001cR\"\u0010%\u001a\u00020\u001e8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R$\u0010,\u001a\u0004\u0018\u00010&8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010'\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R$\u00101\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010-\u001a\u0004\b\u001f\u0010.\"\u0004\b/\u00100R\u001d\u00108\u001a\b\u0012\u0004\u0012\u000203028\u0006¢\u0006\f\n\u0004\b4\u00105\u001a\u0004\b6\u00107R$\u0010>\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b9\u0010:\u001a\u0004\b9\u0010;\"\u0004\b<\u0010=R\"\u0010E\u001a\u00020?8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b@\u0010A\u001a\u0004\b4\u0010B\"\u0004\bC\u0010DR\"\u0010K\u001a\u00020F8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b(\u0010G\u001a\u0004\b@\u0010H\"\u0004\bI\u0010J¨\u0006O"}, d2 = {"Lcom/im/freechat/utils/CameraRecorder;", "", "Landroid/hardware/Camera;", "c", "Ljava/io/File;", ContextChain.TAG_INFRA, "", "n", "r", "q", "s", "Landroid/view/ViewGroup;", "view", "m", "", "C", "z", "p", "Lkotlin/Function0;", "onNext", "B", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "Landroid/net/Uri;", "j", "Landroid/content/Context;", "a", "Landroid/content/Context;", "d", "()Landroid/content/Context;", "context", "Lcom/im/freechat/utils/b;", "b", "Lcom/im/freechat/utils/b;", "k", "()Lcom/im/freechat/utils/b;", y.b.f83920h, "(Lcom/im/freechat/utils/b;)V", "preview", "Landroid/media/MediaRecorder;", "Landroid/media/MediaRecorder;", "h", "()Landroid/media/MediaRecorder;", y.b.f83919g, "(Landroid/media/MediaRecorder;)V", "mediaRecorder", "Landroid/hardware/Camera;", "()Landroid/hardware/Camera;", "t", "(Landroid/hardware/Camera;)V", "camera", "Landroidx/lifecycle/MutableLiveData;", "Lcom/im/freechat/utils/CameraRecorder$State;", "e", "Landroidx/lifecycle/MutableLiveData;", "l", "()Landroidx/lifecycle/MutableLiveData;", t.b.f83859d, "f", "Ljava/io/File;", "()Ljava/io/File;", "v", "(Ljava/io/File;)V", "currentFile", "", "g", "I", "()I", "u", "(I)V", t.b.f83861f, "", "J", "()J", "w", "(J)V", "lastTime", "<init>", "(Landroid/content/Context;)V", "State", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class CameraRecorder {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final Context f43728a;

    /* renamed from: b  reason: collision with root package name */
    public b f43729b;
    @m8.h

    /* renamed from: c  reason: collision with root package name */
    private MediaRecorder f43730c;
    @m8.h

    /* renamed from: d  reason: collision with root package name */
    private Camera f43731d;
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final MutableLiveData<State> f43732e;
    @m8.h

    /* renamed from: f  reason: collision with root package name */
    private File f43733f;

    /* renamed from: g  reason: collision with root package name */
    private int f43734g;

    /* renamed from: h  reason: collision with root package name */
    private long f43735h;

    /* compiled from: CameraRecorder.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/im/freechat/utils/CameraRecorder$State;", "", "(Ljava/lang/String;I)V", "CLEAR", "PREPEARING", "PREVIEW", "RECORDING", "app_prodRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public enum State {
        CLEAR,
        PREPEARING,
        PREVIEW,
        RECORDING
    }

    public CameraRecorder(@m8.g Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.f43728a = context;
        this.f43732e = new MutableLiveData<>(State.CLEAR);
    }

    private final Camera c() {
        try {
            int numberOfCameras = Camera.getNumberOfCameras();
            Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
            for (int i4 = 0; i4 < numberOfCameras; i4++) {
                Camera.getCameraInfo(i4, cameraInfo);
                if (cameraInfo.facing == this.f43734g) {
                    return Camera.open(i4);
                }
            }
            return null;
        } catch (Exception e4) {
            e4.printStackTrace();
            return null;
        }
    }

    private final File i() {
        File cacheDir = this.f43728a.getCacheDir();
        if (cacheDir.exists() || cacheDir.mkdirs()) {
            String format = new SimpleDateFormat("yyyyMMdd_HHmmss").format(new Date());
            return new File(cacheDir.getPath() + File.separator + "VID_" + format + ".mp4");
        }
        return null;
    }

    private final synchronized void n() {
        this.f43730c = new MediaRecorder();
        Camera c10 = c();
        if (c10 != null) {
            CamcorderProfile camcorderProfile = CamcorderProfile.get(5);
            k().b(camcorderProfile.videoFrameWidth, camcorderProfile.videoFrameHeight);
            k().c(c10, camcorderProfile.videoFrameWidth, camcorderProfile.videoFrameHeight);
        } else {
            c10 = null;
        }
        this.f43731d = c10;
        k().post(new Runnable() { // from class: com.im.freechat.utils.c
            @Override // java.lang.Runnable
            public final void run() {
                CameraRecorder.o(CameraRecorder.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(CameraRecorder this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Camera camera = this$0.f43731d;
        if (camera != null) {
            camera.unlock();
            MediaRecorder mediaRecorder = this$0.f43730c;
            if (mediaRecorder != null) {
                mediaRecorder.setCamera(camera);
                mediaRecorder.setAudioSource(5);
                mediaRecorder.setVideoSource(1);
                mediaRecorder.setProfile(CamcorderProfile.get(5));
                File i4 = this$0.i();
                this$0.f43733f = i4;
                mediaRecorder.setOutputFile(String.valueOf(i4));
                SurfaceHolder holder = this$0.k().getHolder();
                mediaRecorder.setPreviewDisplay(holder != null ? holder.getSurface() : null);
                mediaRecorder.setOrientationHint(this$0.f43734g == 1 ? com.facebook.imagepipeline.common.e.f12206f : 90);
                try {
                    mediaRecorder.prepare();
                    this$0.f43732e.postValue(State.PREVIEW);
                    return;
                } catch (IOException e4) {
                    Log.d(h.f43781a, "IOException preparing MediaRecorder: " + e4.getMessage());
                    this$0.r();
                } catch (IllegalStateException e10) {
                    Log.d(h.f43781a, "IllegalStateException preparing MediaRecorder: " + e10.getMessage());
                    this$0.r();
                }
            }
        }
        this$0.r();
    }

    private final void q() {
        Camera camera = this.f43731d;
        if (camera != null) {
            camera.release();
        }
        this.f43731d = null;
    }

    private final void r() {
        MediaRecorder mediaRecorder = this.f43730c;
        if (mediaRecorder != null) {
            mediaRecorder.reset();
        }
        MediaRecorder mediaRecorder2 = this.f43730c;
        if (mediaRecorder2 != null) {
            mediaRecorder2.release();
        }
        this.f43730c = null;
        Camera camera = this.f43731d;
        if (camera != null) {
            camera.lock();
        }
    }

    public final boolean A() {
        boolean z9;
        try {
            MediaRecorder mediaRecorder = this.f43730c;
            if (mediaRecorder != null) {
                mediaRecorder.stop();
            }
            z9 = true;
        } catch (Exception unused) {
            z9 = false;
        }
        r();
        Camera camera = this.f43731d;
        if (camera != null) {
            camera.lock();
        }
        q();
        this.f43732e.setValue(State.CLEAR);
        return z9;
    }

    public final void B(@m8.g Function0<Unit> onNext) {
        Intrinsics.checkNotNullParameter(onNext, "onNext");
        if (C()) {
            return;
        }
        A();
        onNext.invoke();
    }

    public final synchronized boolean C() {
        if (SystemClock.elapsedRealtime() - this.f43735h > 1000) {
            this.f43735h = SystemClock.elapsedRealtime();
            return false;
        }
        return true;
    }

    @m8.h
    public final Camera b() {
        return this.f43731d;
    }

    @m8.g
    public final Context d() {
        return this.f43728a;
    }

    public final int e() {
        return this.f43734g;
    }

    @m8.h
    public final File f() {
        return this.f43733f;
    }

    public final long g() {
        return this.f43735h;
    }

    @m8.h
    public final MediaRecorder h() {
        return this.f43730c;
    }

    @m8.h
    public final Uri j() {
        File file = this.f43733f;
        if (file != null) {
            Uri fromFile = Uri.fromFile(file);
            Intrinsics.checkNotNullExpressionValue(fromFile, "fromFile(this)");
            return fromFile;
        }
        return null;
    }

    @m8.g
    public final b k() {
        b bVar = this.f43729b;
        if (bVar != null) {
            return bVar;
        }
        Intrinsics.throwUninitializedPropertyAccessException("preview");
        return null;
    }

    @m8.g
    public final MutableLiveData<State> l() {
        return this.f43732e;
    }

    public final void m(@m8.g ViewGroup view) {
        Intrinsics.checkNotNullParameter(view, "view");
        y(new b(this.f43728a, null));
        CamcorderProfile camcorderProfile = CamcorderProfile.get(5);
        k().b(camcorderProfile.videoFrameWidth, camcorderProfile.videoFrameHeight);
        view.addView(k());
    }

    public final void p() {
        if (C()) {
            return;
        }
        try {
            MediaRecorder mediaRecorder = this.f43730c;
            if (mediaRecorder != null) {
                mediaRecorder.start();
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        this.f43732e.setValue(State.RECORDING);
    }

    public final void s() {
        if (C()) {
            return;
        }
        A();
        this.f43734g = this.f43734g == 1 ? 0 : 1;
        z();
    }

    public final void t(@m8.h Camera camera) {
        this.f43731d = camera;
    }

    public final void u(int i4) {
        this.f43734g = i4;
    }

    public final void v(@m8.h File file) {
        this.f43733f = file;
    }

    public final void w(long j4) {
        this.f43735h = j4;
    }

    public final void x(@m8.h MediaRecorder mediaRecorder) {
        this.f43730c = mediaRecorder;
    }

    public final void y(@m8.g b bVar) {
        Intrinsics.checkNotNullParameter(bVar, "<set-?>");
        this.f43729b = bVar;
    }

    public final void z() {
        this.f43732e.setValue(State.PREPEARING);
        n();
    }
}

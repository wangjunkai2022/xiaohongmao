package screenstreamer.filters;

import android.util.Log;
import androidx.annotation.NonNull;
import com.ksyun.media.streamer.filter.imgtex.ImgTexFilterBase;
import com.ksyun.media.streamer.framework.ImgTexFormat;
import com.ksyun.media.streamer.framework.ImgTexFrame;
import com.ksyun.media.streamer.util.gles.GLRender;
import com.ksyun.media.streamer.util.gles.GlUtil;
import com.ksyun.media.streamer.util.gles.TexTransformUtil;
import io.sentry.protocol.y;
import java.nio.FloatBuffer;
import screenstreamer.filters.d;

/* compiled from: ImgTexGPUImageFilter.java */
/* loaded from: classes5.dex */
public class e extends ImgTexFilterBase {

    /* renamed from: o  reason: collision with root package name */
    private static final String f93377o = "ImgTexGPUImageFilter";

    /* renamed from: m  reason: collision with root package name */
    private final b f93378m;

    /* renamed from: n  reason: collision with root package name */
    private ImgTexFormat f93379n;

    public e(GLRender gLRender, b bVar, @NonNull d.b bVar2) {
        super(gLRender);
        this.f93378m = bVar;
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgFilterBase
    public int getSinkPinNum() {
        return 1;
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgTexFilterBase
    protected ImgTexFormat getSrcPinFormat() {
        return this.f93379n;
    }

    protected FloatBuffer getTexCoords() {
        return TexTransformUtil.getTexCoordsBuf();
    }

    protected FloatBuffer getVertexCoords() {
        return TexTransformUtil.getVertexCoordsBuf();
    }

    public a i() {
        return this.f93378m;
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgTexFilterBase
    protected void onDraw(ImgTexFrame[] imgTexFrameArr) {
        this.f93378m.m(imgTexFrameArr[this.mMainSinkPinIndex].textureId, getVertexCoords(), getTexCoords());
        GlUtil.checkGlError("GPUImageFilter onDraw");
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgTexFilterBase
    protected void onFormatChanged(int i4, ImgTexFormat imgTexFormat) {
        this.f93379n = new ImgTexFormat(1, imgTexFormat.width, imgTexFormat.height);
        Log.d(f93377o, "init GPUImage filter " + imgTexFormat.width + y.b.f83919g + imgTexFormat.height);
        this.f93378m.i();
        this.f93378m.q(imgTexFormat.width, imgTexFormat.height);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ksyun.media.streamer.filter.imgtex.ImgTexFilterBase
    public void onRelease() {
        this.f93378m.b();
        super.onRelease();
    }
}

package screenstreamer.filters;

import androidx.annotation.NonNull;
import com.ksyun.media.streamer.capture.ImgTexSrcPin;
import com.ksyun.media.streamer.filter.imgtex.ImgFilterBase;
import com.ksyun.media.streamer.framework.ImgTexFormat;
import com.ksyun.media.streamer.framework.ImgTexFrame;
import com.ksyun.media.streamer.framework.SinkPin;
import com.ksyun.media.streamer.framework.SrcPin;
import com.ksyun.media.streamer.util.gles.GLRender;
import screenstreamer.filters.d;

/* compiled from: ImgTexCustomFilter.java */
/* loaded from: classes5.dex */
public class d extends ImgFilterBase {

    /* renamed from: a  reason: collision with root package name */
    private final SinkPin<ImgTexFrame> f93372a;

    /* renamed from: b  reason: collision with root package name */
    private final ImgTexSrcPin f93373b;

    /* renamed from: c  reason: collision with root package name */
    private final GLRender f93374c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ImgTexCustomFilter.java */
    /* loaded from: classes5.dex */
    public class a extends SinkPin<ImgTexFrame> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ b f93375a;

        a(b bVar) {
            this.f93375a = bVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void c(ImgTexFrame imgTexFrame) {
            d.this.f93373b.onFrameAvailable(imgTexFrame);
        }

        @Override // com.ksyun.media.streamer.framework.SinkPin
        /* renamed from: d */
        public void onFrameAvailable(ImgTexFrame imgTexFrame) {
            b bVar = this.f93375a;
            int i4 = imgTexFrame.textureId;
            ImgTexFormat imgTexFormat = imgTexFrame.format;
            final ImgTexFrame imgTexFrame2 = new ImgTexFrame(imgTexFrame.format, bVar.b(i4, imgTexFormat.width, imgTexFormat.height), imgTexFrame.texMatrix, imgTexFrame.pts);
            d.this.f93374c.queueDrawFrameAppends(new Runnable() { // from class: screenstreamer.filters.c
                @Override // java.lang.Runnable
                public final void run() {
                    d.a.this.c(imgTexFrame2);
                }
            });
        }

        @Override // com.ksyun.media.streamer.framework.SinkPin
        public void onDisconnect(boolean z9) {
            d.this.f93373b.disconnect(z9);
            this.f93375a.a();
        }

        @Override // com.ksyun.media.streamer.framework.SinkPin
        public void onFormatChanged(Object obj) {
            d.this.f93373b.onFormatChanged(obj);
        }
    }

    /* compiled from: ImgTexCustomFilter.java */
    /* loaded from: classes5.dex */
    public interface b {
        void a();

        int b(int i4, int i10, int i11);
    }

    public d(GLRender gLRender, @NonNull b bVar) {
        this.f93374c = gLRender;
        this.f93372a = new a(bVar);
        this.f93373b = new ImgTexSrcPin(gLRender);
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgFilterBase
    public SinkPin<ImgTexFrame> getSinkPin(int i4) {
        return this.f93372a;
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgFilterBase
    public int getSinkPinNum() {
        return 1;
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgFilterBase
    public SrcPin<ImgTexFrame> getSrcPin() {
        return this.f93373b;
    }
}

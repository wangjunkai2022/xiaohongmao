package screenstreamer.kit;

import com.ksyun.media.streamer.framework.AudioBufFormat;
import com.ksyun.media.streamer.framework.AudioBufFrame;
import com.ksyun.media.streamer.framework.SrcPin;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* compiled from: AudioInputBase.java */
/* loaded from: classes5.dex */
public class a implements c {

    /* renamed from: d  reason: collision with root package name */
    private static final String f93381d = "AudioInputBase";

    /* renamed from: a  reason: collision with root package name */
    private SrcPin<AudioBufFrame> f93382a = new SrcPin<>();

    /* renamed from: b  reason: collision with root package name */
    private AudioBufFormat f93383b;

    /* renamed from: c  reason: collision with root package name */
    private ByteBuffer f93384c;

    @Override // screenstreamer.kit.c
    public void a(ByteBuffer byteBuffer, long j4, int i4, int i10, int i11) {
        if (this.f93383b == null) {
            AudioBufFormat audioBufFormat = new AudioBufFormat(i11, i10, i4);
            this.f93383b = audioBufFormat;
            this.f93382a.onFormatChanged(audioBufFormat);
        }
        if (byteBuffer == null) {
            return;
        }
        if (!byteBuffer.isDirect()) {
            int limit = byteBuffer.limit();
            ByteBuffer byteBuffer2 = this.f93384c;
            if (byteBuffer2 == null || byteBuffer2.capacity() < limit) {
                ByteBuffer allocateDirect = ByteBuffer.allocateDirect(limit);
                this.f93384c = allocateDirect;
                allocateDirect.order(ByteOrder.nativeOrder());
            }
            this.f93384c.clear();
            this.f93384c.put(byteBuffer);
            this.f93384c.flip();
            byteBuffer = this.f93384c;
        }
        this.f93382a.onFrameAvailable(new AudioBufFrame(this.f93383b, byteBuffer, j4));
    }

    public SrcPin<AudioBufFrame> b() {
        return this.f93382a;
    }
}

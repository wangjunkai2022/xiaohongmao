package com.ksyun.media.streamer.filter.audio;

import a.g0;
import com.ksyun.media.streamer.framework.AudioBufFormat;
import com.ksyun.media.streamer.framework.AudioBufFrame;
import com.ksyun.media.streamer.framework.SinkPin;
import com.ksyun.media.streamer.framework.SrcPin;
import java.util.Iterator;

/* compiled from: AudioBufSrcPin.java */
/* loaded from: classes3.dex */
public class b extends SrcPin<AudioBufFrame> {
    @Override // com.ksyun.media.streamer.framework.SrcPin
    /* renamed from: a */
    public synchronized void onFrameAvailable(AudioBufFrame audioBufFrame) {
        super.onFrameAvailable(audioBufFrame);
        if ((audioBufFrame.flags & 65536) != 0) {
            this.f46556d = null;
        }
    }

    @Override // com.ksyun.media.streamer.framework.SrcPin
    public synchronized void disconnect(@g0 SinkPin<AudioBufFrame> sinkPin, boolean z9) {
        Object obj = this.f46556d;
        if (obj != null) {
            AudioBufFrame audioBufFrame = new AudioBufFrame((AudioBufFormat) obj, null, 0L);
            audioBufFrame.flags |= 65536;
            if (sinkPin != null) {
                sinkPin.onFrameAvailable(audioBufFrame);
            } else {
                Iterator it = this.f46554b.iterator();
                while (it.hasNext()) {
                    ((SinkPin) it.next()).onFrameAvailable(audioBufFrame);
                }
            }
        }
        super.disconnect(sinkPin, z9);
    }
}

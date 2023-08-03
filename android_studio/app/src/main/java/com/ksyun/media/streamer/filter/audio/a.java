package com.ksyun.media.streamer.filter.audio;

import com.ksyun.media.streamer.framework.AudioBufFrame;
import com.ksyun.media.streamer.framework.PinAdapter;
import com.ksyun.media.streamer.framework.SrcPin;

/* compiled from: AudioBufPinAdapter.java */
/* loaded from: classes3.dex */
public class a extends PinAdapter<AudioBufFrame> {
    @Override // com.ksyun.media.streamer.framework.PinAdapter
    protected SrcPin<AudioBufFrame> a() {
        return new b();
    }
}

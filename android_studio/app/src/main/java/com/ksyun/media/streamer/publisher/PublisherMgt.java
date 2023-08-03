package com.ksyun.media.streamer.publisher;

import a.f0;
import com.ksyun.media.streamer.framework.AudioPacket;
import com.ksyun.media.streamer.framework.ImgPacket;
import com.ksyun.media.streamer.framework.PinAdapter;
import com.ksyun.media.streamer.framework.SinkPin;
import com.ksyun.media.streamer.logstats.StatsConstant;
import com.ksyun.media.streamer.logstats.StatsLogReport;
import java.util.LinkedList;
import java.util.List;

/* loaded from: classes3.dex */
public class PublisherMgt {

    /* renamed from: a  reason: collision with root package name */
    private static final String f46658a = "PublisherMgt";

    /* renamed from: c  reason: collision with root package name */
    private PinAdapter<AudioPacket> f46660c = new PinAdapter<>();

    /* renamed from: d  reason: collision with root package name */
    private PinAdapter<ImgPacket> f46661d = new PinAdapter<>();

    /* renamed from: b  reason: collision with root package name */
    private List<Publisher> f46659b = new LinkedList();

    public void addPublisher(@f0 Publisher publisher) {
        if (this.f46659b.contains(publisher)) {
            return;
        }
        this.f46659b.add(publisher);
        this.f46660c.mSrcPin.connect(publisher.getAudioSink());
        this.f46661d.mSrcPin.connect(publisher.getVideoSink());
    }

    public SinkPin<AudioPacket> getAudioSink() {
        return this.f46660c.mSinkPin;
    }

    public SinkPin<ImgPacket> getVideoSink() {
        return this.f46661d.mSinkPin;
    }

    public void removePublisher(Publisher publisher) {
        this.f46659b.remove(publisher);
        this.f46660c.mSrcPin.disconnect(publisher.getAudioSink(), false);
        this.f46661d.mSrcPin.disconnect(publisher.getVideoSink(), false);
    }

    public void setAudioOnly(boolean z9) {
        for (Publisher publisher : this.f46659b) {
            publisher.setAudioOnly(z9);
        }
        if (z9) {
            StatsLogReport.getInstance().updateFunctionPoint(StatsConstant.FUNCTION_AUDIOONLY);
        }
    }

    public void setVideoOnly(boolean z9) {
        for (Publisher publisher : this.f46659b) {
            publisher.setVideoOnly(z9);
        }
    }
}

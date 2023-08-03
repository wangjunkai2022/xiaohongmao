package com.ksyun.media.streamer.filter.audio;

import com.ksyun.media.streamer.framework.AudioBufFrame;
import com.ksyun.media.streamer.framework.PinAdapter;
import com.ksyun.media.streamer.framework.SinkPin;
import com.ksyun.media.streamer.framework.SrcPin;
import com.ksyun.media.streamer.logstats.StatsLogReport;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;

/* loaded from: classes3.dex */
public class AudioFilterMgt {

    /* renamed from: a  reason: collision with root package name */
    private static final String f46248a = "AudioFilterMgt";

    /* renamed from: c  reason: collision with root package name */
    private PinAdapter<AudioBufFrame> f46250c;

    /* renamed from: d  reason: collision with root package name */
    private LinkedList<AudioFilterBase> f46251d;

    /* renamed from: e  reason: collision with root package name */
    private final Object f46252e = new Object();

    /* renamed from: b  reason: collision with root package name */
    private PinAdapter<AudioBufFrame> f46249b = new a();

    /* JADX WARN: Multi-variable type inference failed */
    public AudioFilterMgt() {
        a aVar = new a();
        this.f46250c = aVar;
        this.f46249b.mSrcPin.connect(aVar.mSinkPin);
        this.f46251d = new LinkedList<>();
    }

    private void a(List<? extends AudioFilterBase> list) {
        if (list == null || list.size() <= 0) {
            return;
        }
        for (int i4 = 0; i4 < list.size(); i4++) {
            if (list.get(i4) != null) {
                if (list.get(i4) instanceof AudioReverbFilter) {
                    AudioReverbFilter audioReverbFilter = (AudioReverbFilter) list.get(i4);
                    audioReverbFilter.setTakeEffect(true);
                    StatsLogReport.getInstance().updateAudioFilterType(audioReverbFilter.getClass().getSimpleName(), String.valueOf(audioReverbFilter.getReverbType()));
                } else {
                    StatsLogReport.getInstance().updateAudioFilterType(list.get(i4).getClass().getSimpleName());
                }
            }
        }
    }

    public synchronized List<AudioFilterBase> getFilter() {
        return this.f46251d;
    }

    public SinkPin<AudioBufFrame> getSinkPin() {
        return this.f46249b.mSinkPin;
    }

    public SrcPin<AudioBufFrame> getSrcPin() {
        return this.f46250c.mSrcPin;
    }

    public void setFilter(AudioFilterBase audioFilterBase) {
        LinkedList linkedList;
        if (audioFilterBase != null) {
            linkedList = new LinkedList();
            linkedList.add(audioFilterBase);
        } else {
            linkedList = null;
        }
        setFilter(linkedList);
    }

    public void setFilter(AudioFilterBase[] audioFilterBaseArr) {
        LinkedList linkedList;
        if (audioFilterBaseArr == null || audioFilterBaseArr.length <= 0) {
            linkedList = null;
        } else {
            linkedList = new LinkedList();
            Collections.addAll(linkedList, audioFilterBaseArr);
        }
        setFilter(linkedList);
    }

    public synchronized void setFilter(List<? extends AudioFilterBase> list) {
        synchronized (this.f46252e) {
            if (!this.f46251d.isEmpty()) {
                LinkedList<AudioFilterBase> linkedList = this.f46251d;
                linkedList.get(linkedList.size() - 1).getSrcPin().disconnect(false);
                this.f46249b.mSrcPin.disconnect(true);
                this.f46251d.clear();
            } else if (list != null && !list.isEmpty()) {
                this.f46249b.mSrcPin.disconnect(false);
            }
            if (list != null && !list.isEmpty()) {
                this.f46249b.mSrcPin.connect(list.get(0).getSinkPin());
                for (int i4 = 1; i4 < list.size(); i4++) {
                    list.get(i4 - 1).getSrcPin().connect(list.get(i4).getSinkPin());
                }
                list.get(list.size() - 1).getSrcPin().connect(this.f46250c.mSinkPin);
                this.f46251d.addAll(list);
            }
            this.f46249b.mSrcPin.connect(this.f46250c.mSinkPin);
        }
        a(list);
    }
}

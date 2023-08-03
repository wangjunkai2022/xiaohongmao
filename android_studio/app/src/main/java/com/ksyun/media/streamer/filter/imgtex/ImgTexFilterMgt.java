package com.ksyun.media.streamer.filter.imgtex;

import a.f0;
import a.g0;
import android.content.Context;
import com.ksyun.media.streamer.filter.imgtex.ImgFilterBase;
import com.ksyun.media.streamer.framework.ImgTexFrame;
import com.ksyun.media.streamer.framework.PinAdapter;
import com.ksyun.media.streamer.framework.SinkPin;
import com.ksyun.media.streamer.framework.SrcPin;
import com.ksyun.media.streamer.logstats.StatsLogReport;
import com.ksyun.media.streamer.util.gles.GLRender;
import java.security.InvalidParameterException;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* loaded from: classes3.dex */
public class ImgTexFilterMgt {
    public static final int KSY_FILTER_BEAUTY_DENOISE = 19;
    public static final int KSY_FILTER_BEAUTY_DISABLE = 0;
    public static final int KSY_FILTER_BEAUTY_ILLUSION = 18;
    public static final int KSY_FILTER_BEAUTY_PRO = 23;
    public static final int KSY_FILTER_BEAUTY_PRO1 = 24;
    public static final int KSY_FILTER_BEAUTY_PRO2 = 25;
    public static final int KSY_FILTER_BEAUTY_PRO3 = 26;
    public static final int KSY_FILTER_BEAUTY_PRO4 = 27;
    public static final int KSY_FILTER_BEAUTY_SKINWHITEN = 17;
    public static final int KSY_FILTER_BEAUTY_SMOOTH = 20;
    public static final int KSY_FILTER_BEAUTY_SOFT = 16;
    public static final int KSY_FILTER_BEAUTY_SOFT_EXT = 21;
    public static final int KSY_FILTER_BEAUTY_SOFT_SHARPEN = 22;

    /* renamed from: a  reason: collision with root package name */
    private static final String f46500a = "ImgTexFilterMgt";

    /* renamed from: b  reason: collision with root package name */
    private static final boolean f46501b = false;

    /* renamed from: c  reason: collision with root package name */
    private Context f46502c;

    /* renamed from: e  reason: collision with root package name */
    private PinAdapter<ImgTexFrame> f46504e;

    /* renamed from: f  reason: collision with root package name */
    private LinkedList<ImgFilterBase> f46505f;

    /* renamed from: g  reason: collision with root package name */
    private LinkedList<ImgFilterBase> f46506g;

    /* renamed from: i  reason: collision with root package name */
    private ImgFilterBase.OnErrorListener f46508i;

    /* renamed from: h  reason: collision with root package name */
    private final Object f46507h = new Object();

    /* renamed from: d  reason: collision with root package name */
    private PinAdapter<ImgTexFrame> f46503d = new PinAdapter<>();

    public ImgTexFilterMgt(Context context) {
        this.f46502c = context;
        PinAdapter<ImgTexFrame> pinAdapter = new PinAdapter<>();
        this.f46504e = pinAdapter;
        this.f46503d.mSrcPin.connect(pinAdapter.mSinkPin);
        this.f46505f = new LinkedList<>();
        this.f46506g = new LinkedList<>();
    }

    private void a(List<? extends ImgFilterBase> list) {
        if (list == null || list.size() <= 0) {
            return;
        }
        for (int i4 = 0; i4 < list.size(); i4++) {
            if (list.get(i4) != null) {
                if (list.get(i4) instanceof ImgBeautySpecialEffectsFilter) {
                    ImgBeautySpecialEffectsFilter imgBeautySpecialEffectsFilter = (ImgBeautySpecialEffectsFilter) list.get(i4);
                    imgBeautySpecialEffectsFilter.setTakeEffect(true);
                    StatsLogReport.getInstance().updateBeautyType(list.get(i4).getClass().getSimpleName(), imgBeautySpecialEffectsFilter.getSpecialName());
                } else {
                    StatsLogReport.getInstance().updateBeautyType(list.get(i4).getClass().getSimpleName());
                }
            }
        }
    }

    public void addFilter(ImgFilterBase imgFilterBase) {
        SrcPin<ImgTexFrame> srcPin;
        SinkPin<ImgTexFrame> sinkPin;
        if (imgFilterBase == null) {
            return;
        }
        ImgFilterBase.OnErrorListener onErrorListener = this.f46508i;
        if (onErrorListener != null) {
            imgFilterBase.setOnErrorListener(onErrorListener);
        }
        synchronized (this.f46507h) {
            if (this.f46505f.isEmpty()) {
                srcPin = this.f46503d.mSrcPin;
            } else {
                srcPin = this.f46505f.getLast().getSrcPin();
            }
            if (this.f46506g.isEmpty()) {
                sinkPin = this.f46504e.mSinkPin;
            } else {
                sinkPin = this.f46506g.get(0).getSinkPin();
            }
            srcPin.disconnect(false);
            srcPin.connect(imgFilterBase.getSinkPin());
            imgFilterBase.getSrcPin().connect(sinkPin);
            this.f46505f.add(imgFilterBase);
            a(this.f46505f);
        }
    }

    public void addFilterAfter(@f0 ImgFilterBase imgFilterBase, ImgFilterBase imgFilterBase2) {
        SinkPin<ImgTexFrame> sinkPin;
        if (imgFilterBase2 == null) {
            return;
        }
        synchronized (this.f46507h) {
            if (!this.f46505f.isEmpty() && this.f46505f.contains(imgFilterBase)) {
                ImgFilterBase.OnErrorListener onErrorListener = this.f46508i;
                if (onErrorListener != null) {
                    imgFilterBase2.setOnErrorListener(onErrorListener);
                }
                int indexOf = this.f46505f.indexOf(imgFilterBase);
                if (indexOf == this.f46505f.size() - 1) {
                    if (this.f46506g.isEmpty()) {
                        sinkPin = this.f46504e.mSinkPin;
                    } else {
                        sinkPin = this.f46506g.get(0).getSinkPin();
                    }
                } else {
                    sinkPin = this.f46505f.get(indexOf + 1).getSinkPin();
                }
                imgFilterBase.getSrcPin().disconnect(false);
                imgFilterBase.getSrcPin().connect(imgFilterBase2.getSinkPin());
                imgFilterBase2.getSrcPin().connect(sinkPin);
                this.f46505f.add(indexOf + 1, imgFilterBase2);
                a(this.f46505f);
            } else {
                throw new InvalidParameterException("The filter specified not found!");
            }
        }
    }

    public void addFilterBefore(@f0 ImgFilterBase imgFilterBase, ImgFilterBase imgFilterBase2) {
        SrcPin<ImgTexFrame> srcPin;
        if (imgFilterBase2 == null) {
            return;
        }
        synchronized (this.f46507h) {
            if (!this.f46505f.isEmpty() && this.f46505f.contains(imgFilterBase)) {
                ImgFilterBase.OnErrorListener onErrorListener = this.f46508i;
                if (onErrorListener != null) {
                    imgFilterBase2.setOnErrorListener(onErrorListener);
                }
                int indexOf = this.f46505f.indexOf(imgFilterBase);
                if (indexOf == 0) {
                    srcPin = this.f46503d.mSrcPin;
                } else {
                    srcPin = this.f46505f.get(indexOf - 1).getSrcPin();
                }
                srcPin.disconnect(false);
                srcPin.connect(imgFilterBase2.getSinkPin());
                imgFilterBase2.getSrcPin().connect(imgFilterBase.getSinkPin());
                this.f46505f.add(indexOf, imgFilterBase2);
                a(this.f46505f);
            } else {
                throw new InvalidParameterException("The filter specified not found!");
            }
        }
    }

    public List<ImgFilterBase> getExtraFilters() {
        return this.f46506g;
    }

    public synchronized List<ImgFilterBase> getFilter() {
        return this.f46505f;
    }

    public SinkPin<ImgTexFrame> getSinkPin() {
        return this.f46503d.mSinkPin;
    }

    public SrcPin<ImgTexFrame> getSrcPin() {
        return this.f46504e.mSrcPin;
    }

    public void release() {
        synchronized (this.f46507h) {
            this.f46503d.mSrcPin.disconnect(true);
            this.f46505f.clear();
            this.f46506g.clear();
        }
    }

    public void replaceFilter(@f0 ImgFilterBase imgFilterBase, @g0 ImgFilterBase imgFilterBase2) {
        replaceFilter(imgFilterBase, imgFilterBase2, true);
    }

    public void setExtraFilter(ImgFilterBase imgFilterBase) {
        LinkedList linkedList;
        if (imgFilterBase != null) {
            linkedList = new LinkedList();
            linkedList.add(imgFilterBase);
        } else {
            linkedList = null;
        }
        setExtraFilter(linkedList);
    }

    public void setFilter(GLRender gLRender, int i4) {
        ImgFilterBase imgBeautySoftFilter;
        switch (i4) {
            case 16:
                imgBeautySoftFilter = new ImgBeautySoftFilter(gLRender);
                break;
            case 17:
                imgBeautySoftFilter = new ImgBeautySkinWhitenFilter(gLRender);
                break;
            case 18:
                imgBeautySoftFilter = new ImgBeautyIllusionFilter(gLRender);
                break;
            case 19:
                imgBeautySoftFilter = new ImgBeautyDenoiseFilter(gLRender);
                break;
            case 20:
                imgBeautySoftFilter = new ImgBeautySmoothFilter(gLRender, this.f46502c);
                break;
            case 21:
                imgBeautySoftFilter = new ImgBeautySoftExtFilter(gLRender);
                break;
            case 22:
                imgBeautySoftFilter = new ImgBeautySoftSharpenFilter(gLRender);
                break;
            case 23:
                imgBeautySoftFilter = new ImgBeautyProFilter(gLRender, this.f46502c);
                break;
            case 24:
                imgBeautySoftFilter = new ImgBeautyProFilter(gLRender, this.f46502c, 1);
                break;
            case 25:
                imgBeautySoftFilter = new ImgBeautyProFilter(gLRender, this.f46502c, 2);
                break;
            case 26:
                imgBeautySoftFilter = new ImgBeautyProFilter(gLRender, this.f46502c, 3);
                break;
            case 27:
                imgBeautySoftFilter = new ImgBeautyProFilter(gLRender, this.f46502c, 4);
                break;
            default:
                imgBeautySoftFilter = null;
                break;
        }
        setFilter(imgBeautySoftFilter);
    }

    public void setOnErrorListener(ImgFilterBase.OnErrorListener onErrorListener) {
        LinkedList<ImgFilterBase> linkedList;
        this.f46508i = onErrorListener;
        synchronized (this.f46507h) {
            if (this.f46508i != null && (linkedList = this.f46505f) != null && !linkedList.isEmpty()) {
                Iterator<ImgFilterBase> it = this.f46505f.iterator();
                while (it.hasNext()) {
                    it.next().setOnErrorListener(this.f46508i);
                }
            }
        }
    }

    public void replaceFilter(@f0 ImgFilterBase imgFilterBase, @g0 ImgFilterBase imgFilterBase2, boolean z9) {
        SrcPin<ImgTexFrame> srcPin;
        SinkPin<ImgTexFrame> sinkPin;
        synchronized (this.f46507h) {
            if (!this.f46505f.isEmpty() && this.f46505f.contains(imgFilterBase)) {
                ImgFilterBase.OnErrorListener onErrorListener = this.f46508i;
                if (onErrorListener != null && imgFilterBase2 != null) {
                    imgFilterBase2.setOnErrorListener(onErrorListener);
                }
                int indexOf = this.f46505f.indexOf(imgFilterBase);
                if (indexOf == 0) {
                    srcPin = this.f46503d.mSrcPin;
                } else {
                    srcPin = this.f46505f.get(indexOf - 1).getSrcPin();
                }
                if (indexOf == this.f46505f.size() - 1) {
                    if (this.f46506g.isEmpty()) {
                        sinkPin = this.f46504e.mSinkPin;
                    } else {
                        sinkPin = this.f46506g.get(0).getSinkPin();
                    }
                } else {
                    sinkPin = this.f46505f.get(indexOf + 1).getSinkPin();
                }
                imgFilterBase.getSrcPin().disconnect(false);
                srcPin.disconnect(z9);
                if (imgFilterBase2 != null) {
                    srcPin.connect(imgFilterBase2.getSinkPin());
                    imgFilterBase2.getSrcPin().connect(sinkPin);
                    this.f46505f.set(indexOf, imgFilterBase2);
                } else {
                    srcPin.connect(sinkPin);
                    this.f46505f.remove(indexOf);
                }
                a(this.f46505f);
            } else {
                throw new InvalidParameterException("The filter to be replaced not found!");
            }
        }
    }

    public void setExtraFilter(List<? extends ImgFilterBase> list) {
        synchronized (this.f46507h) {
            if (!this.f46506g.isEmpty()) {
                LinkedList<ImgFilterBase> linkedList = this.f46506g;
                linkedList.get(linkedList.size() - 1).getSrcPin().disconnect(false);
                if (this.f46505f.isEmpty()) {
                    this.f46503d.mSrcPin.disconnect(true);
                } else {
                    LinkedList<ImgFilterBase> linkedList2 = this.f46505f;
                    linkedList2.get(linkedList2.size() - 1).getSrcPin().disconnect(true);
                }
                this.f46506g.clear();
            } else if (list != null && !list.isEmpty()) {
                if (this.f46505f.isEmpty()) {
                    this.f46503d.mSrcPin.disconnect(false);
                } else {
                    LinkedList<ImgFilterBase> linkedList3 = this.f46505f;
                    linkedList3.get(linkedList3.size() - 1).getSrcPin().disconnect(false);
                }
            }
            if (list != null && !list.isEmpty()) {
                if (this.f46505f.isEmpty()) {
                    this.f46503d.mSrcPin.connect(list.get(0).getSinkPin());
                } else {
                    LinkedList<ImgFilterBase> linkedList4 = this.f46505f;
                    linkedList4.get(linkedList4.size() - 1).getSrcPin().connect(list.get(0).getSinkPin());
                }
                for (int i4 = 1; i4 < list.size(); i4++) {
                    list.get(i4 - 1).getSrcPin().connect(list.get(i4).getSinkPin());
                }
                list.get(list.size() - 1).getSrcPin().connect(this.f46504e.mSinkPin);
                this.f46506g.addAll(list);
            }
            if (this.f46505f.isEmpty()) {
                this.f46503d.mSrcPin.connect(this.f46504e.mSinkPin);
            } else {
                LinkedList<ImgFilterBase> linkedList5 = this.f46505f;
                linkedList5.get(linkedList5.size() - 1).getSrcPin().connect(this.f46504e.mSinkPin);
            }
        }
        a(list);
    }

    public void setFilter(ImgFilterBase imgFilterBase) {
        LinkedList linkedList;
        if (imgFilterBase != null) {
            linkedList = new LinkedList();
            linkedList.add(imgFilterBase);
        } else {
            linkedList = null;
        }
        setFilter(linkedList);
    }

    public void setFilter(ImgFilterBase[] imgFilterBaseArr) {
        LinkedList linkedList;
        if (imgFilterBaseArr == null || imgFilterBaseArr.length <= 0) {
            linkedList = null;
        } else {
            linkedList = new LinkedList();
            Collections.addAll(linkedList, imgFilterBaseArr);
        }
        setFilter(linkedList);
    }

    public void setFilter(List<? extends ImgFilterBase> list) {
        if (list == null) {
            StatsLogReport.getInstance().updateBeautyType("KSY_FILTER_BEAUTY_DISABLE");
        }
        if (this.f46508i != null && list != null && !list.isEmpty()) {
            for (ImgFilterBase imgFilterBase : list) {
                imgFilterBase.setOnErrorListener(this.f46508i);
            }
        }
        synchronized (this.f46507h) {
            if (!this.f46505f.isEmpty()) {
                LinkedList<ImgFilterBase> linkedList = this.f46505f;
                linkedList.get(linkedList.size() - 1).getSrcPin().disconnect(false);
                this.f46503d.mSrcPin.disconnect(true);
                this.f46505f.clear();
            } else if (list != null && !list.isEmpty()) {
                this.f46503d.mSrcPin.disconnect(false);
            }
            if (list != null && !list.isEmpty()) {
                this.f46503d.mSrcPin.connect(list.get(0).getSinkPin());
                for (int i4 = 1; i4 < list.size(); i4++) {
                    list.get(i4 - 1).getSrcPin().connect(list.get(i4).getSinkPin());
                }
                if (this.f46506g.isEmpty()) {
                    list.get(list.size() - 1).getSrcPin().connect(this.f46504e.mSinkPin);
                } else {
                    list.get(list.size() - 1).getSrcPin().connect(this.f46506g.get(0).getSinkPin());
                }
                this.f46505f.addAll(list);
            }
            if (this.f46506g.isEmpty()) {
                this.f46503d.mSrcPin.connect(this.f46504e.mSinkPin);
            } else {
                this.f46503d.mSrcPin.connect(this.f46506g.get(0).getSinkPin());
            }
        }
        a(list);
    }
}

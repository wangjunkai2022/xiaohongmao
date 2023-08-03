package com.ksyun.media.streamer.filter.imgtex;

import android.os.ConditionVariable;
import com.ksyun.media.streamer.capture.ImgTexSrcPin;
import com.ksyun.media.streamer.encoder.ColorFormatConvert;
import com.ksyun.media.streamer.encoder.ImgTexToBuf;
import com.ksyun.media.streamer.framework.ImgBufFormat;
import com.ksyun.media.streamer.framework.ImgBufFrame;
import com.ksyun.media.streamer.framework.ImgTexFrame;
import com.ksyun.media.streamer.framework.SinkPin;
import com.ksyun.media.streamer.framework.SrcPin;
import com.ksyun.media.streamer.util.gles.GLRender;
import java.nio.ByteBuffer;

/* loaded from: classes3.dex */
public abstract class ImgTexBufFilter extends ImgFilterBase {

    /* renamed from: a  reason: collision with root package name */
    private static final String f46462a = "ImgTexBufFilter";

    /* renamed from: b  reason: collision with root package name */
    private SinkPin<ImgTexFrame> f46463b;

    /* renamed from: c  reason: collision with root package name */
    private ImgTexToBuf f46464c;

    /* renamed from: d  reason: collision with root package name */
    private ImgTexSrcPin f46465d;

    /* renamed from: e  reason: collision with root package name */
    private ConditionVariable f46466e;

    /* renamed from: f  reason: collision with root package name */
    private ImgBufFrame f46467f;

    /* renamed from: g  reason: collision with root package name */
    private int f46468g;

    /* renamed from: h  reason: collision with root package name */
    private ImgBufFormat f46469h;

    /* renamed from: i  reason: collision with root package name */
    private ByteBuffer f46470i;

    public ImgTexBufFilter(GLRender gLRender, int i4) {
        this.f46468g = 5;
        if (i4 != 3 && i4 != 5) {
            throw new IllegalArgumentException("only PIX_FMT_RGBA or PIX_FMT_I420 supported!");
        }
        this.f46466e = new ConditionVariable(true);
        this.f46463b = new SinkPin<ImgTexFrame>() { // from class: com.ksyun.media.streamer.filter.imgtex.ImgTexBufFilter.1
            @Override // com.ksyun.media.streamer.framework.SinkPin
            /* renamed from: a */
            public void onFrameAvailable(ImgTexFrame imgTexFrame) {
                ImgTexBufFilter.this.f46466e.close();
                ImgTexBufFilter.this.f46464c.mSinkPin.onFrameAvailable(imgTexFrame);
                ImgTexBufFilter.this.f46466e.block();
                if (ImgTexBufFilter.this.f46467f != null) {
                    ImgTexBufFilter.this.f46465d.updateFrame(ImgTexBufFilter.this.f46467f.buf, ImgTexBufFilter.this.f46467f.format.stride[0], ImgTexBufFilter.this.f46467f.format.width, ImgTexBufFilter.this.f46467f.format.height, ImgTexBufFilter.this.f46467f.pts);
                }
                ImgTexBufFilter.this.f46467f = null;
            }

            @Override // com.ksyun.media.streamer.framework.SinkPin
            public void onDisconnect(boolean z9) {
                ImgTexBufFilter.this.f46466e.open();
                ImgTexBufFilter.this.f46464c.mSinkPin.onDisconnect(z9);
            }

            @Override // com.ksyun.media.streamer.framework.SinkPin
            public void onFormatChanged(Object obj) {
                ImgTexBufFilter.this.f46464c.mSinkPin.onFormatChanged(obj);
                ImgTexBufFilter.this.f46465d.reset();
            }
        };
        this.f46464c = new ImgTexToBuf(gLRender);
        this.f46465d = new ImgTexSrcPin(gLRender);
        SinkPin<ImgBufFrame> sinkPin = new SinkPin<ImgBufFrame>() { // from class: com.ksyun.media.streamer.filter.imgtex.ImgTexBufFilter.2
            @Override // com.ksyun.media.streamer.framework.SinkPin
            /* renamed from: a */
            public void onFrameAvailable(ImgBufFrame imgBufFrame) {
                if (ImgTexBufFilter.this.f46468g != 5) {
                    int a10 = ImgTexBufFilter.this.a(imgBufFrame.format);
                    if (ImgTexBufFilter.this.f46470i != null && ImgTexBufFilter.this.f46470i.limit() < a10) {
                        ImgTexBufFilter.this.f46470i = null;
                    }
                    if (ImgTexBufFilter.this.f46470i == null) {
                        ImgTexBufFilter.this.f46470i = ByteBuffer.allocateDirect(a10);
                    }
                    if (ImgTexBufFilter.this.f46470i != null) {
                        ImgTexBufFilter.this.f46470i.clear();
                        ImgTexBufFilter.this.a(imgBufFrame);
                        ImgTexBufFilter.this.f46470i.rewind();
                    }
                    ImgTexBufFilter imgTexBufFilter = ImgTexBufFilter.this;
                    ByteBuffer doFilter = imgTexBufFilter.doFilter(imgTexBufFilter.f46470i, ImgTexBufFilter.this.f46469h.stride, ImgTexBufFilter.this.f46469h.width, ImgTexBufFilter.this.f46469h.height);
                    imgBufFrame.buf.clear();
                    ImgTexBufFilter.this.a(imgBufFrame, doFilter);
                    imgBufFrame.buf.rewind();
                } else {
                    ImgTexBufFilter imgTexBufFilter2 = ImgTexBufFilter.this;
                    ByteBuffer byteBuffer = imgBufFrame.buf;
                    ImgBufFormat imgBufFormat = imgBufFrame.format;
                    imgBufFrame.buf = imgTexBufFilter2.doFilter(byteBuffer, imgBufFormat.stride, imgBufFormat.width, imgBufFormat.height);
                }
                ImgTexBufFilter.this.f46467f = imgBufFrame;
                ImgTexBufFilter.this.f46466e.open();
            }

            @Override // com.ksyun.media.streamer.framework.SinkPin
            public void onDisconnect(boolean z9) {
                ImgTexBufFilter.this.f46465d.disconnect(z9);
            }

            @Override // com.ksyun.media.streamer.framework.SinkPin
            public void onFormatChanged(Object obj) {
                ImgBufFormat imgBufFormat = (ImgBufFormat) obj;
                if (ImgTexBufFilter.this.f46469h != null && (ImgTexBufFilter.this.f46469h.width != imgBufFormat.width || ImgTexBufFilter.this.f46469h.height != imgBufFormat.height)) {
                    ImgTexBufFilter.this.f46469h = null;
                }
                if (ImgTexBufFilter.this.f46469h == null) {
                    if (ImgTexBufFilter.this.f46468g == 5) {
                        ImgTexBufFilter.this.f46469h = imgBufFormat;
                    } else {
                        int i10 = imgBufFormat.width;
                        ImgTexBufFilter imgTexBufFilter = ImgTexBufFilter.this;
                        imgTexBufFilter.f46469h = new ImgBufFormat(imgTexBufFilter.f46468g, imgBufFormat.width, imgBufFormat.height, imgBufFormat.orientation, new int[]{i10, i10 / 2, i10 / 2});
                    }
                }
                ImgTexBufFilter imgTexBufFilter2 = ImgTexBufFilter.this;
                imgTexBufFilter2.onSizeChanged(imgTexBufFilter2.f46469h.stride, ImgTexBufFilter.this.f46469h.width, ImgTexBufFilter.this.f46469h.height);
            }
        };
        this.f46468g = i4;
        this.f46464c.setOutputColorFormat(5);
        this.f46464c.mSrcPin.connect(sinkPin);
    }

    protected abstract ByteBuffer doFilter(ByteBuffer byteBuffer, int[] iArr, int i4, int i10);

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgFilterBase
    public SinkPin<ImgTexFrame> getSinkPin(int i4) {
        return this.f46463b;
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgFilterBase
    public int getSinkPinNum() {
        return 1;
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgFilterBase
    public SrcPin<ImgTexFrame> getSrcPin() {
        return this.f46465d;
    }

    protected abstract void onSizeChanged(int[] iArr, int i4, int i10);

    /* JADX INFO: Access modifiers changed from: private */
    public int a(ImgBufFormat imgBufFormat) {
        if (this.f46468g == 3) {
            return ((imgBufFormat.width * imgBufFormat.height) * 3) / 2;
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(ImgBufFrame imgBufFrame) {
        if (this.f46468g == 3) {
            ByteBuffer byteBuffer = imgBufFrame.buf;
            ImgBufFormat imgBufFormat = imgBufFrame.format;
            ColorFormatConvert.RGBAToI420(byteBuffer, imgBufFormat.stride[0], imgBufFormat.width, imgBufFormat.height, this.f46470i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(ImgBufFrame imgBufFrame, ByteBuffer byteBuffer) {
        if (this.f46468g == 3) {
            ImgBufFormat imgBufFormat = imgBufFrame.format;
            ColorFormatConvert.I420ToRGBA(byteBuffer, imgBufFormat.stride[0], imgBufFormat.width, imgBufFormat.height, imgBufFrame.buf);
        }
    }
}

package com.ksyun.media.streamer.filter.imgtex;

import com.ksyun.media.streamer.util.gles.GLRender;
import java.nio.ByteBuffer;

/* loaded from: classes3.dex */
public abstract class RGBABufFilter extends ImgTexBufFilter {

    /* renamed from: a  reason: collision with root package name */
    private static final String f46547a = "RGBABufFilter";

    public RGBABufFilter(GLRender gLRender) {
        super(gLRender, 5);
    }

    protected abstract ByteBuffer doFilter(ByteBuffer byteBuffer, int i4, int i10, int i11);

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgTexBufFilter
    protected ByteBuffer doFilter(ByteBuffer byteBuffer, int[] iArr, int i4, int i10) {
        return doFilter(byteBuffer, iArr[0], i4, i10);
    }

    protected abstract void onSizeChanged(int i4, int i10, int i11);

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgTexBufFilter
    protected void onSizeChanged(int[] iArr, int i4, int i10) {
        onSizeChanged(iArr[0], i4, i10);
    }
}

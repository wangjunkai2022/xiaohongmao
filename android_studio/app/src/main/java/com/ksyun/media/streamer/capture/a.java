package com.ksyun.media.streamer.capture;

import com.ksyun.media.streamer.framework.ImgBufFrame;
import com.ksyun.media.streamer.framework.SrcPin;
import java.nio.ByteBuffer;

/* compiled from: ImgBufSrcPin.java */
/* loaded from: classes3.dex */
public class a extends SrcPin<ImgBufFrame> {

    /* renamed from: a  reason: collision with root package name */
    private int[] f45771a;

    /* renamed from: e  reason: collision with root package name */
    private ByteBuffer f45772e;

    /* renamed from: f  reason: collision with root package name */
    private ImgBufFrame f45773f;

    /* JADX WARN: Removed duplicated region for block: B:20:0x0051 A[Catch: all -> 0x00d8, TryCatch #0 {, blocks: (B:6:0x0005, B:9:0x000d, B:11:0x0012, B:13:0x001c, B:16:0x0029, B:18:0x0041, B:20:0x0051, B:21:0x0055, B:23:0x005a, B:24:0x0060, B:26:0x006d, B:27:0x0070, B:29:0x0074, B:30:0x0081, B:32:0x0089, B:33:0x0098, B:35:0x00aa, B:36:0x00b8, B:38:0x00be, B:17:0x0030, B:41:0x00c5, B:45:0x00cb, B:47:0x00d3), top: B:53:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x005a A[Catch: all -> 0x00d8, TryCatch #0 {, blocks: (B:6:0x0005, B:9:0x000d, B:11:0x0012, B:13:0x001c, B:16:0x0029, B:18:0x0041, B:20:0x0051, B:21:0x0055, B:23:0x005a, B:24:0x0060, B:26:0x006d, B:27:0x0070, B:29:0x0074, B:30:0x0081, B:32:0x0089, B:33:0x0098, B:35:0x00aa, B:36:0x00b8, B:38:0x00be, B:17:0x0030, B:41:0x00c5, B:45:0x00cb, B:47:0x00d3), top: B:53:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x006d A[Catch: all -> 0x00d8, TryCatch #0 {, blocks: (B:6:0x0005, B:9:0x000d, B:11:0x0012, B:13:0x001c, B:16:0x0029, B:18:0x0041, B:20:0x0051, B:21:0x0055, B:23:0x005a, B:24:0x0060, B:26:0x006d, B:27:0x0070, B:29:0x0074, B:30:0x0081, B:32:0x0089, B:33:0x0098, B:35:0x00aa, B:36:0x00b8, B:38:0x00be, B:17:0x0030, B:41:0x00c5, B:45:0x00cb, B:47:0x00d3), top: B:53:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0074 A[Catch: all -> 0x00d8, TryCatch #0 {, blocks: (B:6:0x0005, B:9:0x000d, B:11:0x0012, B:13:0x001c, B:16:0x0029, B:18:0x0041, B:20:0x0051, B:21:0x0055, B:23:0x005a, B:24:0x0060, B:26:0x006d, B:27:0x0070, B:29:0x0074, B:30:0x0081, B:32:0x0089, B:33:0x0098, B:35:0x00aa, B:36:0x00b8, B:38:0x00be, B:17:0x0030, B:41:0x00c5, B:45:0x00cb, B:47:0x00d3), top: B:53:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0089 A[Catch: all -> 0x00d8, TryCatch #0 {, blocks: (B:6:0x0005, B:9:0x000d, B:11:0x0012, B:13:0x001c, B:16:0x0029, B:18:0x0041, B:20:0x0051, B:21:0x0055, B:23:0x005a, B:24:0x0060, B:26:0x006d, B:27:0x0070, B:29:0x0074, B:30:0x0081, B:32:0x0089, B:33:0x0098, B:35:0x00aa, B:36:0x00b8, B:38:0x00be, B:17:0x0030, B:41:0x00c5, B:45:0x00cb, B:47:0x00d3), top: B:53:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00aa A[Catch: all -> 0x00d8, TryCatch #0 {, blocks: (B:6:0x0005, B:9:0x000d, B:11:0x0012, B:13:0x001c, B:16:0x0029, B:18:0x0041, B:20:0x0051, B:21:0x0055, B:23:0x005a, B:24:0x0060, B:26:0x006d, B:27:0x0070, B:29:0x0074, B:30:0x0081, B:32:0x0089, B:33:0x0098, B:35:0x00aa, B:36:0x00b8, B:38:0x00be, B:17:0x0030, B:41:0x00c5, B:45:0x00cb, B:47:0x00d3), top: B:53:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00be A[Catch: all -> 0x00d8, TRY_LEAVE, TryCatch #0 {, blocks: (B:6:0x0005, B:9:0x000d, B:11:0x0012, B:13:0x001c, B:16:0x0029, B:18:0x0041, B:20:0x0051, B:21:0x0055, B:23:0x005a, B:24:0x0060, B:26:0x006d, B:27:0x0070, B:29:0x0074, B:30:0x0081, B:32:0x0089, B:33:0x0098, B:35:0x00aa, B:36:0x00b8, B:38:0x00be, B:17:0x0030, B:41:0x00c5, B:45:0x00cb, B:47:0x00d3), top: B:53:0x0005 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized void a(android.graphics.Bitmap r16, boolean r17) {
        /*
            Method dump skipped, instructions count: 219
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ksyun.media.streamer.capture.a.a(android.graphics.Bitmap, boolean):void");
    }

    public synchronized void a() {
        disconnect(true);
        this.f45771a = null;
        this.f45772e = null;
    }
}

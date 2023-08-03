package com.ksyun.media.streamer.capture.audio;

import android.media.AudioRecord;
import android.util.Log;
import androidx.core.internal.view.SupportMenu;
import java.nio.ByteBuffer;
import java.nio.ShortBuffer;
import kotlin.jvm.internal.ShortCompanionObject;

/* compiled from: KSYAudioRecord.java */
/* loaded from: classes3.dex */
public class c implements a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f45780a = "KSYAudioRecord";

    /* renamed from: b  reason: collision with root package name */
    private AudioRecord f45781b;

    /* renamed from: c  reason: collision with root package name */
    private float f45782c = 1.0f;

    /* renamed from: d  reason: collision with root package name */
    private boolean f45783d;

    /* renamed from: e  reason: collision with root package name */
    private long f45784e;

    public c(int i4, int i10, int i11) {
        this.f45781b = new AudioRecord(1, i4, i10 == 1 ? 16 : 12, 2, i11 * i10 * 2);
    }

    private short a(int i4) {
        return ((32768 + i4) & SupportMenu.CATEGORY_MASK) != 0 ? (short) ((i4 >> 31) ^ 32767) : (short) i4;
    }

    @Override // com.ksyun.media.streamer.capture.audio.a
    public void a(float f10) {
        this.f45782c = f10;
    }

    @Override // com.ksyun.media.streamer.capture.audio.a
    public int b() {
        try {
            this.f45781b.stop();
            return 0;
        } catch (Exception e4) {
            e4.printStackTrace();
            return -1;
        }
    }

    @Override // com.ksyun.media.streamer.capture.audio.a
    public void c() {
        this.f45781b.release();
    }

    @Override // com.ksyun.media.streamer.capture.audio.a
    public long d() {
        return 0L;
    }

    @Override // com.ksyun.media.streamer.capture.audio.a
    public int a() {
        try {
            this.f45781b.startRecording();
            return 0;
        } catch (Exception e4) {
            e4.printStackTrace();
            return -1;
        }
    }

    @Override // com.ksyun.media.streamer.capture.audio.a
    public int a(ByteBuffer byteBuffer, int i4) {
        int read = this.f45781b.read(byteBuffer, i4);
        if (read <= 0) {
            return read;
        }
        byteBuffer.limit(read);
        byteBuffer.rewind();
        if (this.f45783d) {
            long nanoTime = System.nanoTime() / 1000;
            ShortBuffer asShortBuffer = byteBuffer.asShortBuffer();
            int i10 = 0;
            while (true) {
                if (i10 >= asShortBuffer.limit()) {
                    break;
                } else if (asShortBuffer.get(i10) >= 8191) {
                    Log.i(f45780a, "Latency measured : " + ((int) ((nanoTime - this.f45784e) / 1000)) + " ms");
                    break;
                } else {
                    i10++;
                }
            }
            for (int i11 = 0; i11 < asShortBuffer.limit(); i11++) {
                asShortBuffer.put(i11, (short) 0);
            }
            if (nanoTime - this.f45784e >= 5000000) {
                this.f45784e = nanoTime;
                asShortBuffer.put(0, ShortCompanionObject.MAX_VALUE);
            }
            asShortBuffer.rewind();
        } else if (this.f45782c != 1.0f) {
            ShortBuffer asShortBuffer2 = byteBuffer.asShortBuffer();
            for (int i12 = 0; i12 < asShortBuffer2.limit(); i12++) {
                asShortBuffer2.put(i12, a((int) (asShortBuffer2.get(i12) * this.f45782c)));
            }
            asShortBuffer2.rewind();
        }
        return read;
    }

    @Override // com.ksyun.media.streamer.capture.audio.a
    public void a(boolean z9) {
        this.f45783d = z9;
    }
}

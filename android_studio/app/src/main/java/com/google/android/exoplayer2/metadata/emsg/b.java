package com.google.android.exoplayer2.metadata.emsg;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;

/* compiled from: EventMessageEncoder.java */
/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private final ByteArrayOutputStream f24106a;

    /* renamed from: b  reason: collision with root package name */
    private final DataOutputStream f24107b;

    public b() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(512);
        this.f24106a = byteArrayOutputStream;
        this.f24107b = new DataOutputStream(byteArrayOutputStream);
    }

    private static void b(DataOutputStream dataOutputStream, String str) throws IOException {
        dataOutputStream.writeBytes(str);
        dataOutputStream.writeByte(0);
    }

    public byte[] a(EventMessage eventMessage) {
        this.f24106a.reset();
        try {
            b(this.f24107b, eventMessage.schemeIdUri);
            String str = eventMessage.value;
            if (str == null) {
                str = "";
            }
            b(this.f24107b, str);
            this.f24107b.writeLong(eventMessage.durationMs);
            this.f24107b.writeLong(eventMessage.id);
            this.f24107b.write(eventMessage.messageData);
            this.f24107b.flush();
            return this.f24106a.toByteArray();
        } catch (IOException e4) {
            throw new RuntimeException(e4);
        }
    }
}

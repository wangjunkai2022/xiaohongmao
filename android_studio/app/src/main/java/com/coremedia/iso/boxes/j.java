package com.coremedia.iso.boxes;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
import java.util.List;

/* compiled from: Container.java */
/* loaded from: classes.dex */
public interface j {
    void A(WritableByteChannel writableByteChannel) throws IOException;

    void b(List<d> list);

    <T extends d> List<T> h(Class<T> cls);

    <T extends d> List<T> q(Class<T> cls, boolean z9);

    ByteBuffer s(long j4, long j10) throws IOException;

    List<d> y();
}

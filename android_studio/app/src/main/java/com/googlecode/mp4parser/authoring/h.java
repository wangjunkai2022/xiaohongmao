package com.googlecode.mp4parser.authoring;

import com.coremedia.iso.boxes.a1;
import com.coremedia.iso.boxes.i;
import com.coremedia.iso.boxes.r0;
import com.coremedia.iso.boxes.s0;
import java.io.Closeable;
import java.util.List;
import java.util.Map;

/* compiled from: Track.java */
/* loaded from: classes2.dex */
public interface h extends Closeable {
    a1 B();

    List<f> F();

    List<c> T();

    Map<com.googlecode.mp4parser.boxes.mp4.samplegrouping.b, long[]> V();

    i a0();

    long[] c0();

    long getDuration();

    String getHandler();

    String getName();

    List<r0.a> m0();

    List<i.a> o();

    s0 u();

    long[] z();
}

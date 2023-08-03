package com.googlecode.mp4parser.boxes.apple;

import java.nio.ByteBuffer;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;
import org.aspectj.lang.c;

/* compiled from: AppleRecordingYearBox.java */
/* loaded from: classes2.dex */
public class y extends j {
    private static final /* synthetic */ c.b A = null;

    /* renamed from: z  reason: collision with root package name */
    private static final /* synthetic */ c.b f36563z = null;

    /* renamed from: x  reason: collision with root package name */
    DateFormat f36564x;

    /* renamed from: y  reason: collision with root package name */
    Date f36565y;

    static {
        s();
    }

    public y() {
        super("©day", 1);
        this.f36565y = new Date();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'kk:mm:ssZ");
        this.f36564x = simpleDateFormat;
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
    }

    protected static String F(String str) {
        return str.replaceAll("Z$", "+0000").replaceAll("([0-9][0-9]):([0-9][0-9])$", "$1$2");
    }

    protected static String G(String str) {
        return str.replaceAll("\\+0000$", "Z");
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("AppleRecordingYearBox.java", y.class);
        f36563z = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getDate", "com.googlecode.mp4parser.boxes.apple.AppleRecordingYearBox", "", "", "", "java.util.Date"), 27);
        A = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setDate", "com.googlecode.mp4parser.boxes.apple.AppleRecordingYearBox", "java.util.Date", "date", "", "void"), 31);
    }

    @Override // com.googlecode.mp4parser.boxes.apple.j
    protected byte[] C() {
        return com.coremedia.iso.l.b(G(this.f36564x.format(this.f36565y)));
    }

    public Date E() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f36563z, this, this));
        return this.f36565y;
    }

    public void H(Date date) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(A, this, this, date));
        this.f36565y = date;
    }

    @Override // com.googlecode.mp4parser.boxes.apple.j
    protected int v() {
        return com.coremedia.iso.l.b(G(this.f36564x.format(this.f36565y))).length;
    }

    @Override // com.googlecode.mp4parser.boxes.apple.j
    protected void y(ByteBuffer byteBuffer) {
        try {
            this.f36565y = this.f36564x.parse(F(com.coremedia.iso.g.h(byteBuffer, byteBuffer.remaining())));
        } catch (ParseException e4) {
            throw new RuntimeException(e4);
        }
    }
}

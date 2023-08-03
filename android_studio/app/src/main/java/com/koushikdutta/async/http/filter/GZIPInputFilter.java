package com.koushikdutta.async.http.filter;

import com.koushikdutta.async.ByteBufferList;
import com.koushikdutta.async.DataEmitter;
import com.koushikdutta.async.PushParser;
import com.koushikdutta.async.callback.DataCallback;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Locale;
import java.util.zip.CRC32;
import java.util.zip.Inflater;
import kotlin.UShort;

/* loaded from: classes3.dex */
public class GZIPInputFilter extends InflaterInputFilter {

    /* renamed from: l  reason: collision with root package name */
    private static final int f44921l = 16;

    /* renamed from: m  reason: collision with root package name */
    private static final int f44922m = 4;

    /* renamed from: n  reason: collision with root package name */
    private static final int f44923n = 2;

    /* renamed from: o  reason: collision with root package name */
    private static final int f44924o = 8;

    /* renamed from: j  reason: collision with root package name */
    boolean f44925j;

    /* renamed from: k  reason: collision with root package name */
    protected CRC32 f44926k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.koushikdutta.async.http.filter.GZIPInputFilter$1  reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass1 implements PushParser.ParseCallback<byte[]> {

        /* renamed from: a  reason: collision with root package name */
        int f44927a;

        /* renamed from: b  reason: collision with root package name */
        boolean f44928b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ DataEmitter f44929c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ PushParser f44930d;

        AnonymousClass1(DataEmitter dataEmitter, PushParser pushParser) {
            this.f44929c = dataEmitter;
            this.f44930d = pushParser;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void d() {
            if (this.f44928b) {
                this.f44930d.f(2, new PushParser.ParseCallback<byte[]>() { // from class: com.koushikdutta.async.http.filter.GZIPInputFilter.1.3
                    @Override // com.koushikdutta.async.PushParser.ParseCallback
                    /* renamed from: b */
                    public void a(byte[] bArr) {
                        if (((short) GZIPInputFilter.this.f44926k.getValue()) != GZIPInputFilter.w0(bArr, 0, ByteOrder.LITTLE_ENDIAN)) {
                            GZIPInputFilter.this.v0(new IOException("CRC mismatch"));
                            return;
                        }
                        GZIPInputFilter.this.f44926k.reset();
                        AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                        GZIPInputFilter gZIPInputFilter = GZIPInputFilter.this;
                        gZIPInputFilter.f44925j = false;
                        gZIPInputFilter.G(anonymousClass1.f44929c);
                    }
                });
                return;
            }
            GZIPInputFilter gZIPInputFilter = GZIPInputFilter.this;
            gZIPInputFilter.f44925j = false;
            gZIPInputFilter.G(this.f44929c);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void e() {
            PushParser pushParser = new PushParser(this.f44929c);
            DataCallback dataCallback = new DataCallback() { // from class: com.koushikdutta.async.http.filter.GZIPInputFilter.1.2
                @Override // com.koushikdutta.async.callback.DataCallback
                public void s(DataEmitter dataEmitter, ByteBufferList byteBufferList) {
                    if (AnonymousClass1.this.f44928b) {
                        while (byteBufferList.T() > 0) {
                            ByteBuffer Q = byteBufferList.Q();
                            GZIPInputFilter.this.f44926k.update(Q.array(), Q.arrayOffset() + Q.position(), Q.remaining());
                            ByteBufferList.M(Q);
                        }
                    }
                    byteBufferList.O();
                    AnonymousClass1.this.d();
                }
            };
            int i4 = this.f44927a;
            if ((i4 & 8) != 0) {
                pushParser.t((byte) 0, dataCallback);
            } else if ((i4 & 16) != 0) {
                pushParser.t((byte) 0, dataCallback);
            } else {
                d();
            }
        }

        @Override // com.koushikdutta.async.PushParser.ParseCallback
        /* renamed from: f */
        public void a(byte[] bArr) {
            short w02 = GZIPInputFilter.w0(bArr, 0, ByteOrder.LITTLE_ENDIAN);
            if (w02 != -29921) {
                GZIPInputFilter.this.v0(new IOException(String.format(Locale.ENGLISH, "unknown format (magic number %x)", Short.valueOf(w02))));
                this.f44929c.b0(new DataCallback.NullDataCallback());
                return;
            }
            byte b10 = bArr[3];
            this.f44927a = b10;
            boolean z9 = (b10 & 2) != 0;
            this.f44928b = z9;
            if (z9) {
                GZIPInputFilter.this.f44926k.update(bArr, 0, bArr.length);
            }
            if ((this.f44927a & 4) != 0) {
                this.f44930d.f(2, new PushParser.ParseCallback<byte[]>() { // from class: com.koushikdutta.async.http.filter.GZIPInputFilter.1.1
                    @Override // com.koushikdutta.async.PushParser.ParseCallback
                    /* renamed from: b */
                    public void a(byte[] bArr2) {
                        AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                        if (anonymousClass1.f44928b) {
                            GZIPInputFilter.this.f44926k.update(bArr2, 0, 2);
                        }
                        AnonymousClass1.this.f44930d.f(GZIPInputFilter.w0(bArr2, 0, ByteOrder.LITTLE_ENDIAN) & UShort.MAX_VALUE, new PushParser.ParseCallback<byte[]>() { // from class: com.koushikdutta.async.http.filter.GZIPInputFilter.1.1.1
                            @Override // com.koushikdutta.async.PushParser.ParseCallback
                            /* renamed from: b */
                            public void a(byte[] bArr3) {
                                AnonymousClass1 anonymousClass12 = AnonymousClass1.this;
                                if (anonymousClass12.f44928b) {
                                    GZIPInputFilter.this.f44926k.update(bArr3, 0, bArr3.length);
                                }
                                AnonymousClass1.this.e();
                            }
                        });
                    }
                });
            } else {
                e();
            }
        }
    }

    public GZIPInputFilter() {
        super(new Inflater(true));
        this.f44925j = true;
        this.f44926k = new CRC32();
    }

    static short w0(byte[] bArr, int i4, ByteOrder byteOrder) {
        int i10;
        byte b10;
        if (byteOrder == ByteOrder.BIG_ENDIAN) {
            i10 = bArr[i4] << 8;
            b10 = bArr[i4 + 1];
        } else {
            i10 = bArr[i4 + 1] << 8;
            b10 = bArr[i4];
        }
        return (short) ((b10 & 255) | i10);
    }

    public static int x0(byte b10) {
        return b10 & 255;
    }

    @Override // com.koushikdutta.async.http.filter.InflaterInputFilter, com.koushikdutta.async.FilteredDataEmitter, com.koushikdutta.async.callback.DataCallback
    public void s(DataEmitter dataEmitter, ByteBufferList byteBufferList) {
        if (this.f44925j) {
            PushParser pushParser = new PushParser(dataEmitter);
            pushParser.f(10, new AnonymousClass1(dataEmitter, pushParser));
            return;
        }
        super.s(dataEmitter, byteBufferList);
    }
}

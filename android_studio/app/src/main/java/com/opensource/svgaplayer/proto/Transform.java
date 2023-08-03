package com.opensource.svgaplayer.proto;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import java.io.IOException;
import okio.ByteString;

/* loaded from: classes3.dex */
public final class Transform extends Message<Transform, Builder> {
    public static final ProtoAdapter<Transform> ADAPTER = new ProtoAdapter_Transform();
    public static final Float DEFAULT_A;
    public static final Float DEFAULT_B;
    public static final Float DEFAULT_C;
    public static final Float DEFAULT_D;
    public static final Float DEFAULT_TX;
    public static final Float DEFAULT_TY;
    private static final long serialVersionUID = 0;
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#FLOAT", tag = 1)

    /* renamed from: a  reason: collision with root package name */
    public final Float f47374a;
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#FLOAT", tag = 2)

    /* renamed from: b  reason: collision with root package name */
    public final Float f47375b;
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#FLOAT", tag = 3)

    /* renamed from: c  reason: collision with root package name */
    public final Float f47376c;
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#FLOAT", tag = 4)

    /* renamed from: d  reason: collision with root package name */
    public final Float f47377d;
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#FLOAT", tag = 5)
    public final Float tx;
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#FLOAT", tag = 6)
    public final Float ty;

    /* loaded from: classes3.dex */
    public static final class Builder extends Message.Builder<Transform, Builder> {

        /* renamed from: a  reason: collision with root package name */
        public Float f47378a;

        /* renamed from: b  reason: collision with root package name */
        public Float f47379b;

        /* renamed from: c  reason: collision with root package name */
        public Float f47380c;

        /* renamed from: d  reason: collision with root package name */
        public Float f47381d;
        public Float tx;
        public Float ty;

        public Builder a(Float f10) {
            this.f47378a = f10;
            return this;
        }

        public Builder b(Float f10) {
            this.f47379b = f10;
            return this;
        }

        public Builder c(Float f10) {
            this.f47380c = f10;
            return this;
        }

        public Builder d(Float f10) {
            this.f47381d = f10;
            return this;
        }

        public Builder tx(Float f10) {
            this.tx = f10;
            return this;
        }

        public Builder ty(Float f10) {
            this.ty = f10;
            return this;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.squareup.wire.Message.Builder
        public Transform build() {
            return new Transform(this.f47378a, this.f47379b, this.f47380c, this.f47381d, this.tx, this.ty, super.buildUnknownFields());
        }
    }

    /* loaded from: classes3.dex */
    private static final class ProtoAdapter_Transform extends ProtoAdapter<Transform> {
        ProtoAdapter_Transform() {
            super(FieldEncoding.LENGTH_DELIMITED, Transform.class);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.squareup.wire.ProtoAdapter
        public Transform decode(ProtoReader protoReader) throws IOException {
            Builder builder = new Builder();
            long beginMessage = protoReader.beginMessage();
            while (true) {
                int nextTag = protoReader.nextTag();
                if (nextTag != -1) {
                    switch (nextTag) {
                        case 1:
                            builder.a(ProtoAdapter.FLOAT.decode(protoReader));
                            break;
                        case 2:
                            builder.b(ProtoAdapter.FLOAT.decode(protoReader));
                            break;
                        case 3:
                            builder.c(ProtoAdapter.FLOAT.decode(protoReader));
                            break;
                        case 4:
                            builder.d(ProtoAdapter.FLOAT.decode(protoReader));
                            break;
                        case 5:
                            builder.tx(ProtoAdapter.FLOAT.decode(protoReader));
                            break;
                        case 6:
                            builder.ty(ProtoAdapter.FLOAT.decode(protoReader));
                            break;
                        default:
                            FieldEncoding peekFieldEncoding = protoReader.peekFieldEncoding();
                            builder.addUnknownField(nextTag, peekFieldEncoding, peekFieldEncoding.rawProtoAdapter().decode(protoReader));
                            break;
                    }
                } else {
                    protoReader.endMessage(beginMessage);
                    return builder.build();
                }
            }
        }

        @Override // com.squareup.wire.ProtoAdapter
        public void encode(ProtoWriter protoWriter, Transform transform) throws IOException {
            Float f10 = transform.f47374a;
            if (f10 != null) {
                ProtoAdapter.FLOAT.encodeWithTag(protoWriter, 1, f10);
            }
            Float f11 = transform.f47375b;
            if (f11 != null) {
                ProtoAdapter.FLOAT.encodeWithTag(protoWriter, 2, f11);
            }
            Float f12 = transform.f47376c;
            if (f12 != null) {
                ProtoAdapter.FLOAT.encodeWithTag(protoWriter, 3, f12);
            }
            Float f13 = transform.f47377d;
            if (f13 != null) {
                ProtoAdapter.FLOAT.encodeWithTag(protoWriter, 4, f13);
            }
            Float f14 = transform.tx;
            if (f14 != null) {
                ProtoAdapter.FLOAT.encodeWithTag(protoWriter, 5, f14);
            }
            Float f15 = transform.ty;
            if (f15 != null) {
                ProtoAdapter.FLOAT.encodeWithTag(protoWriter, 6, f15);
            }
            protoWriter.writeBytes(transform.unknownFields());
        }

        @Override // com.squareup.wire.ProtoAdapter
        public int encodedSize(Transform transform) {
            Float f10 = transform.f47374a;
            int encodedSizeWithTag = f10 != null ? ProtoAdapter.FLOAT.encodedSizeWithTag(1, f10) : 0;
            Float f11 = transform.f47375b;
            int encodedSizeWithTag2 = encodedSizeWithTag + (f11 != null ? ProtoAdapter.FLOAT.encodedSizeWithTag(2, f11) : 0);
            Float f12 = transform.f47376c;
            int encodedSizeWithTag3 = encodedSizeWithTag2 + (f12 != null ? ProtoAdapter.FLOAT.encodedSizeWithTag(3, f12) : 0);
            Float f13 = transform.f47377d;
            int encodedSizeWithTag4 = encodedSizeWithTag3 + (f13 != null ? ProtoAdapter.FLOAT.encodedSizeWithTag(4, f13) : 0);
            Float f14 = transform.tx;
            int encodedSizeWithTag5 = encodedSizeWithTag4 + (f14 != null ? ProtoAdapter.FLOAT.encodedSizeWithTag(5, f14) : 0);
            Float f15 = transform.ty;
            return encodedSizeWithTag5 + (f15 != null ? ProtoAdapter.FLOAT.encodedSizeWithTag(6, f15) : 0) + transform.unknownFields().size();
        }

        @Override // com.squareup.wire.ProtoAdapter
        public Transform redact(Transform transform) {
            Message.Builder<Transform, Builder> newBuilder2 = transform.newBuilder2();
            newBuilder2.clearUnknownFields();
            return newBuilder2.build();
        }
    }

    static {
        Float valueOf = Float.valueOf(0.0f);
        DEFAULT_A = valueOf;
        DEFAULT_B = valueOf;
        DEFAULT_C = valueOf;
        DEFAULT_D = valueOf;
        DEFAULT_TX = valueOf;
        DEFAULT_TY = valueOf;
    }

    public Transform(Float f10, Float f11, Float f12, Float f13, Float f14, Float f15) {
        this(f10, f11, f12, f13, f14, f15, ByteString.EMPTY);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof Transform) {
            Transform transform = (Transform) obj;
            return unknownFields().equals(transform.unknownFields()) && Internal.equals(this.f47374a, transform.f47374a) && Internal.equals(this.f47375b, transform.f47375b) && Internal.equals(this.f47376c, transform.f47376c) && Internal.equals(this.f47377d, transform.f47377d) && Internal.equals(this.tx, transform.tx) && Internal.equals(this.ty, transform.ty);
        }
        return false;
    }

    public int hashCode() {
        int i4 = this.hashCode;
        if (i4 == 0) {
            int hashCode = unknownFields().hashCode() * 37;
            Float f10 = this.f47374a;
            int hashCode2 = (hashCode + (f10 != null ? f10.hashCode() : 0)) * 37;
            Float f11 = this.f47375b;
            int hashCode3 = (hashCode2 + (f11 != null ? f11.hashCode() : 0)) * 37;
            Float f12 = this.f47376c;
            int hashCode4 = (hashCode3 + (f12 != null ? f12.hashCode() : 0)) * 37;
            Float f13 = this.f47377d;
            int hashCode5 = (hashCode4 + (f13 != null ? f13.hashCode() : 0)) * 37;
            Float f14 = this.tx;
            int hashCode6 = (hashCode5 + (f14 != null ? f14.hashCode() : 0)) * 37;
            Float f15 = this.ty;
            int hashCode7 = hashCode6 + (f15 != null ? f15.hashCode() : 0);
            this.hashCode = hashCode7;
            return hashCode7;
        }
        return i4;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        StringBuilder sb = new StringBuilder();
        if (this.f47374a != null) {
            sb.append(", a=");
            sb.append(this.f47374a);
        }
        if (this.f47375b != null) {
            sb.append(", b=");
            sb.append(this.f47375b);
        }
        if (this.f47376c != null) {
            sb.append(", c=");
            sb.append(this.f47376c);
        }
        if (this.f47377d != null) {
            sb.append(", d=");
            sb.append(this.f47377d);
        }
        if (this.tx != null) {
            sb.append(", tx=");
            sb.append(this.tx);
        }
        if (this.ty != null) {
            sb.append(", ty=");
            sb.append(this.ty);
        }
        StringBuilder replace = sb.replace(0, 2, "Transform{");
        replace.append('}');
        return replace.toString();
    }

    public Transform(Float f10, Float f11, Float f12, Float f13, Float f14, Float f15, ByteString byteString) {
        super(ADAPTER, byteString);
        this.f47374a = f10;
        this.f47375b = f11;
        this.f47376c = f12;
        this.f47377d = f13;
        this.tx = f14;
        this.ty = f15;
    }

    @Override // com.squareup.wire.Message
    /* renamed from: newBuilder */
    public Message.Builder<Transform, Builder> newBuilder2() {
        Builder builder = new Builder();
        builder.f47378a = this.f47374a;
        builder.f47379b = this.f47375b;
        builder.f47380c = this.f47376c;
        builder.f47381d = this.f47377d;
        builder.tx = this.tx;
        builder.ty = this.ty;
        builder.addUnknownFields(unknownFields());
        return builder;
    }
}

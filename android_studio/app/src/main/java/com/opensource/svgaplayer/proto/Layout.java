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
public final class Layout extends Message<Layout, Builder> {
    public static final ProtoAdapter<Layout> ADAPTER = new ProtoAdapter_Layout();
    public static final Float DEFAULT_HEIGHT;
    public static final Float DEFAULT_WIDTH;
    public static final Float DEFAULT_X;
    public static final Float DEFAULT_Y;
    private static final long serialVersionUID = 0;
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#FLOAT", tag = 4)
    public final Float height;
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#FLOAT", tag = 3)
    public final Float width;
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#FLOAT", tag = 1)

    /* renamed from: x  reason: collision with root package name */
    public final Float f47352x;
    @WireField(adapter = "com.squareup.wire.ProtoAdapter#FLOAT", tag = 2)

    /* renamed from: y  reason: collision with root package name */
    public final Float f47353y;

    /* loaded from: classes3.dex */
    public static final class Builder extends Message.Builder<Layout, Builder> {
        public Float height;
        public Float width;

        /* renamed from: x  reason: collision with root package name */
        public Float f47354x;

        /* renamed from: y  reason: collision with root package name */
        public Float f47355y;

        public Builder height(Float f10) {
            this.height = f10;
            return this;
        }

        public Builder width(Float f10) {
            this.width = f10;
            return this;
        }

        public Builder x(Float f10) {
            this.f47354x = f10;
            return this;
        }

        public Builder y(Float f10) {
            this.f47355y = f10;
            return this;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.squareup.wire.Message.Builder
        public Layout build() {
            return new Layout(this.f47354x, this.f47355y, this.width, this.height, super.buildUnknownFields());
        }
    }

    /* loaded from: classes3.dex */
    private static final class ProtoAdapter_Layout extends ProtoAdapter<Layout> {
        ProtoAdapter_Layout() {
            super(FieldEncoding.LENGTH_DELIMITED, Layout.class);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.squareup.wire.ProtoAdapter
        public Layout decode(ProtoReader protoReader) throws IOException {
            Builder builder = new Builder();
            long beginMessage = protoReader.beginMessage();
            while (true) {
                int nextTag = protoReader.nextTag();
                if (nextTag == -1) {
                    protoReader.endMessage(beginMessage);
                    return builder.build();
                } else if (nextTag == 1) {
                    builder.x(ProtoAdapter.FLOAT.decode(protoReader));
                } else if (nextTag == 2) {
                    builder.y(ProtoAdapter.FLOAT.decode(protoReader));
                } else if (nextTag == 3) {
                    builder.width(ProtoAdapter.FLOAT.decode(protoReader));
                } else if (nextTag != 4) {
                    FieldEncoding peekFieldEncoding = protoReader.peekFieldEncoding();
                    builder.addUnknownField(nextTag, peekFieldEncoding, peekFieldEncoding.rawProtoAdapter().decode(protoReader));
                } else {
                    builder.height(ProtoAdapter.FLOAT.decode(protoReader));
                }
            }
        }

        @Override // com.squareup.wire.ProtoAdapter
        public void encode(ProtoWriter protoWriter, Layout layout) throws IOException {
            Float f10 = layout.f47352x;
            if (f10 != null) {
                ProtoAdapter.FLOAT.encodeWithTag(protoWriter, 1, f10);
            }
            Float f11 = layout.f47353y;
            if (f11 != null) {
                ProtoAdapter.FLOAT.encodeWithTag(protoWriter, 2, f11);
            }
            Float f12 = layout.width;
            if (f12 != null) {
                ProtoAdapter.FLOAT.encodeWithTag(protoWriter, 3, f12);
            }
            Float f13 = layout.height;
            if (f13 != null) {
                ProtoAdapter.FLOAT.encodeWithTag(protoWriter, 4, f13);
            }
            protoWriter.writeBytes(layout.unknownFields());
        }

        @Override // com.squareup.wire.ProtoAdapter
        public int encodedSize(Layout layout) {
            Float f10 = layout.f47352x;
            int encodedSizeWithTag = f10 != null ? ProtoAdapter.FLOAT.encodedSizeWithTag(1, f10) : 0;
            Float f11 = layout.f47353y;
            int encodedSizeWithTag2 = encodedSizeWithTag + (f11 != null ? ProtoAdapter.FLOAT.encodedSizeWithTag(2, f11) : 0);
            Float f12 = layout.width;
            int encodedSizeWithTag3 = encodedSizeWithTag2 + (f12 != null ? ProtoAdapter.FLOAT.encodedSizeWithTag(3, f12) : 0);
            Float f13 = layout.height;
            return encodedSizeWithTag3 + (f13 != null ? ProtoAdapter.FLOAT.encodedSizeWithTag(4, f13) : 0) + layout.unknownFields().size();
        }

        @Override // com.squareup.wire.ProtoAdapter
        public Layout redact(Layout layout) {
            Message.Builder<Layout, Builder> newBuilder2 = layout.newBuilder2();
            newBuilder2.clearUnknownFields();
            return newBuilder2.build();
        }
    }

    static {
        Float valueOf = Float.valueOf(0.0f);
        DEFAULT_X = valueOf;
        DEFAULT_Y = valueOf;
        DEFAULT_WIDTH = valueOf;
        DEFAULT_HEIGHT = valueOf;
    }

    public Layout(Float f10, Float f11, Float f12, Float f13) {
        this(f10, f11, f12, f13, ByteString.EMPTY);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof Layout) {
            Layout layout = (Layout) obj;
            return unknownFields().equals(layout.unknownFields()) && Internal.equals(this.f47352x, layout.f47352x) && Internal.equals(this.f47353y, layout.f47353y) && Internal.equals(this.width, layout.width) && Internal.equals(this.height, layout.height);
        }
        return false;
    }

    public int hashCode() {
        int i4 = this.hashCode;
        if (i4 == 0) {
            int hashCode = unknownFields().hashCode() * 37;
            Float f10 = this.f47352x;
            int hashCode2 = (hashCode + (f10 != null ? f10.hashCode() : 0)) * 37;
            Float f11 = this.f47353y;
            int hashCode3 = (hashCode2 + (f11 != null ? f11.hashCode() : 0)) * 37;
            Float f12 = this.width;
            int hashCode4 = (hashCode3 + (f12 != null ? f12.hashCode() : 0)) * 37;
            Float f13 = this.height;
            int hashCode5 = hashCode4 + (f13 != null ? f13.hashCode() : 0);
            this.hashCode = hashCode5;
            return hashCode5;
        }
        return i4;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        StringBuilder sb = new StringBuilder();
        if (this.f47352x != null) {
            sb.append(", x=");
            sb.append(this.f47352x);
        }
        if (this.f47353y != null) {
            sb.append(", y=");
            sb.append(this.f47353y);
        }
        if (this.width != null) {
            sb.append(", width=");
            sb.append(this.width);
        }
        if (this.height != null) {
            sb.append(", height=");
            sb.append(this.height);
        }
        StringBuilder replace = sb.replace(0, 2, "Layout{");
        replace.append('}');
        return replace.toString();
    }

    public Layout(Float f10, Float f11, Float f12, Float f13, ByteString byteString) {
        super(ADAPTER, byteString);
        this.f47352x = f10;
        this.f47353y = f11;
        this.width = f12;
        this.height = f13;
    }

    @Override // com.squareup.wire.Message
    /* renamed from: newBuilder */
    public Message.Builder<Layout, Builder> newBuilder2() {
        Builder builder = new Builder();
        builder.f47354x = this.f47352x;
        builder.f47355y = this.f47353y;
        builder.width = this.width;
        builder.height = this.height;
        builder.addUnknownFields(unknownFields());
        return builder;
    }
}

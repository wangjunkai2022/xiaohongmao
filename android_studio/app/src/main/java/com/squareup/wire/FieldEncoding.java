package com.squareup.wire;

import java.io.IOException;
import java.net.ProtocolException;

/* loaded from: classes3.dex */
public enum FieldEncoding {
    VARINT(0),
    FIXED64(1),
    LENGTH_DELIMITED(2),
    FIXED32(5);
    
    final int value;

    /* renamed from: com.squareup.wire.FieldEncoding$1  reason: invalid class name */
    /* loaded from: classes3.dex */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$squareup$wire$FieldEncoding;

        static {
            int[] iArr = new int[FieldEncoding.values().length];
            $SwitchMap$com$squareup$wire$FieldEncoding = iArr;
            try {
                iArr[FieldEncoding.VARINT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$squareup$wire$FieldEncoding[FieldEncoding.FIXED32.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$squareup$wire$FieldEncoding[FieldEncoding.FIXED64.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$squareup$wire$FieldEncoding[FieldEncoding.LENGTH_DELIMITED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    FieldEncoding(int i4) {
        this.value = i4;
    }

    static FieldEncoding get(int i4) throws IOException {
        if (i4 != 0) {
            if (i4 != 1) {
                if (i4 != 2) {
                    if (i4 == 5) {
                        return FIXED32;
                    }
                    throw new ProtocolException("Unexpected FieldEncoding: " + i4);
                }
                return LENGTH_DELIMITED;
            }
            return FIXED64;
        }
        return VARINT;
    }

    public ProtoAdapter<?> rawProtoAdapter() {
        int i4 = AnonymousClass1.$SwitchMap$com$squareup$wire$FieldEncoding[ordinal()];
        if (i4 != 1) {
            if (i4 != 2) {
                if (i4 != 3) {
                    if (i4 == 4) {
                        return ProtoAdapter.BYTES;
                    }
                    throw new AssertionError();
                }
                return ProtoAdapter.FIXED64;
            }
            return ProtoAdapter.FIXED32;
        }
        return ProtoAdapter.UINT64;
    }
}

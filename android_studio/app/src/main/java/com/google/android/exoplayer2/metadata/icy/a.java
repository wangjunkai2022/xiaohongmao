package com.google.android.exoplayer2.metadata.icy;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.d;
import com.google.android.exoplayer2.metadata.g;
import com.google.common.base.c;
import com.google.common.base.e;
import java.nio.ByteBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.CharsetDecoder;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* compiled from: IcyDecoder.java */
/* loaded from: classes2.dex */
public final class a extends g {

    /* renamed from: c  reason: collision with root package name */
    private static final Pattern f24120c = Pattern.compile("(.+?)='(.*?)';", 32);

    /* renamed from: d  reason: collision with root package name */
    private static final String f24121d = "streamtitle";

    /* renamed from: e  reason: collision with root package name */
    private static final String f24122e = "streamurl";

    /* renamed from: a  reason: collision with root package name */
    private final CharsetDecoder f24123a = e.f32190c.newDecoder();

    /* renamed from: b  reason: collision with root package name */
    private final CharsetDecoder f24124b = e.f32189b.newDecoder();

    @Nullable
    private String c(ByteBuffer byteBuffer) {
        try {
            return this.f24123a.decode(byteBuffer).toString();
        } catch (CharacterCodingException unused) {
            try {
                return this.f24124b.decode(byteBuffer).toString();
            } catch (CharacterCodingException unused2) {
                return null;
            } finally {
                this.f24124b.reset();
                byteBuffer.rewind();
            }
        } finally {
            this.f24123a.reset();
            byteBuffer.rewind();
        }
    }

    @Override // com.google.android.exoplayer2.metadata.g
    protected Metadata b(d dVar, ByteBuffer byteBuffer) {
        String c10 = c(byteBuffer);
        byte[] bArr = new byte[byteBuffer.limit()];
        byteBuffer.get(bArr);
        String str = null;
        if (c10 == null) {
            return new Metadata(new IcyInfo(bArr, null, null));
        }
        Matcher matcher = f24120c.matcher(c10);
        String str2 = null;
        for (int i4 = 0; matcher.find(i4); i4 = matcher.end()) {
            String group = matcher.group(1);
            String group2 = matcher.group(2);
            if (group != null) {
                String g4 = c.g(group);
                g4.hashCode();
                if (g4.equals(f24122e)) {
                    str2 = group2;
                } else if (g4.equals(f24121d)) {
                    str = group2;
                }
            }
        }
        return new Metadata(new IcyInfo(bArr, str, str2));
    }
}

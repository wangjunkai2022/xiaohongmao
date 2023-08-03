package okio;

import com.alipay.security.mobile.module.commonutils.crypto.c;
import com.facebook.imagepipeline.producers.n;
import com.ksyun.media.player.d.d;
import io.sentry.protocol.v;
import java.io.IOException;
import java.security.MessageDigest;
import javax.crypto.Mac;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;
import shaded.org.apache.commons.codec.digest.f;

/* compiled from: HashingSource.kt */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 \u00192\u00020\u00012\u00020\u0002:\u0001\u0019B\u0017\b\u0010\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006B\u0017\b\u0010\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tB\u0017\b\u0010\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fB\u001f\b\u0010\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\u000fJ\r\u0010\u0010\u001a\u00020\u000eH\u0007¢\u0006\u0002\b\u0013J\u0018\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0015H\u0016R\u0011\u0010\u0010\u001a\u00020\u000e8G¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lokio/HashingSource;", "Lokio/ForwardingSource;", "Lokio/Source;", v.b.f83881a, "digest", "Ljava/security/MessageDigest;", "(Lokio/Source;Ljava/security/MessageDigest;)V", "algorithm", "", "(Lokio/Source;Ljava/lang/String;)V", d.f45440l, "Ljavax/crypto/Mac;", "(Lokio/Source;Ljavax/crypto/Mac;)V", "key", "Lokio/ByteString;", "(Lokio/Source;Lokio/ByteString;Ljava/lang/String;)V", "hash", "()Lokio/ByteString;", "messageDigest", "-deprecated_hash", "read", "", "sink", "Lokio/Buffer;", n.f13105s, "Companion", "okio"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class HashingSource extends ForwardingSource implements Source {
    @g
    public static final Companion Companion = new Companion(null);
    @h
    private final Mac mac;
    @h
    private final MessageDigest messageDigest;

    /* compiled from: HashingSource.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0007J\u0018\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0007J\u0018\u0010\n\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0007J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010\f\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010\r\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u000f"}, d2 = {"Lokio/HashingSource$Companion;", "", "()V", "hmacSha1", "Lokio/HashingSource;", v.b.f83881a, "Lokio/Source;", "key", "Lokio/ByteString;", "hmacSha256", "hmacSha512", "md5", "sha1", "sha256", "sha512", "okio"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @g
        public final HashingSource hmacSha1(@g Source source, @g ByteString key) {
            Intrinsics.checkNotNullParameter(source, "source");
            Intrinsics.checkNotNullParameter(key, "key");
            return new HashingSource(source, key, c.f7003a);
        }

        @JvmStatic
        @g
        public final HashingSource hmacSha256(@g Source source, @g ByteString key) {
            Intrinsics.checkNotNullParameter(source, "source");
            Intrinsics.checkNotNullParameter(key, "key");
            return new HashingSource(source, key, "HmacSHA256");
        }

        @JvmStatic
        @g
        public final HashingSource hmacSha512(@g Source source, @g ByteString key) {
            Intrinsics.checkNotNullParameter(source, "source");
            Intrinsics.checkNotNullParameter(key, "key");
            return new HashingSource(source, key, "HmacSHA512");
        }

        @JvmStatic
        @g
        public final HashingSource md5(@g Source source) {
            Intrinsics.checkNotNullParameter(source, "source");
            return new HashingSource(source, f.f93510b);
        }

        @JvmStatic
        @g
        public final HashingSource sha1(@g Source source) {
            Intrinsics.checkNotNullParameter(source, "source");
            return new HashingSource(source, "SHA-1");
        }

        @JvmStatic
        @g
        public final HashingSource sha256(@g Source source) {
            Intrinsics.checkNotNullParameter(source, "source");
            return new HashingSource(source, "SHA-256");
        }

        @JvmStatic
        @g
        public final HashingSource sha512(@g Source source) {
            Intrinsics.checkNotNullParameter(source, "source");
            return new HashingSource(source, "SHA-512");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HashingSource(@g Source source, @g MessageDigest digest) {
        super(source);
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(digest, "digest");
        this.messageDigest = digest;
        this.mac = null;
    }

    @JvmStatic
    @g
    public static final HashingSource hmacSha1(@g Source source, @g ByteString byteString) {
        return Companion.hmacSha1(source, byteString);
    }

    @JvmStatic
    @g
    public static final HashingSource hmacSha256(@g Source source, @g ByteString byteString) {
        return Companion.hmacSha256(source, byteString);
    }

    @JvmStatic
    @g
    public static final HashingSource hmacSha512(@g Source source, @g ByteString byteString) {
        return Companion.hmacSha512(source, byteString);
    }

    @JvmStatic
    @g
    public static final HashingSource md5(@g Source source) {
        return Companion.md5(source);
    }

    @JvmStatic
    @g
    public static final HashingSource sha1(@g Source source) {
        return Companion.sha1(source);
    }

    @JvmStatic
    @g
    public static final HashingSource sha256(@g Source source) {
        return Companion.sha256(source);
    }

    @JvmStatic
    @g
    public static final HashingSource sha512(@g Source source) {
        return Companion.sha512(source);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "moved to val", replaceWith = @ReplaceWith(expression = "hash", imports = {}))
    @g
    @JvmName(name = "-deprecated_hash")
    /* renamed from: -deprecated_hash  reason: not valid java name */
    public final ByteString m1721deprecated_hash() {
        return hash();
    }

    @g
    @JvmName(name = "hash")
    public final ByteString hash() {
        byte[] result;
        MessageDigest messageDigest = this.messageDigest;
        if (messageDigest != null) {
            result = messageDigest.digest();
        } else {
            Mac mac = this.mac;
            Intrinsics.checkNotNull(mac);
            result = mac.doFinal();
        }
        Intrinsics.checkNotNullExpressionValue(result, "result");
        return new ByteString(result);
    }

    @Override // okio.ForwardingSource, okio.Source
    public long read(@g Buffer sink, long j4) throws IOException {
        Intrinsics.checkNotNullParameter(sink, "sink");
        long read = super.read(sink, j4);
        if (read != -1) {
            long size = sink.size() - read;
            long size2 = sink.size();
            Segment segment = sink.head;
            Intrinsics.checkNotNull(segment);
            while (size2 > size) {
                segment = segment.prev;
                Intrinsics.checkNotNull(segment);
                size2 -= segment.limit - segment.pos;
            }
            while (size2 < sink.size()) {
                int i4 = (int) ((segment.pos + size) - size2);
                MessageDigest messageDigest = this.messageDigest;
                if (messageDigest != null) {
                    messageDigest.update(segment.data, i4, segment.limit - i4);
                } else {
                    Mac mac = this.mac;
                    Intrinsics.checkNotNull(mac);
                    mac.update(segment.data, i4, segment.limit - i4);
                }
                size2 += segment.limit - segment.pos;
                segment = segment.next;
                Intrinsics.checkNotNull(segment);
                size = size2;
            }
        }
        return read;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public HashingSource(@m8.g okio.Source r2, @m8.g java.lang.String r3) {
        /*
            r1 = this;
            java.lang.String r0 = "source"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r0)
            java.lang.String r0 = "algorithm"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
            java.security.MessageDigest r3 = java.security.MessageDigest.getInstance(r3)
            java.lang.String r0 = "getInstance(algorithm)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r0)
            r1.<init>(r2, r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.HashingSource.<init>(okio.Source, java.lang.String):void");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HashingSource(@g Source source, @g Mac mac) {
        super(source);
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(mac, "mac");
        this.mac = mac;
        this.messageDigest = null;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public HashingSource(@m8.g okio.Source r3, @m8.g okio.ByteString r4, @m8.g java.lang.String r5) {
        /*
            r2 = this;
            java.lang.String r0 = "source"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
            java.lang.String r0 = "key"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
            java.lang.String r0 = "algorithm"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
            javax.crypto.Mac r0 = javax.crypto.Mac.getInstance(r5)     // Catch: java.security.InvalidKeyException -> L2a
            javax.crypto.spec.SecretKeySpec r1 = new javax.crypto.spec.SecretKeySpec     // Catch: java.security.InvalidKeyException -> L2a
            byte[] r4 = r4.toByteArray()     // Catch: java.security.InvalidKeyException -> L2a
            r1.<init>(r4, r5)     // Catch: java.security.InvalidKeyException -> L2a
            r0.init(r1)     // Catch: java.security.InvalidKeyException -> L2a
            kotlin.Unit r4 = kotlin.Unit.INSTANCE     // Catch: java.security.InvalidKeyException -> L2a
            java.lang.String r4 = "try {\n      Mac.getInsta…rgumentException(e)\n    }"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r4)
            r2.<init>(r3, r0)
            return
        L2a:
            r3 = move-exception
            java.lang.IllegalArgumentException r4 = new java.lang.IllegalArgumentException
            r4.<init>(r3)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.HashingSource.<init>(okio.Source, okio.ByteString, java.lang.String):void");
    }
}

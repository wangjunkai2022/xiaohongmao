package okio;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.facebook.imagepipeline.producers.n;
import com.google.common.base.c;
import com.qennnsad.aknkaksd.data.repository.f;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.util.Arrays;
import java.util.Objects;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.StringsKt__StringsJVMKt;
import m8.g;
import m8.h;
import okio.internal._ByteStringKt;

/* compiled from: ByteString.kt */
@Metadata(d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0005\n\u0002\b\u0019\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0016\u0018\u0000 ]2\u00020\u00012\b\u0012\u0004\u0012\u00020\u00000\u0002:\u0001]B\u000f\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\b\u0010\u0015\u001a\u00020\u0016H\u0016J\b\u0010\u0017\u001a\u00020\u0010H\u0016J\b\u0010\u0018\u001a\u00020\u0010H\u0016J\u0011\u0010\u0019\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u0000H\u0096\u0002J,\u0010\u001b\u001a\u00020\u001c2\b\b\u0002\u0010\u001d\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\u00042\b\b\u0002\u0010\u001f\u001a\u00020\t2\u0006\u0010 \u001a\u00020\tH\u0016J\u0015\u0010!\u001a\u00020\u00002\u0006\u0010\"\u001a\u00020\u0010H\u0010¢\u0006\u0002\b#J\u000e\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\u0004J\u000e\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\u0000J\u0013\u0010'\u001a\u00020%2\b\u0010\u001a\u001a\u0004\u0018\u00010(H\u0096\u0002J\u0016\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020\tH\u0087\u0002¢\u0006\u0002\b,J\u0015\u0010,\u001a\u00020*2\u0006\u0010+\u001a\u00020\tH\u0007¢\u0006\u0002\b-J\r\u0010.\u001a\u00020\tH\u0010¢\u0006\u0002\b/J\b\u0010\b\u001a\u00020\tH\u0016J\b\u00100\u001a\u00020\u0010H\u0016J\u001d\u00101\u001a\u00020\u00002\u0006\u0010\"\u001a\u00020\u00102\u0006\u00102\u001a\u00020\u0000H\u0010¢\u0006\u0002\b3J\u0010\u00104\u001a\u00020\u00002\u0006\u00102\u001a\u00020\u0000H\u0016J\u0010\u00105\u001a\u00020\u00002\u0006\u00102\u001a\u00020\u0000H\u0016J\u0010\u00106\u001a\u00020\u00002\u0006\u00102\u001a\u00020\u0000H\u0016J\u001a\u00107\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u00042\b\b\u0002\u00108\u001a\u00020\tH\u0017J\u001a\u00107\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u00002\b\b\u0002\u00108\u001a\u00020\tH\u0007J\r\u00109\u001a\u00020\u0004H\u0010¢\u0006\u0002\b:J\u0015\u0010;\u001a\u00020*2\u0006\u0010<\u001a\u00020\tH\u0010¢\u0006\u0002\b=J\u001a\u0010>\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u00042\b\b\u0002\u00108\u001a\u00020\tH\u0017J\u001a\u0010>\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u00002\b\b\u0002\u00108\u001a\u00020\tH\u0007J\u0006\u0010?\u001a\u00020\u0000J(\u0010@\u001a\u00020%2\u0006\u0010\u001d\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u00042\u0006\u0010A\u001a\u00020\t2\u0006\u0010 \u001a\u00020\tH\u0016J(\u0010@\u001a\u00020%2\u0006\u0010\u001d\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u00002\u0006\u0010A\u001a\u00020\t2\u0006\u0010 \u001a\u00020\tH\u0016J\u0010\u0010B\u001a\u00020\u001c2\u0006\u0010C\u001a\u00020DH\u0002J\u0006\u0010E\u001a\u00020\u0000J\u0006\u0010F\u001a\u00020\u0000J\u0006\u0010G\u001a\u00020\u0000J\r\u0010\u000e\u001a\u00020\tH\u0007¢\u0006\u0002\bHJ\u000e\u0010I\u001a\u00020%2\u0006\u0010J\u001a\u00020\u0004J\u000e\u0010I\u001a\u00020%2\u0006\u0010J\u001a\u00020\u0000J\u0010\u0010K\u001a\u00020\u00102\u0006\u0010L\u001a\u00020MH\u0016J\u001c\u0010N\u001a\u00020\u00002\b\b\u0002\u0010O\u001a\u00020\t2\b\b\u0002\u0010P\u001a\u00020\tH\u0017J\b\u0010Q\u001a\u00020\u0000H\u0016J\b\u0010R\u001a\u00020\u0000H\u0016J\b\u0010S\u001a\u00020\u0004H\u0016J\b\u0010T\u001a\u00020\u0010H\u0016J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\u0010\u0010U\u001a\u00020\u001c2\u0006\u0010V\u001a\u00020WH\u0016J%\u0010U\u001a\u00020\u001c2\u0006\u0010X\u001a\u00020Y2\u0006\u0010\u001d\u001a\u00020\t2\u0006\u0010 \u001a\u00020\tH\u0010¢\u0006\u0002\bZJ\u0010\u0010[\u001a\u00020\u001c2\u0006\u0010V\u001a\u00020\\H\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u001a\u0010\b\u001a\u00020\tX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u0011\u0010\u000e\u001a\u00020\t8G¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000bR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006^"}, d2 = {"Lokio/ByteString;", "Ljava/io/Serializable;", "", "data", "", "([B)V", "getData$okio", "()[B", "hashCode", "", "getHashCode$okio", "()I", "setHashCode$okio", "(I)V", f.f47745b, "utf8", "", "getUtf8$okio", "()Ljava/lang/String;", "setUtf8$okio", "(Ljava/lang/String;)V", "asByteBuffer", "Ljava/nio/ByteBuffer;", "base64", "base64Url", "compareTo", "other", "copyInto", "", TypedValues.Cycle.S_WAVE_OFFSET, TypedValues.Attributes.S_TARGET, "targetOffset", n.f13105s, "digest", "algorithm", "digest$okio", "endsWith", "", "suffix", "equals", "", "get", "", "index", "getByte", "-deprecated_getByte", "getSize", "getSize$okio", "hex", "hmac", "key", "hmac$okio", "hmacSha1", "hmacSha256", "hmacSha512", "indexOf", "fromIndex", "internalArray", "internalArray$okio", "internalGet", "pos", "internalGet$okio", "lastIndexOf", "md5", "rangeEquals", "otherOffset", "readObject", "in", "Ljava/io/ObjectInputStream;", "sha1", "sha256", "sha512", "-deprecated_size", "startsWith", "prefix", TypedValues.Custom.S_STRING, "charset", "Ljava/nio/charset/Charset;", "substring", "beginIndex", "endIndex", "toAsciiLowercase", "toAsciiUppercase", "toByteArray", "toString", "write", "out", "Ljava/io/OutputStream;", "buffer", "Lokio/Buffer;", "write$okio", "writeObject", "Ljava/io/ObjectOutputStream;", "Companion", "okio"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public class ByteString implements Serializable, Comparable<ByteString> {
    @g
    public static final Companion Companion = new Companion(null);
    @JvmField
    @g
    public static final ByteString EMPTY = new ByteString(new byte[0]);
    private static final long serialVersionUID = 1;
    @g
    private final byte[] data;
    private transient int hashCode;
    @h
    private transient String utf8;

    /* compiled from: ByteString.kt */
    @Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\u0010\u0005\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0017\u0010\u0007\u001a\u0004\u0018\u00010\u00042\u0006\u0010\b\u001a\u00020\tH\u0007¢\u0006\u0002\b\nJ\u0015\u0010\u000b\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\tH\u0007¢\u0006\u0002\b\fJ\u001d\u0010\r\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007¢\u0006\u0002\b\u0010J\u0015\u0010\u0011\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\tH\u0007¢\u0006\u0002\b\u0012J\u0015\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u0015H\u0007¢\u0006\u0002\b\u0016J\u0014\u0010\u0013\u001a\u00020\u00042\n\u0010\u0017\u001a\u00020\u0018\"\u00020\u0019H\u0007J%\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001cH\u0007¢\u0006\u0002\b\u0016J\u001d\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010\u001d\u001a\u00020\u001cH\u0007¢\u0006\u0002\b!J\u000e\u0010\u0007\u001a\u0004\u0018\u00010\u0004*\u00020\tH\u0007J\f\u0010\u000b\u001a\u00020\u0004*\u00020\tH\u0007J\u001b\u0010\"\u001a\u00020\u0004*\u00020\t2\b\b\u0002\u0010\u000e\u001a\u00020\u000fH\u0007¢\u0006\u0002\b\rJ\f\u0010\u0011\u001a\u00020\u0004*\u00020\tH\u0007J\u0019\u0010#\u001a\u00020\u0004*\u00020 2\u0006\u0010\u001d\u001a\u00020\u001cH\u0007¢\u0006\u0002\b\u001eJ\u0011\u0010$\u001a\u00020\u0004*\u00020\u0015H\u0007¢\u0006\u0002\b\u0013J%\u0010$\u001a\u00020\u0004*\u00020\u00182\b\b\u0002\u0010\u001b\u001a\u00020\u001c2\b\b\u0002\u0010\u001d\u001a\u00020\u001cH\u0007¢\u0006\u0002\b\u0013R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000¨\u0006%"}, d2 = {"Lokio/ByteString$Companion;", "", "()V", "EMPTY", "Lokio/ByteString;", "serialVersionUID", "", "decodeBase64", TypedValues.Custom.S_STRING, "", "-deprecated_decodeBase64", "decodeHex", "-deprecated_decodeHex", "encodeString", "charset", "Ljava/nio/charset/Charset;", "-deprecated_encodeString", "encodeUtf8", "-deprecated_encodeUtf8", "of", "buffer", "Ljava/nio/ByteBuffer;", "-deprecated_of", "data", "", "", "array", TypedValues.Cycle.S_WAVE_OFFSET, "", n.f13105s, "read", "inputstream", "Ljava/io/InputStream;", "-deprecated_read", "encode", "readByteString", "toByteString", "okio"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ ByteString encodeString$default(Companion companion, String str, Charset charset, int i4, Object obj) {
            if ((i4 & 1) != 0) {
                charset = Charsets.UTF_8;
            }
            return companion.encodeString(str, charset);
        }

        public static /* synthetic */ ByteString of$default(Companion companion, byte[] bArr, int i4, int i10, int i11, Object obj) {
            if ((i11 & 1) != 0) {
                i4 = 0;
            }
            if ((i11 & 2) != 0) {
                i10 = bArr.length;
            }
            return companion.of(bArr, i4, i10);
        }

        @Deprecated(level = DeprecationLevel.ERROR, message = "moved to extension function", replaceWith = @ReplaceWith(expression = "string.decodeBase64()", imports = {"okio.ByteString.Companion.decodeBase64"}))
        @h
        @JvmName(name = "-deprecated_decodeBase64")
        /* renamed from: -deprecated_decodeBase64  reason: not valid java name */
        public final ByteString m1706deprecated_decodeBase64(@g String string) {
            Intrinsics.checkNotNullParameter(string, "string");
            return decodeBase64(string);
        }

        @Deprecated(level = DeprecationLevel.ERROR, message = "moved to extension function", replaceWith = @ReplaceWith(expression = "string.decodeHex()", imports = {"okio.ByteString.Companion.decodeHex"}))
        @g
        @JvmName(name = "-deprecated_decodeHex")
        /* renamed from: -deprecated_decodeHex  reason: not valid java name */
        public final ByteString m1707deprecated_decodeHex(@g String string) {
            Intrinsics.checkNotNullParameter(string, "string");
            return decodeHex(string);
        }

        @Deprecated(level = DeprecationLevel.ERROR, message = "moved to extension function", replaceWith = @ReplaceWith(expression = "string.encode(charset)", imports = {"okio.ByteString.Companion.encode"}))
        @g
        @JvmName(name = "-deprecated_encodeString")
        /* renamed from: -deprecated_encodeString  reason: not valid java name */
        public final ByteString m1708deprecated_encodeString(@g String string, @g Charset charset) {
            Intrinsics.checkNotNullParameter(string, "string");
            Intrinsics.checkNotNullParameter(charset, "charset");
            return encodeString(string, charset);
        }

        @Deprecated(level = DeprecationLevel.ERROR, message = "moved to extension function", replaceWith = @ReplaceWith(expression = "string.encodeUtf8()", imports = {"okio.ByteString.Companion.encodeUtf8"}))
        @g
        @JvmName(name = "-deprecated_encodeUtf8")
        /* renamed from: -deprecated_encodeUtf8  reason: not valid java name */
        public final ByteString m1709deprecated_encodeUtf8(@g String string) {
            Intrinsics.checkNotNullParameter(string, "string");
            return encodeUtf8(string);
        }

        @Deprecated(level = DeprecationLevel.ERROR, message = "moved to extension function", replaceWith = @ReplaceWith(expression = "buffer.toByteString()", imports = {"okio.ByteString.Companion.toByteString"}))
        @g
        @JvmName(name = "-deprecated_of")
        /* renamed from: -deprecated_of  reason: not valid java name */
        public final ByteString m1710deprecated_of(@g ByteBuffer buffer) {
            Intrinsics.checkNotNullParameter(buffer, "buffer");
            return of(buffer);
        }

        @Deprecated(level = DeprecationLevel.ERROR, message = "moved to extension function", replaceWith = @ReplaceWith(expression = "inputstream.readByteString(byteCount)", imports = {"okio.ByteString.Companion.readByteString"}))
        @g
        @JvmName(name = "-deprecated_read")
        /* renamed from: -deprecated_read  reason: not valid java name */
        public final ByteString m1712deprecated_read(@g InputStream inputstream, int i4) {
            Intrinsics.checkNotNullParameter(inputstream, "inputstream");
            return read(inputstream, i4);
        }

        @JvmStatic
        @h
        public final ByteString decodeBase64(@g String str) {
            Intrinsics.checkNotNullParameter(str, "<this>");
            byte[] decodeBase64ToArray = _Base64Kt.decodeBase64ToArray(str);
            if (decodeBase64ToArray != null) {
                return new ByteString(decodeBase64ToArray);
            }
            return null;
        }

        @JvmStatic
        @g
        public final ByteString decodeHex(@g String str) {
            Intrinsics.checkNotNullParameter(str, "<this>");
            int i4 = 0;
            if (str.length() % 2 == 0) {
                int length = str.length() / 2;
                byte[] bArr = new byte[length];
                int i10 = length - 1;
                if (i10 >= 0) {
                    while (true) {
                        int i11 = i4 + 1;
                        int i12 = i4 * 2;
                        bArr[i4] = (byte) ((_ByteStringKt.access$decodeHexDigit(str.charAt(i12)) << 4) + _ByteStringKt.access$decodeHexDigit(str.charAt(i12 + 1)));
                        if (i11 > i10) {
                            break;
                        }
                        i4 = i11;
                    }
                }
                return new ByteString(bArr);
            }
            throw new IllegalArgumentException(Intrinsics.stringPlus("Unexpected hex string: ", str).toString());
        }

        @JvmStatic
        @g
        @JvmName(name = "encodeString")
        public final ByteString encodeString(@g String str, @g Charset charset) {
            Intrinsics.checkNotNullParameter(str, "<this>");
            Intrinsics.checkNotNullParameter(charset, "charset");
            byte[] bytes = str.getBytes(charset);
            Intrinsics.checkNotNullExpressionValue(bytes, "(this as java.lang.String).getBytes(charset)");
            return new ByteString(bytes);
        }

        @JvmStatic
        @g
        public final ByteString encodeUtf8(@g String str) {
            Intrinsics.checkNotNullParameter(str, "<this>");
            ByteString byteString = new ByteString(_JvmPlatformKt.asUtf8ToByteArray(str));
            byteString.setUtf8$okio(str);
            return byteString;
        }

        @JvmStatic
        @g
        @JvmName(name = "of")
        public final ByteString of(@g ByteBuffer byteBuffer) {
            Intrinsics.checkNotNullParameter(byteBuffer, "<this>");
            byte[] bArr = new byte[byteBuffer.remaining()];
            byteBuffer.get(bArr);
            return new ByteString(bArr);
        }

        @JvmStatic
        @g
        @JvmName(name = "read")
        public final ByteString read(@g InputStream inputStream, int i4) throws IOException {
            Intrinsics.checkNotNullParameter(inputStream, "<this>");
            int i10 = 0;
            if (i4 >= 0) {
                byte[] bArr = new byte[i4];
                while (i10 < i4) {
                    int read = inputStream.read(bArr, i10, i4 - i10);
                    if (read == -1) {
                        throw new EOFException();
                    }
                    i10 += read;
                }
                return new ByteString(bArr);
            }
            throw new IllegalArgumentException(Intrinsics.stringPlus("byteCount < 0: ", Integer.valueOf(i4)).toString());
        }

        @Deprecated(level = DeprecationLevel.ERROR, message = "moved to extension function", replaceWith = @ReplaceWith(expression = "array.toByteString(offset, byteCount)", imports = {"okio.ByteString.Companion.toByteString"}))
        @g
        @JvmName(name = "-deprecated_of")
        /* renamed from: -deprecated_of  reason: not valid java name */
        public final ByteString m1711deprecated_of(@g byte[] array, int i4, int i10) {
            Intrinsics.checkNotNullParameter(array, "array");
            return of(array, i4, i10);
        }

        @JvmStatic
        @g
        public final ByteString of(@g byte... data) {
            Intrinsics.checkNotNullParameter(data, "data");
            byte[] copyOf = Arrays.copyOf(data, data.length);
            Intrinsics.checkNotNullExpressionValue(copyOf, "java.util.Arrays.copyOf(this, size)");
            return new ByteString(copyOf);
        }

        @JvmStatic
        @g
        @JvmName(name = "of")
        public final ByteString of(@g byte[] bArr, int i4, int i10) {
            byte[] copyOfRange;
            Intrinsics.checkNotNullParameter(bArr, "<this>");
            _UtilKt.checkOffsetAndCount(bArr.length, i4, i10);
            copyOfRange = ArraysKt___ArraysJvmKt.copyOfRange(bArr, i4, i10 + i4);
            return new ByteString(copyOfRange);
        }
    }

    public ByteString(@g byte[] data) {
        Intrinsics.checkNotNullParameter(data, "data");
        this.data = data;
    }

    public static /* synthetic */ void copyInto$default(ByteString byteString, int i4, byte[] bArr, int i10, int i11, int i12, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: copyInto");
        }
        if ((i12 & 1) != 0) {
            i4 = 0;
        }
        if ((i12 & 4) != 0) {
            i10 = 0;
        }
        byteString.copyInto(i4, bArr, i10, i11);
    }

    @JvmStatic
    @h
    public static final ByteString decodeBase64(@g String str) {
        return Companion.decodeBase64(str);
    }

    @JvmStatic
    @g
    public static final ByteString decodeHex(@g String str) {
        return Companion.decodeHex(str);
    }

    @JvmStatic
    @g
    @JvmName(name = "encodeString")
    public static final ByteString encodeString(@g String str, @g Charset charset) {
        return Companion.encodeString(str, charset);
    }

    @JvmStatic
    @g
    public static final ByteString encodeUtf8(@g String str) {
        return Companion.encodeUtf8(str);
    }

    public static /* synthetic */ int indexOf$default(ByteString byteString, ByteString byteString2, int i4, int i10, Object obj) {
        if (obj == null) {
            if ((i10 & 2) != 0) {
                i4 = 0;
            }
            return byteString.indexOf(byteString2, i4);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: indexOf");
    }

    public static /* synthetic */ int lastIndexOf$default(ByteString byteString, ByteString byteString2, int i4, int i10, Object obj) {
        if (obj == null) {
            if ((i10 & 2) != 0) {
                i4 = _UtilKt.getDEFAULT__ByteString_size();
            }
            return byteString.lastIndexOf(byteString2, i4);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: lastIndexOf");
    }

    @JvmStatic
    @g
    @JvmName(name = "of")
    public static final ByteString of(@g ByteBuffer byteBuffer) {
        return Companion.of(byteBuffer);
    }

    @JvmStatic
    @g
    public static final ByteString of(@g byte... bArr) {
        return Companion.of(bArr);
    }

    @JvmStatic
    @g
    @JvmName(name = "of")
    public static final ByteString of(@g byte[] bArr, int i4, int i10) {
        return Companion.of(bArr, i4, i10);
    }

    @JvmStatic
    @g
    @JvmName(name = "read")
    public static final ByteString read(@g InputStream inputStream, int i4) throws IOException {
        return Companion.read(inputStream, i4);
    }

    private final void readObject(ObjectInputStream objectInputStream) throws IOException {
        ByteString read = Companion.read(objectInputStream, objectInputStream.readInt());
        Field declaredField = ByteString.class.getDeclaredField("data");
        declaredField.setAccessible(true);
        declaredField.set(this, read.data);
    }

    public static /* synthetic */ ByteString substring$default(ByteString byteString, int i4, int i10, int i11, Object obj) {
        if (obj == null) {
            if ((i11 & 1) != 0) {
                i4 = 0;
            }
            if ((i11 & 2) != 0) {
                i10 = _UtilKt.getDEFAULT__ByteString_size();
            }
            return byteString.substring(i4, i10);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: substring");
    }

    private final void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeInt(this.data.length);
        objectOutputStream.write(this.data);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "moved to operator function", replaceWith = @ReplaceWith(expression = "this[index]", imports = {}))
    @JvmName(name = "-deprecated_getByte")
    /* renamed from: -deprecated_getByte  reason: not valid java name */
    public final byte m1704deprecated_getByte(int i4) {
        return getByte(i4);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "moved to val", replaceWith = @ReplaceWith(expression = f.f47745b, imports = {}))
    @JvmName(name = "-deprecated_size")
    /* renamed from: -deprecated_size  reason: not valid java name */
    public final int m1705deprecated_size() {
        return size();
    }

    @g
    public ByteBuffer asByteBuffer() {
        ByteBuffer asReadOnlyBuffer = ByteBuffer.wrap(this.data).asReadOnlyBuffer();
        Intrinsics.checkNotNullExpressionValue(asReadOnlyBuffer, "wrap(data).asReadOnlyBuffer()");
        return asReadOnlyBuffer;
    }

    @g
    public String base64() {
        return _Base64Kt.encodeBase64$default(getData$okio(), null, 1, null);
    }

    @g
    public String base64Url() {
        return _Base64Kt.encodeBase64(getData$okio(), _Base64Kt.getBASE64_URL_SAFE());
    }

    public void copyInto(int i4, @g byte[] target, int i10, int i11) {
        Intrinsics.checkNotNullParameter(target, "target");
        ArraysKt___ArraysJvmKt.copyInto(getData$okio(), target, i10, i4, i11 + i4);
    }

    @g
    public ByteString digest$okio(@g String algorithm) {
        Intrinsics.checkNotNullParameter(algorithm, "algorithm");
        MessageDigest messageDigest = MessageDigest.getInstance(algorithm);
        messageDigest.update(getData$okio(), 0, size());
        byte[] digestBytes = messageDigest.digest();
        Intrinsics.checkNotNullExpressionValue(digestBytes, "digestBytes");
        return new ByteString(digestBytes);
    }

    public final boolean endsWith(@g ByteString suffix) {
        Intrinsics.checkNotNullParameter(suffix, "suffix");
        return rangeEquals(size() - suffix.size(), suffix, 0, suffix.size());
    }

    public boolean equals(@h Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ByteString) {
            ByteString byteString = (ByteString) obj;
            if (byteString.size() == getData$okio().length && byteString.rangeEquals(0, getData$okio(), 0, getData$okio().length)) {
                return true;
            }
        }
        return false;
    }

    @JvmName(name = "getByte")
    public final byte getByte(int i4) {
        return internalGet$okio(i4);
    }

    @g
    public final byte[] getData$okio() {
        return this.data;
    }

    public final int getHashCode$okio() {
        return this.hashCode;
    }

    public int getSize$okio() {
        return getData$okio().length;
    }

    @h
    public final String getUtf8$okio() {
        return this.utf8;
    }

    public int hashCode() {
        int hashCode$okio = getHashCode$okio();
        if (hashCode$okio != 0) {
            return hashCode$okio;
        }
        int hashCode = Arrays.hashCode(getData$okio());
        setHashCode$okio(hashCode);
        return hashCode;
    }

    @g
    public String hex() {
        String concatToString;
        char[] cArr = new char[getData$okio().length * 2];
        byte[] data$okio = getData$okio();
        int length = data$okio.length;
        int i4 = 0;
        int i10 = 0;
        while (i4 < length) {
            byte b10 = data$okio[i4];
            i4++;
            int i11 = i10 + 1;
            cArr[i10] = _ByteStringKt.getHEX_DIGIT_CHARS()[(b10 >> 4) & 15];
            i10 = i11 + 1;
            cArr[i11] = _ByteStringKt.getHEX_DIGIT_CHARS()[b10 & c.f32110q];
        }
        concatToString = StringsKt__StringsJVMKt.concatToString(cArr);
        return concatToString;
    }

    @g
    public ByteString hmac$okio(@g String algorithm, @g ByteString key) {
        Intrinsics.checkNotNullParameter(algorithm, "algorithm");
        Intrinsics.checkNotNullParameter(key, "key");
        try {
            Mac mac = Mac.getInstance(algorithm);
            mac.init(new SecretKeySpec(key.toByteArray(), algorithm));
            byte[] doFinal = mac.doFinal(this.data);
            Intrinsics.checkNotNullExpressionValue(doFinal, "mac.doFinal(data)");
            return new ByteString(doFinal);
        } catch (InvalidKeyException e4) {
            throw new IllegalArgumentException(e4);
        }
    }

    @g
    public ByteString hmacSha1(@g ByteString key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return hmac$okio(com.alipay.security.mobile.module.commonutils.crypto.c.f7003a, key);
    }

    @g
    public ByteString hmacSha256(@g ByteString key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return hmac$okio("HmacSHA256", key);
    }

    @g
    public ByteString hmacSha512(@g ByteString key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return hmac$okio("HmacSHA512", key);
    }

    @JvmOverloads
    public final int indexOf(@g ByteString other) {
        Intrinsics.checkNotNullParameter(other, "other");
        return indexOf$default(this, other, 0, 2, (Object) null);
    }

    @JvmOverloads
    public final int indexOf(@g ByteString other, int i4) {
        Intrinsics.checkNotNullParameter(other, "other");
        return indexOf(other.internalArray$okio(), i4);
    }

    @JvmOverloads
    public final int indexOf(@g byte[] other) {
        Intrinsics.checkNotNullParameter(other, "other");
        return indexOf$default(this, other, 0, 2, (Object) null);
    }

    @g
    public byte[] internalArray$okio() {
        return getData$okio();
    }

    public byte internalGet$okio(int i4) {
        return getData$okio()[i4];
    }

    @JvmOverloads
    public final int lastIndexOf(@g ByteString other) {
        Intrinsics.checkNotNullParameter(other, "other");
        return lastIndexOf$default(this, other, 0, 2, (Object) null);
    }

    @JvmOverloads
    public final int lastIndexOf(@g ByteString other, int i4) {
        Intrinsics.checkNotNullParameter(other, "other");
        return lastIndexOf(other.internalArray$okio(), i4);
    }

    @JvmOverloads
    public final int lastIndexOf(@g byte[] other) {
        Intrinsics.checkNotNullParameter(other, "other");
        return lastIndexOf$default(this, other, 0, 2, (Object) null);
    }

    @g
    public final ByteString md5() {
        return digest$okio(shaded.org.apache.commons.codec.digest.f.f93510b);
    }

    public boolean rangeEquals(int i4, @g ByteString other, int i10, int i11) {
        Intrinsics.checkNotNullParameter(other, "other");
        return other.rangeEquals(i10, getData$okio(), i4, i11);
    }

    public final void setHashCode$okio(int i4) {
        this.hashCode = i4;
    }

    public final void setUtf8$okio(@h String str) {
        this.utf8 = str;
    }

    @g
    public final ByteString sha1() {
        return digest$okio("SHA-1");
    }

    @g
    public final ByteString sha256() {
        return digest$okio("SHA-256");
    }

    @g
    public final ByteString sha512() {
        return digest$okio("SHA-512");
    }

    @JvmName(name = f.f47745b)
    public final int size() {
        return getSize$okio();
    }

    public final boolean startsWith(@g ByteString prefix) {
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        return rangeEquals(0, prefix, 0, prefix.size());
    }

    @g
    public String string(@g Charset charset) {
        Intrinsics.checkNotNullParameter(charset, "charset");
        return new String(this.data, charset);
    }

    @JvmOverloads
    @g
    public final ByteString substring() {
        return substring$default(this, 0, 0, 3, null);
    }

    @JvmOverloads
    @g
    public final ByteString substring(int i4) {
        return substring$default(this, i4, 0, 2, null);
    }

    @JvmOverloads
    @g
    public ByteString substring(int i4, int i10) {
        byte[] copyOfRange;
        int resolveDefaultParameter = _UtilKt.resolveDefaultParameter(this, i10);
        if (i4 >= 0) {
            if (!(resolveDefaultParameter <= getData$okio().length)) {
                throw new IllegalArgumentException(("endIndex > length(" + getData$okio().length + ')').toString());
            }
            if (resolveDefaultParameter - i4 >= 0) {
                if (i4 == 0 && resolveDefaultParameter == getData$okio().length) {
                    return this;
                }
                copyOfRange = ArraysKt___ArraysJvmKt.copyOfRange(getData$okio(), i4, resolveDefaultParameter);
                return new ByteString(copyOfRange);
            }
            throw new IllegalArgumentException("endIndex < beginIndex".toString());
        }
        throw new IllegalArgumentException("beginIndex < 0".toString());
    }

    @g
    public ByteString toAsciiLowercase() {
        byte b10;
        for (int i4 = 0; i4 < getData$okio().length; i4++) {
            byte b11 = getData$okio()[i4];
            byte b12 = (byte) 65;
            if (b11 >= b12 && b11 <= (b10 = (byte) 90)) {
                byte[] data$okio = getData$okio();
                byte[] copyOf = Arrays.copyOf(data$okio, data$okio.length);
                Intrinsics.checkNotNullExpressionValue(copyOf, "java.util.Arrays.copyOf(this, size)");
                copyOf[i4] = (byte) (b11 + 32);
                for (int i10 = i4 + 1; i10 < copyOf.length; i10++) {
                    byte b13 = copyOf[i10];
                    if (b13 >= b12 && b13 <= b10) {
                        copyOf[i10] = (byte) (b13 + 32);
                    }
                }
                return new ByteString(copyOf);
            }
        }
        return this;
    }

    @g
    public ByteString toAsciiUppercase() {
        byte b10;
        for (int i4 = 0; i4 < getData$okio().length; i4++) {
            byte b11 = getData$okio()[i4];
            byte b12 = (byte) 97;
            if (b11 >= b12 && b11 <= (b10 = (byte) 122)) {
                byte[] data$okio = getData$okio();
                byte[] copyOf = Arrays.copyOf(data$okio, data$okio.length);
                Intrinsics.checkNotNullExpressionValue(copyOf, "java.util.Arrays.copyOf(this, size)");
                copyOf[i4] = (byte) (b11 - 32);
                for (int i10 = i4 + 1; i10 < copyOf.length; i10++) {
                    byte b13 = copyOf[i10];
                    if (b13 >= b12 && b13 <= b10) {
                        copyOf[i10] = (byte) (b13 - 32);
                    }
                }
                return new ByteString(copyOf);
            }
        }
        return this;
    }

    @g
    public byte[] toByteArray() {
        byte[] data$okio = getData$okio();
        byte[] copyOf = Arrays.copyOf(data$okio, data$okio.length);
        Intrinsics.checkNotNullExpressionValue(copyOf, "java.util.Arrays.copyOf(this, size)");
        return copyOf;
    }

    @g
    public String toString() {
        String replace$default;
        String replace$default2;
        String replace$default3;
        ByteString byteString;
        byte[] copyOfRange;
        String str;
        if (getData$okio().length == 0) {
            str = "[size=0]";
        } else {
            int access$codePointIndexToCharIndex = _ByteStringKt.access$codePointIndexToCharIndex(getData$okio(), 64);
            if (access$codePointIndexToCharIndex == -1) {
                if (getData$okio().length <= 64) {
                    str = "[hex=" + hex() + ']';
                } else {
                    StringBuilder sb = new StringBuilder();
                    sb.append("[size=");
                    sb.append(getData$okio().length);
                    sb.append(" hex=");
                    int resolveDefaultParameter = _UtilKt.resolveDefaultParameter(this, 64);
                    if (!(resolveDefaultParameter <= getData$okio().length)) {
                        throw new IllegalArgumentException(("endIndex > length(" + getData$okio().length + ')').toString());
                    }
                    if (resolveDefaultParameter + 0 >= 0) {
                        if (resolveDefaultParameter == getData$okio().length) {
                            byteString = this;
                        } else {
                            copyOfRange = ArraysKt___ArraysJvmKt.copyOfRange(getData$okio(), 0, resolveDefaultParameter);
                            byteString = new ByteString(copyOfRange);
                        }
                        sb.append(byteString.hex());
                        sb.append("…]");
                        return sb.toString();
                    }
                    throw new IllegalArgumentException("endIndex < beginIndex".toString());
                }
            } else {
                String utf8 = utf8();
                Objects.requireNonNull(utf8, "null cannot be cast to non-null type java.lang.String");
                String substring = utf8.substring(0, access$codePointIndexToCharIndex);
                Intrinsics.checkNotNullExpressionValue(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                replace$default = StringsKt__StringsJVMKt.replace$default(substring, "\\", "\\\\", false, 4, (Object) null);
                replace$default2 = StringsKt__StringsJVMKt.replace$default(replace$default, "\n", "\\n", false, 4, (Object) null);
                replace$default3 = StringsKt__StringsJVMKt.replace$default(replace$default2, "\r", "\\r", false, 4, (Object) null);
                if (access$codePointIndexToCharIndex < utf8.length()) {
                    return "[size=" + getData$okio().length + " text=" + replace$default3 + "…]";
                }
                return "[text=" + replace$default3 + ']';
            }
        }
        return str;
    }

    @g
    public String utf8() {
        String utf8$okio = getUtf8$okio();
        if (utf8$okio == null) {
            String utf8String = _JvmPlatformKt.toUtf8String(internalArray$okio());
            setUtf8$okio(utf8String);
            return utf8String;
        }
        return utf8$okio;
    }

    public void write(@g OutputStream out) throws IOException {
        Intrinsics.checkNotNullParameter(out, "out");
        out.write(this.data);
    }

    public void write$okio(@g Buffer buffer, int i4, int i10) {
        Intrinsics.checkNotNullParameter(buffer, "buffer");
        _ByteStringKt.commonWrite(this, buffer, i4, i10);
    }

    public static /* synthetic */ int indexOf$default(ByteString byteString, byte[] bArr, int i4, int i10, Object obj) {
        if (obj == null) {
            if ((i10 & 2) != 0) {
                i4 = 0;
            }
            return byteString.indexOf(bArr, i4);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: indexOf");
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0030 A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0032 A[ORIG_RETURN, RETURN] */
    @Override // java.lang.Comparable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int compareTo(@m8.g okio.ByteString r10) {
        /*
            r9 = this;
            java.lang.String r0 = "other"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r10, r0)
            int r0 = r9.size()
            int r1 = r10.size()
            int r2 = java.lang.Math.min(r0, r1)
            r3 = 0
            r4 = 0
        L13:
            r5 = -1
            r6 = 1
            if (r4 >= r2) goto L2b
            byte r7 = r9.getByte(r4)
            r7 = r7 & 255(0xff, float:3.57E-43)
            byte r8 = r10.getByte(r4)
            r8 = r8 & 255(0xff, float:3.57E-43)
            if (r7 != r8) goto L28
            int r4 = r4 + 1
            goto L13
        L28:
            if (r7 >= r8) goto L32
            goto L30
        L2b:
            if (r0 != r1) goto L2e
            goto L33
        L2e:
            if (r0 >= r1) goto L32
        L30:
            r3 = -1
            goto L33
        L32:
            r3 = 1
        L33:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.ByteString.compareTo(okio.ByteString):int");
    }

    public final boolean endsWith(@g byte[] suffix) {
        Intrinsics.checkNotNullParameter(suffix, "suffix");
        return rangeEquals(size() - suffix.length, suffix, 0, suffix.length);
    }

    @JvmOverloads
    public int indexOf(@g byte[] other, int i4) {
        Intrinsics.checkNotNullParameter(other, "other");
        int length = getData$okio().length - other.length;
        int max = Math.max(i4, 0);
        if (max <= length) {
            while (true) {
                int i10 = max + 1;
                if (_UtilKt.arrayRangeEquals(getData$okio(), max, other, 0, other.length)) {
                    return max;
                }
                if (max == length) {
                    break;
                }
                max = i10;
            }
        }
        return -1;
    }

    @JvmOverloads
    public int lastIndexOf(@g byte[] other, int i4) {
        Intrinsics.checkNotNullParameter(other, "other");
        int min = Math.min(_UtilKt.resolveDefaultParameter(this, i4), getData$okio().length - other.length);
        if (min >= 0) {
            while (true) {
                int i10 = min - 1;
                if (_UtilKt.arrayRangeEquals(getData$okio(), min, other, 0, other.length)) {
                    return min;
                }
                if (i10 < 0) {
                    break;
                }
                min = i10;
            }
        }
        return -1;
    }

    public boolean rangeEquals(int i4, @g byte[] other, int i10, int i11) {
        Intrinsics.checkNotNullParameter(other, "other");
        return i4 >= 0 && i4 <= getData$okio().length - i11 && i10 >= 0 && i10 <= other.length - i11 && _UtilKt.arrayRangeEquals(getData$okio(), i4, other, i10, i11);
    }

    public final boolean startsWith(@g byte[] prefix) {
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        return rangeEquals(0, prefix, 0, prefix.length);
    }

    public static /* synthetic */ int lastIndexOf$default(ByteString byteString, byte[] bArr, int i4, int i10, Object obj) {
        if (obj == null) {
            if ((i10 & 2) != 0) {
                i4 = _UtilKt.getDEFAULT__ByteString_size();
            }
            return byteString.lastIndexOf(bArr, i4);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: lastIndexOf");
    }
}

package okhttp3.internal;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.exoplayer2.text.ttml.d;
import com.google.common.net.b;
import com.ksyun.media.player.KSYMediaMeta;
import com.ksyun.media.streamer.logstats.StatsConstant;
import io.sentry.protocol.t;
import io.sentry.protocol.v;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.SocketAddress;
import java.net.SocketTimeoutException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.TimeZone;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.text.Charsets;
import kotlin.text.Regex;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import m8.g;
import m8.h;
import okhttp3.Call;
import okhttp3.EventListener;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal.http2.Header;
import okhttp3.internal.io.FileSystem;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.ByteString;
import okio.Options;
import okio.Sink;
import okio.Source;

/* compiled from: Util.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000¸\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\f\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u001c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010$\n\u0002\b\b\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a \u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019\u001a\u001e\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u00172\u0006\u0010\u001d\u001a\u00020\u00172\u0006\u0010\u001e\u001a\u00020\u0017\u001a'\u0010\u001f\u001a\u00020\u00112\u0006\u0010\u001f\u001a\u00020\u00112\u0012\u0010 \u001a\n\u0012\u0006\b\u0001\u0012\u00020\"0!\"\u00020\"¢\u0006\u0002\u0010#\u001a\u001a\u0010$\u001a\u00020\u001b2\f\u0010%\u001a\b\u0012\u0004\u0012\u00020\u001b0&H\u0086\bø\u0001\u0000\u001a-\u0010'\u001a\b\u0012\u0004\u0012\u0002H)0(\"\u0004\b\u0000\u0010)2\u0012\u0010*\u001a\n\u0012\u0006\b\u0001\u0012\u0002H)0!\"\u0002H)H\u0007¢\u0006\u0002\u0010+\u001a\u000e\u0010,\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u0011\u001a1\u0010-\u001a\u0004\u0018\u0001H)\"\u0004\b\u0000\u0010)2\u0006\u0010.\u001a\u00020\"2\f\u0010/\u001a\b\u0012\u0004\u0012\u0002H)002\u0006\u00101\u001a\u00020\u0011¢\u0006\u0002\u00102\u001a\u0016\u00103\u001a\u0002042\u0006\u0010\u0015\u001a\u00020\u00112\u0006\u00105\u001a\u00020\u000f\u001a\"\u00106\u001a\u00020\u001b2\u0006\u0010\u0015\u001a\u00020\u00112\f\u0010%\u001a\b\u0012\u0004\u0012\u00020\u001b0&H\u0086\bø\u0001\u0000\u001a%\u00107\u001a\u00020\u001b\"\u0004\b\u0000\u00108*\b\u0012\u0004\u0012\u0002H8092\u0006\u0010:\u001a\u0002H8H\u0000¢\u0006\u0002\u0010;\u001a\u0015\u0010<\u001a\u00020\u0014*\u00020=2\u0006\u0010>\u001a\u00020\u0014H\u0086\u0004\u001a\u0015\u0010<\u001a\u00020\u0017*\u00020\u00142\u0006\u0010>\u001a\u00020\u0017H\u0086\u0004\u001a\u0015\u0010<\u001a\u00020\u0014*\u00020?2\u0006\u0010>\u001a\u00020\u0014H\u0086\u0004\u001a\n\u0010@\u001a\u00020A*\u00020B\u001a\r\u0010C\u001a\u00020\u001b*\u00020\"H\u0080\b\u001a\r\u0010D\u001a\u00020\u001b*\u00020\"H\u0080\b\u001a\n\u0010E\u001a\u00020\u000f*\u00020\u0011\u001a\u0012\u0010F\u001a\u00020\u000f*\u00020G2\u0006\u0010H\u001a\u00020G\u001a\n\u0010I\u001a\u00020\u001b*\u00020J\u001a\n\u0010I\u001a\u00020\u001b*\u00020K\u001a\n\u0010I\u001a\u00020\u001b*\u00020L\u001a#\u0010M\u001a\b\u0012\u0004\u0012\u00020\u00110!*\b\u0012\u0004\u0012\u00020\u00110!2\u0006\u0010N\u001a\u00020\u0011¢\u0006\u0002\u0010O\u001a&\u0010P\u001a\u00020\u0014*\u00020\u00112\u0006\u0010Q\u001a\u00020R2\b\b\u0002\u0010S\u001a\u00020\u00142\b\b\u0002\u0010T\u001a\u00020\u0014\u001a&\u0010P\u001a\u00020\u0014*\u00020\u00112\u0006\u0010U\u001a\u00020\u00112\b\b\u0002\u0010S\u001a\u00020\u00142\b\b\u0002\u0010T\u001a\u00020\u0014\u001a\u001a\u0010V\u001a\u00020\u000f*\u00020W2\u0006\u0010X\u001a\u00020\u00142\u0006\u0010Y\u001a\u00020\u0019\u001a;\u0010Z\u001a\b\u0012\u0004\u0012\u0002H)0(\"\u0004\b\u0000\u0010)*\b\u0012\u0004\u0012\u0002H)0[2\u0017\u0010\\\u001a\u0013\u0012\u0004\u0012\u0002H)\u0012\u0004\u0012\u00020\u000f0]¢\u0006\u0002\b^H\u0086\bø\u0001\u0000\u001a5\u0010_\u001a\u00020\u000f*\b\u0012\u0004\u0012\u00020\u00110!2\u000e\u0010H\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010!2\u000e\u0010`\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00110a¢\u0006\u0002\u0010b\u001a\n\u0010c\u001a\u00020\u0017*\u00020d\u001a+\u0010e\u001a\u00020\u0014*\b\u0012\u0004\u0012\u00020\u00110!2\u0006\u0010N\u001a\u00020\u00112\f\u0010`\u001a\b\u0012\u0004\u0012\u00020\u00110a¢\u0006\u0002\u0010f\u001a\n\u0010g\u001a\u00020\u0014*\u00020\u0011\u001a\u001e\u0010h\u001a\u00020\u0014*\u00020\u00112\b\b\u0002\u0010S\u001a\u00020\u00142\b\b\u0002\u0010T\u001a\u00020\u0014\u001a\u001e\u0010i\u001a\u00020\u0014*\u00020\u00112\b\b\u0002\u0010S\u001a\u00020\u00142\b\b\u0002\u0010T\u001a\u00020\u0014\u001a\u0014\u0010j\u001a\u00020\u0014*\u00020\u00112\b\b\u0002\u0010S\u001a\u00020\u0014\u001a9\u0010k\u001a\b\u0012\u0004\u0012\u00020\u00110!*\b\u0012\u0004\u0012\u00020\u00110!2\f\u0010H\u001a\b\u0012\u0004\u0012\u00020\u00110!2\u000e\u0010`\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00110a¢\u0006\u0002\u0010l\u001a\u0012\u0010m\u001a\u00020\u000f*\u00020n2\u0006\u0010o\u001a\u00020p\u001a\u0012\u0010q\u001a\u00020\u000f*\u00020L2\u0006\u0010r\u001a\u00020s\u001a\r\u0010t\u001a\u00020\u001b*\u00020\"H\u0086\b\u001a\r\u0010u\u001a\u00020\u001b*\u00020\"H\u0086\b\u001a\n\u0010v\u001a\u00020\u0014*\u00020R\u001a\n\u0010w\u001a\u00020\u0011*\u00020L\u001a\u0012\u0010x\u001a\u00020y*\u00020s2\u0006\u0010z\u001a\u00020y\u001a\n\u0010{\u001a\u00020\u0014*\u00020s\u001a\u0012\u0010|\u001a\u00020\u0014*\u00020}2\u0006\u0010~\u001a\u00020=\u001a\u001a\u0010|\u001a\u00020\u000f*\u00020W2\u0006\u0010\u0016\u001a\u00020\u00142\u0006\u0010Y\u001a\u00020\u0019\u001a\u0011\u0010\u007f\u001a\t\u0012\u0005\u0012\u00030\u0080\u00010(*\u00020\u0003\u001a\u0012\u0010\u0081\u0001\u001a\u00020\u0003*\t\u0012\u0005\u0012\u00030\u0080\u00010(\u001a\u000b\u0010\u0082\u0001\u001a\u00020\u0011*\u00020\u0014\u001a\u000b\u0010\u0082\u0001\u001a\u00020\u0011*\u00020\u0017\u001a\u0016\u0010\u0083\u0001\u001a\u00020\u0011*\u00020G2\t\b\u0002\u0010\u0084\u0001\u001a\u00020\u000f\u001a\u001d\u0010\u0085\u0001\u001a\b\u0012\u0004\u0012\u0002H)0(\"\u0004\b\u0000\u0010)*\b\u0012\u0004\u0012\u0002H)0(\u001a7\u0010\u0086\u0001\u001a\u0011\u0012\u0005\u0012\u0003H\u0088\u0001\u0012\u0005\u0012\u0003H\u0089\u00010\u0087\u0001\"\u0005\b\u0000\u0010\u0088\u0001\"\u0005\b\u0001\u0010\u0089\u0001*\u0011\u0012\u0005\u0012\u0003H\u0088\u0001\u0012\u0005\u0012\u0003H\u0089\u00010\u0087\u0001\u001a\u0014\u0010\u008a\u0001\u001a\u00020\u0017*\u00020\u00112\u0007\u0010\u008b\u0001\u001a\u00020\u0017\u001a\u0016\u0010\u008c\u0001\u001a\u00020\u0014*\u0004\u0018\u00010\u00112\u0007\u0010\u008b\u0001\u001a\u00020\u0014\u001a\u001f\u0010\u008d\u0001\u001a\u00020\u0011*\u00020\u00112\b\b\u0002\u0010S\u001a\u00020\u00142\b\b\u0002\u0010T\u001a\u00020\u0014\u001a\u000e\u0010\u008e\u0001\u001a\u00020\u001b*\u00020\"H\u0086\b\u001a'\u0010\u008f\u0001\u001a\u00030\u0090\u0001*\b0\u0091\u0001j\u0003`\u0092\u00012\u0013\u0010\u0093\u0001\u001a\u000e\u0012\n\u0012\b0\u0091\u0001j\u0003`\u0092\u00010(\u001a\u0015\u0010\u0094\u0001\u001a\u00020\u001b*\u00030\u0095\u00012\u0007\u0010\u0096\u0001\u001a\u00020\u0014\"\u0010\u0010\u0000\u001a\u00020\u00018\u0006X\u0087\u0004¢\u0006\u0002\n\u0000\"\u0010\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0002\n\u0000\"\u0010\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u0002\n\u0000\"\u0010\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000\"\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000\"\u0010\u0010\n\u001a\u00020\u000b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000\"\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000\"\u0010\u0010\u000e\u001a\u00020\u000f8\u0000X\u0081\u0004¢\u0006\u0002\n\u0000\"\u0010\u0010\u0010\u001a\u00020\u00118\u0000X\u0081\u0004¢\u0006\u0002\n\u0000\"\u000e\u0010\u0012\u001a\u00020\u0011X\u0086T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0097\u0001"}, d2 = {"EMPTY_BYTE_ARRAY", "", "EMPTY_HEADERS", "Lokhttp3/Headers;", "EMPTY_REQUEST", "Lokhttp3/RequestBody;", "EMPTY_RESPONSE", "Lokhttp3/ResponseBody;", "UNICODE_BOMS", "Lokio/Options;", "UTC", "Ljava/util/TimeZone;", "VERIFY_AS_IP_ADDRESS", "Lkotlin/text/Regex;", "assertionsEnabled", "", "okHttpName", "", "userAgent", "checkDuration", "", "name", "duration", "", "unit", "Ljava/util/concurrent/TimeUnit;", "checkOffsetAndCount", "", "arrayLength", TypedValues.Cycle.S_WAVE_OFFSET, "count", KSYMediaMeta.IJKM_KEY_FORMAT, "args", "", "", "(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;", "ignoreIoExceptions", "block", "Lkotlin/Function0;", "immutableListOf", "", ExifInterface.GPS_DIRECTION_TRUE, "elements", "([Ljava/lang/Object;)Ljava/util/List;", "isSensitiveHeader", "readFieldOrNull", "instance", "fieldType", "Ljava/lang/Class;", "fieldName", "(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;", "threadFactory", "Ljava/util/concurrent/ThreadFactory;", t.b.f83862g, "threadName", "addIfAbsent", ExifInterface.LONGITUDE_EAST, "", "element", "(Ljava/util/List;Ljava/lang/Object;)V", "and", "", "mask", "", "asFactory", "Lokhttp3/EventListener$Factory;", "Lokhttp3/EventListener;", "assertThreadDoesntHoldLock", "assertThreadHoldsLock", "canParseAsIpAddress", "canReuseConnectionFor", "Lokhttp3/HttpUrl;", "other", "closeQuietly", "Ljava/io/Closeable;", "Ljava/net/ServerSocket;", "Ljava/net/Socket;", "concat", "value", "([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;", "delimiterOffset", d.f25710b0, "", "startIndex", "endIndex", "delimiters", "discard", "Lokio/Source;", "timeout", "timeUnit", "filterList", "", "predicate", "Lkotlin/Function1;", "Lkotlin/ExtensionFunctionType;", "hasIntersection", "comparator", "Ljava/util/Comparator;", "([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Comparator;)Z", "headersContentLength", "Lokhttp3/Response;", "indexOf", "([Ljava/lang/String;Ljava/lang/String;Ljava/util/Comparator;)I", "indexOfControlOrNonAscii", "indexOfFirstNonAsciiWhitespace", "indexOfLastNonAsciiWhitespace", "indexOfNonWhitespace", "intersect", "([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Comparator;)[Ljava/lang/String;", "isCivilized", "Lokhttp3/internal/io/FileSystem;", "file", "Ljava/io/File;", "isHealthy", v.b.f83881a, "Lokio/BufferedSource;", "notify", "notifyAll", "parseHexDigit", "peerName", "readBomAsCharset", "Ljava/nio/charset/Charset;", StatsConstant.BW_EST_STRATEGY_NORMAL, "readMedium", "skipAll", "Lokio/Buffer;", "b", "toHeaderList", "Lokhttp3/internal/http2/Header;", "toHeaders", "toHexString", "toHostHeader", "includeDefaultPort", "toImmutableList", "toImmutableMap", "", "K", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "toLongOrDefault", "defaultValue", "toNonNegativeInt", "trimSubstring", "wait", "withSuppressed", "", "Ljava/lang/Exception;", "Lkotlin/Exception;", "suppressed", "writeMedium", "Lokio/BufferedSink;", "medium", "okhttp"}, k = 2, mv = {1, 4, 0})
@JvmName(name = "Util")
/* loaded from: classes4.dex */
public final class Util {
    @JvmField
    @g
    public static final byte[] EMPTY_BYTE_ARRAY;
    @JvmField
    @g
    public static final Headers EMPTY_HEADERS = Headers.Companion.of(new String[0]);
    @JvmField
    @g
    public static final RequestBody EMPTY_REQUEST;
    @JvmField
    @g
    public static final ResponseBody EMPTY_RESPONSE;
    private static final Options UNICODE_BOMS;
    @JvmField
    @g
    public static final TimeZone UTC;
    private static final Regex VERIFY_AS_IP_ADDRESS;
    @JvmField
    public static final boolean assertionsEnabled;
    @JvmField
    @g
    public static final String okHttpName;
    @g
    public static final String userAgent = "okhttp/4.9.3";

    static {
        String removePrefix;
        String removeSuffix;
        byte[] bArr = new byte[0];
        EMPTY_BYTE_ARRAY = bArr;
        EMPTY_RESPONSE = ResponseBody.Companion.create$default(ResponseBody.Companion, bArr, (MediaType) null, 1, (Object) null);
        EMPTY_REQUEST = RequestBody.Companion.create$default(RequestBody.Companion, bArr, (MediaType) null, 0, 0, 7, (Object) null);
        Options.Companion companion = Options.Companion;
        ByteString.Companion companion2 = ByteString.Companion;
        UNICODE_BOMS = companion.of(companion2.decodeHex("efbbbf"), companion2.decodeHex("feff"), companion2.decodeHex("fffe"), companion2.decodeHex("0000ffff"), companion2.decodeHex("ffff0000"));
        TimeZone timeZone = TimeZone.getTimeZone("GMT");
        Intrinsics.checkNotNull(timeZone);
        UTC = timeZone;
        VERIFY_AS_IP_ADDRESS = new Regex("([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)");
        assertionsEnabled = false;
        String name = OkHttpClient.class.getName();
        Intrinsics.checkNotNullExpressionValue(name, "OkHttpClient::class.java.name");
        removePrefix = StringsKt__StringsKt.removePrefix(name, (CharSequence) "okhttp3.");
        removeSuffix = StringsKt__StringsKt.removeSuffix(removePrefix, (CharSequence) "Client");
        okHttpName = removeSuffix;
    }

    public static final <E> void addIfAbsent(@g List<E> addIfAbsent, E e4) {
        Intrinsics.checkNotNullParameter(addIfAbsent, "$this$addIfAbsent");
        if (addIfAbsent.contains(e4)) {
            return;
        }
        addIfAbsent.add(e4);
    }

    public static final int and(byte b10, int i4) {
        return b10 & i4;
    }

    public static final int and(short s9, int i4) {
        return s9 & i4;
    }

    public static final long and(int i4, long j4) {
        return i4 & j4;
    }

    @g
    public static final EventListener.Factory asFactory(@g final EventListener asFactory) {
        Intrinsics.checkNotNullParameter(asFactory, "$this$asFactory");
        return new EventListener.Factory() { // from class: okhttp3.internal.Util$asFactory$1
            @Override // okhttp3.EventListener.Factory
            @g
            public final EventListener create(@g Call it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return EventListener.this;
            }
        };
    }

    public static final void assertThreadDoesntHoldLock(@g Object assertThreadDoesntHoldLock) {
        Intrinsics.checkNotNullParameter(assertThreadDoesntHoldLock, "$this$assertThreadDoesntHoldLock");
        if (assertionsEnabled && Thread.holdsLock(assertThreadDoesntHoldLock)) {
            StringBuilder sb = new StringBuilder();
            sb.append("Thread ");
            Thread currentThread = Thread.currentThread();
            Intrinsics.checkNotNullExpressionValue(currentThread, "Thread.currentThread()");
            sb.append(currentThread.getName());
            sb.append(" MUST NOT hold lock on ");
            sb.append(assertThreadDoesntHoldLock);
            throw new AssertionError(sb.toString());
        }
    }

    public static final void assertThreadHoldsLock(@g Object assertThreadHoldsLock) {
        Intrinsics.checkNotNullParameter(assertThreadHoldsLock, "$this$assertThreadHoldsLock");
        if (!assertionsEnabled || Thread.holdsLock(assertThreadHoldsLock)) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Thread ");
        Thread currentThread = Thread.currentThread();
        Intrinsics.checkNotNullExpressionValue(currentThread, "Thread.currentThread()");
        sb.append(currentThread.getName());
        sb.append(" MUST hold lock on ");
        sb.append(assertThreadHoldsLock);
        throw new AssertionError(sb.toString());
    }

    public static final boolean canParseAsIpAddress(@g String canParseAsIpAddress) {
        Intrinsics.checkNotNullParameter(canParseAsIpAddress, "$this$canParseAsIpAddress");
        return VERIFY_AS_IP_ADDRESS.matches(canParseAsIpAddress);
    }

    public static final boolean canReuseConnectionFor(@g HttpUrl canReuseConnectionFor, @g HttpUrl other) {
        Intrinsics.checkNotNullParameter(canReuseConnectionFor, "$this$canReuseConnectionFor");
        Intrinsics.checkNotNullParameter(other, "other");
        return Intrinsics.areEqual(canReuseConnectionFor.host(), other.host()) && canReuseConnectionFor.port() == other.port() && Intrinsics.areEqual(canReuseConnectionFor.scheme(), other.scheme());
    }

    public static final int checkDuration(@g String name, long j4, @h TimeUnit timeUnit) {
        Intrinsics.checkNotNullParameter(name, "name");
        boolean z9 = true;
        int i4 = (j4 > 0L ? 1 : (j4 == 0L ? 0 : -1));
        if (!(i4 >= 0)) {
            throw new IllegalStateException((name + " < 0").toString());
        }
        if (timeUnit != null) {
            long millis = timeUnit.toMillis(j4);
            if (!(millis <= ((long) Integer.MAX_VALUE))) {
                throw new IllegalArgumentException((name + " too large.").toString());
            }
            if (millis == 0 && i4 > 0) {
                z9 = false;
            }
            if (z9) {
                return (int) millis;
            }
            throw new IllegalArgumentException((name + " too small.").toString());
        }
        throw new IllegalStateException("unit == null".toString());
    }

    public static final void checkOffsetAndCount(long j4, long j10, long j11) {
        if ((j10 | j11) < 0 || j10 > j4 || j4 - j10 < j11) {
            throw new ArrayIndexOutOfBoundsException();
        }
    }

    public static final void closeQuietly(@g Closeable closeQuietly) {
        Intrinsics.checkNotNullParameter(closeQuietly, "$this$closeQuietly");
        try {
            closeQuietly.close();
        } catch (RuntimeException e4) {
            throw e4;
        } catch (Exception unused) {
        }
    }

    @g
    public static final String[] concat(@g String[] concat, @g String value) {
        int lastIndex;
        Intrinsics.checkNotNullParameter(concat, "$this$concat");
        Intrinsics.checkNotNullParameter(value, "value");
        Object[] copyOf = Arrays.copyOf(concat, concat.length + 1);
        Intrinsics.checkNotNullExpressionValue(copyOf, "java.util.Arrays.copyOf(this, newSize)");
        String[] strArr = (String[]) copyOf;
        lastIndex = ArraysKt___ArraysKt.getLastIndex(strArr);
        strArr[lastIndex] = value;
        return strArr;
    }

    public static final int delimiterOffset(@g String delimiterOffset, @g String delimiters, int i4, int i10) {
        boolean contains$default;
        Intrinsics.checkNotNullParameter(delimiterOffset, "$this$delimiterOffset");
        Intrinsics.checkNotNullParameter(delimiters, "delimiters");
        while (i4 < i10) {
            contains$default = StringsKt__StringsKt.contains$default((CharSequence) delimiters, delimiterOffset.charAt(i4), false, 2, (Object) null);
            if (contains$default) {
                return i4;
            }
            i4++;
        }
        return i10;
    }

    public static /* synthetic */ int delimiterOffset$default(String str, String str2, int i4, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i4 = 0;
        }
        if ((i11 & 4) != 0) {
            i10 = str.length();
        }
        return delimiterOffset(str, str2, i4, i10);
    }

    public static final boolean discard(@g Source discard, int i4, @g TimeUnit timeUnit) {
        Intrinsics.checkNotNullParameter(discard, "$this$discard");
        Intrinsics.checkNotNullParameter(timeUnit, "timeUnit");
        try {
            return skipAll(discard, i4, timeUnit);
        } catch (IOException unused) {
            return false;
        }
    }

    @g
    public static final <T> List<T> filterList(@g Iterable<? extends T> filterList, @g Function1<? super T, Boolean> predicate) {
        List<T> emptyList;
        Intrinsics.checkNotNullParameter(filterList, "$this$filterList");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        Iterator<? extends T> it = filterList.iterator();
        while (it.hasNext()) {
            Object obj = (T) it.next();
            if (predicate.invoke(obj).booleanValue()) {
                if (emptyList.isEmpty()) {
                    emptyList = new ArrayList<>();
                }
                TypeIntrinsics.asMutableList(emptyList).add(obj);
            }
        }
        return emptyList;
    }

    @g
    public static final String format(@g String format, @g Object... args) {
        Intrinsics.checkNotNullParameter(format, "format");
        Intrinsics.checkNotNullParameter(args, "args");
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        Locale locale = Locale.US;
        Object[] copyOf = Arrays.copyOf(args, args.length);
        String format2 = String.format(locale, format, Arrays.copyOf(copyOf, copyOf.length));
        Intrinsics.checkNotNullExpressionValue(format2, "java.lang.String.format(locale, format, *args)");
        return format2;
    }

    public static final boolean hasIntersection(@g String[] hasIntersection, @h String[] strArr, @g Comparator<? super String> comparator) {
        Intrinsics.checkNotNullParameter(hasIntersection, "$this$hasIntersection");
        Intrinsics.checkNotNullParameter(comparator, "comparator");
        if (!(hasIntersection.length == 0) && strArr != null) {
            if (!(strArr.length == 0)) {
                for (String str : hasIntersection) {
                    for (String str2 : strArr) {
                        if (comparator.compare(str, str2) == 0) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    public static final long headersContentLength(@g Response headersContentLength) {
        Intrinsics.checkNotNullParameter(headersContentLength, "$this$headersContentLength");
        String str = headersContentLength.headers().get(b.f34609b);
        if (str != null) {
            return toLongOrDefault(str, -1L);
        }
        return -1L;
    }

    public static final void ignoreIoExceptions(@g Function0<Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        try {
            block.invoke();
        } catch (IOException unused) {
        }
    }

    @SafeVarargs
    @g
    public static final <T> List<T> immutableListOf(@g T... elements) {
        List listOf;
        Intrinsics.checkNotNullParameter(elements, "elements");
        Object[] objArr = (Object[]) elements.clone();
        listOf = CollectionsKt__CollectionsKt.listOf(Arrays.copyOf(objArr, objArr.length));
        List<T> unmodifiableList = Collections.unmodifiableList(listOf);
        Intrinsics.checkNotNullExpressionValue(unmodifiableList, "Collections.unmodifiable…istOf(*elements.clone()))");
        return unmodifiableList;
    }

    public static final int indexOf(@g String[] indexOf, @g String value, @g Comparator<String> comparator) {
        Intrinsics.checkNotNullParameter(indexOf, "$this$indexOf");
        Intrinsics.checkNotNullParameter(value, "value");
        Intrinsics.checkNotNullParameter(comparator, "comparator");
        int length = indexOf.length;
        for (int i4 = 0; i4 < length; i4++) {
            if (comparator.compare(indexOf[i4], value) == 0) {
                return i4;
            }
        }
        return -1;
    }

    public static final int indexOfControlOrNonAscii(@g String indexOfControlOrNonAscii) {
        Intrinsics.checkNotNullParameter(indexOfControlOrNonAscii, "$this$indexOfControlOrNonAscii");
        int length = indexOfControlOrNonAscii.length();
        for (int i4 = 0; i4 < length; i4++) {
            char charAt = indexOfControlOrNonAscii.charAt(i4);
            if (Intrinsics.compare((int) charAt, 31) <= 0 || Intrinsics.compare((int) charAt, 127) >= 0) {
                return i4;
            }
        }
        return -1;
    }

    public static final int indexOfFirstNonAsciiWhitespace(@g String indexOfFirstNonAsciiWhitespace, int i4, int i10) {
        Intrinsics.checkNotNullParameter(indexOfFirstNonAsciiWhitespace, "$this$indexOfFirstNonAsciiWhitespace");
        while (i4 < i10) {
            char charAt = indexOfFirstNonAsciiWhitespace.charAt(i4);
            if (charAt != '\t' && charAt != '\n' && charAt != '\f' && charAt != '\r' && charAt != ' ') {
                return i4;
            }
            i4++;
        }
        return i10;
    }

    public static /* synthetic */ int indexOfFirstNonAsciiWhitespace$default(String str, int i4, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i4 = 0;
        }
        if ((i11 & 2) != 0) {
            i10 = str.length();
        }
        return indexOfFirstNonAsciiWhitespace(str, i4, i10);
    }

    public static final int indexOfLastNonAsciiWhitespace(@g String indexOfLastNonAsciiWhitespace, int i4, int i10) {
        Intrinsics.checkNotNullParameter(indexOfLastNonAsciiWhitespace, "$this$indexOfLastNonAsciiWhitespace");
        int i11 = i10 - 1;
        if (i11 >= i4) {
            while (true) {
                char charAt = indexOfLastNonAsciiWhitespace.charAt(i11);
                if (charAt != '\t' && charAt != '\n' && charAt != '\f' && charAt != '\r' && charAt != ' ') {
                    return i11 + 1;
                }
                if (i11 == i4) {
                    break;
                }
                i11--;
            }
        }
        return i4;
    }

    public static /* synthetic */ int indexOfLastNonAsciiWhitespace$default(String str, int i4, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i4 = 0;
        }
        if ((i11 & 2) != 0) {
            i10 = str.length();
        }
        return indexOfLastNonAsciiWhitespace(str, i4, i10);
    }

    public static final int indexOfNonWhitespace(@g String indexOfNonWhitespace, int i4) {
        Intrinsics.checkNotNullParameter(indexOfNonWhitespace, "$this$indexOfNonWhitespace");
        int length = indexOfNonWhitespace.length();
        while (i4 < length) {
            char charAt = indexOfNonWhitespace.charAt(i4);
            if (charAt != ' ' && charAt != '\t') {
                return i4;
            }
            i4++;
        }
        return indexOfNonWhitespace.length();
    }

    public static /* synthetic */ int indexOfNonWhitespace$default(String str, int i4, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i4 = 0;
        }
        return indexOfNonWhitespace(str, i4);
    }

    @g
    public static final String[] intersect(@g String[] intersect, @g String[] other, @g Comparator<? super String> comparator) {
        Intrinsics.checkNotNullParameter(intersect, "$this$intersect");
        Intrinsics.checkNotNullParameter(other, "other");
        Intrinsics.checkNotNullParameter(comparator, "comparator");
        ArrayList arrayList = new ArrayList();
        for (String str : intersect) {
            int length = other.length;
            int i4 = 0;
            while (true) {
                if (i4 >= length) {
                    break;
                } else if (comparator.compare(str, other[i4]) == 0) {
                    arrayList.add(str);
                    break;
                } else {
                    i4++;
                }
            }
        }
        Object[] array = arrayList.toArray(new String[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        return (String[]) array;
    }

    public static final boolean isCivilized(@g FileSystem isCivilized, @g File file) {
        Intrinsics.checkNotNullParameter(isCivilized, "$this$isCivilized");
        Intrinsics.checkNotNullParameter(file, "file");
        Sink sink = isCivilized.sink(file);
        try {
            try {
                isCivilized.delete(file);
                CloseableKt.closeFinally(sink, null);
                return true;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    CloseableKt.closeFinally(sink, th);
                    throw th2;
                }
            }
        } catch (IOException unused) {
            Unit unit = Unit.INSTANCE;
            CloseableKt.closeFinally(sink, null);
            isCivilized.delete(file);
            return false;
        }
    }

    public static final boolean isHealthy(@g Socket isHealthy, @g BufferedSource source) {
        Intrinsics.checkNotNullParameter(isHealthy, "$this$isHealthy");
        Intrinsics.checkNotNullParameter(source, "source");
        try {
            int soTimeout = isHealthy.getSoTimeout();
            try {
                isHealthy.setSoTimeout(1);
                boolean z9 = !source.exhausted();
                isHealthy.setSoTimeout(soTimeout);
                return z9;
            } catch (Throwable th) {
                isHealthy.setSoTimeout(soTimeout);
                throw th;
            }
        } catch (SocketTimeoutException unused) {
            return true;
        } catch (IOException unused2) {
            return false;
        }
    }

    public static final boolean isSensitiveHeader(@g String name) {
        boolean equals;
        boolean equals2;
        boolean equals3;
        boolean equals4;
        Intrinsics.checkNotNullParameter(name, "name");
        equals = StringsKt__StringsJVMKt.equals(name, "Authorization", true);
        if (equals) {
            return true;
        }
        equals2 = StringsKt__StringsJVMKt.equals(name, b.f34641p, true);
        if (equals2) {
            return true;
        }
        equals3 = StringsKt__StringsJVMKt.equals(name, b.F, true);
        if (equals3) {
            return true;
        }
        equals4 = StringsKt__StringsJVMKt.equals(name, b.f34656w0, true);
        return equals4;
    }

    public static final void notify(@g Object notify) {
        Intrinsics.checkNotNullParameter(notify, "$this$notify");
        notify.notify();
    }

    public static final void notifyAll(@g Object notifyAll) {
        Intrinsics.checkNotNullParameter(notifyAll, "$this$notifyAll");
        notifyAll.notifyAll();
    }

    public static final int parseHexDigit(char c10) {
        if ('0' <= c10 && '9' >= c10) {
            return c10 - '0';
        }
        char c11 = 'a';
        if ('a' > c10 || 'f' < c10) {
            c11 = 'A';
            if ('A' > c10 || 'F' < c10) {
                return -1;
            }
        }
        return (c10 - c11) + 10;
    }

    @g
    public static final String peerName(@g Socket peerName) {
        Intrinsics.checkNotNullParameter(peerName, "$this$peerName");
        SocketAddress remoteSocketAddress = peerName.getRemoteSocketAddress();
        if (remoteSocketAddress instanceof InetSocketAddress) {
            String hostName = ((InetSocketAddress) remoteSocketAddress).getHostName();
            Intrinsics.checkNotNullExpressionValue(hostName, "address.hostName");
            return hostName;
        }
        return remoteSocketAddress.toString();
    }

    @g
    public static final Charset readBomAsCharset(@g BufferedSource readBomAsCharset, @g Charset charset) throws IOException {
        Intrinsics.checkNotNullParameter(readBomAsCharset, "$this$readBomAsCharset");
        Intrinsics.checkNotNullParameter(charset, "default");
        int select = readBomAsCharset.select(UNICODE_BOMS);
        if (select != -1) {
            if (select == 0) {
                Charset UTF_8 = StandardCharsets.UTF_8;
                Intrinsics.checkNotNullExpressionValue(UTF_8, "UTF_8");
                return UTF_8;
            } else if (select == 1) {
                Charset UTF_16BE = StandardCharsets.UTF_16BE;
                Intrinsics.checkNotNullExpressionValue(UTF_16BE, "UTF_16BE");
                return UTF_16BE;
            } else if (select == 2) {
                Charset UTF_16LE = StandardCharsets.UTF_16LE;
                Intrinsics.checkNotNullExpressionValue(UTF_16LE, "UTF_16LE");
                return UTF_16LE;
            } else if (select != 3) {
                if (select == 4) {
                    return Charsets.INSTANCE.UTF32_LE();
                }
                throw new AssertionError();
            } else {
                return Charsets.INSTANCE.UTF32_BE();
            }
        }
        return charset;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0039, code lost:
        return r4;
     */
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final <T> T readFieldOrNull(@m8.g java.lang.Object r6, @m8.g java.lang.Class<T> r7, @m8.g java.lang.String r8) {
        /*
            java.lang.Class<java.lang.Object> r0 = java.lang.Object.class
            java.lang.String r1 = "instance"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r1)
            java.lang.String r1 = "fieldType"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r7, r1)
            java.lang.String r1 = "fieldName"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r1)
            java.lang.Class r1 = r6.getClass()
        L15:
            boolean r2 = kotlin.jvm.internal.Intrinsics.areEqual(r1, r0)
            r3 = 1
            r2 = r2 ^ r3
            r4 = 0
            if (r2 == 0) goto L44
            java.lang.reflect.Field r2 = r1.getDeclaredField(r8)     // Catch: java.lang.NoSuchFieldException -> L3a
            java.lang.String r5 = "field"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r5)     // Catch: java.lang.NoSuchFieldException -> L3a
            r2.setAccessible(r3)     // Catch: java.lang.NoSuchFieldException -> L3a
            java.lang.Object r2 = r2.get(r6)     // Catch: java.lang.NoSuchFieldException -> L3a
            boolean r3 = r7.isInstance(r2)     // Catch: java.lang.NoSuchFieldException -> L3a
            if (r3 != 0) goto L35
            goto L39
        L35:
            java.lang.Object r4 = r7.cast(r2)     // Catch: java.lang.NoSuchFieldException -> L3a
        L39:
            return r4
        L3a:
            java.lang.Class r1 = r1.getSuperclass()
            java.lang.String r2 = "c.superclass"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r2)
            goto L15
        L44:
            java.lang.String r1 = "delegate"
            boolean r2 = kotlin.jvm.internal.Intrinsics.areEqual(r8, r1)
            r2 = r2 ^ r3
            if (r2 == 0) goto L58
            java.lang.Object r6 = readFieldOrNull(r6, r0, r1)
            if (r6 == 0) goto L58
            java.lang.Object r6 = readFieldOrNull(r6, r7, r8)
            return r6
        L58:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.Util.readFieldOrNull(java.lang.Object, java.lang.Class, java.lang.String):java.lang.Object");
    }

    public static final int readMedium(@g BufferedSource readMedium) throws IOException {
        Intrinsics.checkNotNullParameter(readMedium, "$this$readMedium");
        return and(readMedium.readByte(), 255) | (and(readMedium.readByte(), 255) << 16) | (and(readMedium.readByte(), 255) << 8);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0051, code lost:
        if (r5 == Long.MAX_VALUE) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0053, code lost:
        r11.timeout().clearDeadline();
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x005b, code lost:
        r11.timeout().deadlineNanoTime(r0 + r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x007e, code lost:
        if (r5 != Long.MAX_VALUE) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0081, code lost:
        return r12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final boolean skipAll(@m8.g okio.Source r11, int r12, @m8.g java.util.concurrent.TimeUnit r13) throws java.io.IOException {
        /*
            java.lang.String r0 = "$this$skipAll"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r11, r0)
            java.lang.String r0 = "timeUnit"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r13, r0)
            long r0 = java.lang.System.nanoTime()
            okio.Timeout r2 = r11.timeout()
            boolean r2 = r2.hasDeadline()
            r3 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            if (r2 == 0) goto L27
            okio.Timeout r2 = r11.timeout()
            long r5 = r2.deadlineNanoTime()
            long r5 = r5 - r0
            goto L28
        L27:
            r5 = r3
        L28:
            okio.Timeout r2 = r11.timeout()
            long r7 = (long) r12
            long r12 = r13.toNanos(r7)
            long r12 = java.lang.Math.min(r5, r12)
            long r12 = r12 + r0
            r2.deadlineNanoTime(r12)
            okio.Buffer r12 = new okio.Buffer     // Catch: java.lang.Throwable -> L64 java.io.InterruptedIOException -> L7a
            r12.<init>()     // Catch: java.lang.Throwable -> L64 java.io.InterruptedIOException -> L7a
        L3e:
            r7 = 8192(0x2000, double:4.0474E-320)
            long r7 = r11.read(r12, r7)     // Catch: java.lang.Throwable -> L64 java.io.InterruptedIOException -> L7a
            r9 = -1
            int r13 = (r7 > r9 ? 1 : (r7 == r9 ? 0 : -1))
            if (r13 == 0) goto L4e
            r12.clear()     // Catch: java.lang.Throwable -> L64 java.io.InterruptedIOException -> L7a
            goto L3e
        L4e:
            r12 = 1
            int r13 = (r5 > r3 ? 1 : (r5 == r3 ? 0 : -1))
            if (r13 != 0) goto L5b
        L53:
            okio.Timeout r11 = r11.timeout()
            r11.clearDeadline()
            goto L81
        L5b:
            okio.Timeout r11 = r11.timeout()
            long r0 = r0 + r5
            r11.deadlineNanoTime(r0)
            goto L81
        L64:
            r12 = move-exception
            int r13 = (r5 > r3 ? 1 : (r5 == r3 ? 0 : -1))
            if (r13 != 0) goto L71
            okio.Timeout r11 = r11.timeout()
            r11.clearDeadline()
            goto L79
        L71:
            okio.Timeout r11 = r11.timeout()
            long r0 = r0 + r5
            r11.deadlineNanoTime(r0)
        L79:
            throw r12
        L7a:
            r12 = 0
            int r13 = (r5 > r3 ? 1 : (r5 == r3 ? 0 : -1))
            if (r13 != 0) goto L5b
            goto L53
        L81:
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.Util.skipAll(okio.Source, int, java.util.concurrent.TimeUnit):boolean");
    }

    @g
    public static final ThreadFactory threadFactory(@g final String name, final boolean z9) {
        Intrinsics.checkNotNullParameter(name, "name");
        return new ThreadFactory() { // from class: okhttp3.internal.Util$threadFactory$1
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                Thread thread = new Thread(runnable, name);
                thread.setDaemon(z9);
                return thread;
            }
        };
    }

    public static final void threadName(@g String name, @g Function0<Unit> block) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(block, "block");
        Thread currentThread = Thread.currentThread();
        Intrinsics.checkNotNullExpressionValue(currentThread, "currentThread");
        String name2 = currentThread.getName();
        currentThread.setName(name);
        try {
            block.invoke();
        } finally {
            InlineMarker.finallyStart(1);
            currentThread.setName(name2);
            InlineMarker.finallyEnd(1);
        }
    }

    @g
    public static final List<Header> toHeaderList(@g Headers toHeaderList) {
        IntRange until;
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(toHeaderList, "$this$toHeaderList");
        until = RangesKt___RangesKt.until(0, toHeaderList.size());
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(until, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<Integer> it = until.iterator();
        while (it.hasNext()) {
            int nextInt = ((IntIterator) it).nextInt();
            arrayList.add(new Header(toHeaderList.name(nextInt), toHeaderList.value(nextInt)));
        }
        return arrayList;
    }

    @g
    public static final Headers toHeaders(@g List<Header> toHeaders) {
        Intrinsics.checkNotNullParameter(toHeaders, "$this$toHeaders");
        Headers.Builder builder = new Headers.Builder();
        for (Header header : toHeaders) {
            builder.addLenient$okhttp(header.component1().utf8(), header.component2().utf8());
        }
        return builder.build();
    }

    @g
    public static final String toHexString(long j4) {
        String hexString = Long.toHexString(j4);
        Intrinsics.checkNotNullExpressionValue(hexString, "java.lang.Long.toHexString(this)");
        return hexString;
    }

    @g
    public static final String toHostHeader(@g HttpUrl toHostHeader, boolean z9) {
        boolean contains$default;
        String host;
        Intrinsics.checkNotNullParameter(toHostHeader, "$this$toHostHeader");
        contains$default = StringsKt__StringsKt.contains$default((CharSequence) toHostHeader.host(), (CharSequence) ":", false, 2, (Object) null);
        if (contains$default) {
            host = '[' + toHostHeader.host() + ']';
        } else {
            host = toHostHeader.host();
        }
        if (z9 || toHostHeader.port() != HttpUrl.Companion.defaultPort(toHostHeader.scheme())) {
            return host + ':' + toHostHeader.port();
        }
        return host;
    }

    public static /* synthetic */ String toHostHeader$default(HttpUrl httpUrl, boolean z9, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            z9 = false;
        }
        return toHostHeader(httpUrl, z9);
    }

    @g
    public static final <T> List<T> toImmutableList(@g List<? extends T> toImmutableList) {
        List mutableList;
        Intrinsics.checkNotNullParameter(toImmutableList, "$this$toImmutableList");
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) toImmutableList);
        List<T> unmodifiableList = Collections.unmodifiableList(mutableList);
        Intrinsics.checkNotNullExpressionValue(unmodifiableList, "Collections.unmodifiableList(toMutableList())");
        return unmodifiableList;
    }

    @g
    public static final <K, V> Map<K, V> toImmutableMap(@g Map<K, ? extends V> toImmutableMap) {
        Map<K, V> emptyMap;
        Intrinsics.checkNotNullParameter(toImmutableMap, "$this$toImmutableMap");
        if (toImmutableMap.isEmpty()) {
            emptyMap = MapsKt__MapsKt.emptyMap();
            return emptyMap;
        }
        Map<K, V> unmodifiableMap = Collections.unmodifiableMap(new LinkedHashMap(toImmutableMap));
        Intrinsics.checkNotNullExpressionValue(unmodifiableMap, "Collections.unmodifiableMap(LinkedHashMap(this))");
        return unmodifiableMap;
    }

    public static final long toLongOrDefault(@g String toLongOrDefault, long j4) {
        Intrinsics.checkNotNullParameter(toLongOrDefault, "$this$toLongOrDefault");
        try {
            return Long.parseLong(toLongOrDefault);
        } catch (NumberFormatException unused) {
            return j4;
        }
    }

    public static final int toNonNegativeInt(@h String str, int i4) {
        if (str != null) {
            try {
                long parseLong = Long.parseLong(str);
                if (parseLong > Integer.MAX_VALUE) {
                    return Integer.MAX_VALUE;
                }
                if (parseLong < 0) {
                    return 0;
                }
                return (int) parseLong;
            } catch (NumberFormatException unused) {
            }
        }
        return i4;
    }

    @g
    public static final String trimSubstring(@g String trimSubstring, int i4, int i10) {
        Intrinsics.checkNotNullParameter(trimSubstring, "$this$trimSubstring");
        int indexOfFirstNonAsciiWhitespace = indexOfFirstNonAsciiWhitespace(trimSubstring, i4, i10);
        String substring = trimSubstring.substring(indexOfFirstNonAsciiWhitespace, indexOfLastNonAsciiWhitespace(trimSubstring, indexOfFirstNonAsciiWhitespace, i10));
        Intrinsics.checkNotNullExpressionValue(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        return substring;
    }

    public static /* synthetic */ String trimSubstring$default(String str, int i4, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i4 = 0;
        }
        if ((i11 & 2) != 0) {
            i10 = str.length();
        }
        return trimSubstring(str, i4, i10);
    }

    public static final void wait(@g Object wait) {
        Intrinsics.checkNotNullParameter(wait, "$this$wait");
        wait.wait();
    }

    @g
    public static final Throwable withSuppressed(@g Exception withSuppressed, @g List<? extends Exception> suppressed) {
        Intrinsics.checkNotNullParameter(withSuppressed, "$this$withSuppressed");
        Intrinsics.checkNotNullParameter(suppressed, "suppressed");
        if (suppressed.size() > 1) {
            System.out.println(suppressed);
        }
        for (Exception exc : suppressed) {
            ExceptionsKt__ExceptionsKt.addSuppressed(withSuppressed, exc);
        }
        return withSuppressed;
    }

    public static final void writeMedium(@g BufferedSink writeMedium, int i4) throws IOException {
        Intrinsics.checkNotNullParameter(writeMedium, "$this$writeMedium");
        writeMedium.writeByte((i4 >>> 16) & 255);
        writeMedium.writeByte((i4 >>> 8) & 255);
        writeMedium.writeByte(i4 & 255);
    }

    public static final int delimiterOffset(@g String delimiterOffset, char c10, int i4, int i10) {
        Intrinsics.checkNotNullParameter(delimiterOffset, "$this$delimiterOffset");
        while (i4 < i10) {
            if (delimiterOffset.charAt(i4) == c10) {
                return i4;
            }
            i4++;
        }
        return i10;
    }

    public static /* synthetic */ int delimiterOffset$default(String str, char c10, int i4, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i4 = 0;
        }
        if ((i11 & 4) != 0) {
            i10 = str.length();
        }
        return delimiterOffset(str, c10, i4, i10);
    }

    @g
    public static final String toHexString(int i4) {
        String hexString = Integer.toHexString(i4);
        Intrinsics.checkNotNullExpressionValue(hexString, "Integer.toHexString(this)");
        return hexString;
    }

    public static final void closeQuietly(@g Socket closeQuietly) {
        Intrinsics.checkNotNullParameter(closeQuietly, "$this$closeQuietly");
        try {
            closeQuietly.close();
        } catch (AssertionError e4) {
            throw e4;
        } catch (RuntimeException e10) {
            if (!Intrinsics.areEqual(e10.getMessage(), "bio == null")) {
                throw e10;
            }
        } catch (Exception unused) {
        }
    }

    public static final void closeQuietly(@g ServerSocket closeQuietly) {
        Intrinsics.checkNotNullParameter(closeQuietly, "$this$closeQuietly");
        try {
            closeQuietly.close();
        } catch (RuntimeException e4) {
            throw e4;
        } catch (Exception unused) {
        }
    }

    public static final int skipAll(@g Buffer skipAll, byte b10) {
        Intrinsics.checkNotNullParameter(skipAll, "$this$skipAll");
        int i4 = 0;
        while (!skipAll.exhausted() && skipAll.getByte(0L) == b10) {
            i4++;
            skipAll.readByte();
        }
        return i4;
    }
}

package okhttp3.logging;

import com.facebook.common.callercontext.ContextChain;
import com.google.common.net.b;
import com.ksy.statlibrary.db.DBConstant;
import io.sentry.h4;
import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Set;
import java.util.TreeSet;
import java.util.concurrent.TimeUnit;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.StringsKt;
import m8.g;
import okhttp3.Connection;
import okhttp3.Headers;
import okhttp3.Interceptor;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal.http.HttpHeaders;
import okhttp3.internal.platform.Platform;
import okio.Buffer;
import okio.BufferedSource;
import okio.GzipSource;

/* compiled from: HttpLoggingInterceptor.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u00002\u00020\u0001:\u0002\u001e\u001fB\u0011\b\u0007\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\r\u0010\u000b\u001a\u00020\tH\u0007¢\u0006\u0002\b\u0012J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0018\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\u001aH\u0002J\u000e\u0010\u001b\u001a\u00020\u00182\u0006\u0010\u001c\u001a\u00020\u0007J\u000e\u0010\u001d\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\tR\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R$\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\t@GX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\n\u0010\rR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006 "}, d2 = {"Lokhttp3/logging/HttpLoggingInterceptor;", "Lokhttp3/Interceptor;", h4.b.f83285c, "Lokhttp3/logging/HttpLoggingInterceptor$Logger;", "(Lokhttp3/logging/HttpLoggingInterceptor$Logger;)V", "headersToRedact", "", "", "<set-?>", "Lokhttp3/logging/HttpLoggingInterceptor$Level;", "level", "getLevel", "()Lokhttp3/logging/HttpLoggingInterceptor$Level;", "(Lokhttp3/logging/HttpLoggingInterceptor$Level;)V", "bodyHasUnknownEncoding", "", "headers", "Lokhttp3/Headers;", "-deprecated_level", "intercept", "Lokhttp3/Response;", "chain", "Lokhttp3/Interceptor$Chain;", "logHeader", "", ContextChain.TAG_INFRA, "", "redactHeader", "name", "setLevel", "Level", "Logger", "okhttp-logging-interceptor"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes4.dex */
public final class HttpLoggingInterceptor implements Interceptor {
    private volatile Set<String> headersToRedact;
    @g
    private volatile Level level;
    private final Logger logger;

    /* compiled from: HttpLoggingInterceptor.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lokhttp3/logging/HttpLoggingInterceptor$Level;", "", "(Ljava/lang/String;I)V", "NONE", "BASIC", "HEADERS", "BODY", "okhttp-logging-interceptor"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes4.dex */
    public enum Level {
        NONE,
        BASIC,
        HEADERS,
        BODY
    }

    /* compiled from: HttpLoggingInterceptor.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\bæ\u0080\u0001\u0018\u0000 \u00062\u00020\u0001:\u0001\u0006J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0007"}, d2 = {"Lokhttp3/logging/HttpLoggingInterceptor$Logger;", "", DBConstant.TABLE_NAME_LOG, "", "message", "", "Companion", "okhttp-logging-interceptor"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes4.dex */
    public interface Logger {
        public static final Companion Companion = new Companion(null);
        @JvmField
        @g
        public static final Logger DEFAULT = new Companion.DefaultLogger();

        /* compiled from: HttpLoggingInterceptor.kt */
        @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001:\u0001\u0005B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0016\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004ø\u0001\u0000¢\u0006\u0002\n\u0000¨\u0006\u0001\u0082\u0002\u0007\n\u0005\b\u0091F0\u0001¨\u0006\u0006"}, d2 = {"Lokhttp3/logging/HttpLoggingInterceptor$Logger$Companion;", "", "()V", "DEFAULT", "Lokhttp3/logging/HttpLoggingInterceptor$Logger;", "DefaultLogger", "okhttp-logging-interceptor"}, k = 1, mv = {1, 4, 0})
        /* loaded from: classes4.dex */
        public static final class Companion {
            static final /* synthetic */ Companion $$INSTANCE = null;

            /* compiled from: HttpLoggingInterceptor.kt */
            @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016¨\u0006\u0007"}, d2 = {"Lokhttp3/logging/HttpLoggingInterceptor$Logger$Companion$DefaultLogger;", "Lokhttp3/logging/HttpLoggingInterceptor$Logger;", "()V", DBConstant.TABLE_NAME_LOG, "", "message", "", "okhttp-logging-interceptor"}, k = 1, mv = {1, 4, 0})
            /* loaded from: classes4.dex */
            private static final class DefaultLogger implements Logger {
                @Override // okhttp3.logging.HttpLoggingInterceptor.Logger
                public void log(@g String message) {
                    Intrinsics.checkNotNullParameter(message, "message");
                    Platform.log$default(Platform.Companion.get(), message, 0, null, 6, null);
                }
            }

            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }
        }

        void log(@g String str);
    }

    @JvmOverloads
    public HttpLoggingInterceptor() {
        this(null, 1, null);
    }

    @JvmOverloads
    public HttpLoggingInterceptor(@g Logger logger) {
        Set<String> emptySet;
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.logger = logger;
        emptySet = SetsKt__SetsKt.emptySet();
        this.headersToRedact = emptySet;
        this.level = Level.NONE;
    }

    private final boolean bodyHasUnknownEncoding(Headers headers) {
        String str = headers.get("Content-Encoding");
        return (str == null || StringsKt.equals(str, "identity", true) || StringsKt.equals(str, "gzip", true)) ? false : true;
    }

    private final void logHeader(Headers headers, int i4) {
        String value = this.headersToRedact.contains(headers.name(i4)) ? "██" : headers.value(i4);
        Logger logger = this.logger;
        logger.log(headers.name(i4) + ": " + value);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "moved to var", replaceWith = @ReplaceWith(expression = "level", imports = {}))
    @g
    @JvmName(name = "-deprecated_level")
    /* renamed from: -deprecated_level  reason: not valid java name */
    public final Level m1700deprecated_level() {
        return this.level;
    }

    @g
    public final Level getLevel() {
        return this.level;
    }

    @Override // okhttp3.Interceptor
    @g
    public Response intercept(@g Interceptor.Chain chain) throws IOException {
        String str;
        String sb;
        Charset UTF_8;
        Charset UTF_82;
        Intrinsics.checkNotNullParameter(chain, "chain");
        Level level = this.level;
        Request request = chain.request();
        if (level == Level.NONE) {
            return chain.proceed(request);
        }
        boolean z9 = level == Level.BODY;
        boolean z10 = z9 || level == Level.HEADERS;
        RequestBody body = request.body();
        Connection connection = chain.connection();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("--> ");
        sb2.append(request.method());
        sb2.append(' ');
        sb2.append(request.url());
        sb2.append(connection != null ? " " + connection.protocol() : "");
        String sb3 = sb2.toString();
        if (!z10 && body != 0) {
            sb3 = sb3 + " (" + body.contentLength() + "-byte body)";
        }
        this.logger.log(sb3);
        if (z10) {
            Headers headers = request.headers();
            if (body != null) {
                MediaType contentType = body.contentType();
                if (contentType != null && headers.get("Content-Type") == null) {
                    this.logger.log("Content-Type: " + contentType);
                }
                if (body.contentLength() != -1 && headers.get(b.f34609b) == null) {
                    this.logger.log("Content-Length: " + body.contentLength());
                }
            }
            int size = headers.size();
            for (int i4 = 0; i4 < size; i4++) {
                logHeader(headers, i4);
            }
            if (z9 && body != null) {
                if (bodyHasUnknownEncoding(request.headers())) {
                    this.logger.log("--> END " + request.method() + " (encoded body omitted)");
                } else if (body.isDuplex()) {
                    this.logger.log("--> END " + request.method() + " (duplex request body omitted)");
                } else if (body.isOneShot()) {
                    this.logger.log("--> END " + request.method() + " (one-shot body omitted)");
                } else {
                    Buffer buffer = new Buffer();
                    body.writeTo(buffer);
                    MediaType contentType2 = body.contentType();
                    if (contentType2 == null || (UTF_82 = contentType2.charset(StandardCharsets.UTF_8)) == null) {
                        UTF_82 = StandardCharsets.UTF_8;
                        Intrinsics.checkNotNullExpressionValue(UTF_82, "UTF_8");
                    }
                    this.logger.log("");
                    if (Utf8Kt.isProbablyUtf8(buffer)) {
                        this.logger.log(buffer.readString(UTF_82));
                        this.logger.log("--> END " + request.method() + " (" + body.contentLength() + "-byte body)");
                    } else {
                        this.logger.log("--> END " + request.method() + " (binary " + body.contentLength() + "-byte body omitted)");
                    }
                }
            } else {
                this.logger.log("--> END " + request.method());
            }
        }
        long nanoTime = System.nanoTime();
        try {
            Response proceed = chain.proceed(request);
            long millis = TimeUnit.NANOSECONDS.toMillis(System.nanoTime() - nanoTime);
            ResponseBody body2 = proceed.body();
            Intrinsics.checkNotNull(body2);
            long contentLength = body2.contentLength();
            String str2 = contentLength != -1 ? contentLength + "-byte" : "unknown-length";
            Logger logger = this.logger;
            StringBuilder sb4 = new StringBuilder();
            sb4.append("<-- ");
            sb4.append(proceed.code());
            if (proceed.message().length() == 0) {
                str = "-byte body omitted)";
                sb = "";
            } else {
                String message = proceed.message();
                StringBuilder sb5 = new StringBuilder();
                str = "-byte body omitted)";
                sb5.append(String.valueOf(' '));
                sb5.append(message);
                sb = sb5.toString();
            }
            sb4.append(sb);
            sb4.append(' ');
            sb4.append(proceed.request().url());
            sb4.append(" (");
            sb4.append(millis);
            sb4.append("ms");
            sb4.append(z10 ? "" : ", " + str2 + " body");
            sb4.append(')');
            logger.log(sb4.toString());
            if (z10) {
                Headers headers2 = proceed.headers();
                int size2 = headers2.size();
                for (int i10 = 0; i10 < size2; i10++) {
                    logHeader(headers2, i10);
                }
                if (z9 && HttpHeaders.promisesBody(proceed)) {
                    if (bodyHasUnknownEncoding(proceed.headers())) {
                        this.logger.log("<-- END HTTP (encoded body omitted)");
                    } else {
                        BufferedSource source = body2.source();
                        source.request(Long.MAX_VALUE);
                        Buffer buffer2 = source.getBuffer();
                        Long l10 = null;
                        if (StringsKt.equals("gzip", headers2.get("Content-Encoding"), true)) {
                            Long valueOf = Long.valueOf(buffer2.size());
                            GzipSource gzipSource = new GzipSource(buffer2.clone());
                            try {
                                buffer2 = new Buffer();
                                buffer2.writeAll(gzipSource);
                                CloseableKt.closeFinally(gzipSource, null);
                                l10 = valueOf;
                            } finally {
                            }
                        }
                        MediaType contentType3 = body2.contentType();
                        if (contentType3 == null || (UTF_8 = contentType3.charset(StandardCharsets.UTF_8)) == null) {
                            UTF_8 = StandardCharsets.UTF_8;
                            Intrinsics.checkNotNullExpressionValue(UTF_8, "UTF_8");
                        }
                        if (!Utf8Kt.isProbablyUtf8(buffer2)) {
                            this.logger.log("");
                            this.logger.log("<-- END HTTP (binary " + buffer2.size() + str);
                            return proceed;
                        }
                        if (contentLength != 0) {
                            this.logger.log("");
                            this.logger.log(buffer2.clone().readString(UTF_8));
                        }
                        if (l10 != null) {
                            this.logger.log("<-- END HTTP (" + buffer2.size() + "-byte, " + l10 + "-gzipped-byte body)");
                        } else {
                            this.logger.log("<-- END HTTP (" + buffer2.size() + "-byte body)");
                        }
                    }
                } else {
                    this.logger.log("<-- END HTTP");
                }
            }
            return proceed;
        } catch (Exception e4) {
            this.logger.log("<-- HTTP FAILED: " + e4);
            throw e4;
        }
    }

    @JvmName(name = "level")
    public final void level(@g Level level) {
        Intrinsics.checkNotNullParameter(level, "<set-?>");
        this.level = level;
    }

    public final void redactHeader(@g String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        TreeSet treeSet = new TreeSet(StringsKt.getCASE_INSENSITIVE_ORDER(StringCompanionObject.INSTANCE));
        CollectionsKt.addAll(treeSet, this.headersToRedact);
        treeSet.add(name);
        this.headersToRedact = treeSet;
    }

    @g
    public final HttpLoggingInterceptor setLevel(@g Level level) {
        Intrinsics.checkNotNullParameter(level, "level");
        this.level = level;
        return this;
    }

    public /* synthetic */ HttpLoggingInterceptor(Logger logger, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? Logger.DEFAULT : logger);
    }
}
